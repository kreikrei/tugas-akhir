# METODOLOGI

ID: 20220317160650

## Pendekatan Penelitian

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

Pembagian ini digunakan karena memberikan poin tersendiri pada pengembangan prosedur pencarian solusi atau algoritma. Hal ini menjadi penting karena tahap ini sangat memengaruhi dan dipengaruhi tahap-tahap lainnya. Meskipun sifatnya yang tidak saklek, inti dari pendekatan ini adalah mengekstrak permasalahan di dunia nyata menjadi sebuah model yang dapat dimanipulasi dan diuji kemudian mengembangkan kebijakan serta mengimplementasikan keputusan berdasarkan hasil.

## Tahapan Penelitian

Pada bagian ini akan dijelaskan bagaimana tahapan-tahapan metodologi penelitian operasional yang dijelaskan sebelumnya diterapkan pada penelitian ini. Secara umum, tahapan penelitian ini dirangkum dalam **Gambar xx**. Dapat diperhatikan bahwa tahap implementasi keputusan tidak menjadi bagian dari penelitian ini karena sumber daya yang besar yang diperlukan untuk mengeksekusinya.

`Gambar xx`

### Pemahaman Masalah

Sudah diketahui bahwa permasalahan yang dihadapi merupakan permasalahan logistik. Namun, pengetahuan tersebut tidaklah cukup untuk dapat mengembangkan sebuah solusi. Seluruh langkah dalam tahap ini bertujuan untuk memberikan uraian yang terstruktur terkait permasalahan yang dihadapi. Langkah-langkah tersebut adalah:

- Analisis Pemangku Kepentingan
- Identifikasi Elemen Permasalahan
- Pengembangan Diagram Sistem Relevan

Analisis pemangku kepentingan dilakukan dengan melakukan tabulasi *problem owner*, *problem user*, *problem customer*, dan *problem analyst* berdasarkan definisi yang diberikan pada [[bab 2]] (2.x). Selain itu, diidentifikasi elemen-elemen permasalahannya berdasarkan pada enam (6) elemen permasalahan yang dijabarkan pada [[bab 2]] (2.x). Terakhir, dikembangkan diagram standar sebagai objek representasi permasalahan untuk memandu formulasi model. Hasil dan pembahasan tiap langkah pada tahap ini dijabarkan pada [[bab 4]] (4.1).

### Formulasi Model

Berbekalkan pemahaman yang terstruktur akan permasalahan, dalam tahap ini, dikembangkan perangkat matematis yang dapat dimanipulasi untuk mendapatkan solusi yang optimal. Pada tahap ini dilakukan:

- Penyusunan Model
- Verifikasi Model

Penyusunan model merupakan kombinasi dari penggunaan konsep-konsep yang sudah ada (pendekatan struktural) dengan kreativitas analis untuk merunut sendiri permasalahan yang diteliti (pendekatan proses). Penelitian operasional sebagai sebuah disiplin memiliki arsenal yang besar untuk pengembangan model, seperti: pemrograman linear, pemrograman integer, pemrograman dinamis, dan simulasi. Pada langkah ini, konsep-konsep tersebut dipilih dan model disusun sesuai dengan struktur masalah serta struktur model terpilih.
Dalam penelitian ini, setiap model yang dicoba akan melalui langkah verifikasi. Model dipastikan memiliki logika yang koheren yang sesuai dengan intensi pembuatan model. Verifikasi yang dilakukan di penelitian pada tahap ini adalah merunut kembali transformasi satuan-satuan yang ada dalam model. Karena sifatnya yang iteratif, model yang digunakan dalam penelitian dan dijabarkan pada [[bab 4]] (4.2) hanya versi termutakhir.

### Pengembangan Prosedur Pencarian Solusi

Sebuah model datang satu paket dengan pencari solusinya. Prosedur sistematis manipulasi model untuk mencari solusi ini biasa disebut dengan algoritma. Tahapan ini berfokus pada desain algoritma tersebut dan seluruh hasil termutakhir, yang akhirnya digunakan dalam penelitian, disajikan pada [[bab 4]] (4.3). Langkah-langkah penting [@levitin2012] yang dilakukan dalam penelitian ini adalah:

- Implementasi Algoritma
- Verifikasi Algoritma

Implementasi algoritma diawali dengan pemilihan perangkat komputasi dan pola dasar algortima sangat bergantung pada jenis model, ukuran masukan, serta kriteria performa wajar yang diinginkan. Beberapa perangkat komputasi adalah komputasi tangan atau digital -- di mana komputasi digital memiliki beberapa pilihan alat. Keputusan-keputusan penting pola dasar berupa sifat optimasinya, teknik pencarian, dan struktur datanya.
Setelah diimplementasi, algoritma diverifikasi hasilnya. Verifikasi dilakukan dengan menggunakan kasus-kasus dasar yang solusinya diketahui oleh peneliti serta mengindikasikan perilaku yang tepat dari model serta algoritma yang dikembangkan.

### Pengujian dan Analisis

Solusi dari permasalahan operasionalisasi distribusi ini merupakan bagian dari sebuah rangkaian aktivitas yang lebih besar seperti yang diimplikasikan pada [[bab 1]] (1.2) dalam Gambar xx. Karena komponennya yang banyak dan saling memengaruhi secara nonlinear serta keberadaan ketidakpastian dalam sistem, metode terbaik untuk menguji performa model yang sudah dikembangkan adalah simulasi [@kelton2015] pg. 5. Melalui metode ini, dapat dilakukan eksperimen terhadap input sistem dan parameter model perencanaan. Pada tahap ini dilakukan validasi terhadap model di mana diperiksa kedekatan model dengan sistem nyata. Beberapa penyesuaian terhadap model nantinya akan perlu dilakukan untuk menyelesaikan keseluruhan pengujian dan analisis. Terakhir, pada tahap ini ditelusuri implikasi manajerial penggunaan model di dalam sistem logistik Bank Indonesia sebagai primer implementasi keputusan. Struktur tahap ini beserta hasil dan pembahasannya dijabarkan pada [[bab 4]] (4.4).

### Pengumpulan Data

Pengumpulan data dan pengolahan -- data merupakan sebuah komponen dalam pendekatan penelitian operasional yang sifatnya paralel dengan seluruh tahap. Setiap tahapan bisa jadi membutuhkan data yang berbeda dan proses pengolahan yang berbeda. Seluruh kegiatan pengumpulan data akan dirangkum pada [[bab 4]] (4.6).
