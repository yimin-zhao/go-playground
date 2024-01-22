package slice

import (
	"fmt"
	"testing"
)

func TestSliceResize(t *testing.T) {
	arr := make([]int, 0)
	oldCap := cap(arr)
	for i := 1; i <= 2048; i++ {
		arr = append(arr, i)
		if newCap := cap(arr); oldCap != newCap {
			fmt.Printf("[%d -> %4d] cap = %-4d  |  ", 0, i-1, oldCap)
			fmt.Printf("after append %-4d  cap = %-4d  ", i, newCap)
			if oldCap != 0 {
				fmt.Printf("grow rate: %0.2f\n", float64(newCap)/float64(oldCap))
			} else {
				fmt.Println()
			}
			oldCap = newCap
		}
	}
}

func TestAppendNilSlice(t *testing.T) {
	arr := append([]int(nil), 1)
	fmt.Println(arr, "len:", len(arr), "cap:", cap(arr))

	arr2 := append([]int{}, 1)
	fmt.Println(arr2, "len:", len(arr2), "cap:", cap(arr2))
}

func TestAppendArray(t *testing.T) {
	// arr := [3]int{1, 2, 3}   // error
	arr := []int{1, 2, 3}
	arr2 := []int{4, 5, 6}
	arr = append(arr, arr2...)
	fmt.Println(arr)
}

func TestAlterArray(t *testing.T) {
	slice := []int{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}
	s1 := slice[2:5]
	s2 := slice[2:6:7]

	fmt.Println(s1, "len:", len(s1), "cap:", cap(s1))
	fmt.Println(s2, "len:", len(s2), "cap:", cap(s2))

	f(slice)
	fmt.Println(slice, "len:", len(slice), "cap:", cap(slice))
}

func f(arr []int) {
	for i := range arr {
		arr[i] += 1
	}
}

func myAppend(s []int) []int {
	s = append(s, 101)
	return s
}

func myAppendPtr(s *[]int) {
	*s = append(*s, 102)
}

func TestPassSlicePointer(t *testing.T) {
	slice := []int{1, 2, 3}
	newSlice := myAppend(slice)
	fmt.Println("before:", slice)
	fmt.Println("after myAppend:", newSlice)

	myAppendPtr(&slice)
	fmt.Println("after myAppendPtr:", slice)
}
