/*
 Пусть в таблице users поля created_at и updated_at оказались незаполненными.
  Заполните их текущими датой и временем..
*/

DROP DATABASE IF EXISTS my;
create database my;
use my;
DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY, -- SERIAL = BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE
    name VARCHAR(100),
    created_at  DATETIME,
    updated_at DATETIME
);
insert into users (name) values
('Сергей'), 
('Андрей'); 

update users 
set created_at = now(),
    updated_at =now();

select * from users;


