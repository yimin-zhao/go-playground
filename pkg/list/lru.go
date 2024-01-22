package list

import (
	"container/list"
	"fmt"
)


type LRUCache struct {
	capacity int
	l        *list.List
	m        map[int]*list.Element
}

type Pair struct {
	key   int
	value int
}

func Constructor(capacity int) LRUCache {
	return LRUCache{
		capacity: capacity,
		l:        list.New(),
		m:        make(map[int]*list.Element),
	}
}

func (this *LRUCache) Get(key int) int {
	if v, ok := this.m[key]; ok {
		this.l.MoveToFront(v)
		return v.Value.(*Pair).value
	}
	return -1
}

func (this *LRUCache) Put(key int, value int) {
	if v, ok := this.m[key]; ok {
		this.l.MoveToFront(v)
		v.Value.(*Pair).value = value
	} else {
		if this.l.Len() == this.capacity {
			back := this.l.Back()
			delete(this.m, back.Value.(*Pair).key)
			this.l.Remove(back)
		}
		this.m[key] = this.l.PushFront(&Pair{key: key, value: value})
	}
}

func (this *LRUCache) String() string {
	s := ""
	for e := this.l.Front(); e != nil; e = e.Next() {
		s += fmt.Sprintf("%v:%v ", e.Value.(*Pair).key, e.Value.(*Pair).value)
	}
	return s
}