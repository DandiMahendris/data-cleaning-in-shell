#!/bin/bash

func() {
	csvstack 2019-oct-sample.csv 2019-nov-sample.csv > 2019-sample.csv;

	csvcut -c 2-5,7-8,6 2019-sample.csv | csvgrep -c 'event_type' -m purchase > 2019-sample-1.csv;
	
	csvcut -c 7 2019-sample-1.csv | awk -F. '{print $1,$NF}'| awk '$1=$1' FS=" " OFS=","  |sed -e '1s/category_code/category/' -e '1s/category_code/product_name/' > 2019-sample-2.csv;
	
	cut -d$',' -f 1-6 2019-sample-1.csv | paste -d ',' - 2019-sample-2.csv > 2019-sample-clean.csv

}

option() {
	cat 2019-sample-clean.csv | grep electronics | grep smartphone | awk -F ',' '{print $5}' | sort | uniq -c | sort -nr
}


if [[ -f 2019-oct-sample.csv && -f 2019-nov-sample.csv ]]; then
	echo "Data Available, please wait ....."
	func
else
	echo "[Error] data not found"
fi

rm 2019-sample.csv 2019-sample-1.csv 2019-sample-2.csv

# rm -v !("2019-oct-sample.csv"|"2019-nov-sample.csv"|"2019-sample-clean.csv"|"data.sh")
# cut -d$',' -f 1-6 2019-sample-1.csv | paste 2019-sample-2.csv - | head | csvlook
# csvcut -c 7 2019-sample-1.csv | awk -F. '{print $1,$NF}'| awk '$1=$1' FS=" " OFS=","  |sed -e '1s/category_code/category/' -e '1s/category_code/product_name/' | paste -d ',' 2019-sample-1.csv -
