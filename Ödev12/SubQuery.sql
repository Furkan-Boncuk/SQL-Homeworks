--------------------------------------Ödev12-------------------------------------------
--1.film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film
--vardır?
select count(length) from film where length > (
	select avg(length) from film
);

--2.film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
select count(*) from film where rental_rate = (
	select max(rental_rate) from film
);

--3.film tablosunda en düşük rental_rate ve en düşük replacement_cost değerlerine sahip filmleri sıralayınız.
select * from film where rental_rate =(
	select min(rental_rate) from film
) AND replacement_cost =( 
	select min(replacement_cost) from film
);

--4.payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
select count(p.customer_id), c.first_name, c.last_name, p.customer_id from payment p 
left join customer c on p.customer_id  = c.customer_id group by p.customer_id, c.first_name, c.last_name
order by  count(p.customer_id) desc limit 5 ;
