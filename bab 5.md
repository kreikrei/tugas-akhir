---
title: "BAB 5 PENGUJIAN DAN ANALISIS"
...

# PENGUJIAN DAN ANALISIS

ID:20220317161243

key analyses:

1. [[20220317161429]] analisis sensitivitas (trhdp parameter biaya)
2. masih bagian dari [20220317155345](simulasi.md) simulasi operasionalisasi, tapi kyk jelasin secara umumnya dulu:
    - model konseptual simulasinyaa, ntah pseudocode atau klo nemu diagram bagus juga.
    - dry run (?) kyk simulasi aja sekali trs sajiin hasilnya yg kyk si graf _**struktur jaringan yang terbentuk (as in arc mana aja yang kepake)**_, _**sentralitas tiap khazanah buat outflow dan inflow**_,  _**tingkat aktivitas pengiriman tiap pecahan tiap periode**_, _**komposisi biaya**_,
3. [[20220317155345]] simulasi operasionalisasi. sejauh ini, simulasi yg kykny bakal favors us:
    - ngebandingin performa mempertimbangkan keseluruhan jaringan transport dengan jaringan transport Bank Indonesia saat ini. h0: struktur jaringan Bank Indonesia saat ini akan generate cost yg lebih besar
    - ngebandingin performa mipGap yg bervariasi. h0: dengan mipGap yang lebih besar ada kenaikan biaya, tapi ga sesignifikan itu
    - ngebandingin klo panjang planning horizonnya bervariasi. h0: makin panjang planning horizon makin bagus (ntah biaya jdi lebih kecil atau lost sales jadi lebih kecil)
    - ngebandingin klo rolling horizonnya bervariasi. h0-nya masih belum jelas si ini, tapi intinya eksisting Bank Indonesia ngeupdate rencana distribusi 3 bulan sekali, so kita bandingin dengan update 1 bulan/ 2 bulan sekali
    - ngebandingin klo dengan reliability forecast yang berbeda jadi gimana. jdi klo realisasi demand-nya ternyata meleset jauh dari target awal gituu.
4. implikasi manajerial

beberapa temuan baru ada di [[20220330203810]] jurnal 30 Maret 2022. desain dr simulasi harus ngecover apa aja yg mau disimulasiin.
