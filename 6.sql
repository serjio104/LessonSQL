/*
����������� ������� ������� ������������� � ������� users
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
('������','1987-10-01'), 
('����',  '1961-08-01'), 
('����',  '1980-05-01'), 
('����',  '1969-11-01'), 
('����',  '1975-08-30'); 

/* age - ������� ������������ */
-- SELECT round((TO_DAYS(NOW()) - TO_DAYS(birthday_at)) / 365.25,0) as age , birthday_at, TO_DAYS(NOW()), TO_DAYS(birthday_at)  FROM users;

/* ������� ������� ������������� � ������� users */
SELECT ROUND(AVG((TO_DAYS(NOW()) - TO_DAYS(birthday_at)) / 365.25), 0) average_age FROM users;


