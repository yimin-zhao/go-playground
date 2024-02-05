package ringqueue

import (
	"fmt"
	"math/rand"
	"testing"
	"time"
)

func TestRingQueue(tt *testing.T) {
	tt.Run("ringqueue", func(t *testing.T) {
		q := NewRingQueue(10)

		go func() {
			for i := 0; ; i++ {
				q.Push(i)
				time.Sleep(time.Second)
			}
		}()

		go func() {
			for {
				for {
					val, ok := q.Pop()
					if !ok {
						fmt.Print("pop failed, go to sleep, ")
						break
					}
					fmt.Println(val)
				}
				sleepTime := rand.Intn(10)
				fmt.Println("sleep time:", sleepTime)
				time.Sleep(time.Duration(sleepTime) * time.Second)
			}
		}()

		time.Sleep(time.Hour)
	})
}
