-- Active: 1710421641471@@127.0.0.1@3306
--* 1. Tambahkan record berikut kedalam tabel mhs :
insert into
    mhs (
        nim, nama, alamat, kota, sex, agama, tgl_lhr
    )
values (
        'A12.2001.00001', 'Agus Wahyu', 'Jl. Nakula I No. 5', 'Semarang', 'P', '2', '1976-08-12'
    ),
    (
        'A11.2001.00002', 'Sari Wijaya', 'A. Yani. 20', 'Solo', 'W', '1', '1977-10-11'
    ),
    (
        'A22.2001.00003', 'Lestari', 'Nakula raya 20', 'Semarang', 'W', '3', '1975-11-15'
    );

--* 2. Tampilkan seluruh field dan record mahasiswa.
select * from mhs;

--* 3. Tampilkan nama mahasiswa yang sex = ‘P’
select nama from mhs where sex = 'p';

--* 4. Tampilkan nama dan alamat mahasiswa yang nim antara A21.2001.00001 s.d A21.2001.00100’
select nama, alamat from mhs where nim between 'A21.2001.00001' and 'A21.2001.00100';


--* 5. Tampilkan nama mahasiswa yang nama depannya adalah ‘Sari’
select nama, alamat from mhs where nama like 'sari%';

--* 6. Tampilkan nama dan alamat mahasiswa yang namanya mengandung huruf ‘a’ atau huruf ‘i’.
select nama, alamat
from mhs
where
    nama like '%a%'
    or nama like '%i%';

--* 7. Tampilkan nama, alamat dan kota mahasiswa yang kota asalnya ‘Semarang’ atau ‘Solo’.
select nama, alamat, kota
from mhs
where
    kota = 'semarang'
    or kota = 'solo';

--* 8. Tampilkan nim, nama dan alamat mahasiswa yang sex nya selain ‘W’
select nim, nama, alamat from mhs where sex != "w";

--* 9. Gantilah nama mahasiswa yang nimnya ‘A21.2001.00003’ menjadi ‘Lestari Handayani’
update mhs
set
    nama = "Lestari handayani"
where
    nim = "A21.2001.00003";

--* 10. Gantilah alamat dan tanggal lahir mahasiswa  yang nimnya ‘A21.2001.00002’ menjadi ‘Sari Wijayanti’, ’1977-10-17’
update mhs
set
    nama = "Sari Wijayanti",
    tgl_lhr = "1977-10-17"
where
    nim = "A21.2001.00002";

--* 11. Hapuslah record mahasiswa yang sex = ‘P’ atau agamanya = ‘3’
delete from mhs where sex = 'p' or agama = '3';

--* 12. Hapuslah record-record mahasiswa yang nimnya anatara A21.2001.00100 s.d A21.2001.00300’
delete from mhs where nim between 'A21.2001.00100' and 'A21.2001.00300';