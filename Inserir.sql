-- dados estado
INSERT INTO Estado (Nome, UF) VALUES
('São Paulo', 'SP'),
('Rio de Janeiro', 'RJ'),
('Minas Gerais', 'MG');


-- dados municipio
INSERT INTO Municipio (Estado_ID, Nome, CodIBGE) VALUES
(1, 'São Paulo', 3550308),
(2, 'Rio de Janeiro', 3304557),
(3, 'Belo Horizonte', 3106200);


-- dados cliente
INSERT INTO Cliente (Nome, CPF, Celular, End_logradouro, End_numero, End_municipio, End_CEP, Municipio_ID) VALUES
('Pablo Marçal', '12345678901', '11987654321', 'Rua A', '28', 1, '01001000', 1),
('Ricardo Nunes', '98765432100', '21987654321', 'Rua B', '15', 2, '20020030', 2),
('Guilherme Boulos', '12312312399', '31987654321', 'Rua C', '50', 3, '30130140', 3);

-- dados contareceber
INSERT INTO ContaReceber (Cliente_ID, FaturaVendaID, DataConta, DataVencimento, Valor, Situacao) VALUES
(1, 11001, '2024-01-10', '2024-01-20', 150.00, '1'),
(2, 11002, '2024-02-15', '2024-03-15', 200.00, '3'),
(3, null, '2024-03-10', '2024-04-10', 250.00, '2');

select * from contareceber
