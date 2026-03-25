- Ver todos os clientes
SELECT * FROM clientes;

- Receita total 💰
SELECT SUM(p.preco * i.quantidade) AS receita_total
FROM itens_pedido i
JOIN produtos p ON i.produto_id = p.id;

- Cliente que mais gastou 🏆
SELECT c.nome, SUM(p.preco * i.quantidade) AS total_gasto
FROM clientes c
JOIN pedidos pe ON c.id = pe.cliente_id
JOIN itens_pedido i ON pe.id = i.pedido_id
JOIN produtos p ON i.produto_id = p.id
GROUP BY c.nome
ORDER BY total_gasto DESC;

- Produto mais vendido 📦
SELECT p.nome, SUM(i.quantidade) AS total_vendido
FROM produtos p
JOIN itens_pedido i ON p.id = i.produto_id
GROUP BY p.nome
ORDER BY total_vendido DESC;

- Vendas por cidade 🏙️
SELECT c.cidade, SUM(p.preco * i.quantidade) AS total
FROM clientes c
JOIN pedidos pe ON c.id = pe.cliente_id
JOIN itens_pedido i ON pe.id = i.pedido_id
JOIN produtos p ON i.produto_id = p.id
GROUP BY c.cidade;
