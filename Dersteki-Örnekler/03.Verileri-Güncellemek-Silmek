--UPDATE <table_name> 
--SET column1 = value1,
--	column2 = column2,
--	...
--WHERE condition;

--WHERE ile condition verilmezse kayıtlı olan tüm verileri günceller!!

UPDATE author 
SET	first_name = 'Emrah Safa',
	last_name = 'Gürkan',
	email = 'emrahsafagurkan@gmail.com',
	birthday = '1980-01-01'
WHERE id=10;

SELECT * FROM author WHERE id = 10;

UPDATE author 
SET first_name = 'XXXX',
	last_name = 'YYYY'
WHERE last_name like 'V%';

UPDATE author 
SET last_name = 'UPDATED'
WHERE first_name = 'XXXX'
RETURNING  *;
--RETURNING anahtar kelimesi güncellenen verileri döndürür.


--DELETE FROM <table_name>
--WHERE condition;

DELETE FROM author
WHERE id = 6;


DELETE FROM author 
WHERE id>11
RETURNING *;



