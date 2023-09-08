CREATE DATABASE Gerenciamento;

-- Mostrar Tabela
SHOW DATABASES;

-- Acessar Banco de Dados
USE Gerenciamento;

-- Criar Tabela
CREATE DATABASE Gerenciamento;

SHOW DATABASES;

USE Gerenciamento;

CREATE TABLE Clientes (
    ClienteID INT auto_increment PRIMARY KEY,
    PedidoID int,
    Nome VARCHAR(255) NOT NULL,
    Email VARCHAR(255),
    Telefone VARCHAR(30) NOT NULL,
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidosID)
);

CREATE TABLE Pedidos(
    PedidoID INT auto_increment PRIMARY KEY,
    ClienteID INT,
    DataPedido DATE,
    ValorTotal FLOAT,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

INSERT INTO Clientes (ClienteID, Nome, Email, Telefone)
VALUES
    (1, 'Abel', 'Abel@email.com', '71 91111-0000'),
    (2, 'Davi', 'Davi@email.com', '71 96164-7283'),
    (3, 'Carmo', 'Carmo11@email.com', '71 90000-3333'),
    (4, 'Belink', 'berlink@email.com', '71 98231-4444'),
    (5, 'Carl', 'Carlinhos@gmail.com', '71 90105-2502');

SELECT * FROM Clientes;

DROP TABLE Clientes;