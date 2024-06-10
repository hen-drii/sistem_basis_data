-- 3-6-2024
-- membuat tabel penjulan
CREATE TABLE penjualan (
idJual int NOT NULL AUTO_INCREMENT,
barangID int NOT NULL,
Quantity int,
Subtotal FLOAT,
tanggal date,
PRIMARY KEY (idJual),
FOREIGN KEY (barangID) REFERENCES barang(barangID)
);

-- menampilkan data barang tapi yang stocknya lebih dari lima, desc, dan hanya menampilkan 2 baris teratas
select * from barang b
where b.barangStock > 5
order by barangHarga desc
limit 2; -- 

-- menampilkan data barang yang barangName nya memilki kata baj
select * from barang
where barangName like '%baj%'

--
select * from barang


-- memasukkan data penjualan
insert into penjualan (barangID, Quantity, Subtotal, tanggal)
values 
(2, 3, 900000, '2024-02-03'),
(1, 4, 400000, '2024-02-04'),
(3, 6, 600000, '2024-02-05'),
(6, 2, 100000, '2024-02-06'),
(1, 2, 200000, '2024-02-03');


--
select * from penjualan p 

-- menampilkan , menghitung average/rata-rata subtotal
select AVG(Subtotal) as "Rata2 Penjualan" from penjualan

-- group by
-- GROUP BY digunakan untuk mengelompokkan baris dalam tabel yang memiliki nilai yang sama dalam satu atau beberapa kolom.
select barangID, Quantity , SUM(Quantity) , SUM(Subtotal), COUNT(barangID)
from penjualan p 
where p.tanggal = '2024-02-04' or p.tanggal = '2024-02-03'
group by barangID 

-- menampilkan data barang yang barangStock kurang dari samadengan 7 dan barangHarga kurangsamadengan 200000
select * from barang b 
where b.barangStock <= 7 and barangHarga <= 200000

-- having
-- menampilkan barangID, hitungbrpbaris(barangID) group by / dikelompokan sesuai barangID, yang memiliki count(barangID) = 1
select p.barangID,count(barangID)
from penjualan p 
group by barangID 
having count(barangID) = 1
-- HAVING digunakan dalam SQL untuk menetapkan kondisi pada grup yang dibuat oleh klausa GROUP BY. Ini mirip dengan klausa WHERE, 
-- tetapi HAVING berlaku setelah baris dikelompokkan, sementara WHERE berlaku sebelum pengelompokan. Dengan kata lain, HAVING digunakan untuk memfilter grup berdasarkan hasil fungsi agregat.

