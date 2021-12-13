USE foodservice;

INSERT INTO Users(ID_User, Login, Senha)
VALUES 
(1, 'felipe', 'pjKoSamk4Q'),
(2,'toninho', 'azpwARefYW'),
(3,'miguel', 'Mxz6GZDnSi'),
(4,'cleber', 'pgxak98iTs'),
(5,'marina', 'yB1Jtuiz07'),
(6,'joao', 'HIYFhi3yMZ'),
(7,'dionisio', 'CK7DskA9yH'),
(8,'roberto', 'TFEBJjLU4u'),
(9,'samir', '1UGduAYIXK'),
(10,'sandro', '5l6RDZj3eU'),
(11,'aparecida', 'BKCjyQM9dK'),
(12,'amanda', 'BhBZrgb5C9'),
(13,'freitas', '1dGh0I0R3b');

INSERT INTO Consumidor(ID_User, name, cpf, endereco)
VALUES
(2,'Antonio', 08527707071, 'Avenida Desembargador Moreira'),
(4,'Cleber', 61657505081, 'Rua das Fiandeiras'),
(5,'Marina', 12051534039, 'Rua das Fiandeiras'),
(6,'João', 09478009052, 'Avenida Governador José Malcher'),
(7,'Dionísio', 74972450070, 'Rua Carlos Augusto Cornelsen'),
(8,'Roberto', 25972510049, 'Rodovia Raposo Tavares'),
(9,'Samir', 66849364081, 'QE 11 Área Especial C'),
(10,'Sandro', 38293046090, 'Rua Arlindo Nogueira');

INSERT INTO Restaurante(ID_Restaurante, name, tipo_categoria, horario_funcionamento, telefone, endereco)
VALUES
(1,'Mc dolnalds', 'lanche', '14 - 19h', '(95) 3130-4613', 'Avenida Coronel Manoel Inocêncio'),
(2,'Dog King', 'lanche', '15 - 23h', '(94) 3500-4843', 'Via de Pedestre Serra do Taquari'),
(3,'Feijaoxinho', 'caseiro', '12 - 15h', '(61) 3027-6126', 'Rua Luiz Pasteur'),
(4,'Ligeirinho', 'mexicano', '14 - 19h', '(95) 3330-4613', 'Rua das Fiandeiras'),
(5,'Sorvetão', 'sorvete', '15 - 23h', '(55) 3500-4043', 'Rua Arlindo Nogueira'),
(6,'Dona Ro', 'caseiro', '12 - 15h', '(61) 3227-6026', 'Rua Luiz Pasteur'),
(7,'Burger King', 'lanche', '14 - 19h', '(85) 3030-4613', 'Avenida Coronel Manoel Inocêncio'),
(8,'Subway', 'lanche', '15 - 23h', '(44) 3011-4843', 'Rua das Fiandeiras'),
(9,'Habibis', 'arabe', '12 - 15h', '(35) 3127-6506', 'Rua Luiz Pasteur'),
(10,'Samurai', 'japones', '13 - 21h', '(79) 2012-1324', 'QE 11 Área Especial C');

INSERT INTO Proprietario(ID_User, name, ID_Restaurante, cnpj)
VALUES 
(1,'Felipe', 1, 37698954000120),
(3,'miguel', 2, 5900673033000145), 
(11,'aparecida', 3, 0463020047610),
(12,'amanda', 4, 1320920068274),
(13,'freitas', 5, 7120077456097);

INSERT INTO Cartao(num_cartao, nome_cartao, validade, ID_User)
VALUES 
(88338633,'Felipe', '2028', 4),
(30809625,'miguel','2030', 5),
(3368397,'Roberto','2025', 6),
(0855695,'Sandro','2029', 7);

INSERT INTO Cupom(ID_Cupom, tipo_Cupom, porcentagem)
VALUES 
(1,'lanche', 20),
(2,'japones', 15);

