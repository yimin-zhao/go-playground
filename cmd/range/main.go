package main

import "fmt"

func main() {
	ageMap := make(map[string]int)
	ageMap["zhao"] = 30

	for name, age := range ageMap {
		fmt.Println(name, age)
	}
}