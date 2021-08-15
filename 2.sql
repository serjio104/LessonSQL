/*
  Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR
 и в них долгое время помещались значения в формате 20.10.2017 8:10. 
 Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.

*/
DROP DATABASE IF EXISTS my;
create database my;
use my;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
	id SERIAL PRIMARY KEY, -- SERIAL = BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE
    name VARCHAR(100),
    created_at varchar(20) ,
    updated_at varchar(20)
);
INSERT INTO users (name, created_at,updated_at) values
('Сергей','20.10.2017 8:10', '20.10.2017 8:10'),
('Андрей','20.10.2017 8:10', '20.10.2017 8:10');

/* новые поля с нужным типом */
ALTER TABLE users  ADD   (created_atnew DATETIME,
                          updated_atnew DATETIME);

/* пишу из старых полей в новые с помощью функции строки_в_дату */
UPDATE users set created_atnew = STR_TO_DATE(created_at, '%d.%m.%Y %l:%i'),
                 updated_atnew = STR_TO_DATE(updated_at, '%d.%m.%Y %l:%i');

/* удаляю старые поля и переминов. названия полей */
ALTER TABLE users DROP  created_at, CHANGE created_atnew created_at DATETIME;
ALTER TABLE users DROP  updated_at, CHANGE updated_atnew updated_at DATETIME;

select name, created_at, updated_at from users;

