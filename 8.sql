/*
(по желанию) Подсчитайте произведение чисел в столбце таблицы.
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
('Сергей','1987-10-01'), 
('Иван',  '1961-08-01'), 
('Егор',  '1980-05-01'), 
('Миша',  '1969-11-01'), 
('Ефим',  '1975-08-30'), 
('Коля',  '1997-01-30');

-- Функция LOG(x) возвращает натуральный логарифм выражения x.
-- Функция EXP(x) - экспонента - возвращает число e в степени x.

SELECT exp(sum(log(id))) as composition from users;
