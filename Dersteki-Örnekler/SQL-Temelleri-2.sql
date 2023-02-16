--Order By
select * from film order by title asc;--Artan şekilde sıralanıyor
select * from film order by title desc;--Azalan şekilde sıralanıyor
select * from film order by length;
select * from film order by length desc;
select title, length, rental_rate from film where title LIKE 'A%' order by rental_rate asc, length desc;
select * from film where rating='G' order by length desc;
--Lımıt ve Offset
select * from film where rental_rate = 4.99 order by length asc limit 20;
select * from film where replacement_cost =14.99 and rental_rate =0.99 order by length desc limit 7;
select * from country offset 6 limit 7;--offset verileri atlar, göstermez
select * from actor where first_name='Penelope' order by last_name asc offset(2) limit 2;
--Aggregate fonksiyonlar
select max(replacement_cost) from film;
select min(rental_rate) from film;
select round(avg(length),2) from film;--avg ortalama alır. round ortalamanın virgüllü kısmına karar verir
select sum(rental_rate) from film;--sütun içinde toplama yapar
select max(length), min(length), sum(replacement_cost) from film; 
select max(length) from film where rental_rate=0.99;
--Group By
select max(length) from film group by rental_rate;--her unique rental_rate değeri için en uzun filmi bulur
select rental_rate, count(*) from film group by rental_rate;--her unique rental_rate değeri için kaç adet olduğunu sayar
select rating, count(*) from film group by rating;--rating'lere düşen film sayısı
select replacement_cost, rental_rate, min(length) from film group by replacement_cost,rental_rate order by replacement_cost asc, rental_rate asc limit 8;
--her replacement_cost ve rental_rate'e gelen min. film süreleri. (ORDER BY MIN(length) de denilebilir.)
--Having
select rental_rate, count(*) from film group by rental_rate having count(*)>325;--Gruplanmış veriler üzerinden koşul verdik
select staff_id ,count(*) from payment group by staff_id having count(*)>7300 ;
SELECT customer_id, SUM(amount) FROM payment GROUP BY customer_id HAVING sum(amount)>100 ORDER BY sum(amount) DESC LIMIT 10;
--100 tlden fazla toplam alışveriş yapmış en fazla alışveriş yapan 10 müşteri
--ALIAS (AS)
select first_name as isim, last_name as soyad from actor;--as ile geçici olarak isim veririz.
select country as "şehir ismi",country_id as "şehir kodu" from country;--iki kelimeden oluşan bir isim atanacaksa " "
select count(*) as "aktör sayısı" from actor;
select concat(first_name, ' ', last_name) as "İsim ve Soyisim" from actor;
--concat() birleştirmeye yarar. Burada first_name ve last_name sütunlarını birleştirdik ve tek bir sütuna 'İsim ve Soyisim' sütununa ekledik
