package growslice

import (
	"reflect"
	"unsafe"
)

type GoType struct {
	Size       uintptr
	PtrData    uintptr
	Hash       uint32
	Flags      uint8
	Align      uint8
	FieldAlign uint8
	KindFlags  uint8
	Traits     unsafe.Pointer
	GCData     *byte
	Str        int32
	PtrToSelf  int32
}

type GoEface struct {
	Type  *GoType
	Value unsafe.Pointer
}

type GoSlice struct {
	Ptr unsafe.Pointer
	Len int
	Cap int
}

//go:linkname growslice runtime.growslice
func growslice(et *GoType, old GoSlice, cap int) GoSlice

func UnpackType(t reflect.Type) *GoType {
	return (*GoType)((*GoEface)(unsafe.Pointer(&t)).Value)
}
