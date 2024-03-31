-- Active: 1709989735783@@127.0.0.1@8889@Latihan_2
show databases;

create database Latihan_2;

use Latihan_2;

create table kategori (
    id_kategori char(3) not null primary key, jenis varchar(50)
);

desc kategori;

insert into
    kategori (id_kategori, jenis)
values ('001', 'Handphone'),
    ('002', 'Laptop'),
    ('003', 'Tablet'),
    ('004', 'Kamera'),
    ('005', 'Gaming');

create table produk (
    id_produk char(3) not null primary key, id_kategori char(3) not null, merk varchar(20), foreign key (id_kategori) references kategori (id_kategori)
);

desc produk;

insert into
    produk (id_produk, id_kategori, merk)
values ('P01', '001', 'Xiaomi'),
    ('P02', '001', 'Samsung'),
    ('P03', '002', 'Asus'),
    ('P04', '003', 'Dell'),
    ('P05', '004', 'Apple'),
    ('P06', '004', 'Nikon'),
    ('P07', '004', 'PlayStation');

select *
from produk
    inner join kategori on produk.id_kategori = kategori.id_kategori;

select *
from produk
    left join kategori on produk.id_kategori = kategori.id_kategori;

select *
from produk
    right join kategori on produk.id_kategori = kategori.id_kategori;