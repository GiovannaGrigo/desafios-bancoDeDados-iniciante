CREATE DATABASE Loja
USE Loja

CREATE TABLE Produto (
	Id INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	ValorCusto NUMERIC(6,2) NOT NULL,
	PrecoVenda NUMERIC(6,2) NOT NULL
)

INSERT INTO Produto (Nome, ValorCusto, PrecoVenda) VALUES
('Smartphone', 200, 400),
('Café', 25, 10),
('Teclado', 190, 250),
('Mouse', 45, 60),
('Smartwatch', 700, 1299),
('Notebook', 500, 1000),
('Cafeteira', 999, 899)

UPDATE Produto
SET PrecoVenda = 15
WHERE Nome = 'Café'

SELECT TOP 5 Nome, PrecoVenda
FROM Produto
ORDER BY PrecoVenda DESC

DELETE FROM Produto
WHERE PrecoVenda < ValorCusto

SELECT * FROM Produto