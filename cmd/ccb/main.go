package main

import (
	"fmt"
	"io/ioutil"
	"os"
	"sort"
	"strconv"
	"strings"
)

type Record struct {
	Merchant  string
	Date      string
	Card      string
	Bill      int
	Base      int
	DragonPay int
	CCBLife   int
	VIP       int
	Platinum  int
	QuickPay  int
}

func (r *Record) String() string {
	return fmt.Sprintf("%s\t%s\t%s\t%d\t%d\t%d\t%d\t%d\t%d\t%d",
		r.Date, r.Merchant, r.Card, r.Bill, r.Base, r.DragonPay, r.CCBLife, r.VIP, r.Platinum, r.QuickPay)
}

type Stats struct {
	Points int
	Amount int
}

type MonthlyStats struct {
	Mounth    string
	Points    int
	Amount    int
	Base      int
	DragonPay int
	CCBLife   int
	VIP       int
	Platinum  int
	QuickPay  int
}

func (m MonthlyStats) String() string {
	return fmt.Sprintf("%s\t%d\t%d\t%d\t%d\t%d\t%d\t%d",
		m.Mounth, m.Amount, m.Base, m.DragonPay, m.CCBLife, m.VIP, m.Platinum, m.QuickPay)
}

var ratio = map[string]int{
	"贷记卡":     1,
	"龙支付消费":   1,
	"钻白卡双倍积分": 1,
	"微信支付（财付通）消费有积分":  1,
	"建行生活渠道龙支付消费累计双倍": 2,
	"积分刷刷乐":    5,
	"星级客户多倍积分": 3,
}

func pointsAddUp(r *Record, typ string, amount int) {
	switch typ {
	case "建行生活渠道龙支付消费累计双倍":
		if r.CCBLife != 0 {
			fmt.Printf("find conflict number: %s\n", typ)
		}
		r.CCBLife = amount
	case "龙支付消费":
		if r.DragonPay != 0 {
			fmt.Printf("find conflict number: %s\n", typ)
		}
		r.DragonPay = amount
	case "积分刷刷乐":
		if r.QuickPay != 0 {
			fmt.Printf("find conflict number: %s\n", typ)
		}
		r.QuickPay = amount
	case "钻白卡双倍积分":
		if r.Platinum != 0 {
			fmt.Printf("find conflict number: %s\n", typ)
		}
		r.Platinum = amount
	case "星级客户多倍积分":
		if r.VIP != 0 {
			fmt.Printf("find conflict number: %s\n", typ)
		}
		r.VIP = amount
	case "贷记卡", "微信支付（财付通）消费有积分":
		r.Base = amount
	}
	fmt.Printf("\tSet %s: %d\n\n", typ, amount)
}

func main() {
	raw, err := ioutil.ReadFile("ccb.txt")
	if err != nil {
		panic(err)
	}

	lines := strings.Split(string(raw), "\n")
	if len(lines) == 0 {
		panic("not valid record")
	}

	deals := make(map[string]*Record)
	stats := &Stats{}

	var records [][]string
	for _, line := range lines {
		records = append(records, strings.SplitN(line, "\t", 5))
	}

	for _, strs := range records {
		merchant := strs[4]
		if strings.Contains(merchant, "跨行消费") {
			toks := strings.Split(merchant, " ")
			merchant = toks[len(toks)-1]
		}
		if strings.HasPrefix(merchant, "财付通-微信支付") {
			merchant = "财付通" + merchant[len("财付通-微信支付"):]
		}
		if strings.HasPrefix(merchant, "支付宝-支付宝-消费") {
			merchant = "支付宝" + merchant[len("支付宝-支付宝-消费"):]
		}
		fmt.Printf("Process merchant '%s'\n", merchant)

		base, err := strconv.Atoi(strs[1])
		if err != nil {
			panic(err)
		}
		stats.Points += base
		amount := base / ratio[strs[2]]

		key := fmt.Sprintf("%s-%s-%d", strs[0], merchant, amount)

		if r, ok := deals[key]; ok {
			fmt.Printf("\tFind existing entry: %s\n", key)
			pointsAddUp(r, strs[2], base)
		} else {
			fmt.Printf("\tAdd a new entry: %s\n", key)
			r := &Record{
				Merchant: merchant,
				Date:     strs[0],
				Card:     strs[3],
				Bill:     amount,
			}
			stats.Amount += amount
			deals[key] = r
			pointsAddUp(r, strs[2], base)
		}
	}

	res := []*Record{}
	for _, v := range deals {
		res = append(res, v)
	}
	sort.Slice(res, func(i, j int) bool {
		if res[i].Date != res[j].Date {
			return res[i].Date > res[j].Date
		}
		return res[i].Merchant > res[j].Merchant
	})

	fmt.Println("\nMonth\tBill\tBase\t龙支付\t生活\t星级\t钻白\t积分刷刷乐")
	var data string
	var m MonthlyStats
	for _, v := range res {
		if m.Mounth == "" {
			m.Mounth = v.Date[4:6]
		}
		if m.Mounth == v.Date[4:6] {
			m.Amount += v.Bill
			m.Base += v.Base
			m.DragonPay += v.DragonPay
			m.CCBLife += v.CCBLife
			m.VIP += v.VIP
			m.Platinum += v.Platinum
			m.QuickPay += v.QuickPay
		} else {
			fmt.Println(m)
			data += "\n"
			m.Mounth = v.Date[4:6]
			m.Amount = v.Bill
			m.Base = v.Base
			m.DragonPay = v.DragonPay
			m.CCBLife = v.CCBLife
			m.VIP = v.VIP
			m.Platinum = v.Platinum
			m.QuickPay = v.QuickPay
		}
		data += fmt.Sprintln(v)
	}
	fmt.Println(m)

	err = os.WriteFile("points_out.txt", []byte(data), 0644)
	if err != nil {
		panic(err)
	}

	fmt.Printf("\nProcessed all data, total points: %d, total amount: %d, transcations: %d",
		stats.Points, stats.Amount, len(res))
}
