package slice

import (
	"fmt"
	"testing"
)

func TestSliceResize(t *testing.T) {
	arr := make([]int, 3, 3)
	for i := 0; i < 2000; i++ {
		fmt.Println("arr len", len(arr), "cap", cap(arr))
		arr = append(arr, i)
		defer fmt.Sprintln(i)
	}
}