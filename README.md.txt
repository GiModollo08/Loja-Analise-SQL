# Análise de Dados de uma Loja com SQL

## 📌 Sobre o projeto

Este projeto foi desenvolvido como parte da minha formação em Ciência de Dados, com o objetivo de praticar consultas SQL e análise de dados utilizando um banco de dados relacional de uma loja.

O banco possui informações sobre estados, municípios, clientes e contas a receber.

## 🗂️ Estrutura do banco

O projeto utiliza quatro tabelas principais:

- **Estado** — informações dos estados
- **Municipio** — informações dos municípios
- **Cliente** — informações dos clientes
- **ContaReceber** — informações das contas a receber

### Relacionamentos

```text
Estado
   │
   └── Municipio
          │
          └── Cliente
                 │
                 └── ContaReceber

🛠️ Tecnologias utilizadas
MySQL
MySQL Workbench
SQL
🔎 Análises realizadas

Durante o projeto foram desenvolvidas consultas para:

Identificar a quantidade de clientes por estado;
Calcular o total de contas a receber;
Analisar contas por situação;
Identificar o valor total a receber por cliente;
Relacionar clientes aos seus municípios e estados;
Analisar o valor total a receber por estado;
Identificar a maior conta individual.
📊 Principais resultados

A base analisada possui:

3 clientes
3 contas a receber
R$ 650,00 em contas a receber
Valor por estado
Estado	Quantidade de contas	Valor total
São Paulo	2	R$ 350,00
Rio de Janeiro	1	R$ 300,00
Valor por cliente
Cliente	Valor total
Carlos Lima	R$ 300,00
Maria Souza	R$ 200,00
João Silva	R$ 150,00

A maior conta individual encontrada foi de R$ 300,00, pertencente ao cliente Carlos Lima.

💡 Conhecimentos praticados

Neste projeto foram praticados conceitos de SQL como:

SELECT
JOIN
COUNT()
SUM()
GROUP BY
ORDER BY
LIMIT
📁 Arquivos
Loja-Analise-SQL/
│
├── README.md
└── analises.sql
🎓 Contexto

Projeto acadêmico desenvolvido para prática de SQL, banco de dados relacional e análise de dados durante minha formação em Ciência de Dados.


