--create table <table_name> (
--	  <column_name> <data_type> <constraint>,
--	  ...
--	  <column_name> <data_type> <constraint>;
--)

CREATE TABLE author (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100),
	birthday DATE
);

--INSERT INTO author(id,first_name,last_name,email,birthday)
--VALUES 
--	("A","B","C","D"),
--	...
--	("A","B","C","D");

INSERT INTO author(first_name,last_name,email,birthday)
VALUES 
	('Haruki' , 'Murakami' , 'harukimurakami@gmail.com' , '1948-11-07'),
	('Sabahattin' , 'Ali' , 'sabahattinali@gmail.com' , '1914-07-11'),
	('Orhan' , 'Pamuk' , 'orhanpamuk@gmail.com' , '1950-04-14'),
	('Halide' , 'Edip' , 'halideedip@gmail.com' , '1884-07-11'),
	('Zygmunt' , 'Bauman' , 'zygmuntbauman@gmail.com' , '1911-07-12');


CREATE TABLE author2 (like author); --Tablonun yapsını Aldık. Verileri Almadık.
INSERT INTO author2 SELECT * FROM author WHERE first_name='Sabahattin'; --Koşulunu belirttiğimiz verileri içeren sütünları aldık

CREATE TABLE author3 AS SELECT * FROM author; --author tablosundaki her şeyi kopyalar.(TABLONUN YEDEĞİNİ OLUŞTURMAK)

SELECT * FROM author3;


DROP TABLE IF EXISTS author5; --If exists olmayan bir tabloyu silmeye çalışırsak uyarı vermesini sağlar
--Drop table ile tabloyu sileriz.
