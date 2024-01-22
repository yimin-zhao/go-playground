package memmove

import (
	"unsafe"
)

type GoSlice struct {
	Ptr unsafe.Pointer
	Len int
	Cap int
}

type GoString struct {
	Ptr unsafe.Pointer
	Len int
}

//go:noescape
//go:linkname memmove runtime.memmove
func memmove(to unsafe.Pointer, from unsafe.Pointer, n uintptr)
