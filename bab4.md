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

Sumber Data:

- Rekapitulasi OIP EKU (2019)
- Rekapitulasi Biaya Remise KDK (2017)
- Rekapitulasi Biaya Remise DPU (2017)
- Rute Kapal Barang Sesuai Kontrak (2015)
- Rute Kapal Penumpang Sesuai Kontrak (2015)
- Rute Kereta Api Sesuai Kontrak (2015)
- Kapasitas Khazanah Terpasang (2016)
- Lokasi Tiap Khazanah
- Laporan Pelaksanaan Tugas dan Wewenang Bank Indonesia (2019)

Kebutuhan Data:

- demand forecast (dalam peti)
  - struktur data final (kolom yang diminta/refer ke eksposisi struktur data): i - t - value
  - dokumen input: Rekapitulasi OIP EKU (2019)
  - proses transformasi: konversi rupiah ke lembar tiap pecahan, konversi unit pecahan (lembar/keping) ke peti
- demand realization (dalam peti): merupakan dokumen turunan dari demand forecast untuk kebutuhan simulasi
  - struktur data final sama dengan demand forecast: i- t - value
  - dokumen input: demand forecast
  - proses transformasi: dibuat dua jenis fungsi transformasi yang menggunakan parameter tunggal. Fungsi-fungsi dibuat sedemikian rupa sehingga akan menghasilkan jarak Norma L1 atau Norma Manhattan yang sama untuk nilai parameter tunggal yang sama. Hal ini dilakukan untuk memudahkan pengelompokan realisasi permintaan peti uang dalam pengujian-pengujian yang dilakukan.
    - noisify_fixed: penggunaan simpangan yg bersifat konstan pada tiap entri estimasi permintaan. (eksposisi fungsinya)
    - noisify_varied: penggunaan simpangan yang bersifat proporsional terhadap tiap entri estimasi permintaan. (eksposisi fungsinya)
- stok awal (dalam peti):
  - struktur data final (kolom yang diminta/refer ke eksposisi struktur data)
  - dokumen input: sama dengan demand forecast
  - proses transformasi: sama dengan demand forecast
- trayek aktual:
  - struktur data final: u - v - moda
  - dokumen input:
    - Rekapitulasi Biaya Remise KDK (2017)
    - Rekapitulasi Biaya Remise DPU (2017)
  - proses transformasi: filter unique
- trayek usulan
  - struktur data final: u - v - moda
  - dokumen input: sama dengan trayek aktual dengan tambahan
    - sama dengan trayek aktual
    - Rute Kapal Barang Sesuai Kontrak (2015)
    - Rute Kapal Penumpang Sesuai Kontrak (2015)
    - Rute Kereta Api Sesuai Kontrak (2015)
  - proses transformasi: agregasi semua data
- parameter biaya moda transportasi:
  - struktur data final: nama - kapasitas - biaya variabel (/peti) - biaya tetap (/kontainer * km)
  - dokumen input:
    - Rekapitulasi Biaya Remise KDK (2017)
    - Rekapitulasi Biaya Remise DPU (2017)
  - proses transformasi: regresi linear dari data pengiriman tiap moda, didapatkan hasil sebagai berikut: _penyajian hasil_
- khazanah -> agregasi set data: menggabungkan data terkait tiap khazanah, yaitu: lokasi berupa koordinat lintang bujur dan kapasitas penyimpanan.
- tingkat aktivitas distribusi uang tahun 2019: dari laporan ini hanya dapat diekstrak realisasi agregat kebutuhan uang di Indonesia tiap pecahan, serta jumlah pengiriman tercatat serta jumlah uang yang terpindahkan.
