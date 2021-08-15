/*
(�� �������) �� ������� catalogs ����������� ������ ��� ������ �������.
SELECT * FROM catalogs WHERE id IN (5, 1, 2); 
������������ ������ � �������, �������� � ������ IN.
*/

DROP DATABASE IF EXISTS my;
create database my;
use my;
DROP TABLE IF EXISTS catalogs;

CREATE TABLE catalogs (
	id SERIAL PRIMARY KEY, 
	name VARCHAR(100));
    
   
INSERT INTO catalogs (name) values
('����������'),         
('����������� �����'),  
('����������'),         
('������'),             
('����������');        


SELECT ID as '���������� �����', NAME '�������� ������' FROM catalogs WHERE id IN (5, 1, 2)
ORDER BY 
CASE
	when id = 5 then 0
	when id = 1 then 1
	when id = 2 then 2
end


