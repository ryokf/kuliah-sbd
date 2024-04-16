-- Active: 1709989735783@@127.0.0.1@8889
show databases;

use kuliah;

show tables;

drop table dosen;

create table dosen(
    kode_dos int(4) unsigned not null primary key AUTO_INCREMENT,
    nama_dos varchar(30) not null,
    alamat_dos varchar(50) not null,
    tgl_masuk date
);

alter table dosen add column kota_dos char(20) after alamat_dos;

desc dosen;

insert into dosen
    (nama_dos, alamat_dos, tgl_masuk, kota_dos)
values
    ('Arief Budiman, Ir.', 'Jl. A. Yani 20', '1990-02-19', 'Semarang'),
    ('Husni, Prof.', 'Jl. Merdeka Raya', '1988-10-13', 'Semarang'),
    ('Candawti, Dra.', 'Perum Korpri I', '1994-09-20', 'Solo'),
    ('Irawan S., DR.', 'Jl. Kemuning Barat 11', '1992-04-15', 'Semarang'),
    ('Sumiati, SE., M.Si.', 'Jl. Seroja Indah 100', '1995-08-11', 'kudus')

update dosen
set kota_dos = 'Semarang', alamat_dos = 'Perum Pondok Indah C-10', tgl_masuk = '21-09-1994'
where nama_dos = 'Candawti, Dra.';

-- tampilkan nama_dos, alamat_dos, lama_kerja(gunakan tahun) seluruh dosen

select
    nama_dos, alamat_dos, year(curdate()) - year(tgl_masuk) as lama_kerja
from
    dosen;

