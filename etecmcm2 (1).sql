-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Maio-2025 às 17:45
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `etecmcm2`
--
CREATE DATABASE IF NOT EXISTS `etecmcm2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `etecmcm2`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nome_cat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nome_cat`) VALUES
(1, 'Açougue'),
(2, 'Higiene'),
(3, 'Limpeza'),
(4, 'Frios'),
(6, 'Enlatados'),
(7, 'Laticínios'),
(8, 'Eletrônicos'),
(9, 'Roupas'),
(10, 'Congelados'),
(11, 'Plantas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produto` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `quant` int(11) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `nome`, `preco`, `quant`, `marca`, `id_categoria`) VALUES
(1, 'Sabão em pó', '30.50', 50, 'Omo', 3),
(2, 'Detergente', '3.55', 10, 'Ypê', 3),
(3, 'Asa de frango', '20.00', 30, 'Sadia', 1),
(4, 'Filé de Peito de Frango', '20.00', 40, 'Seara', 1),
(5, 'Pasta de dente', '15.00', 50, 'Sensodyne', 2),
(6, 'Papel higiênico', '37.50', 45, 'Neve', 2),
(7, 'Salame fatiado', '18.20', 49, 'Perdigão', 4),
(8, 'Presunto fatiado', '10.10', 39, 'Aurora', 4),
(9, 'Atum ralado', '9.90', 55, 'Gomes da Costa', 6),
(10, 'Milho verde', '3.70', 65, 'Bonare', 6),
(11, 'Leite integral', '4.99', 80, 'Jussara', 7),
(12, 'Iogurte integral', '1.99', 75, 'Serramar', 7),
(13, 'Celular Galaxy A15', '810.99', 17, 'Samsumg', 8),
(14, 'Tv Smart 50 polegadas', '2250.80', 15, 'Samsumg', 8);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
