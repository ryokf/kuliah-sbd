-- Active: 1709989735783@@127.0.0.1@8889@kuliah
--* 1. Buatlah sebuah tabel pada database yang sudah anda miliki dengan nama tabel mkuliah dan struktur tabelnya adalah sebagai berikut :
create table mkuliah (
    kode_kul char(7) not null unique primary key, nama_kul char(20) not null, sks decimal(2, 0) not null, smt_tawar char(1) check (smt_tawar between '1' and '8'), klp_kul char(1) default '1' check (klp_kul between '1' and '8'), progdi char(1) check (progdi between '1' and '5')
);

--* 2. Isilah tabel mkuliah dengan data-data berikut :
INSERT into
    mkuliah (
        kode_kul, nama_kul, sks, smt_tawar, klp_kul, progdi
    )
values (
        'A21-101', 'Pancasila', 2, '1', '1', '1'
    ),
    (
        'A21-102', 'Logika Algoritma', 4, '1', '2', '1'
    ),
    (
        'A21-103', 'Pemrograman Basic', 2, '1', '2', '1'
    ),
    (
        'A21-201', 'Sistem Basis Data I', 2, '2', '2', '1'
    ),
    (
        'A21-202', 'Pemrograman Pascal', 4, '2', '2', '1'
    ),
    (
        'A21-203', 'Ilmu Sosial Dasar', 2, '2', '1', '1'
    ),
    (
        'A21-501', 'Bimbingan Karier', 2, '5', '3', '1'
    ),
    (
        'A21-601', 'Proyek Akhir', 4, '6', '3', '1'
    );

--* 3. Tampilkan seluruh data dari tabel mkuliah
select * from mkuliah;

--* 4. Tampilkan Nama mata kuliah yang sksnya 2 dan ditawarkan disemester 6
select nama_kul
from mkuliah
where
    sks = 2
    and smt_tawar = 6;

--* 5. Tampilan nama mata kuliah yang sksnya lebih besar dari 2 sks
select * from mkuliah where sks > 2;

--* 6. Tampilkan nama mata kuliah yang huruf depannya dimulai dengan ‘P’
select * from mkuliah where nama_kul like 'P%';

--* 7. Gantilah nama mata kuliah ‘Pancasila’ menjadi ‘Pendidikan Pancasila’
update mkuliah
set
    nama_kul = 'Pendidikan Pancasila'
where
    nama_kul = 'Pancasila';

--* 8. Gantilah nama mata kuliah ‘Pemrograman Basic’ menjadi ‘Pemrograman (Basic)’
update mkuliah
set
    nama_kul = 'Pemrograman (Basic)'
where
    nama_kul = 'Pemrograman Basic';

--* 9. Tambahkan record-record berikut :
--* ‘A12-202’,’Pemrograman Pascal’, 4, ‘2’, ‘2’,’2’
--* ‘A22-203’,’Kewiraan’, 2, ‘2’, ‘1’,’2’
--* ‘A11-501’,’Bimbingan Karier’, 2, ‘5’, ‘3’,’2’
--* ‘A12-601’,’Tugas Akhir’, 6, ‘6’, ‘3’,’2’
insert into
    mkuliah (
        kode_kul, nama_kul, sks, smt_tawar, klp_kul, progdi
    )
values (
        'A12-202', 'Pemrograman Pascal', 4, '2', '2', '2'
    ),
    (
        'A22-203', 'Kewiraan', 2, '2', '1', '2'
    ),
    (
        'A11-501', 'Bimbingan Karier', 2, '5', '3', '2'
    ),
    (
        'A12-601', 'Tugas Akhir', 6, '6', '3', '2'
    );

--* 10. Gantilah nama mata kuliah ‘Kewiraan’ menjadi ‘Pendidikan Kewarganegaraan’
update mkuliah
set
    nama_kul = 'Pendidikan Kewarganegaraan'
where
    nama_kul = 'Kewiraan';

--* 11. Hitunglah seluruh data yang telah tersimpan pada tabel mkuliah tersebut.
select count(*) from mkuliah;

--* 12. Tampilkan nama mata kuliah dan sks yang telah diurutkan berdasarkan kunci nama mata kuliah secara ascending
select * from mkuliah order by nama_kul asc;

--* 13. Tampilkan nama mata kuliah, sks, semester tawar dan program studi yang telah diurutkan berdasarkan field kunci semester tawar dengan urutan ascending dan field kunci program studi dengan urutan descending
select *
from mkuliah
order by smt_tawar asc, progdi desc;

--* 14.  Kelompokkan data mata kuliah berdasarkan kelompok mata kuliah.
SELECT klp_kul
FROM mkuliah
GROUP BY
    klp_kul;

--* 15. Tampilkan kelompok mata kuliah dan hitung jumlah sks berdasarkan kelompok mata kuliah
select klp_kul, sum(sks)
from mkuliah
group by
    klp_kul;

--* 16. Tampilkan kode program studi dan hitung jumlah sks berdasarkan kelompok program studi
select progdi, sum(sks) from mkuliah group by progdi;

--* 17. Tampilkan jumlah sks terkecil untuk program studi MI-D3
select min(sks) from mkuliah where progdi = '1';

--* 18. . Tampilkan jumlah sks terbesar untuk program studi MI-D3
select max(sks) from mkuliah where progdi = '1';

--* 19. Tampilkan jumlah sks terkecil untuk program studi SI-S1
select min(sks) from mkuliah where progdi = '2';

--* 20. Tampilkan sks rata-rata untuk mata kuliah kelompok MKP
select avg(sks) from mkuliah where klp_kul = '1';

--* 21 Tampilkan sks rata-rata untuk mata kuliah kelompok MKB
select avg(sks) from mkuliah where klp_kul = '3';

--* 22. Hitung jumlah sks untuk mata kuliah kelompok MPK
select sum(sks) from mkuliah where klp_kul = '1';

--* 23. Hitung jumlah sks untuk mata kuliah kelompok MKK
select sum(sks) from mkuliah where klp_kul = '2';

--* 24. Berapa jumlah mata kuliah yang termasuk dalam kelompok MPK
select count(*) from mkuliah where klp_kul = '1';