package format

import (
	"bytes"
	"fmt"
	"reflect"
	"strings"
)

func encode(buf *bytes.Buffer, v reflect.Value, level int) error {
	switch v.Kind() {
	case reflect.Invalid:
		buf.WriteString("nil")

	case reflect.Bool:
		if v.Bool() {
			buf.WriteRune('t')
		} else {
			buf.WriteString("nil")
		}

	case reflect.Int, reflect.Int8, reflect.Int16,
		reflect.Int32, reflect.Int64:
		fmt.Fprintf(buf, "%d", v.Int())

	case reflect.Uint, reflect.Uint8, reflect.Uint16,
		reflect.Uint32, reflect.Uint64, reflect.Uintptr:
		fmt.Fprintf(buf, "%d", v.Uint())

	case reflect.String:
		fmt.Fprintf(buf, "%q", v.String())

	case reflect.Ptr:
		return encode(buf, v.Elem(), level)

	case reflect.Array, reflect.Slice: // (value ...)
		buf.WriteByte('(')
		for i := 0; i < v.Len(); i++ {
			if i > 0 {
				buf.WriteString(strings.Repeat("\t", level))
			}
			if err := encode(buf, v.Index(i), level+1); err != nil {
				return err
			}
			if i < v.Len() - 1 {
				buf.WriteByte('\n')
			}
		}
		buf.WriteByte(')')

	case reflect.Struct: // ((name value) ...)
		buf.WriteByte('(')
		for i := 0; i < v.NumField(); i++ {
			if i > 0 {
				buf.WriteString(strings.Repeat("\t", level))
			}
			fmt.Fprintf(buf, "(%s ", v.Type().Field(i).Name)
			if err := encode(buf, v.Field(i), level+1); err != nil {
				return err
			}
			buf.WriteByte(')')
			if i < v.NumField() - 1 {
				buf.WriteByte('\n')
			}
		}
		buf.WriteString(")\n")

	case reflect.Map: // ((key value) ...)
		buf.WriteByte('(')
		for i, key := range v.MapKeys() {
			if i > 0 {
				buf.WriteString(strings.Repeat("\t", level))
			}
			buf.WriteByte('(')
			if err := encode(buf, key, level); err != nil {
				return err
			}
			buf.WriteByte(' ')
			if err := encode(buf, v.MapIndex(key), level+1); err != nil {
				return err
			}
			buf.WriteByte(')')
			if i < v.Len() - 1 {
				buf.WriteByte('\n')
			}
		}
		buf.WriteByte(')')

	default: // float, complex, bool, chan, func, interface
		return fmt.Errorf("unsupported type: %s", v.Type())
	}
	return nil
}

func Marshal(v interface{}) ([]byte, error) {
	var buf bytes.Buffer
	if err := encode(&buf, reflect.ValueOf(v), 0); err != nil {
		return nil, err
	}

	return buf.Bytes(), nil
}
