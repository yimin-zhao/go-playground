package main

import (
	"flag"
	"fmt"
	"io/ioutil"
	"os"
	"path/filepath"
	"sort"
	"strconv"
	"strings"
	"sync"
	"time"

	"github.com/olekukonko/tablewriter"
)

var sema = make(chan struct{}, 20)
var skipList = []string{"/proc"}

type walkResult struct {
	name string
	size int64
}

type dirStats struct {
	dir    string
	nfiles int64
	nbytes int64
}

func dirents(dir string) []os.FileInfo {
	sema <- struct{}{}
	defer func() { <-sema }()
	for _, v := range skipList {
		if strings.HasPrefix(dir, v) {
			fmt.Fprintf(os.Stderr, "skip: %v\n", dir)
			return nil
		}
	}
	entries, err := ioutil.ReadDir(dir)
	if err != nil {
		fmt.Fprintf(os.Stderr, "du: %v\n", err)
		return nil
	}

	return entries
}

func walkDir(dir string, n *sync.WaitGroup, fileSize chan<- walkResult) {
	defer n.Done()
	for _, entry := range dirents(dir) {
		if entry.IsDir() {
			subdir := filepath.Join(dir, entry.Name())
			n.Add(1)
			go walkDir(subdir, n, fileSize)
		} else {
			fileSize <- walkResult{dir, entry.Size()}
		}
	}
}

func sumup(dstats map[string]*dirStats) (nr, nb int64) {
	for _, v := range dstats {
		nr += v.nfiles
		nb += v.nbytes
	}
	return
}

func printDiskUsage(nfiles, nbytes int64) {
	fmt.Printf("\r" + strings.Repeat(" ", 80))
	fmt.Printf("\r%d files  %s(worker %d)", nfiles, printDiskSize(nbytes), len(sema))
}

func printDiskSize(size int64) string {
	unit := []string{"Byte", "KB", "MB", "GB", "TB", "PB"}
	idx := 0
	sz := float64(size)
	for sz > 1024 {
		sz /= 1024
		idx++
	}
	return fmt.Sprintf("%0.1f %s", sz, unit[idx])
}

func summarizeDiskUsage(dstats map[string]*dirStats, elapsed time.Duration) {
	var dlist []*dirStats
	for _, v := range dstats {
		dlist = append(dlist, v)
	}

	sort.Slice(dlist, func(i, j int) bool {
		return dlist[i].nbytes < dlist[j].nbytes
	})

	tb := tablewriter.NewWriter(os.Stdout)
	tb.SetColumnAlignment([]int{3, 2, 2})
	tb.SetHeader([]string{"DIR", "files", "storage usage"})
	tb.SetBorder(false)
	data := [][]string{}
	for _, v := range dlist {
		data = append(data, []string{v.dir, strconv.FormatInt(v.nfiles, 10), printDiskSize(v.nbytes)})
	}
	tb.AppendBulk(data)

	nr, nb := sumup(dstats)
	tb.SetFooter([]string{
		fmt.Sprintf("Cost time: %v", elapsed.Round(100*time.Millisecond)),
		strconv.FormatInt(nr, 10),
		printDiskSize(nb),
	})
	tb.Render()
}

func addup(dstats map[string]*dirStats, res walkResult) {
	var path string
	name := strings.SplitN(res.name, "/", 4)
	if len(name) < 3 {
		path = res.name
	} else {
		path = filepath.Join("/", name[1], name[2])
	}
	if v, ok := dstats[path]; !ok {
		dstats[path] = &dirStats{
			dir:    path,
			nfiles: 1,
			nbytes: res.size,
		}
	} else {
		v.nfiles++
		v.nbytes += res.size
	}
}

func main() {
	flag.Parse()
	roots := flag.Args()
	if len(roots) == 0 {
		roots = []string{"."}
	}

	var n sync.WaitGroup
	begin := time.Now()
	tick := time.NewTicker(500 * time.Millisecond)
	filesize := make(chan walkResult)
	for _, root := range roots {
		n.Add(1)
		go walkDir(root, &n, filesize)
	}

	go func() {
		n.Wait()
		fmt.Fprintf(os.Stderr, "\nAll workers have returned\n\nSummary:\n")
		close(filesize)
	}()

	dstats := make(map[string]*dirStats)
loop:
	for {
		select {
		case res, ok := <-filesize:
			if !ok {
				break loop
			}
			addup(dstats, res)
		case <-tick.C:
			printDiskUsage(sumup(dstats))
		}
	}

	summarizeDiskUsage(dstats, time.Since(begin))
}
