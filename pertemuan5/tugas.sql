-- terdapat 5 fungsi agregasi 
-- count
-- sum
-- min
-- max
-- avg

-- contoh 
-- count
select count(*) from mhs;
-- sum
select sum(sks) from mkuliah;
-- min
select min(sks) from mkuliah;
-- max
select max(sks) from mkuliah;
-- avg
select avg(sks) from mkuliah;

-- function
-- contoh membuat function di database
-- contoh
create function tambah(x int, y int) returns int
begin
    return x + y;
end

-- Buatlah function bernama total_obat untuk menjumlah total obat (SUM)
-- yang tersimpan di tabel obat
create function total_obat() returns int
begin
    return (select sum(jumlah) from obat);
end

-- Buatlah function Bernama rerata_harga untuk menghitung rata-rata
-- harga obat (AVG)
create function rerata_harga() returns int
begin
    return (select avg(harga) from obat);
end
