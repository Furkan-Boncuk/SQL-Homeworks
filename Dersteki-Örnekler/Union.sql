------------------------------------------UNION---------------------------------------------
select * from book order by page_number desc limit 5;

select * from book order by title asc limit 5;

--bu iki sorgunun verilerini aynı anda görmemizi sağlayan sorguyu UNION ile yaparız:

(select * from book order by page_number desc limit 5)
UNION
(select * from book order by title asc limit 5);

--Bazı durumlarda iki sütunun kesişim kümesinde kalan elemanlar olabiliyor böyle durumda
--tekrarlanan elemanı UNION göstermiyor biz eğer bunu da görmek istiyorsak UNION ALL ifadesini
--kullanırız.

(select id,email,first_name from author order by id)
UNION
(select id,title from book order by title);
--Hata verir çünkü UNION kullanırken seçtiğimiz her iki sütunun da sayıları eşit olmalıdır.
-- üsttekinde 3, alttakinde 2 tane var.
--Ayrıca istenilen sütunların veri tipleri de aynı olmalıdır.

(select id, email from author order by author.id asc)
UNION
(select id, title from book order by book.id desc) ;

------------------------------------------INTERSECT------------------------------------------
--INTERSECT operatörü iki farklı sorgunun kesişimini bulur.

(select * from book order by page_number desc limit 10)
INTERSECT 
(select * from book order by title asc limit 10);

------------------------------------------EXCEPT---------------------------------------------
--1.sorguda olan ancak 2.sorguda olmayan verileri sıralar

(select * from book order by page_number desc limit 10)
EXCEPT 
(select * from book order by title asc limit 10);

--not: UNION'da olduğu gibi INTERSECT ve EXCEPT operatörlerinde de veri tipleri ve sütun sayıları uyuşmalıdır
(select title from book order by page_number desc limit 10)
EXCEPT 
(select id from book order by title asc limit 10);
--hata verir


