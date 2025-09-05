-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/09/2025 às 14:10
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE DATABASE estacionamento;
USE estacionamento;
--
-- Banco de dados: `estacionamento`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `andar`
--

CREATE TABLE `andar` (
  `cod_andar` int(11) NOT NULL,
  `andar` varchar(20) NOT NULL,
  `capacidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `andar`
--

INSERT INTO `andar` (`cod_andar`, `andar`, `capacidade`) VALUES
(1, 'Subsolo 1', 50),
(2, 'Subsolo 2', 40),
(3, 'Térreo', 30),
(4, '1º Andar', 25),
(5, '2º Andar', 20);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `cod_cliente` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `datanascimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`cod_cliente`, `nome`, `cpf`, `email`, `datanascimento`) VALUES
(1, 'Ana Souza', '12345678901', 'ana@email.com', '1985-03-10'),
(2, 'Bruna Lima', '98765432100', 'bruno@email.com', '1990-07-22'),
(3, 'Carla Mendes', '45678912355', 'carlos@email.com', '1978-11-05'),
(4, 'Daniela Ferreira', '74185296300', 'daniela@email.com', '1995-01-17'),
(5, 'Eduardo Ramos', '15975348620', 'eduardo@email.com', '1982-04-09'),
(6, 'Fernanda Alves', '25896314789', 'fernanda@email.com', '1993-06-14'),
(7, 'Gabriel Oliveira', '35715945622', 'gabriel@email.com', '1987-12-30'),
(8, 'Helena Martins', '65498732111', 'helena@email.com', '1999-08-25'),
(9, 'Igor Carvalho', '85245696377', 'igor@email.com', '1975-10-19'),
(10, 'Juliana Castro', '96385274155', 'juliana@email.com', '1988-05-02');

-- --------------------------------------------------------

--
-- Estrutura para tabela `estaciona`
--

CREATE TABLE `estaciona` (
  `cod_estaciona` int(11) NOT NULL,
  `entrada` datetime NOT NULL,
  `saida` datetime NOT NULL,
  `cod_andar` int(11) DEFAULT NULL,
  `cod_veiculo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estaciona`
--

INSERT INTO `estaciona` (`cod_estaciona`, `entrada`, `saida`, `cod_andar`, `cod_veiculo`) VALUES
(1, '2023-07-01 08:00:00', '2023-07-01 12:00:00', 1, 1),
(2, '2023-07-02 09:30:00', '2023-07-02 15:45:00', 2, 2),
(3, '2023-07-03 07:15:00', '2023-07-03 10:00:00', 3, 3),
(4, '2023-07-04 10:00:00', '2023-07-04 18:30:00', 4, 4),
(5, '2023-07-05 11:45:00', '2023-07-05 13:15:00', 5, 5),
(6, '2023-07-06 08:20:00', '2023-07-06 12:10:00', 1, 6),
(7, '2023-07-07 09:10:00', '2023-07-07 14:00:00', 2, 7),
(8, '2023-07-08 13:00:00', '2023-07-08 17:30:00', 3, 8),
(9, '2023-07-09 07:40:00', '2023-07-09 12:00:00', 4, 9),
(10, '2023-07-10 18:15:00', '2023-07-10 21:45:00', 5, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `modelo`
--

CREATE TABLE `modelo` (
  `cod_modelo` int(11) NOT NULL,
  `modelo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `modelo`
--

INSERT INTO `modelo` (`cod_modelo`, `modelo`) VALUES
(1, 'Sedan'),
(2, 'SUV'),
(3, 'Hatch'),
(4, 'Pickup'),
(5, 'Coupé');

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `cod_veiculo` int(11) NOT NULL,
  `placa` varchar(10) NOT NULL,
  `ano` int(11) NOT NULL,
  `cor` varchar(30) NOT NULL,
  `cod_cliente` int(11) DEFAULT NULL,
  `cod_modelo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `veiculo`
--

INSERT INTO `veiculo` (`cod_veiculo`, `placa`, `ano`, `cor`, `cod_cliente`, `cod_modelo`) VALUES
(1, 'JJJ-2020', 2015, 'Preto', 1, 1),
(2, 'ABC-1234', 2018, 'Prata', 2, 2),
(3, 'XYZ-9090', 2005, 'Verde', 3, 3),
(4, 'KLM-4321', 2020, 'Branco', 4, 4),
(5, 'QWE-5678', 2012, 'Azul', 5, 5),
(6, 'ASD-1111', 2019, 'Verde', 6, 2),
(7, 'ZXC-2222', 2001, 'Vermelho', 7, 3),
(8, 'POI-3333', 2016, 'Preto', 8, 1),
(9, 'LKJ-4444', 2022, 'Cinza', 9, 4),
(10, 'JEG-1010', 2010, 'Verde', 10, 5);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `andar`
--
ALTER TABLE `andar`
  ADD PRIMARY KEY (`cod_andar`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cod_cliente`);

--
-- Índices de tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD PRIMARY KEY (`cod_estaciona`),
  ADD KEY `cod_andar` (`cod_andar`),
  ADD KEY `cod_veiculo` (`cod_veiculo`);

--
-- Índices de tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`cod_modelo`);

--
-- Índices de tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`cod_veiculo`),
  ADD KEY `cod_cliente` (`cod_cliente`),
  ADD KEY `cod_modelo` (`cod_modelo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `andar`
--
ALTER TABLE `andar`
  MODIFY `cod_andar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cod_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `estaciona`
--
ALTER TABLE `estaciona`
  MODIFY `cod_estaciona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `modelo`
--
ALTER TABLE `modelo`
  MODIFY `cod_modelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `cod_veiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `estaciona`
--
ALTER TABLE `estaciona`
  ADD CONSTRAINT `estaciona_ibfk_1` FOREIGN KEY (`cod_andar`) REFERENCES `andar` (`cod_andar`),
  ADD CONSTRAINT `estaciona_ibfk_2` FOREIGN KEY (`cod_veiculo`) REFERENCES `veiculo` (`cod_veiculo`);

--
-- Restrições para tabelas `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`cod_cliente`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`cod_modelo`) REFERENCES `modelo` (`cod_modelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
