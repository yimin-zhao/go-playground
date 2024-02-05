package ringqueue

import (
	"sync/atomic"
)

type RingQueue struct {
	data []int
	sz   int
	head atomic.Int64
	tail atomic.Int64
}

func NewRingQueue(size int) *RingQueue {
	return &RingQueue{
		data: make([]int, size),
		sz:   size,
	}
}

func (q *RingQueue) IsFull() bool {
	head := q.head.Load()
	tail := q.tail.Load()
	return head > tail && (head-tail) == int64(q.sz)
}

func (q *RingQueue) IsEmpty() bool {
	head := q.head.Load()
	tail := q.tail.Load()
	return head == tail
}

func (q *RingQueue) Push(val int) bool {
	if q.IsFull() {
		return false
	}
	head := (q.head.Load()) % int64(q.sz)
	q.data[head] = val
	q.head.Add(1)
	return true
}

func (q *RingQueue) Pop() (int, bool) {
	if q.IsEmpty() {
		return 0, false
	}
	tail := (q.tail.Load()) % int64(q.sz)
	val := q.data[tail]
	q.tail.Add(1)
	return val, true
}
