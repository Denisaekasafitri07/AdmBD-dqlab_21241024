-- menggunakan database dqlabmartbasic
use dqlabmartbasic;

-- cek table yang tersedia
show tables;

-- cek deskripsi tiap table
desc ms_pelanggan_dqlab;
desc ms_produk_dqlab;
desc tr_penjualan_dqlab;

-- select 1 kolom dari table ms_produk_dqlab
select nama_produk from ms_produk_dqlab;

-- select 1 kolom dari table ms_pelanggan dan tr_penjualan
select nama_pelanggan from ms_pelanggan_dqlab; -- mengambil kolom nama_pelanggan
select tgl_transaksi from tr_penjualan_dqlab; -- menggambil kolom tanggal_transaksi

-- select 2 atau lebih kolom dari table ms_produk
select nama_produk, harga from ms_produk_dqlab;

-- mengambil kolom kode_pelanggan, tgl_transaksi dan harga dari table tr_penjualan_dqlab
select kode_pelanggan, tgl_transaksi, harga from tr_penjualan_dqlab;

-- mengambil seluruh kolom dalam table
-- ambil seluruh kolom pada table ms_pelanggan_dqlab
select * from ms_pelanggan_dqlab;

-- prefix dan alias
-- prefix dan table
select ms_produk_dqlab.nama_produk, ms_produk_dqlab.harga from ms_produk_dqlab;

-- prefix dari nama database dan nama table
select dqlabmartbasic.ms_produk_dqlab.nama_produk from ms_produk_dqlab;

-- Alias dari nama produk
select nama_produk as np, harga as price from ms_produk_dqlab;

-- Alias dari nama table
select nama_produk from ms_produk_dqlab as msp;
-- Alias bertemu dengan prefix (tulis aliasnya dulu baru prefix)
select msp.nama_produk from ms_produk_dqlab as msp; 

-- case 1
select nama_pelanggan, alamat from ms_pelanggan_dqlab;

-- case 2
select nama_produk, harga from ms_produk_dqlab;





