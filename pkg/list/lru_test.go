package list_test

import (
	"go-playground/pkg/list"
	"fmt"
	"testing"
)

func TestList(t *testing.T) {
	lru := list.Constructor(10)

	for i := 0; i < 10; i++ {
		lru.Put(i, i)
	}
	fmt.Println(lru.String())

	lru.Put(5, 5)
	fmt.Println(lru.String())

	lru.Put(11, 11)
	fmt.Println(lru.String())
}