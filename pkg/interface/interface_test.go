package interface_test

import (
	"fmt"
	"testing"
)

type coder interface {
	code()
	debug()
}

type Gopher struct {
	language string
}

func (p Gopher) code() {
	fmt.Printf("I am coding %s language\n", p.language)
}

func (p *Gopher) debug() {
	fmt.Printf("I am debuging %s language\n", p.language)
	p.language = "golang"
}

func TestReceiver(t *testing.T) {
	c := Gopher{"go"}
	c.code()
	c.debug()

	c2 := &Gopher{"go"}
	c2.code()
	c2.debug()
	c2.code()
}

