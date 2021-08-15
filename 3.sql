/*
 � ������� ��������� ������� storehouses_products � ���� value ����� ����������� 
 ����� ������ �����: 0, ���� ����� ���������� � ���� ����, ���� �� ������ ������� ������. 
 ���������� ������������� ������ ����� �������, ����� ��� ���������� � ������� ���������� �������� value. 
 ������ ������� ������ ������ ���������� � �����, ����� ���� 
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
('������','2500'),
('����','30'),
('�������','1'),
('��������','500'),
('������','0'),
('�������','0');

/* 1 */
select * from storehouses_products ORDER BY 
IF(value != 0, 0, 1),value ; 

/* 2 */
select * from storehouses_products ORDER BY 
CASE 
    WHEN value = 0 THEN 2147483647 /* ������ ������� INT */
    ELSE value 
end;
select name, value from storehouses_products;