-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06/06/2024 às 03:50
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

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `nro_pedido` int(8) NOT NULL,
  `dt_emissao` date NOT NULL,
  `cod_cliente` int(8) NOT NULL,
  `vl_total` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `pedidos`
--

INSERT INTO `pedidos` (`nro_pedido`, `dt_emissao`, `cod_cliente`, `vl_total`) VALUES
(1, '2024-06-05', 1, 423.40),
(2, '2024-06-05', 5, 366.80),
(3, '2024-06-05', 12, 4391.00),
(4, '2024-06-05', 7, 275.70),
(5, '2024-06-05', 16, 3055.90),
(6, '2024-06-05', 18, 556.04),
(7, '2024-06-05', 19, 436.80),
(8, '2024-06-05', 20, 732.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedidos_item`
--

CREATE TABLE `pedidos_item` (
  `nro_seq` int(8) NOT NULL,
  `nro_pedido` int(8) NOT NULL,
  `cod_produto` int(8) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `vlr_unitario` decimal(12,2) NOT NULL,
  `vlr_total` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `pedidos_item`
--

INSERT INTO `pedidos_item` (`nro_seq`, `nro_pedido`, `cod_produto`, `quantidade`, `vlr_unitario`, `vlr_total`) VALUES
(17, 1, 1, 1, 3.40, 3.40),
(18, 1, 6, 1, 180.00, 180.00),
(19, 1, 8, 1, 240.00, 240.00),
(20, 2, 9, 20, 4.89, 97.80),
(21, 2, 10, 2, 55.00, 110.00),
(22, 2, 11, 10, 3.90, 39.00),
(23, 2, 13, 1, 120.00, 120.00),
(24, 3, 14, 5, 93.00, 465.00),
(25, 3, 15, 1, 3500.00, 3500.00),
(26, 3, 18, 3, 81.99, 245.97),
(27, 3, 3, 1, 180.03, 180.03),
(28, 4, 2, 1, 78.00, 78.00),
(29, 4, 5, 10, 2.30, 23.00),
(30, 4, 12, 3, 38.90, 116.70),
(31, 4, 20, 1, 58.00, 58.00),
(32, 5, 1, 1, 33.00, 33.00),
(33, 5, 2, 1, 38.00, 38.00),
(34, 5, 3, 1, 145.00, 145.00),
(35, 5, 4, 1, 2800.00, 2800.00),
(36, 5, 5, 10, 3.99, 39.90),
(37, 6, 8, 1, 140.00, 140.00),
(38, 6, 9, 5, 5.80, 29.00),
(39, 6, 12, 2, 33.02, 66.04),
(40, 6, 16, 3, 77.00, 231.00),
(41, 6, 17, 1, 90.00, 90.00),
(42, 7, 9, 20, 4.89, 97.80),
(43, 7, 10, 2, 65.00, 130.00),
(44, 7, 11, 10, 4.90, 49.00),
(45, 7, 13, 1, 160.00, 160.00),
(49, 8, 18, 1, 68.00, 68.00),
(50, 8, 19, 30, 15.80, 474.00),
(51, 8, 3, 1, 190.00, 190.00);

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
(6, 'Monitor 15 polegadas', 120.00),
(7, 'Garra termica', 120.00),
(8, 'Mesa quadrada', 890.00),
(9, 'Borracha', 8.90),
(10, 'Caderno 100 folhas', 45.00),
(11, 'Lapis preto', 4.30),
(12, 'Estojo', 42.00),
(13, 'Monitor 17 polegadas', 320.00),
(14, 'Copo termico', 80.00),
(15, 'Notebook Dell', 3890.00),
(16, 'Mouse sem fio', 60.00),
(17, 'Caderno 200 folhas', 55.00),
(18, 'Bolsa termica', 90.30),
(19, 'Caneta colorida', 18.00),
(20, 'Lixo de plastico', 38.00);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices de tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`nro_pedido`),
  ADD KEY `fk_pedidos#clientes` (`cod_cliente`),
  ADD KEY `pedidos_nro_pedido_index` (`nro_pedido`);

--
-- Índices de tabela `pedidos_item`
--
ALTER TABLE `pedidos_item`
  ADD PRIMARY KEY (`nro_seq`,`nro_pedido`),
  ADD KEY `fk_pedidos_item#pedidos` (`nro_pedido`),
  ADD KEY `fk_pedidos_item#produtos` (`cod_produto`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pedidos_item`
--
ALTER TABLE `pedidos_item`
  MODIFY `nro_seq` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `fk_pedidos#clientes` FOREIGN KEY (`cod_cliente`) REFERENCES `clientes` (`codigo`);

--
-- Restrições para tabelas `pedidos_item`
--
ALTER TABLE `pedidos_item`
  ADD CONSTRAINT `fk_pedidos_item#pedidos` FOREIGN KEY (`nro_pedido`) REFERENCES `pedidos` (`nro_pedido`),
  ADD CONSTRAINT `fk_pedidos_item#produtos` FOREIGN KEY (`cod_produto`) REFERENCES `produtos` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
