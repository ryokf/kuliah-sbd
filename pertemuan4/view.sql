create database latihan_3;
use latihan_3;

create table pelanggan(
    id int primary key,
    nama varchar(50),
    usia varchar(50),
    kota varchar(50),
    gaji int(11)
)

insert into pelanggan(id, nama, usia, kota, gaji) values
(001, 'Nathan', '20', 'Semarang', 10000000),
(002, 'Andini', '21', 'Solo', 20000000),
(003, 'Sita', '22', 'Surakarta', 30000000),
(004, 'Soni', '23', 'Surabaya', 40000000),
(005, 'Dedi', '24', 'Yogyakarta', 50000000),
(006, 'Ega', '25', 'Cirebon', 60000000),
(007, 'Vika', '26', 'Pekalongan', 70000000);
