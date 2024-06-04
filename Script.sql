-- membuat database sbd
create database sbd

-- membuat tabel saham
create table saham(
id_saham int not null auto_increment,
ticker_saham varchar(10) not null,
harga_saham float(40) not null,
lot_saham int not null,
primary key (id_saham)
)

-- memasukkan data ke tabel saham
insert into saham (ticker_saham, harga_saham, lot_saham)
values
("ASII", 500000, 1),
("INDF", 2000000, 2),
("ANTM", 800000, 4),
("GOTO", 7100, 1)


select * from saham s 



select * from SAHAM where  ticker_saham  = 'ASII' 


-- mengubah data saham
update saham  set ticker_saham = 'IINNDDFF' where id_saham = 2

-- menghapus salah satu data saham
delete from saham where id_saham = 2

-- menampilkan data saham tertentu
select * from saham
where ticker_saham like "GO%"

-- mengahapus tabel saham
drop table saham 








