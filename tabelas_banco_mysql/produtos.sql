-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04/06/2024 às 01:31
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
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `codigo` int(8) NOT NULL,
  `descricao` varchar(180) NOT NULL,
  `preco_venda` float(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`codigo`, `descricao`, `preco_venda`) VALUES
(1, 'Mouse', 48.00),
(2, 'Teclado sem fio', 65.40),
(3, 'Cadeira de escritorio', 242.99),
(4, 'Notebook Samsung', 3200.00),
(5, 'Caneta bic', 4.30),
(6, 'Monitor 15 polegadas', 120.00);
(7, 'Garra termica', 120.00),
(8, 'Mesa quadrada', 890.00),
(9, 'Borracha', 8.90),
(10, 'Caderno 100 folhas', 45.00),
(11, 'Lapis preto', 4.30),
(12, 'Estojo', 42.00);
(13, 'Monitor 17 polegadas', 320.00);
(14, 'Copo termico', 80.00),
(15, 'Notebook Dell', 3890.00),
(16, 'Mouse sem fio', 60.00),
(17, 'Caderno 200 folhas', 55.00),
(18, 'Bolsa termica', 90.30),
(19, 'Caneta colorida', 18.00);
(20, 'Lixo de plastico', 38.00);


--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
