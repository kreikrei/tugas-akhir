---
title: "BAB 4 HASIL DAN PEMBAHASAN"
...
# HASIL DAN PEMBAHASAN
ID:20220317161039

## Pemahaman Masalah

### Analisis Pemangku Kepentingan

### Identifikasi Elemen Permasalahan

### Pengembangan Diagram Sistem Relevan
diagram jaringan (time-expanded)
influence diagram

## Formulasi Model

### Penyusunan Model
konsep dasar model:
- model deterministik + why
- direct shipping strategy + why [@custodio2006] pg 10/21
- penggunaan forecast + why
- pemrograman bilangan bulat
- lebih spesifik lagi, strukturnya mirip min cost multicommodity network flow
eksposisi model:
- list persamaan2nya

### Verifikasi Model
tabel konversi satuan

## Pengembangan Prosedur Pencarian Solusi

### Implementasi Algoritma
pola dasar algoritma:
- dari jenis model: pemrograman integer => relaksasi (simpleks) + branch and cut → teknik dasar algoritma
- dari ukuran permasalahan: sifat optimasinya aproksimasi (kasih _rule_ aproksimasi) → sifat optimasi
perangkat komputasi:
- hardware: spek komputer → digunakan komputer karena ukuran permasalahan
- software: Julia Mathematical Programming (JuMP) + Gurobi diprogram dengan bahasa pemrograman julia → krn jenis modelnya
struktur data:
- tabel-tabel libs init (khazanah moda trayek demand_forecast)
- transformasi-transformasi dr data ke model (hubungan data dengan variabel yg mau dibuat)
eksposisi algoritma:
- pseudocode algoritma

### Verifikasi Algortima
test cases:
- zero demand => zero transport
- single stock supplier, multiple demand location, same cost, same distance => break bulk
- multiple stock supplier, single demand location, same cost, same distance => consolidate
- not enough stock => infeasible
- emulate frontloading

## Pengujian, Analisis, dan Perbaikan Model

### Validasi Model

### Analisis Sensitivitas

### Analisis Implikasi Manajerial

## Pengumpulan Data

so far rencananya adalah menggabung hasil dari semua langkah jadi satu bab.

