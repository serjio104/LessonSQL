/*
Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
Следует учесть, что необходимы дни недели текущего года, а не года рождения.
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

/* названия дня недели */
-- select DAYNAME(CONCAT(YEAR(NOW()), '-', SUBSTRING(birthday_at, 6, 5))) AS name_day FROM users;

SELECT
    DAYNAME(CONCAT(YEAR(NOW()), '-', SUBSTRING(birthday_at, 6, 5))) AS name_day ,
    COUNT(*) AS count_name_birthday
FROM
    users
GROUP BY 
    name_day
    
