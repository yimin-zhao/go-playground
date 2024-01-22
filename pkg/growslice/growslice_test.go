package growslice

import (
	"reflect"
	"testing"
	"unsafe"

	"github.com/davecgh/go-spew/spew"
	"github.com/stretchr/testify/assert"
)

func TestGrowslice(t *testing.T) {
	assert := assert.New(t)

	var typeByte = UnpackType(reflect.TypeOf(byte(0)))

	spew.Dump(typeByte)

	dest := make([]byte, 0, 10)
	assert.Equal(len(dest), 0)
	assert.Equal(cap(dest), 10)

	ds := (*GoSlice)(unsafe.Pointer(&dest))
	*ds = growslice(typeByte, *ds, 100)

	assert.Equal(len(dest), 0)
	assert.Equal(cap(dest), 112)
}