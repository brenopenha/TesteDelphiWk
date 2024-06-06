-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04/06/2024 às 01:29
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `teste_delphi`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `codigo` int(8) NOT NULL,
  `nome` varchar(120) NOT NULL,
  `cidade` varchar(120) NOT NULL,
  `uf` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Tabela de clientes';

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`codigo`, `nome`, `cidade`, `uf`) VALUES
(1, 'Jose da Silva', 'Franca', 'SP'),
(2, 'Maria Silva', 'Bauru', 'SP'),
(3, 'Paulo das Flores', 'Araras', 'SP'),
(4, 'Leandro Pereira', 'Batatais', 'SP'),
(5, 'Marcio Augusto', 'Araxa', 'MG'),
(6, 'Pedro Silva', 'Uberaba', 'MG'),
(7, 'Marli Pontes', 'Guarujá', 'SP'),
(8, 'André Gomes', 'Itu', 'SP'),
(9, 'Deise Gomes', 'Franca', 'SP'),
(10, 'Alvaro Silva', 'Ribeirão Preto', 'SP'),
(11, 'Marilda Alcantara', 'Bauru', 'SP'),
(12, 'Maria Alice', 'Porto Ferreira', 'SP'),
(13, 'Simone Costa', 'Americana', 'SP'),
(14, 'Luiza Merque', 'Batatais', 'SP'),
(15, 'Flavio Borges', 'Araxa', 'MG'),
(16, 'Savio da Silva', 'Uberaba', 'MG'),
(17, 'Diego Pontes', 'Guarujá', 'SP'),
(18, 'Liamara Gomes', 'Itu', 'SP'),
(19, 'Sergio Gomes', 'Franca', 'SP'),
(20, 'Lorena Silva', 'Ribeirão Preto', 'SP');


--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
