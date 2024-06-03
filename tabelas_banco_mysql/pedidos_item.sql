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
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `pedidos_item`
--
ALTER TABLE `pedidos_item`
  ADD PRIMARY KEY (`nro_seq`,`nro_pedido`),
  ADD KEY `fk_pedidos_item#pedidos` (`nro_pedido`),
  ADD KEY `fk_pedidos_item#produtos` (`cod_produto`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pedidos_item`
--
ALTER TABLE `pedidos_item`
  MODIFY `nro_seq` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restrições para tabelas despejadas
--

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
