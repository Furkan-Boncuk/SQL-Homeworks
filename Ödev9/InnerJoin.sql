------------------------------------Ödev9---------------------------------------------
--1.city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte
--görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT city, country FROM city 
INNER JOIN country ON country.country_id = city_id ;

--2.customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve
--last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
select customer.first_name, customer.last_name, payment.payment_id from customer 
inner join payment on payment.customer_id = customer.customer_id order by payment_id asc;

--3.customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve
--last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.

select rental.rental_id, customer.first_name, customer.last_name from rental 
inner join customer on rental.customer_id = customer.customer_id order by rental_id asc;
