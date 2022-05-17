---
title: "BAB 3 METODOLOGI"
...

# BAB 3 METODOLOGI
ID: 20220317160650

## 3.1 Pendekatan Penelitian
Dalam penelitian ini, pendekatan yang sesuai untuk karakteristik permasalahan yang dihadapi adalah pendekatan penelitian operasional. Penelitian operasional merupakan penerapan metode ilmiah dalam pengambilan keputusan terkait desain dan operasi sebuah sistem [@ravindran2009]. Secara spesifik, pendekatan operasional yang dilakukan ini biasa disebut metodologi *Hard Operations Research* dan metodologi ini mengasumsikan beberapa hal, yaitu:
- Permasalahan sudah didefinisikan dengan jelas, yang berarti:
  - objektif dari pengambil keputusan diketahui dan terdapat kriteria untuk memastikan kapan objektif tersebut tercapai
  - jika terdapat konflik dalam objektif, pertukaran nilai dapat didefinisikan
  - alternatif tindakan diketahui
  - batasan-batasan terhadap alternatif tindakan tersebut diketahui
- Permasalahan secara relatif terstruktur, yang berarti:
  - hubungan antarvariabel dapat dirunut
  - perilaku sistem dapat ditangkap secara matematis
  - komputasi pencarian solusi fisibel secara ekonomi
- Permasalahan dapat dibatasi oleh sistem yang lebih luas
- Optimasi objektif adalah ideal selama memungkinkan
- Permasalahan dianggap sebagai kejadian natural sehingga manusia dapat dipandang sebagai objek pasif
- Jika terdapat beberapa pemangku kebijakan, pengambilan keputusan dapat diambil sesuai kesepakatan bersama
- Pembuat keputusan memiliki kekuasaan untuk menerapkan dan mengimplementasikan solusi

Metodologi penelitian operasional sendiri secara umum memiliki beberapa tahapan yang terdefinisi dengan baik, namun urutannya secara spesifik bersifat nonlinear, saling tumpang tindih, dan mengikuti konteks permasalahan masing-masing peneliti. [@hillier2015] merangkum tahapan tersebut menjadi beberapa bagian, yaitu:

1. Pemahaman masalah
2. Formulasi model
3. Pengembangan prosedur pencarian solusi
4. Pengujian, analisis, dan perbaikan model
5. Implementasi keputusan

Pembagian ini disajikan karena memberikan poin tersendiri pada pengembangan prosedur pencarian solusi atau algoritma. Hal ini menjadi penting karena tahap ini sangat memengaruhi dan dipengaruhi tahap-tahap lainnya. Meskipun sifatnya yang tidak saklek, inti dari pendekatan ini adalah mengekstrak permasalahan di dunia nyata menjadi sebuah model yang dapat dimanipulasi dan diuji kemudian mengembangkan kebijakan serta mengimplementasikan keputusan berdasarkan hasil.

## 3.2 Tahapan Penelitian
Pada bagian ini akan dijelaskan bagaimana tahapan-tahapan metodologi penelitian operasional diterapkan pada penelitian ini. Secara umum, setiap tahapan dilaksanakan, namun, secara khusus, implementasi keputusan dikerjakan secara parsial. Secara umum, tahapan penelitian ini dirangkum dalam **Gambar xx**.

`Gambar xx`

### 3.2.1 Pemahaman Masalah
Sudah diketahui bahwa permasalahan yang dihadapi merupakan permasalahan logistik. Namun, pengetahuan tersebut tidaklah cukup untuk dapat mengembangkan sebuah solusi. Seluruh langkah dalam tahap ini bertujuan untuk memberikan uraian yang terstruktur terkait permasalahan yang dihadapi. Langkah-langkah tersebut adalah:
- Analisis Pemangku Kepentingan
- Identifikasi Elemen Permasalahan
- Pengembangan Diagram Sistem Relevan

Analisis pemangku kepentingan dilakukan dengan melakukan tabulasi *problem owner*, *problem user*, *problem customer*, dan *problem analys* berdasarkan definisi yang diberikan pada [[bab 2]] (2.x). Selain itu, diidentifikasi elemen-elemen permasalahannya berdasarkan pada enam (6) elemen permasalahan yang dijabarkan pada [[bab 2]] (2.x). Terakhir, dikembangkan diagram standar sebagai objek representasi permasalahan untuk memandu formulasi model. Hasil dan pembahasan tiap langkah pada tahap ini dijabarkan pada [[bab 4]] (4.1).

### 3.2.2 Formulasi Model
Berbekalkan pemahaman yang terstruktur akan permasalahan, dalam tahap ini, dikembangkan perangkat matematis yang dapat dimanipulasi untuk mendapatkan solusi yang optimal. Langkah-langkah yang dilakukan dalam penelitian ini adalah:
- Penyusunan Model
- Verifikasi Model

