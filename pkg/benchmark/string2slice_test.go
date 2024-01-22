package benchmark

import "testing"

func BenchmarkStringToByte(b *testing.B) {
	for i := 0; i < b.N; i++ {
		by := []byte("Hello world")
		_ = by
	}
}

func BenchmarkStringToByteOnce(b *testing.B) {
	bys := []byte("Hello world")
	for i := 0; i < b.N; i++ {
		by := bys
		_  = by
	}
}