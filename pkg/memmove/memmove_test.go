package memmove

import (
	"testing"
	"unsafe"

	"github.com/davecgh/go-spew/spew"
)

func TestMemove(t *testing.T) {
	src := []byte{1, 2, 3, 4, 5, 6}
	dest := make([]byte, 10, 10)

	spew.Dump(src)
	spew.Dump(dest)

	srcp := (*GoSlice)(unsafe.Pointer(&src))
	destp := (*GoSlice)(unsafe.Pointer(&dest))

	memmove(destp.Ptr, srcp.Ptr, unsafe.Sizeof(byte(0))*6)

	spew.Dump(src)
	spew.Dump(dest)
}

func TestCopy(t *testing.T) {
	src := []byte{1, 2, 3, 4, 5, 6}
	dest := make([]byte, 10, 10)

	spew.Dump(src)
	spew.Dump(dest)

	copy(dest, src)

	spew.Dump(src)
	spew.Dump(dest)
}

func TestMemmoveString(t *testing.T) {
	src := "hello"
	dest := make([]byte, 10, 10)

	spew.Dump(src)
	spew.Dump(dest)

	memmove(
		(*GoSlice)(unsafe.Pointer(&dest)).Ptr,
		(*GoString)(unsafe.Pointer(&src)).Ptr,
		unsafe.Sizeof(byte(0))*5,
	)

	spew.Dump(src)
	spew.Dump(dest)
}
