#!/bin/bash
# Script untuk membuat laporan sistem file

echo "Laporan File System" > report.txt
echo "===================" >> report.txt
echo "" >> report.txt

echo "Jumlah file di setiap folder:" >> report.txt
ls -R | grep ":$" | wc -l >> report.txt

echo "" >> report.txt
echo "Ukuran total direktori (dalam KB):" >> report.txt
du -sh * >> report.txt

echo "" >> report.txt
echo "Jumlah total baris dalam semua file teks:" >> report.txt
find documents -type f -name "*.txt" -exec wc -l {} + >> report.txt

echo "" >> report.txt
echo "Jumlah total baris dalam semua file gambar:" >> report.txt
find images -type f -name "*.jpg" -exec wc -l {} + >> report.txt

echo "" >> report.txt
echo "Jumlah total baris dalam semua file arsip:" >> report.txt
find archives -type f -name "*.zip" -exec wc -l {} + >> report.txt

echo "" >> report.txt
echo "Jumlah total baris dalam semua file log:" >> report.txt
find logs -type f -name "*.log" -exec wc -l {} + >> report.txt

echo "" >> report.txt
echo "Selesai membuat laporan!"
