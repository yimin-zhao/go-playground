package benchmark

import (
	"math/rand"
	"testing"
	"fmt"
	"strconv"
)

func BenchmarkFmtSprint(b *testing.B) {
	for i := 0; i < b.N; i++ {
		_ = fmt.Sprint(rand.Int())
	}
}

func BenchmarkStrconv(b *testing.B) {
	for i := 0; i < b.N; i++ {
		_ = strconv.Itoa(rand.Int())
	}
}