/*
(�� �������) ����������� ������������ ����� � ������� �������.
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
('����',  '1975-08-30'), 
('����',  '1997-01-30');

-- ������� LOG(x) ���������� ����������� �������� ��������� x.
-- ������� EXP(x) - ���������� - ���������� ����� e � ������� x.

SELECT exp(sum(log(id))) as composition from users;
