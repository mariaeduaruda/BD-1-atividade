https://github.com/mariaeduaruda/BD-1-atividade

USE foodservice;

SELECT * FROM Consumidor;
SELECT * FROM Pedido;
SELECT * FROM Itens_Pedido;
SELECT * FROM Item;

# -- Seleciona os o id dos pedidos que foram feitos no meses 11-- #
SELECT DISTINCT ID_pedido FROM PEDIDO
WHERE hora_pedido LIKE '%/11/%';

# -- Seleciona o nome e o cpf dos usuários que fizeram algum pedido, pela tabela de Itens_Pedido. -- #
SELECT name, cpf FROM Consumidor
WHERE ID_User IN (
SELECT ID_User FROM Pedido as p, Itens_Pedido as itensp WHERE p.ID_Pedido = itensp.ID_Pedido
AND itensp.ID_Pedido = 2 );

# -- Seleciona o nome e o cpf dos usuários que fizeram algum pedido especificando o item, pela tabela de cardapio. -- #
SELECT name, cpf FROM Consumidor WHERE ID_User IN (
SELECT ID_User FROM Pedido as p, Itens_Pedido as pitens, Cardapio as card
WHERE p.ID_Pedido = pitens.ID_Pedido AND pitens.ID_Pedido = card.ID_cardapio
AND card.itens_cardapio LIKE '%Brigadeiro%'
);

# -- Seleciona o nome e o id do restaurante dos propietario já realizaram alguma venda -- # 
SELECT name, ID_Restaurante FROM Proprietario as p WHERE p.ID_User
IN ( SELECT ID_User FROM Itens_Pedido );

# -- Seleciona o nome e o cpf dos consumidor que o endereço não é para ser entregue na Rua Fiandeiras -- # 
Select name, cpf From Consumidor
WHERE ID_User NOT IN 
(SELECT ID_User FROM Pedido as p
Where endereco = 'Rua Fiandeiras');

# -- Seleciona o nome do consumidor que o lanche já saiu para entrega -- # 
SELECT DISTINCT name FROM Consumidor, Pedido, Statu
WHERE Pedido.Id_user = Consumidor.Id_user 
AND Pedido.id_pedido = Statu.ID_Status 
AND Statu.progresso = "Saiu para entrega";

# -- Busca os restaurantes que tiveram mais de um pedidos e mostra a quantidade de pedidos -- #
SELECT name, count(DISTINCT p.ID_restaurante) as qtd FROM restaurante AS res, pedido as p 
WHERE res.ID_restaurante = p.ID_User
GROUP BY res.ID_restaurante
HAVING qtd > 1;

# -- Busca os o id do restaurante e conta quandos id tiveram  pedido na data especificada -- #
SELECT DISTINCT ID_restaurante, COUNT(*) FROM Pedido
WHERE hora_pedido LIKE "03/08/%";

# -- Busca o nome dos consumidores que fizeram a quatidade de um pedido e mostra a quantidade de pedidos -- #
SELECT name, count(DISTINCT name) as qtd FROM Consumidor AS co, pedido as p 
WHERE co.ID_User = p.ID_User 
GROUP BY co.ID_User
HAVING qtd = 1;

# -- Conta o numero de users consumidores que fizeram pedido no dia 5 -- #
SELECT DISTINCT U.ID_User FROM Users U, Consumidor C, Pedido P
WHERE U.ID_User = C.ID_User
AND P.ID_User = U.ID_User
AND P.hora_pedido LIKE "05/%/% - %:%"
GROUP BY C.name
HAVING COUNT(*) > 1;
