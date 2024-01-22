package main

import (
	"bufio"
	"fmt"
	"io/ioutil"
	"strconv"
	"strings"

	"github.com/tealeg/xlsx/v3"
)

func main() {
	wb := xlsx.NewFile()

	wb.AddSheet("golang")
	sh := wb.Sheet["golang"]

	bytes, err := ioutil.ReadFile("/code/go-playground/count.txt")
	if err != nil {
		panic(err)
	}

	br := bufio.NewReader(strings.NewReader(string(bytes)))
	row, col := -1, 0
	for {
		line, _, err := br.ReadLine()
		if err != nil {
			break
		}

		if len(line) == 0 {
			if row >= 45 {
				row = -1
				col++
			} else {
				row = 45
			}
			continue
		} else {
			row++
		}

		num, err := strconv.ParseFloat(string(line), 32)
		if err != nil {
			panic(err)
		}

		cel, err := sh.Cell(row, col)
		if err != nil {
			panic(err)
		}
		cel.SetFloat(num)
		str, _ := cel.FormattedValue()
		fmt.Println(str)
	}

	wb.Save("new.xlsx")
}
