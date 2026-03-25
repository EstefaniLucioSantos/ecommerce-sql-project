Análise de E-commerce com SQL

- Objetivo

Este projeto tem como objetivo analisar dados de um e-commerce utilizando SQL para gerar insights de negócio.

- Tecnologias utilizadas

* SQLite
* SQL

- Estrutura do banco

O banco de dados é composto por 4 tabelas:

* clientes
* produtos
* pedidos
* itens_pedido

- Análises realizadas

* Receita total da loja
* Cliente que mais gastou
* Produto mais vendido
* Vendas por cidade

- Exemplos de consultas

Cliente que mais gastou:

sql
SELECT c.nome, SUM(p.preco * i.quantidade) AS total_gasto
FROM clientes c
JOIN pedidos pe ON c.id = pe.cliente_id
JOIN itens_pedido i ON pe.id = i.pedido_id
JOIN produtos p ON i.produto_id = p.id
GROUP BY c.nome
ORDER BY total_gasto DESC;


- Como executar o projeto:

1. Abrir o banco no DB Browser for SQLite
2. Executar o arquivo `schema.sql`
3. Executar o arquivo `data.sql`
4. Executar o arquivo `queries.sql`

- Conclusão

Este projeto demonstra habilidades básicas em SQL, incluindo:

* Criação de tabelas
* Inserção de dados
* Uso de JOIN
* Agregações com SUM
* Agrupamentos com GROUP BY



Projeto desenvolvido por Estefani Lucio dos Santos, para fins de estudo e portfólio.
