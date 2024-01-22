package fileops

import (
	"log"
	"os"
	"testing"
	"time"
)

func TestCreate(t *testing.T) {
	newFile, err := os.Create("test.txt")
	if err != nil {
		log.Fatal(err)
	}

	log.Println(newFile)
	newFile.Close()
}

func TestTruncate(t *testing.T) {
	err := os.Truncate("test.txt", 100)
	if err != nil {
		log.Fatal(err)
	}

	fileInfo, err := os.Stat("test.txt")
	if err != nil {
		log.Fatal(err)
	}

	log.Println("File name: ", fileInfo.Name())
	log.Println("Size in bytes: ", fileInfo.Size())
	log.Println("Permission: ", fileInfo.Mode())
	log.Println("Last modified: ", fileInfo.ModTime())
	log.Println("Is Directory: ", fileInfo.IsDir())
	log.Printf("System interface type: %T", fileInfo.Sys())
	log.Printf("System info: %+v\n\n", fileInfo.Sys())
}

func TestOpenClose(t *testing.T) {
	file, err := os.Open("test.txt")
	if err != nil {
		log.Fatal(err)
	}
	file.Close()

	file, err = os.OpenFile("test.txt", os.O_APPEND, 0666)
	if err != nil {
		log.Fatal(err)
	}
	file.Close()
}

func TestRename(t *testing.T) {
	err := os.Rename("test.txt", "test2.txt")
	if err != nil {
		log.Fatal(err)
	}
}

func TestStat(t *testing.T) {
	fileInfo, err := os.Stat("test2.txt")
	if err != nil {
		if os.IsNotExist(err) {
			log.Fatal(err)
		}
	}

	log.Println("File does exist. Info", fileInfo)
}

func TestRemove(t *testing.T) {
	err := os.Remove("test2.txt")
	if err != nil {
		log.Fatal(err)
	}
}

func TestPermisson(t *testing.T) {
	file, err := os.OpenFile("test.txt", os.O_WRONLY | os.O_CREATE, 0666)
	if err != nil {
		if os.IsPermission(err) {
			log.Println(err)
		}
	}
	file.Close()

	file, err = os.OpenFile("test.txt", os.O_RDONLY, 0666)
	if err != nil {
		if os.IsPermission(err) {
			log.Println(err)
		}
	}
	file.Close()
}

func TestChmod(t *testing.T) {
	err := os.Chmod("test.txt", 0777)
	if err != nil {
		log.Println(err)
	}

	err = os.Chown("test.txt", os.Getuid(), os.Getgid())
	if err != nil {
		log.Println(err)
	}

	twoDaysFromNow := time.Now().Add(48 * time.Hour)
	lastAccessTime, lastModifyTime := twoDaysFromNow, twoDaysFromNow
	err = os.Chtimes("test.txt", lastAccessTime, lastModifyTime)
	if err != nil {
		log.Println(err)
	}
}