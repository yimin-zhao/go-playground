package goroutine

import (
	"context"
	"fmt"
	"testing"
	"time"
)

func TestUseChannel(t *testing.T) {
	ch := make(chan int, 100)
	done := make(chan struct{})
	go func() {
		for {
			select {
			case ch <- 1:
			case <-done:
				close(ch)
				return
			}
			time.Sleep(100 * time.Millisecond)
		}
	}()

	go func() {
		time.Sleep(3 * time.Second)
		done <- struct{}{}
	}()

	for i := range ch {
		fmt.Println("Receive value", i)
	}

	fmt.Println("finish")
}

func TestUseContext(t *testing.T) {
	forever := make(chan struct{})
	ctx, cancel := context.WithCancel(context.Background())

	go func(ctx context.Context) {
		for {
			select {
			case <-ctx.Done():
				forever <- struct{}{}
				return
			default:
				fmt.Println("for loop")
			}
			time.Sleep(500 * time.Millisecond)
		}
	}(ctx)

	go func() {
		time.Sleep(3 * time.Second)
		cancel()
	}()

	<-forever
	fmt.Println("finish")
}
