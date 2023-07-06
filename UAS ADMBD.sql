use dqlabmartbasic;

-- nomor 1
select kode_pelanggan, sum(harga), qty%3 from tr_penjualan_dqlab;

-- nomor 2
select nama_produk, qty, harga, qty*harga as total from tr_penjualan_dqlab 
where nama_produk like "_1" and qty*harga>100000;

-- nomor 3
select kode_transaksi, kode_produk, tgl_transaksi from tr_penjualan_dqlab 
where year(tgl_transaksi)>2019 order by tgl_transaksi asc;
