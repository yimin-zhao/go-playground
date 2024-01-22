package benchmark

import (
	"os"
	"testing"
)

func BenchmarkOpcen(b *testing.B) {
	for i := 0; i < b.N; i++ {
		f, _ := os.Open("/tmp")
		f.Close()
	}
}

func BenchmarkChmod(b *testing.B) {
	for i := 0; i < b.N; i++ {
		_ = os.Chmod("/tmp/gobench", 0777)
	}
}

func BenchmarkChdir(b *testing.B) {
	for i := 0; i < b.N; i++ {
		_ = os.Chdir("/tmp")
	}
}