Penyusunan model merupakan kombinasi dari penggunaan konsep-konsep yang sudah ada (pendekatan struktural) dengan kreativitas analis untuk merunut sendiri permasalahan yang diteliti (pendekatan proses). Penelitian operasional sebagai sebuah disiplin memiliki arsenal yang besar untuk pengembangan model, seperti: pemrograman linear, pemrograman integer, pemrograman dinamis, dan simulasi. Dalam penelitian ini, setiap model yang dicoba akan melalui langkah verifikasi. Model dipastikan memiliki logika yang koheren yang sesuai dengan intensi pembuatan model. Verifikasi yang dilakukan di penelitian pada tahap ini adalah merunut kembali transformasi satuan-satuan yang ada dalam model. Karena sifatnya yang iteratif, model yang digunakan dalam penelitian dan dijabarkan pada [[bab 4]] (4.2) hanya versi termutakhir.

### 3.2.3 Pengembangan Prosedur Pencarian Solusi
Sebuah model datang satu paket dengan pencari solusinya. Prosedur sistematis manipulasi model untuk mencari solusi ini biasa disebut dengan algoritma. Tahapan ini berfokus pada desain algoritma tersebut dan seluruh hasil termutakhir, yang akhirnya digunakan dalam penelitian, disajikan pada [[bab 4]] (4.3). Langkah-langkah penting [@levitin2012] yang dilakukan dalam penelitian ini adalah:
- Penentuan Perangkat Komputasi
- Penentuan Pola Dasar Algoritma
- Implementasi dan Verifikasi Algoritma

Meskipun dalam pengembangannya akan terjadi perubahan-perubahan, seleksi perangkat komputasi dapat dilakukan sedini mungkin. Pilihan perangkat komputasi sangat bergantung pada jenis model, ukuran masukan, serta kriteria performa wajar yang diinginkan. Selain itu, perlu ditentukan pola dasar algoritma yang akan dibangun, yaitu: penerapan pencarian solusi eksak atau aproksimasi, teknik dasar pencarian solusi, serta struktur data esensial untuk algoritma. Sama seperti perangkat komputasi, penentuan pola dasar sangat bergantung pada jenis model, ukuran masukan, serta kriteria performa wajar yang diinginkan. Kemudian, algoritma diimplementasi dan diverifikasi hasilnya. Pada penelitian ini, verifikasi dilakukan dengan menggunakan kasus-kasus dasar yang solusinya diketahui oleh peneliti serta mengindikasikan perilaku yang tepat dari model serta algoritma yang dikembangkan.

### 3.2.4 Pengujian, Analisis, dan Perbaikan Model
Solusi dari permasalahan operasionalisasi distribusi ini merupakan bagian dari sebuah rangkaian aktivitas yang lebih besar seperti yang diimplikasikan pada [[bab 1]] (1.2) dalam Gambar xx. Karena komponennya yang banyak dan saling memengaruhi secara nonlinear serta keberadaan ketidakpastian dalam sistem, metode terbaik untuk menguji performa model yang sudah dikembangkan adalah simulasi [@ravindran2009]. Melalui metode ini, dapat dilakukan eksperimen terhadap input sistem dan parameter model perencanaan. Pada tahap ini juga dilakukan validasi terhadap model di mana diperiksa kedekatan model dengan sistem nyata. Beberapa penyesuaian terhadap model nantinya akan perlu dilakukan untuk menyelesaikan keseluruhan pengujian dan analisis. Struktur tahap ini beserta hasil dan pembahasannya dijabarkan pada [[bab 4]] (4.4).

### 3.2.5 Implementasi Keputusan
Ketika sebuah model dinyatakan valid dan sudah diuji sedemikian rupa terhadap perubahan-perubahan, solusi dapat diajukan untuk diimplementasikan kembali ke sistem nyata. Untuk dapat diimplementasi dengan baik, perlu dilakukan analisis implikasi manajerial untuk memeriksa perubahan-perubahan yang diperlukan seiring dengan implementasi penggunaan model dalam rangkaian aktivitas sistem. Selain itu, akan diperlukan perencanaan *budget* dan *timeline* implementasi sebagai sebuah proyek, namun hal tersebut tidak masuk dalam lingkup penelitian.

## 3.3 Pengumpulan Data

pendekatan penelitian: penelitian operasional
langkah-langkah
pengumpulan [[20220317220644]] data
analisis hasil

notes: heavy di penelitian operasional dan tahapan2nya, asumsi di bab 2 udah dijelasin tentang: 
- sistem rantai suplai
- teori sistem & pemodelan
- manajemen ilmiah (?): strategic, tactical, operational pengennya masuk si
- pemrograman matematis
- simulasi
- Similarity Measures