INSERT INTO Pedido(ID_Pedido, ID_restaurante, ID_User, valor_total, hora_pedido, forma_pagamento, endereco)
VALUES 
(1, 1, 2, 20.9,'05/10/16 - 11:51', 'Cartão', 'Avenida Desembargador Moreira'),
(2, 2, 2, 27.9,'09/11/20 - 13:20', 'Dinheiro' ,'Rua da Imprensa'),
(3, 3, 4, 54.5,'03/12/17 - 18:57', 'Cartão', 'Rua das Fiandeiras'),
(4, 4, 6, 20.9,'05/11/96 - 11:51', 'Cartão', 'Avenida Desembargador Moreira'),
(5, 5, 7, 27.9,'09/10/20 - 14:20', 'Dinheiro' ,'Rua da Imprensa'),
(6, 6, 8, 54.5,'03/08/17 - 10:57', 'Cartão', 'Rua das Fiandeiras'),
(7, 7, 6, 20.9,'05/09/19 - 16:51', 'Cartão', 'Avenida Desembargador Moreira'),
(8, 8, 9, 27.9,'09/01/20 - 12:20', 'Cartão' ,'Rua da Imprensa'),
(9, 9, 10, 54.50,'03/09/17 - 10:57', 'Cartão', 'Rua das Fiandeiras'),
(10, 10, 8, 54.50,'03/08/17 - 11:57', 'Cartão', 'Rua das Fiandeiras');

INSERT INTO Statu(ID_status, ID_Pedido, progresso)
VALUES
(1,1,  'Saiu para entrega'),
(2,2,'Em preparo'),
(3,3,'Visto'),
(4,4, 'Concluido'),
(5,5, 'Em preparo'),
(6,6, 'Em preparo'),
(7,7, 'Concluido'),
(8,8, 'Em preparo'),
(9,9,'Em preparo'),
(10,10, 'Saiu para entrega');

INSERT INTO Entregadores(ID_entregador, nome, cpf)
VALUES
(1, 'Allana Helena Laís Barros', 50584971150),
(2, 'Marcelo Danilo Gabriel Alves', 69905323511),
(3, 'Marlene Evelyn Galvão', 58666483857 ),
(4, 'Lucas Henrique Farias', 16406129806),
(5, 'Patrícia Regina Lopes', 25449060300),
(6, 'Osvaldo Samuel Leandro da Luz', 37580580314),
(7, 'Lucas Giovanni Assunção', 44925408810),
(8, 'Theo Gael Enzo Freitas', 02815284707),
(9, 'Cauã Pedro Henrique Teixeira', 54166833685),
(10, 'Ryan Julio Henry Novaes', 72944554301 );

INSERT INTO Entrega( ID_entrega, ID_entregador, ID_pedido )
VALUES
(1, 1,  1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

INSERT INTO Categorias(ID_categoria, tipo_categoria, pontuacao)
VALUES
(1, 'Japones',  1),
(2, 'caseiro', 2),
(3, 'lanche', 3),
(4, 'Japones',  5.0),
(5, 'caseiro', 4.6),
(6, 'lanche', 4.3),
(7, 'mercado', 4.0),
(8, 'mexicano', 5.0),
(9, 'arabe', 4.6),
(10, 'sorvete', 4.7),
(11, 'pizza', 4.8);

INSERT INTO Cardapio(ID_cardapio, ID_restaurante, itens_cardapio)
VALUES
(1, 1, 'Urumaki salmão, Hot filadelphia, Hot crispy couve, Sashimi tilapia, Seviche'),
(2, 2, 'Aipim Frito, Polenta Com Frango, Caldo Verde'),
(3, 3, 'Hamburguer, Hamburguer Duplo, Hamburguer Salad, Fritas Fries, Polenta fries'),
(4, 4, 'Vodka, Rum, Gin, Combo Red Label'),
(5, 5, 'Burrito, Tacos, Qsadilhas, Tortilhas, Nachos'),
(6, 6, 'Charuto de folha de uva,'),
(7, 7, 'Menta, Chocolate, Morango, Napolitano'),
(8, 8, 'Brigadeiro, Mini Churros, Beijinho, Donut'),
(9, 9, 'Marmita de frango Salad, Bife ao Molho Sugo'),
(10, 10, 'Calabresa, Frango com Catupiry, Portuguesa, Peperoni');

INSERT INTO Item(ID_item, ID_cardapio, tipo_item)
VALUES
(1, 1, 'Comida'),
(2, 2, 'Comida'),
(3, 3, 'Comida'),
(4, 4, 'Bebidas'),
(5, 5, 'Comida, Bebidas'),
(6, 6, 'Comida'),
(7, 7, 'Comida, Doces'),
(8, 8, 'Comida, Sorvete'),
(9, 9, 'Comida'),
(10, 10, 'Comida');

INSERT INTO Itens_Pedido(ID_Itemp, ID_item, ID_Pedido, ID_restaurante)
VALUES
(1, 1,  1, 10),
(2, 2, 2, 9),
(3, 3, 3, 8),
(4, 4, 4, 1),
(5, 5, 5, 2),
(6, 6, 6, 4),
(7, 7, 7, 7),
(8, 8, 8, 5),
(9, 9, 9, 6),
(10, 10, 10, 3);
