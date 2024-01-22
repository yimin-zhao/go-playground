package benchmark

import (
	"bytes"
	"fmt"
	"strings"
	"testing"
)

func BenchmarkJoinStrWithPlus(b *testing.B) {
	s1, s2, s3 := "foo", "bar", "bzd"
	for i := 0; i < b.N; i++ {
		_ = s1 + s2 + s3
	}
}

func BenchmarkJoinStrWithSprintf(b *testing.B) {
	s1, s2, s3 := "foo", "bar", "bzd"
	for i := 0; i < b.N; i++ {
		_ = fmt.Sprintf("%s%s%s", s1, s2, s3)
	}
}

func BenchmarkJoinStrWithJoin(b *testing.B) {
	s1, s2, s3 := "foo", "bar", "bzd"
	for i := 0; i < b.N; i++ {
		_ = strings.Join([]string{s1, s2, s3}, "")
	}
}

func BenchmarkJoinStrWithBuilder(b *testing.B) {
	s1, s2, s3 := "foo", "bar", "bzd"
	for i := 0; i < b.N; i++ {
		var builder strings.Builder
		_, _ = builder.WriteString(s1)
		_, _ = builder.WriteString(s2)
		_, _ = builder.WriteString(s3)
		_ = builder.String()
	}
}

func BenchmarkJoinStrWithBuffer(b *testing.B) {
	s1, s2, s3 := "foo", "bar", "bzd"
	for i := 0; i < b.N; i++ {
		var buffer bytes.Buffer
		_, _ = buffer.WriteString(s1)
		_, _ = buffer.WriteString(s2)
		_, _ = buffer.WriteString(s3)
		_ = buffer.String()
	}
}

func BenchmarkJoinStrWithSlice(b *testing.B) {
	s1, s2, s3 := "foo", "bar", "bzd"
	for i := 0; i < b.N; i++ {
		var bys []byte
		bys = append(bys, s1...)
		bys = append(bys, s2...)
		_ = append(bys, s3...)
	}
}

func BenchmarkJoinStrWithPreAllocSlice(b *testing.B) {
	s1, s2, s3 := "foo", "bar", "bzd"
	for i := 0; i < b.N; i++ {
		bys := make([]byte, 0, 9)
		bys = append(bys, s1...)
		bys = append(bys, s2...)
		_ = append(bys, s3...)
	}
}