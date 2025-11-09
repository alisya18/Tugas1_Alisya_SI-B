#!/bin/bash
# Script pencarian file lengkap: berdasarkan nama, ukuran, dan isi

echo "Masukkan kata kunci pencarian:"
read keyword

    echo "🔍 Mencari file berdasarkan nama..."
    find . -type f -name "$keyword"
echo ""
    echo "🔍 Mencari file berdasarkan ukuran $ukuran..."
    find . -type f -size "$keyword"
echo ""
    echo "🔍 Mencari file berdasarkan isi (konten)..."
    grep -rl "$keyword" .
