-----------------------NOT NULL ve ALTER--------------------------------
create table users(
	id SERIAL PRIMARY KEY,
	username VARCHAR(20),
	email VARCHAR(50),
	age INTEGER
);

select * from users;

insert into users(username, email, age) values('tester','tester@gmail.com',19);
insert into users(email, age) values('gamer1@gmail.com',35);

--Tabloda sonradan bir değişiklik yapılmak istendiğinde  
DELETE FROM users 
WHERE username IS null 
RETURNING *;

alter table users 
alter column username
set not null;

select * from users;

--insert into users(email, age) values('gamer@gmail.com',35);

insert into users(username, email, age) values (' ','gamer@gmail.com',35);
--Empty String NULL değildir.

-----------------------------UNIQUE-------------------------------------
--email verisini unique yapalım.
alter table users 
add unique(email);

insert into users(username, email, age) values('tester2', 'tester2@gmail.com', 44);
--hata verecektir. Çünkü tester@gmail.com daha önce alınmış bir emaildir.

select * from users;

----------------------------CHECK---------------------------------------
--age verisinin sınırlandırılmasını istiyoruz:
alter table users 
add check(age > 18);

insert into users(username, email, age) values('gamer5', 'gamer5@gmail.com', -22);
--hata verecektir.

--Check'i daha iyi anlamak için örnek bir tablo :
CREATE TABLE products (
    product_no integer,
    name text,
    price numeric CHECK (price > 0),
    discounted_price numeric CHECK (discounted_price > 0),
    CHECK (price > discounted_price)
);

select * from products;

insert into products(product_no, name, price, discounted_price) values(123,'Shirt',75,100);
--hata verecektir.
