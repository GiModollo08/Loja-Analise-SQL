-- ============================================================
-- PROJETO LOJA - ANÁLISES SQL
-- Projeto acadêmico de Banco de Dados
-- ============================================================


-- 1. Clientes por estado
SELECT 
    e.nome AS estado,
    e.uf,
    COUNT(c.id) AS quantidade_clientes
FROM estado e
JOIN municipio m 
    ON m.estado_id = e.id
JOIN cliente c 
    ON c.municipio_id = m.id
GROUP BY e.id, e.nome, e.uf
ORDER BY quantidade_clientes DESC;


-- 2. Total de contas a receber
SELECT 
    COUNT(*) AS quantidade_contas,
    SUM(valor) AS valor_total
FROM contareceber;


-- 3. Contas a receber por situação
SELECT
    situacao,
    COUNT(*) AS quantidade_contas,
    SUM(valor) AS valor_total
FROM contareceber
GROUP BY situacao
ORDER BY situacao;


-- 4. Valor a receber por cliente
SELECT
    c.id AS cliente_id,
    c.nome AS cliente,
    COUNT(cr.id) AS quantidade_contas,
    SUM(cr.valor) AS valor_total
FROM contareceber cr
JOIN cliente c
    ON cr.cliente_id = c.id
GROUP BY c.id, c.nome
ORDER BY valor_total DESC;


-- 5. Valor a receber por cliente, município e estado
SELECT
    c.nome AS cliente,
    m.nome AS municipio,
    e.nome AS estado,
    e.uf,
    SUM(cr.valor) AS valor_total_receber
FROM contareceber cr
JOIN cliente c
    ON cr.cliente_id = c.id
JOIN municipio m
    ON c.municipio_id = m.id
JOIN estado e
    ON m.estado_id = e.id
GROUP BY
    c.id,
    c.nome,
    m.id,
    m.nome,
    e.id,
    e.nome,
    e.uf
ORDER BY valor_total_receber DESC;


-- 6. Valor a receber por estado
SELECT
    e.nome AS estado,
    e.uf,
    COUNT(cr.id) AS quantidade_contas,
    SUM(cr.valor) AS valor_total_receber
FROM contareceber cr
JOIN cliente c
    ON cr.cliente_id = c.id
JOIN municipio m
    ON c.municipio_id = m.id
JOIN estado e
    ON m.estado_id = e.id
GROUP BY e.id, e.nome, e.uf
ORDER BY valor_total_receber DESC;


-- 7. Maior conta individual
SELECT
    c.nome AS cliente,
    cr.valor,
    cr.dataConta,
    cr.dataVencimento
FROM contareceber cr
JOIN cliente c
    ON cr.cliente_id = c.id
ORDER BY cr.valor DESC
LIMIT 1;