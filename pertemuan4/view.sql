-- Active: 1709989735783@@127.0.0.1@8889@latihan_3
create database latihan_3;

use latihan_3;

create table pelanggan (
    id int primary key, nama varchar(50), usia varchar(50), kota varchar(50), gaji int(11)
)

insert into
    pelanggan (id, nama, usia, kota, gaji)
values (
        001, 'Nathan', '35', 'Surabaya', 6250000
    ),
    (
        002, 'Andini', '25', 'Solo', 9000000
    ),
    (
        003, 'Sita', '23', 'Bandung', 8000000
    ),
    (
        004, 'Soni', '25', 'Bekasi', 5000000
    ),
    (
        005, 'Dedi', '27', 'Palembang', 6000000
    ),
    (
        006, 'Ega', '22', 'Semarang', 5000000
    ),
    (
        007, 'Vika', '24', 'Pemalang', 7000000
    );

select *
from pelanggan
where
    kota in (
        'solo', 'semarang', 'pemalang'
    );

create view pelanggan_jateng as
select *
from pelanggan
where
    kota in (
        'solo', 'semarang', 'pemalang'
    );

select * from pelanggan_jateng;

select nama from pelanggan_jateng;

select * from pelanggan_jateng where gaji > 5000000;

show full tables in latihan_3 where table_type like 'VIEW';

alter view pelanggan_jateng as
select *
from pelanggan
where
    kota in (
        'solo', 'semarang', 'pemalang'
    );

drop view pelanggan_jateng;

-- LATIHAN VIEW
-- 1. Buatlah view bernama produk_handphone dengan query yang menghasilkan informasi id_produk,
-- merk, jenis dari gabungan 2 tabel (produk dan merk)
create view produk_handphone as
select id_produk, produk.merk, kategori.jenis
from produk
    join kategori on produk.id_kategori = kategori.id_kategori
where
    kategori.jenis = 'handphone';

-- 2. Buatlah view bernama produk_laptop dengan query yang menghasilkan informasi id_produk,
-- merk, jenis dari gabungan 2 tabel (produk dan merk)
create view produk_laptop as
select id_produk, produk.merk, kategori.jenis
from produk
    join kategori on produk.id_kategori = kategori.id_kategori
where
    kategori.jenis = 'laptop';

