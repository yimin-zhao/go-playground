package format

import (
	"fmt"
	"io"
	"os"
	"reflect"
	"testing"
	"time"
)

func panicHandler() {
	rec := recover()
	if rec != nil {
		fmt.Println("Recover", rec)
	}
}

func TestReflect(tt *testing.T) {
	tt.Run("reflect type", func(tt *testing.T) {
		t := reflect.TypeOf(3)
		fmt.Println(t.String())
		fmt.Println(t)
	})

	tt.Run("reflect interface", func(t *testing.T) {
		var w io.Writer = os.Stdout
		fmt.Println(reflect.TypeOf(w))
	})

	tt.Run("reflect value", func(t *testing.T) {
		v := reflect.ValueOf(3)
		fmt.Println(v)
		fmt.Printf("%v\n", v)
		fmt.Printf("%T\n", 3)
		fmt.Println(v.String())
	})

	tt.Run("reverse of valueOf", func(t *testing.T) {
		v := reflect.ValueOf(3)
		x := v.Interface()
		i := x.(int)
		fmt.Printf("%d\n", i)
	})

	tt.Run("formatAtom", func(t *testing.T) {
		var x int64 = 1
		var d time.Duration = 1 * time.Nanosecond
		fmt.Println(Any(x))
		fmt.Println(Any(d))
		fmt.Println(Any([]int64{x}))
		fmt.Println(Any([]time.Duration{d}))
	})

	tt.Run("Display struct", func(t *testing.T) {
		Display("strangelove", strangelove)
	})

	tt.Run("Display stderr", func(t *testing.T) {
		Display("os.Stderr", os.Stderr)
		Display("reflect value", reflect.ValueOf(os.Stderr))
	})

	tt.Run("reflect interface{}", func(t *testing.T) {
		var i interface{} = 3
		Display("i", i)
		Display("&i", &i)
	})

	tt.Run("Display array as map key", func(t *testing.T) {
		type Movie struct {
			Title, Subtitle string
			Year            int
			Color           bool
			Actor           map[string]string
			Oscars          []string
			Sequel          *string
			Link            map[*Movie]bool
		}

		strangelove := Movie{
			Title:    "Dr. Strangelove",
			Subtitle: "How I Learned to Stop Worrying and Love the Bomb",
			Year:     1964,
			Color:    false,
			Actor: map[string]string{
				"Dr. Strangelove":            "Peter Sellers",
				"Grp. Capt. Lionel Mandrake": "Peter Sellers",
				"Pres. Merkin Muffley":       "Peter Sellers",
				"Gen. Buck Turgidson":        "George C. Scott",
				"Brig. Gen. Jack D. Ripper":  "Sterling Hayden",
				`Maj. T.J. "King" Kong`:      "Slim Pickens",
			},
			Oscars: []string{
				"Best Actor (Nomin.)",
				"Best Adapted Screenplay (Nomin.)",
				"Best Director (Nomin.)",
				"Best Picture (Nomin.)",
			},
			Link: map[*Movie]bool{},
		}
		strangelove.Link[&strangelove] = true

		Display("strangelove", strangelove)
	})

	tt.Run("can addr", func(t *testing.T) {
		x := 2
		a := reflect.ValueOf(2)
		b := reflect.ValueOf(x)
		c := reflect.ValueOf(&x)
		d := c.Elem()

		fmt.Println(a.CanAddr())
		fmt.Println(b.CanAddr())
		fmt.Println(c.CanAddr())
		fmt.Println(d.CanAddr())
	})

	tt.Run("set value", func(t *testing.T) {
		x := 2
		d := reflect.ValueOf(&x).Elem()
		px := d.Addr().Interface().(*int)
		*px = 3
		fmt.Println(x)

		d.Set(reflect.ValueOf(4))
		fmt.Println(x)
	})

	tt.Run("set unaddressable value", func(t *testing.T) {
		defer panicHandler()
		x := 2
		b := reflect.ValueOf(x)
		b.Set(reflect.ValueOf(3))
	})

	tt.Run("set string to int", func(t *testing.T) {
		defer panicHandler()
		x := 1
		rx := reflect.ValueOf(&x).Elem()
		rx.SetInt(2)
		rx.Set(reflect.ValueOf(3))
		rx.SetString("hello")            // reflect: call of reflect.Value.SetString on int Value
		rx.Set(reflect.ValueOf("hello")) // reflect.Set: value of type string is not assignable to type int
	})

	tt.Run("set interface{}", func(t *testing.T) {
		defer panicHandler()
		var y interface{}
		ry := reflect.ValueOf(&y).Elem()
		ry.SetInt(2)                  // reflect: call of reflect.Value.SetInt on interface Value
		ry.Set(reflect.ValueOf(3))
		ry.SetString("hello")         // reflect: call of reflect.Value.SetString on interface Value
		ry.Set(reflect.ValueOf("hello"))
	})

	tt.Run("read unexported field of struct", func(t *testing.T) {
		defer panicHandler()
		stdout := reflect.ValueOf(os.Stdout).Elem()
		fmt.Println(stdout.Type())
		fd := stdout.FieldByName("fd")
		fmt.Println(fd.IsValid())
		fd.SetInt(2)
	})

	tt.Run("display methods", func(t *testing.T) {
		DispayMethod(time.Hour)
	})
}
