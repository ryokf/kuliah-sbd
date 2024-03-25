-- Active: 1709989735783@@127.0.0.1@8889@db_usaha
show tables;

drop table mhs;

desc mhs;

-- 1. Buatlah sebuah tabel dengan nama mhs dengan struktur tabel sebagai berikut :
create table mhs(
    nim char(14) not null unique primary key,
    nama char(25) not null unique,
    kelamin char(1) check(kelamin in ('L', 'P')),
    agama char(1) check(agama in ('1', '2', '3', '4', '5')),
    tgl_lhr date
)

alter table mhs
-- 2. Tambahkan field alamat varchar(30) yang diletakkan setelah field nama
    add column alamat varchar(30) after nama,
-- 3. Tambahkan field kota char(20) yang diletakkan setelah field alamat
    add column kota char(20) after alamat;

-- 4. Gantilah nama field kelamin menjadi sex (tipe datanya masih tetap)
ALTER TABLE mhs
    CHANGE COLUMN kelamin sex CHAR(1);

-- 5. Masukan record-record berikut :
insert into mhs (nim, nama,alamat, kota, sex, agama, tgl_lhr) values
    ('A21.2001.00234', 'Dedy sutanta', 'JL.A.Yani 20', 'Solo','P', '1', '1979-10-20'),
    ('A21.2001.00214', 'Budi Satria', 'JL.Dago 10', 'Yogyakarta','P', '1', '1978-11-22'),
    ('A21.2001.00224', 'Sulis', 'JL.Nakula I 25', 'Semarang','W', '2', '1975-08-16'),
    ('A21.2001.00334', 'Suci Andriani', 'JL.Seroja Raya', 'Semarang','W', '3', '1977-09-21'),
    ;