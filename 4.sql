/*
(по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. 
Месяцы заданы в виде списка английских названий (may, august)
*/

DROP DATABASE IF EXISTS my;
create database my;
use my;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
	id SERIAL PRIMARY KEY, 
	name VARCHAR(100),
    birthday_at DATE);
   
INSERT INTO users (name,birthday_at ) values
('Сергей','1990-10-01'),
('Иван',  '1990-08-01'),
('Егор',  '1990-05-01'),
('Миша',  '1990-11-01'),
('Ефим',  '1990-08-30'); 


-- select MONTHNAME(birthday_at)  from users ;

select id, name, birthday_at FROM users WHERE MONTHNAME(birthday_at) IN ('may', 'august'); 


