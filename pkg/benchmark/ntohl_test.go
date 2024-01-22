package benchmark

import (
	"bytes"
	"encoding/binary"
	"testing"
)

func Ntohl(bys []byte) (num uint32) {
	r := bytes.NewReader(bys)
	_ = binary.Read(r, binary.BigEndian, &num)
	return
}

func NtohlNoBinary(bys []byte) uint32 {
	return uint32(bys[3]) | uint32(bys[2]) << 8 | uint32(bys[1]) << 16 |
					uint32(bys[0]) << 24
}

func BenchmarkNtohl(b *testing.B) {
	for i := 0; i < b.N; i++ {
		_ = Ntohl([]byte{0x7f, 0, 0, 0x1})
	}
}

func BenchmarkNtohlNoBinary(b *testing.B) {
	for i := 0; i < b.N; i++ {
		_ = NtohlNoBinary([]byte{0x7f, 0, 0, 0x1})
	}
}