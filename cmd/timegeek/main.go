package main

import (
	"fmt"
	"net/http"
)

func main() {
	for i := 1000019; i <= 1005250; i+=4 {
		url := fmt.Sprintf("https://time.geekbang.org/column/intro/%d01?tab=catalog", i)
		resp, err := http.Get(url)
		if err != nil {
			panic(err)
		}
		fmt.Printf("Get %v, Response status %v\n", url, resp.Status)
	}
}