/*
(по желанию) Из таблицы catalogs извлекаются записи при помощи запроса.
SELECT * FROM catalogs WHERE id IN (5, 1, 2); 
Отсортируйте записи в порядке, заданном в списке IN.
*/

DROP DATABASE IF EXISTS my;
create database my;
use my;
DROP TABLE IF EXISTS catalogs;

CREATE TABLE catalogs (
	id SERIAL PRIMARY KEY, 
	name VARCHAR(100));
    
   
INSERT INTO catalogs (name) values
('Процессоры'),         
('Материнские платы'),  
('Винчестеры'),         
('Память'),             
('Видеокарты');        


SELECT ID as 'УНИКАЛЬНЫЙ НОМЕР', NAME 'НАЗВАНИЕ ТОВАРА' FROM catalogs WHERE id IN (5, 1, 2)
ORDER BY 
CASE
	when id = 5 then 0
	when id = 1 then 1
	when id = 2 then 2
end


