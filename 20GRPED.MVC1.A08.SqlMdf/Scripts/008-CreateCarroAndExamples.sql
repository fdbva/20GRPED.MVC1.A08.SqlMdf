CREATE TABLE Carro(
	Id INT IDENTITY(1,1) PRIMARY KEY,
	Marca VARCHAR(50) NOT NULL,
	Modelo VARCHAR(50),
	IdPessoa INT NOT NULL,
	CONSTRAINT carro_pessoa_fk -- nome da constraint
		FOREIGN KEY (IdPessoa) -- propriedade nesta tabela
		REFERENCES Pessoa (Id) -- tabela estrangeira (prop)
);

INSERT INTO Carro
		(Marca, IdPessoa)
VALUES	('Honda', 
	(SELECT Id FROM Pessoa WHERE NAME = 'Pessoa2'));

SELECT * FROM Carro;

DELETE FROM Carro WHERE Id in (SELECT Id FROM Carro WHERE IdPessoa = 2)
DELETE FROM Pessoa WHERE Id = 2;