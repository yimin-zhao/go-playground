package format

import (
	"fmt"
	"testing"
)

func TestEncode(tt *testing.T) {
	tt.Run("encode ", func(t *testing.T) {
		str, err := Marshal(strangelove)
		if err != nil {
			fmt.Println(err)
		}
		fmt.Println(string(str))

		var moive Movie
		err = Unmarshal([]byte(str), &moive)
		if err != nil {
			fmt.Println(err)
		}
		Display("moive", moive)
	})
}
