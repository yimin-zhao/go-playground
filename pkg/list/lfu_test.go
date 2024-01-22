package list_test

import (
	"container/heap"
	"fmt"
	"testing"
)

type Item struct {
	key   int
	value int
	index int
	freq  int
	count int
}

type hp []*Item

func (h hp) Len() int { return len(h) }
func (h hp) Less(i, j int) bool {
	if h[i].freq == h[j].freq {
		return h[i].count < h[j].count
	}
	return h[i].freq < h[j].freq
}
func (h *hp) Pop() any {
	n := len(*h)
	item := (*h)[n-1]
	*h = (*h)[:n-1]
	return item
}

func (h hp) Swap(i, j int) {
	h[i], h[j] = h[j], h[i]
	h[i].index = i
	h[j].index = j
}

func (h *hp) Push(x interface{}) {
	idx := len(*h)
	item := x.(*Item)
	item.index = idx
	*h = append(*h, item)
}

func (h *hp) update(item *Item, value, count, freq int) {
	item.value = value
	item.count = count
	item.freq = freq
	heap.Fix(h, item.index)
}

type LFUCache struct {
	capacity int
	count    int
	hp       hp
	m        map[int]*Item
}

func Constructor(capacity int) LFUCache {
	return LFUCache{
		capacity: capacity,
		count:    0,
		hp:       make(hp, 0),
		m:        make(map[int]*Item),
	}
}

func (this *LFUCache) Get(key int) int {
	this.count++
	if v, ok := this.m[key]; ok {
		this.hp.update(v, v.value, this.count, v.freq+1)
		return v.value
	}

	return -1
}

func (this *LFUCache) Put(key, value int) {
	this.count++
	if v, ok := this.m[key]; ok {
		this.hp.update(v, value, this.count, v.freq+1)
	} else {
		if len(this.hp) == this.capacity {
			item := heap.Pop(&this.hp).(*Item)
			delete(this.m, item.key)
		}
		idx := len(this.hp)
		item := &Item{
			key:   key,
			value: value,
			count: this.count,
			freq:  1,
			index: idx,
		}
		heap.Push(&this.hp, item)
		this.m[key] = item
	}
}

func (this *LFUCache) String() string {
	s := ""
	for _, v := range this.hp {
		s += fmt.Sprintf("%v:%v[freq: %d, count: %d] ", v.key, v.value, v.freq, v.count)
	}
	return s
}

func TestLFU(t *testing.T) {
	lfu := Constructor(10)

	for i := 0; i < 10; i++ {
		lfu.Put(i, i)
	}
	fmt.Println(lfu.String())

	for i := 0; i < 10; i++ {
		if i == 5 {
			continue
		}
		lfu.Put(i, i)
	}

	fmt.Println(lfu.String())

	lfu.Put(11, 11)
	fmt.Println(lfu.String())

	// for i := 0; i < 10; i++ {
	// 	lfu.Get(9)
	// }
	// fmt.Println(lfu.String())

	// lfu.Put(12, 12)
	// fmt.Println(lfu.String())
}
