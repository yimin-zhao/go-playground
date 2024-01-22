package benchmark

import (
	"io/ioutil"
	"os"
	"testing"
)

func BenchmarkMapNoCap(b *testing.B) {
	m := make(map[string]os.FileInfo)

	files, _ := ioutil.ReadDir("/etc")
	for _, f := range files {
		m[f.Name()] = f
	}
}

func BenchmarkMapWithCap(b *testing.B) {
	files, _ := ioutil.ReadDir("/etc")

	m := make(map[string]os.FileInfo, len(files))
	for _, f := range files {
		m[f.Name()] = f
	}
}