-- menggunakan database
use dqlabmartbasic;

-- mengurutkan data menggunakan ORDER BY
-- ambil nama produk dan qty dari tabel tr_penjualan _dqlab kemudian urutkan berdasarkan qty
select nama_produk, qty from tr_penjualan_dqlab order by qty; -- secara default diurutkan dari yang terkecil ke terbesar
select nama_produk, qty from tr_penjualan_dqlab order by nama_produk;

-- mengurutkan lebih dari satu kolom menggunakan order by
-- ambil nama produk dan quantity dari table tr_penjualan_dqlab kemudian urutkan berdasarkan qty dan nama_produk
select nama_produk, qty from tr_penjualan_dqlab order by qty, nama_produk;

-- latihan mandiri 1
select * from tr_penjualan_dqlab order by tgl_transaksi, qty;
select * from ms_pelanggan_dqlab order by nama_pelanggan; 
select * from ms_pelanggan_dqlab order by alamat;

-- asc dan desc mengurutkan dari besar ke kecil
-- ambil nama_produk dan qty dari tabel tr_pejualan_dqlab urutkan berdasarkan quantity secara decs
select nama_produk, qty from tr_penjualan_dqlab order by qty desc;

-- mengurutkan dua kolom dengan ascending dan descending
select nama_produk, qty from tr_penjualan_dqlab order by qty desc, nama_produk asc;

-- latihan mandiri 2
select * from tr_penjualan_dqlab order by tgl_transaksi desc, qty asc;
select * from ms_pelanggan_dqlab order by nama_pelanggan desc;
select * from ms_pelanggan_dqlab order by alamat desc;

-- ambil nama produk, qty, harga dan total beli dari tr_penjualan_dqlab urutkan berdasarkan total beli
select nama_produk, qty, harga, qty*harga as total_beli from tr_penjualan_dqlab order by total_beli desc;

-- latihan 3 
select nama_produk, qty, harga, diskon_persen, qty*harga - (diskon_persen/100 )
 as total_harga from tr_penjualan_dqlab order by total_harga;
 
 -- fungsi agregasi 
 -- menghitung  penjumlahan nilai qty seluruh row pada tabel penjumlahan
 select sum(qty) from tr_penjualan_dqlab;
 select sum(nama_produk) from tr_penjualan_dqlab; -- bisa tapi akan menghasilkan nilai 0
 
 -- menghitumh jumlah seluruh row pada tabel transaksi
select count(*) from tr_penjualan_dqlab;

-- mengitung penjumlahan nilai qty dan jumlah seluruh row ditabel penjualan
select sum(qty), count(*) from tr_penjualan_dqlab;

-- menghitung rata-rata qty, nilai max qty, dan nilai min qty
select avg(qty), max(qty), min(qty) from tr_penjualan_dqlab;

-- mengitung jumlah nilai unik dari nama_produk ditabel tr_penjualan
select count(distinct nama_produk) from tr_penjualan_dqlab;
select count(*), count(distinct nama_produk) from tr_penjualan_dqlab;

-- GROUP BY
-- mengambil grouping nilai dari kolo nama_produk
select nama_produk from tr_penjualan_dqlab group by nama_produk;

-- mengambil nilai dari kolom nama_produk dan qty pada tr_penjualan
select nama_produk, qty from tr_penjualan_dqlab group by nama_produk, qty order by qty desc;

-- mengambil jumlah qty dari grouping nama_produk terhadap seluruh row ditabel penjualan
select nama_produk, sum(qty) from tr_penjualan_dqlab group by nama_produk;

-- having digunakan ketika kalusa where tidak bisa digunakan
-- having utk melakukan filtering
select nama_produk, sum(qty) from tr_penjualan_dqlab group by nama_produk having sum(qty) >2;

-- latihan mandiri
-- Melihat daftar nama produk yg total jumlah produk terjual per kelompok nama adalah di atas nilai 4
select nama_produk, sum(qty) from tr_penjualan_dqlab group by nama_produk having sum(qty) >4;

-- melihat daftar nama produk yang total jumlah produk terjual per kelompok nama produk sama dengan 9
select nama_produk, sum(qty) from tr_penjualan_dqlab group by nama_produk having sum(qty) = 9;

-- melihat daftar kelompok nama produk dan total nilai penjualan (harga dikalikan jumlah dikurangi diskon) dengan dan urutan berdasarkan penjumlahan terbesar 
select nama_produk, qty, harga, diskon_persen, (harga*qty - diskon_persen/100) from tr_penjualan_dqlab group by nama_produk, qty order by qty desc;
