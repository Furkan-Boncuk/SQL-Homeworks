---------------------------------ALT SORGU(SUBQUERIES)--------------------------------------
select * from book where page_number>466;
--Sorgusunu yapmak istiyoruz.

select page_number from book where title = 'Gülün Adı';
--> Gülün Adı isimli kitabın sayfa sayısı 466 olduğu için bu sorgu bize zaten 466 değeri dönecek
--biz statik bir değer olan 466'yı kullanmak yerine alt sorgu ile aşağıdaki gibi de yapabiliriz: 

select * from book where page_number>(
	select page_number from book where title = 'Gülün Adı'
);
--Bu şekilde alt sorguyla yapabiliriz.

select title,page_number, (select max(page_number) from book),((select max(page_number) from book) - page_number) as Sayfa_Farkı
from book where page_number>(
	select page_number from book where title='Gülün Adı'
);

---------------------------------Any ve All Operatörleri--------------------------------------

select first_name, last_name from author where id = ANY(
	select author_id from book where title = 'Solanum pimpinellifolium Jusl.'
	or title='Carex vexans F.J. Herm.'
);
--Alt Sorguda birden fazla veri geliyorsa ANY operatörü kullanılır.

select first_name, last_name, id from author where id > ANY(
	select author_id from book where title = 'Solanum pimpinellifolium Jusl.'
	or title='Carex vexans F.J. Herm.'
) order by id;
--> Alt sorgudan 3 ve 10 değerleri dönüyor. ANY operatörünün özelliği alt sorgudan gelen iki değerden
--birisi bile koşulu sağlarsa çalışır.
-- Bu örnek için 3 ten büyük olanları sıraladığını görürüz.

select first_name, last_name, id from author where id > ALL(
	select author_id from book where title = 'Solanum pimpinellifolium Jusl.'
	or title='Carex vexans F.J. Herm.'
) order by id;
-->Aynı örneği ALL operatörü ile yaptığımızda sadece id'si 11 olan yazarın adını bize döndüğünü görürüz.
--Çünkü ALL operatörü tüm koşulların sağlanmasını esas alır. 3ten büyük değerler 10dan büyük olmayabilir
-- Bu yüzden sadece 10dan büyükleri sıralar


