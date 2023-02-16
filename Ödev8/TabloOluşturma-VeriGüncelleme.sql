--1.test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE,
-- email VARCHAR(100) olan bir tablo oluşturalım.
create table employee(
	id INTEGER not null,
	name VARCHAR(50) not null,
	birthday DATE,
	email VARCHAR(100)
);

--2.Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
insert into employee (id, name, email, birthday) values (48, 'Fletch', 'fstewartson0@meetup.com', '1958-07-26');
insert into employee (id, name, email, birthday) values (32, 'Ardelle', 'acruess1@icio.us', '1923-11-17');
insert into employee (id, name, email, birthday) values (44, 'Sonnie', 'scheyne2@taobao.com', '2016-01-07');
insert into employee (id, name, email, birthday) values (30, 'Marabel', 'mtorrans3@yolasite.com', '1992-10-30');
insert into employee (id, name, email, birthday) values (19, 'Holly', 'hmuskett4@reverbnation.com', '2015-03-13');
insert into employee (id, name, email, birthday) values (14, 'Walt', 'wwoodcock5@drupal.org', '1938-07-06');
insert into employee (id, name, email, birthday) values (23, 'Wandis', 'wwyldish6@washingtonpost.com', '1969-04-20');
insert into employee (id, name, email, birthday) values (48, 'Arny', 'aremington7@icq.com', '1916-10-26');
insert into employee (id, name, email, birthday) values (32, 'Feodora', 'forridge8@lycos.com', '1948-10-26');
insert into employee (id, name, email, birthday) values (44, 'Georgiana', 'gemburey9@sun.com', '1916-09-08');
insert into employee (id, name, email, birthday) values (22, 'Mufinella', 'mfoystona@photobucket.com', '1923-03-02');
insert into employee (id, name, email, birthday) values (11, 'Willi', 'washbeeb@alibaba.com', '1978-09-10');
insert into employee (id, name, email, birthday) values (39, 'Louisa', 'lyakebovitchc@ca.gov', '1942-03-30');
insert into employee (id, name, email, birthday) values (7, 'Vinnie', 'vdabbesd@discovery.com', '1992-12-27');
insert into employee (id, name, email, birthday) values (12, 'Sherye', 'sribae@bbc.co.uk', '1950-01-20');
insert into employee (id, name, email, birthday) values (50, 'Aundrea', 'agawf@i2i.jp', '1979-03-22');
insert into employee (id, name, email, birthday) values (21, 'Ailis', 'akivlehang@weather.com', '1922-03-20');
insert into employee (id, name, email, birthday) values (45, 'Missie', 'mwoolstonh@alibaba.com', '1966-08-11');
insert into employee (id, name, email, birthday) values (30, 'Kylie', 'kromeri@1und1.de', '1904-11-23');
insert into employee (id, name, email, birthday) values (31, 'Nicholle', 'nkilnj@chronoengine.com', '2009-04-26');
insert into employee (id, name, email, birthday) values (43, 'Bernadina', 'battiwillk@businessinsider.com', '1905-08-19');
insert into employee (id, name, email, birthday) values (13, 'Bili', 'bpuseyl@quantcast.com', '1983-07-22');
insert into employee (id, name, email, birthday) values (10, 'Dottie', 'droutm@github.io', '1923-03-04');
insert into employee (id, name, email, birthday) values (26, 'Franky', 'fjarnelln@theatlantic.com', '2015-06-12');
insert into employee (id, name, email, birthday) values (8, 'Renae', 'rkurdanio@pbs.org', '1913-04-25');
insert into employee (id, name, email, birthday) values (15, 'Smitty', 'shanburryp@godaddy.com', '1963-03-06');
insert into employee (id, name, email, birthday) values (48, 'Jori', 'jkrolakq@amazon.co.jp', '2012-10-19');
insert into employee (id, name, email, birthday) values (15, 'Teena', 'tceschellir@yellowpages.com', '1988-01-23');
insert into employee (id, name, email, birthday) values (1, 'Walliw', 'wtumininis@google.co.jp', '1997-02-27');
insert into employee (id, name, email, birthday) values (21, 'Angie', 'aearwakert@desdev.cn', '2018-04-14');
insert into employee (id, name, email, birthday) values (6, 'Matias', 'mbaughu@symantec.com', '1947-12-25');
insert into employee (id, name, email, birthday) values (7, 'Spencer', 'scalowv@ft.com', '1937-10-01');
insert into employee (id, name, email, birthday) values (32, 'Jorgan', 'jparadisw@twitter.com', '1940-05-22');
insert into employee (id, name, email, birthday) values (34, 'Sapphira', 'stollidayx@list-manage.com', '1997-09-07');
insert into employee (id, name, email, birthday) values (39, 'Mylo', 'mquarlisy@bandcamp.com', '1924-04-02');
insert into employee (id, name, email, birthday) values (31, 'Dacia', 'dscrivinerz@ed.gov', '1938-02-12');
insert into employee (id, name, email, birthday) values (28, 'Bobbie', 'bkarp10@yellowbook.com', '2020-04-02');
insert into employee (id, name, email, birthday) values (16, 'Kaleena', 'kkrates11@state.tx.us', '1967-10-03');
insert into employee (id, name, email, birthday) values (35, 'Misty', 'mhasnney12@forbes.com', '1953-09-01');
insert into employee (id, name, email, birthday) values (12, 'Muriel', 'msymper13@chicagotribune.com', '1957-12-08');
insert into employee (id, name, email, birthday) values (30, 'Heda', 'hmacadam14@bluehost.com', '1930-12-21');
insert into employee (id, name, email, birthday) values (27, 'Willi', 'wbaptist15@buzzfeed.com', '1948-08-29');
insert into employee (id, name, email, birthday) values (46, 'Adelbert', 'ayoude16@berkeley.edu', '1962-01-19');
insert into employee (id, name, email, birthday) values (28, 'Blayne', 'bjelleman17@epa.gov', '2014-04-17');
insert into employee (id, name, email, birthday) values (24, 'Magdalen', 'mbernardin18@skype.com', '1907-05-05');
insert into employee (id, name, email, birthday) values (29, 'Janina', 'jpeplay19@marketwatch.com', '1976-06-21');
insert into employee (id, name, email, birthday) values (21, 'Lin', 'lghelardoni1a@weather.com', '1923-02-14');
insert into employee (id, name, email, birthday) values (15, 'Risa', 'rbeekmann1b@businessinsider.com', '2008-02-12');
insert into employee (id, name, email, birthday) values (6, 'Quill', 'qallcock1c@tinypic.com', '2006-07-05');
insert into employee (id, name, email, birthday) values (30, 'Kleon', 'kkinavan1d@wisc.edu', '2000-06-15');

--3.Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
update employee 
set id = -1
where id = 6
returning *;

update employee 
set name = 'Updated Name'
where name like 'A%'
returning *;

update employee 
set id = 50
where id between 45 and 50
returning *;

update employee 
set email = '------@----.com'
where email like '%.jp'
returning *;

update employee 
set birthday = '2023-02-16'
where birthday = '2006-07-05'
returning *; 

--4.Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
delete from employee 
where id in(14,11,7)
returning *;

delete from employee 
where id = -1
returning *;

delete from employee 
where birthday = '2015-03-13'
returning *;

delete from employee 
where email = '------@----.com'
returning *;

delete from employee 
where name = 'Updated Name'
returning *;
