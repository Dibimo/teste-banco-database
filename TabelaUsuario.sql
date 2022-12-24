CREATE DATABASE Teste
GO

USE Teste
GO

CREATE TABLE USUARIO(
    ID int not null,
    Nome varchar(100) not null
)

GO

INSERT INTO USUARIO (ID, NOME) VALUES (1, 'Diogo')
GO
