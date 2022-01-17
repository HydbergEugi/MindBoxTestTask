/* Итоговый запрос */
/* /////////////////////////////////////////////////////////////////////////////////////////// */

SELECT P.name as Product, C.name as Category FROM Category C JOIN ProductCategoryPivot PCP ON C.id = PCP.CategoryId RIGHT JOIN Product P ON P.id = PCP.ProductId 

/* /////////////////////////////////////////////////////////////////////////////////////////// */
/* Ниже представлен код для создания и заполнения тестовой базы данных */
/* /////////////////////////////////////////////////////////////////////////////////////////// */

CREATE DATABASE TESTTASK

CREATE TABLE Product (id INT PRIMARY KEY, name NVARCHAR(50))

CREATE TABLE Category (id INT PRIMARY KEY, name NVARCHAR(50))

CREATE TABLE ProductCategoryPivot (id INT IDENTITY PRIMARY KEY, ProductId INT FOREIGN KEY REFERENCES Product(id), CategoryId INT FOREIGN KEY REFERENCES Category(id))

INSERT INTO Category (id, name) VALUES (1, 'Бытовая техника')
INSERT INTO Category (id, name) VALUES (2, 'Цифровая техника')
INSERT INTO Category (id, name) VALUES (3, 'Аксессуары')
INSERT INTO Category (id, name) VALUES (4, 'Для детей')
INSERT INTO Category (id, name) VALUES (5, 'Б/У')

INSERT INTO Product (id, name) VALUES (1, 'Телефон Samsung A10')
INSERT INTO Product (id, name) VALUES (2, 'Игрушечная плита')
INSERT INTO Product (id, name) VALUES (3, 'Детские умные часы')
INSERT INTO Product (id, name) VALUES (4, 'Наушники "Радостный пони"')
INSERT INTO Product (id, name) VALUES (5, 'Подушка пуховая')
INSERT INTO Product (id, name) VALUES (6, 'Кружка Marvel')

INSERT INTO ProductCategoryPivot (ProductId, CategoryId) VALUES (1, 2)
INSERT INTO ProductCategoryPivot (ProductId, CategoryId) VALUES (1, 5)
INSERT INTO ProductCategoryPivot (ProductId, CategoryId) VALUES (2, 1)
INSERT INTO ProductCategoryPivot (ProductId, CategoryId) VALUES (2, 4)
INSERT INTO ProductCategoryPivot (ProductId, CategoryId) VALUES (3, 2)
INSERT INTO ProductCategoryPivot (ProductId, CategoryId) VALUES (3, 4)
INSERT INTO ProductCategoryPivot (ProductId, CategoryId) VALUES (4, 3)
INSERT INTO ProductCategoryPivot (ProductId, CategoryId) VALUES (4, 4)
INSERT INTO ProductCategoryPivot (ProductId, CategoryId) VALUES (4, 5)


