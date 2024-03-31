create Table Pelamar (
    nama char(20) not null, no_tes char(3) not null
);

create Index no_tes_idx on pelamar (no_tes);

use latihan_3;

create table staf (
    nip varchar(3) primary key, nama varchar(50), posisi varchar(50), tgl_masuk date, gaji int(11)
);

insert into
    staf (
        nip, nama, posisi, tgl_masuk, gaji
    )
values (
        "A01", 'wahyu', 'asisten', '2014-08-10', 5000000
    ),
    (
        "M01", 'budi', 'manager', '1996-01-01', 10000000
    ),
    (
        "S01", 'sari', 'supervisor', '2000-02-05', 7500000
    );

-- LATIHAN INDEX
-- Berdasarkan database Latihan_3 buatlah Index pada kolom nip dengan nama index nip_idx pada tabel staf
create index nip_idx on staf (nip);