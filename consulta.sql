-- Criando uma view para contas a receber que não foram pagas (Situação = 1)
CREATE VIEW ContasNaoPagas AS
SELECT 
    ContaReceber.ID AS ContaID,
    Cliente.Nome AS ClienteNome,
    Cliente.CPF AS ClienteCPF,
    ContaReceber.DataVencimento,
    ContaReceber.Valor
FROM 
    ContaReceber
JOIN 
    Cliente ON ContaReceber.Cliente_ID = Cliente.ID
WHERE 
    ContaReceber.Situacao = '1';
    
select * from ContasNaoPagas