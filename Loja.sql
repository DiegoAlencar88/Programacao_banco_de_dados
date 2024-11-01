-- criar banco de dados
CREATE DATABASE Loja;
USE Loja;
-- tabela estado
CREATE TABLE Estado (
    ID INT PRIMARY KEY auto_increment,
    Nome VARCHAR(50) NOT NULL,
    UF CHAR(2) NOT NULL
);
-- tabela municipio
CREATE TABLE Municipio (
    ID INT PRIMARY KEY auto_increment,
    Estado_ID INT NOT NULL, 
    Nome VARCHAR(80) NOT NULL,
    CodIBGE INT,
    FOREIGN KEY (Estado_ID) REFERENCES Estado(ID)
);
-- tabela Cliente
CREATE TABLE Cliente (
    ID INT PRIMARY KEY auto_increment,
    Nome VARCHAR(80) NOT NULL,
    CPF CHAR(11) NOT NULL,
    Celular CHAR(11),
    End_logradouro VARCHAR(100),
    End_numero VARCHAR(10),
    End_municipio INT,
    End_CEP CHAR(8),
    Municipio_ID INT,
    FOREIGN KEY (Municipio_ID) REFERENCES Municipio(ID)
);
-- tabela contasreceber
CREATE TABLE ContaReceber (
    ID INT PRIMARY KEY auto_increment,
    Cliente_ID INT,
    FaturaVendaID INT,
    DataConta DATE,
    DataVencimento DATE,
    Valor DECIMAL(18, 2),
    Situacao Enum ('1','2','3'),
    FOREIGN KEY (Cliente_ID) REFERENCES Cliente(ID)
);


select * from contareceber
