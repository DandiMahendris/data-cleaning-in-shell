#!/bin/bash

func() {
	# Melakukan penggabungan data 2019-oct-sample dengan 2019-nov-sample menjadi data 2019-sample
	csvstack 2019-oct-sample.csv 2019-nov-sample.csv > 2019-sample.csv;

	# Melakukan filtering untuk mendapatkan kolom yang relevan, dan aktivitas pembelian saja yang disimpan ke dalam 2019-sample-1
	csvcut -c 2-5,7-8,6 2019-sample.csv | csvgrep -c 'event_type' -m purchase > 2019-sample-1.csv;

	# Melakukan splitting kolom category_code menjadi kategori dan nama product yang disimpan ke dalam 2019-sample-1
	csvcut -c 7 2019-sample-1.csv | awk -F. '{print $1,$NF}'| awk '$1=$1' FS=" " OFS=","  |sed -e '1s/category_code/category/' -e '1s/category_code/product_name/' > 2019-sample-2.csv;
	
	# Melakukan penghapusan kolom category code di 2019-sample-1 dan menambahkan kolom kategori dan nama product yang disimpan sebagai 2019-sample-clean.csv
	cut -d$',' -f 1-6 2019-sample-1.csv | paste -d ',' - 2019-sample-2.csv > 2019-sample-clean.csv

}

# Melakukan pengecekan data 
if [[ -f 2019-oct-sample.csv && -f 2019-nov-sample.csv ]]; then
	echo "Data Available, please wait ....."
	func 

# Apabila data tidak ditemukan return error	
else
	echo "[Error] data not found"
fi

# Menghapus data hasil penggabungan dan data lain yang tidak diperlukan
rm 2019-sample.csv 2019-sample-1.csv 2019-sample-2.csv


