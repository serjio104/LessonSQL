/*
 В таблице складских запасов storehouses_products в поле value могут встречаться 
 самые разные цифры: 0, если товар закончился и выше нуля, если на складе имеются запасы. 
 Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value. 
 Однако нулевые запасы должны выводиться в конце, после всех 
*/

DROP DATABASE IF EXISTS my;
create database my;
use my;
DROP TABLE IF EXISTS storehouses_products;

CREATE TABLE storehouses_products (
	id SERIAL PRIMARY KEY, 
	name VARCHAR(100),
    value INT);
   
INSERT INTO storehouses_products (name, value) values
('Гвозди','2500'),
('Пилы','30'),
('Кусачки','1'),
('Саморезы','500'),
('Сверла','0'),
('Молотки','0');

/* 1 */
select * from storehouses_products ORDER BY 
IF(value != 0, 0, 1),value ; 

/* 2 */
select * from storehouses_products ORDER BY 
CASE 
    WHEN value = 0 THEN 2147483647 /* правая граница INT */
    ELSE value 
end;
select name, value from storehouses_products;