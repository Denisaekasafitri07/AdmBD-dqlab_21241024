-- menggunakna select stetment untuk 1 nilai literal
select 77 as literalinteger; -- literal untuk bilangan bulat
select 'mataram' as kota; -- literal untuk char
select '2023/20/05' as date; -- leteral untuk tanggal
select 77 > 3 as booleanliteral; -- literal boolean

-- menggunakan select stetment untuk 2 atau lebih nilai literal
select 77 as angka, true as nilai_logika, 'UNDIKMA' as teks;

-- menggunakan select untuk null
select NULL as kosong;

-- menggunakan select stetment untuk operator matematika
select 5%2 as sisa_bagi, 5/2 as hasil_bagi, 5 DIV 2 as hasil_bagi_int;

-- latihan 
select 4*2 as hasilkali, (4*8)%7 as hasil, (4*8) MOD 7 hasil;

-- operator matematika untuk menghasilkan total beli (qty
use dqlabmartbasic;
select qty*harga as total_beli from tr_penjualan_dqlab;
select nama_produk, qty*harga as total_beli from tr_penjualan_dqlab;

-- operator perbandingan 
select 5=5,5<>5, 5<>4, 5!=5, 5!=4,5>4;

-- latihan
select  1 = true, 1 = false,5>=5, 5.2=5.20000, null = 1, null = null;
select nama_produk, qty, qty >= 3 from tr_penjualan_dqlab;

-- funcion
select pow(3,2), round(3.14), round(3.54), round(3.155, 1), round(3.155, 2), floor(4.28), floor(4.78), ceiling(4.39), ceiling(4.55);
select now(), year('2022-05-20'), datediff('2022-05-20', '2022-05-01'), day(now());

-- DBEAVER
-- fungsi pada tabel tr_penjualan
-- mendapatkan lastest buy dari produk
select nama_produk, datediff(now(), tgl_transaksi) as latest_buy, year(tgl_transaksi) from tr_penjualan_dqlab;

-- klausal WHERE untuk filtering atau penyaringan
-- ambil nama produk, dan qty dari label tr_penjualan_dqlab yang qtylebih dari 2
select nama_produk, qty from tr_penjualan_dqlab
where qty > 3;

select nama_produk, tgl_transaksi, qty, harga, qty*harga as total_beli 
from tr_penjualan_dqlab 
where kode_pelanggan ='dqlabcus07' AND qty > 1;

-- penggunaan LIKE pada stetmen SELECT
-- cari 
select nama_produk from tr_penjualan_dqlab
where nama_produk LIKE 'f%';

-- latihan
select nama_produk from tr_penjualan_dqlab
where nama_produk LIKE 'a%';

select kategori_produk from ms_produk_dqlab
where kategori_produk LIKE 't%';

select kategori_produk from ms_produk_dqlab
where kategori_produk LIKE 'un%';