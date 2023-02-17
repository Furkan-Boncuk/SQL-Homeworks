----------------------------------INNER JOIN--------------------------------------------------------
--Joinleri kullanarak farklı tablolardaki verileri sanal bir tabloda bir araya getiririz.

SELECT title, first_name,last_name FROM book
INNER JOIN author ON book.author_id = author.id;
--book 'taki foreign key sayesinde oldu. author_id'yi id ile eşleştirdik
--inner join yerine join yazarsak da olurdu. Çünkü join default olarak inner join'dir.
--'FROM author INNER JOIN book' şeklinde yazsaydık da sorun olmazdı. Çünkü simetrik bir yapı içerisindedirler

----------------------------------LEFT JOIN--------------------------------------------------------
--İki tablo arasında birleştirme yaparken iki tablonun kesişimi değil soldakini alıp sağdakiyle eşleşenleri alıyor
--Tablo1 deki tüm verileri alıp tablo2 den yalnızca eşleşen verileri alıyor

SELECT title, first_name,last_name FROM author
LEFT JOIN book ON author.id = book.author_id;

--tablo1'deki(author) tüm verileri aldık ancak tüm yazarların eşleştiği kitap yok
--Kitabı olmayan bir yazar olduğu zaman kitap ismi (title) null değer alıyor

--Sınırlandırma (foreign key) Nasıl Kaldırılır:
ALTER TABLE book 
DROP CONSTRAINT "book_author_id_fkey";

--Sınırlandırma kalktığı için artık id'si author'da bulunmayan bir veriyi 
--book table'ına ekleyebiliriz
insert into book(title, page_number, author_id) values('Gülün Adı',466,44);
insert into book(title, page_number, author_id) values('Yapay Zeka',100,55);

select * from book;

SELECT author.first_name, author.last_name, book.title FROM book 
LEFT JOIN author ON book.author_id = author.id;
--Yapay Zeka ve Gülün Adı kitaplarının yazarı olmadığı için first_name ve last_name
--null değer verecektir

--Ancak null değerleri görmek istemezsek şu kodu kullanabiliriz:
SELECT author.first_name, author.last_name, book.title FROM book 
LEFT JOIN author ON book.author_id = author.id
WHERE author.first_name IS NOT null; 
--Bu kod ile aşağıdaki kod aynı sonucu verir:
select author.first_name, author.last_name, book.title from author 
inner join book on book.author_id = author.id ;
--ikisi de kitabı olmayan yazarları bize göstermez.

----------------------------------RIGHT JOIN--------------------------------------------------------
--Left Join'le mantığı aynıdır sadece ilk önce tablo2'yi alır. Tablo2'deki verilerin tamamını alır.
SELECT author.first_name, author.last_name, book.title FROM book 
RIGHT JOIN author ON book.author_id = author.id;
--RIGHT JOIN = RIGHT OUTER JOIN
--Bu kod çalıştığında tüm yazarları getirecektir 
--ancak tüm yazarların kitabı olmadığından o kitaplara null değer verecek

----------------------------------FULL JOIN--------------------------------------------------------
--Her iki tabloya ait olan tüm değerler alınır. Simetrik bir yapıya sahiptir ve tablo sıraları önemsizdir.
SELECT * FROM book 
FULL JOIN author ON book.author_id = author.id;
--FULL JOIN = FULL OUTER JOIN
--Tüm değerleri alır ancak id bilgileri örtüşmeyen verilerde null atar.

--Null değerleri görmek istemiyorsak:
SELECT * FROM book 
FULL JOIN author ON book.author_id = author.id
WHERE (book.author_id IS NOT NULL AND author.id IS NOT NULL);

--Bu durum INNER JOIN durumuyla aynıdır
SELECT * FROM book 
INNER JOIN author ON book.author_id = author.id;

--Ortak olmayan verileri görmek istersek: 
SELECT * FROM book 
FULL JOIN author ON book.author_id = author.id
WHERE (book.author_id IS NULL OR author.id IS NULL);







