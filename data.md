# data
ID:20220317220644

dataset per 17 Maret 2022:
- demand dalam bentuk peti hasil agregat dari rupiah
- parameter agregasi: 1 peti => isi 20000 lbr Uang Kertas (UK) / isi 5000 keping Uang Logam (UL)
plan buat konversi model jdi lebih granular (per pecahan flownya):

| unit              | konversi          |
|-------------------|-------------------|
| 1 peti            | 2 pak Uang Kertas |
| 1 peti            | 10 pak Uang Logam |
| 1 pak Uang Kertas | 10000 lembar      |
| 1 pak Uang Logam  | 500 keping        |

jdi nnti tiap pecahan bakal diubah jadi satuan peti tapi bisa desimal, [[20220317222833]] modelnya harus mastiin bahwa ada nilai peti yg bulat nntinya dan jumlah tiap peti dicover dalam trip yang bulat juga.

