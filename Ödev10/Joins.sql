--1.city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte
--görebileceğimiz LEFT JOIN sorgusunu yazınız.

select count(*) from country where country_id is not null;--> country_id 109 tane
select count(*) from city where city_id is not null;--> city_id 600 tane

select country.country, city.city from country 
left join city on country.country_id = city.city_id; --> 109 satır çıkar

select country.country, city.city from city 
left join country on country.country_id = city.city_id; --> 600 satır çıkar. Country'nin eşleşmeyen id'leri için null atıyor

--2.customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name
--ve last_name isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.

select count(*) from customer where customer_id is not null;--> customer_id 599 tane
select count(*) from payment where payment_id is not null;--> payment_id 14596 tane

select customer.first_name, customer.last_name from payment 
right join customer on payment.payment_id = customer.customer_id;--> 599 satır çıkar

select customer.first_name, customer.last_name from payment 
right join customer on customer.customer_id = payment.payment_id;

--3.customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve
--last_name isimlerini birlikte görebileceğimiz FULL JOIN sorgusunu yazınız.

select count(*) from rental where rental_id is not null;--> rental_id 16.044 tane

select customer.first_name, customer.last_name from rental 
full join customer on rental.rental_id = customer.customer_id;--> rental_id daha fazla olduğu için eşleşmeyen elemanlar için null atar

--null değerleri görmek istemezsek: 
select customer.first_name, customer.last_name from rental 
full join customer on rental.rental_id = customer.customer_id
where not (customer.first_name is null and customer.last_name is null);--> 599 satır çıkar
