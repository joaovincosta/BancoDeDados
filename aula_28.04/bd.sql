/* Lógico_1: */

CREATE DATABASE etecmcm2;

USE etecmcm2;

CREATE TABLE Produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    qtde INT,
    preco DECIMAL(10,2),
    marca VARCHAR(255),
    fk_Categorias_id_categoria INT
);

CREATE TABLE Categorias (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_cat VARCHAR(255)
);
 
ALTER TABLE Produtos ADD CONSTRAINT FK_Produtos_2
    FOREIGN KEY (fk_Categorias_id_categoria)
    REFERENCES Categorias (id_categoria)
    ON DELETE RESTRICT;