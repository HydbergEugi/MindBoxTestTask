/* Итоговый запрос*/
/* /////////////////////////////////////////////////////////////////////////////////////////// */

SELECT P.name as Product, C.name as Category FROM Category C JOIN ProductCategoryPivot PCP ON C.id = PCP.CategoryId RIGHT JOIN Product P ON P.id = PCP.ProductId 

/* /////////////////////////////////////////////////////////////////////////////////////////// */
/* Ниже представлен код для создания и заполнения тестовой базы данных */
/* /////////////////////////////////////////////////////////////////////////////////////////// */

CREATE DATABASE TESTTASK

CREATE TABLE Product (id INT PRIMARY KEY, name NVARCHAR(50))

CREATE TABLE Category (id INT PRIMARY KEY, name NVARCHAR(50))

CREATE TABLE ProductCategoryPivot (id INT IDENTITY PRIMARY KEY, ProductId INT FOREIGN KEY REFERENCES Product(id), CategoryId INT FOREIGN KEY REFERENCES Category(id))

INSERT INTO Category (id, name) VALUES (1, 'Áûòîâàÿ òåõíèêà')
INSERT INTO Category (id, name) VALUES (2, 'Öèôðîâàÿ òåõíèêà')
INSERT INTO Category (id, name) VALUES (3, 'Àêñåññóàðû')
INSERT INTO Category (id, name) VALUES (4, 'Äëÿ äåòåé')
INSERT INTO Category (id, name) VALUES (5, 'Á/Ó')

INSERT INTO Product (id, name) VALUES (1, 'Òåëåôîí Samsung A10')
INSERT INTO Product (id, name) VALUES (2, 'Èãðóøå÷íàÿ ïëèòà')
INSERT INTO Product (id, name) VALUES (3, 'Äåòñêèå óìíûå ÷àñû')
INSERT INTO Product (id, name) VALUES (4, 'Íàóøíèêè "Ðàäîñòíûé ïîíè"')
INSERT INTO Product (id, name) VALUES (5, 'Ïîäóøêà ïóõîâàÿ')
INSERT INTO Product (id, name) VALUES (6, 'Êðóæêà Marvel')

INSERT INTO ProductCategoryPivot (ProductId, CategoryId) VALUES (1, 2)
INSERT INTO ProductCategoryPivot (ProductId, CategoryId) VALUES (1, 5)
INSERT INTO ProductCategoryPivot (ProductId, CategoryId) VALUES (2, 1)
INSERT INTO ProductCategoryPivot (ProductId, CategoryId) VALUES (2, 4)
INSERT INTO ProductCategoryPivot (ProductId, CategoryId) VALUES (3, 2)
INSERT INTO ProductCategoryPivot (ProductId, CategoryId) VALUES (3, 4)
INSERT INTO ProductCategoryPivot (ProductId, CategoryId) VALUES (4, 3)
INSERT INTO ProductCategoryPivot (ProductId, CategoryId) VALUES (4, 4)
INSERT INTO ProductCategoryPivot (ProductId, CategoryId) VALUES (4, 5)


