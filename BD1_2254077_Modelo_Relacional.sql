DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Consumidor;
DROP TABLE IF EXISTS Cartao;
DROP TABLE IF EXISTS Cupom;
DROP TABLE IF EXISTS Avaliacao;
DROP TABLE IF EXISTS Pedido;
DROP TABLE IF EXISTS Statu;
DROP TABLE IF EXISTS Entregadores;
DROP TABLE IF EXISTS Entrega;
DROP TABLE IF EXISTS Categorias;
DROP TABLE IF EXISTS Restaurante;
DROP TABLE IF EXISTS Proprietario;
DROP TABLE IF EXISTS Cardapio;
DROP TABLE IF EXISTS Item;
DROP TABLE IF EXISTS Itens_Pedido;

CREATE TABLE Users (
  ID_User INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  Login CHAR(100),
  Senha VARCHAR(100)
);

CREATE TABLE Consumidor (
  ID_User INTEGER PRIMARY KEY,
  name VARCHAR(100),
  endereco VARCHAR(100),
  cpf VARCHAR(15) NOT NULL,
  FOREIGN KEY ( ID_User) REFERENCES Users(ID_User)
);

CREATE TABLE Restaurante (
  ID_restaurante INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  tipo_categoria  VARCHAR(50),
  horario_funcionamento VARCHAR(9),
  telefone VARCHAR(100),
  endereco VARCHAR(100)
); 

CREATE TABLE Proprietario (
  ID_User INTEGER PRIMARY KEY,
  ID_Restaurante  INTEGER,
  name VARCHAR(100),
  cnpj BIGINT UNIQUE NOT NULL,
  FOREIGN KEY ( ID_Restaurante) REFERENCES Restaurante(ID_Restaurante)
);

CREATE TABLE Cartao (
  num_cartao INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome_cartao VARCHAR(100),
  validade VARCHAR(9),
  ID_User INTEGER,
  FOREIGN KEY (ID_User) REFERENCES Consumidor(ID_User)
);

CREATE TABLE Cupom (
  ID_Cupom INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  tipo_Cupom VARCHAR(100),
  porcentagem INT
);

CREATE TABLE Pedido (
  ID_Pedido INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  ID_restaurante INTEGER,
  ID_User  INTEGER,
  valor_total DECIMAL(20,2),
  hora_pedido VARCHAR(9),
  forma_pagamento  VARCHAR(15),
  endereco VARCHAR(100),
  FOREIGN KEY (ID_User) REFERENCES Consumidor(ID_User),
  FOREIGN KEY (ID_restaurante) REFERENCES Restaurante(ID_restaurante)
);

CREATE TABLE Avaliacao (
  ID_Avaliacao INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  ID_User  INTEGER,
  ID_Pedido  INTEGER,
  pontuacao DECIMAL,
  FOREIGN KEY (ID_User) REFERENCES Consumidor(ID_User),
  FOREIGN KEY (ID_Pedido) REFERENCES Pedido(ID_Pedido)
);

CREATE TABLE Statu (
  ID_status INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  ID_Pedido  INTEGER,
  progresso  VARCHAR(50),
  FOREIGN KEY (ID_Pedido) REFERENCES Pedido(ID_Pedido)
); 

CREATE TABLE Entregadores (
  ID_entregador INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100),
  cpf VARCHAR(100)
);

CREATE TABLE Entrega (
  ID_entrega  INTEGER PRIMARY KEY,
  ID_entregador INTEGER,
  ID_pedido INTEGER,
  FOREIGN KEY (ID_entregador) REFERENCES Entregadores(ID_entregador),
  FOREIGN KEY (ID_Pedido) REFERENCES Pedido(ID_Pedido)
);

CREATE TABLE Categorias (
  ID_categoria INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  tipo_categoria  VARCHAR(100),
  pontuacao DECIMAL(1,1)
); 

CREATE TABLE Cardapio (
  ID_cardapio INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  ID_restaurante INTEGER,
  itens_cardapio VARCHAR(150),
  FOREIGN KEY (ID_restaurante) REFERENCES Restaurante(ID_restaurante)
); 

CREATE TABLE Item (
  ID_item INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  ID_cardapio  INTEGER,
  tipo_item VARCHAR(100),
  FOREIGN KEY (ID_cardapio) REFERENCES Cardapio(ID_cardapio)
);

CREATE TABLE Itens_Pedido (
  ID_Itemp INTEGER PRIMARY KEY,
  ID_item INTEGER,
  ID_Pedido INTEGER,
  FOREIGN KEY (ID_item) REFERENCES Item(ID_item),
  FOREIGN KEY (ID_restaurante) REFERENCES Restaurante(ID_restaurante),
  FOREIGN KEY (ID_Pedido) REFERENCES Pedido(ID_Pedido)
);