-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21/06/2024 às 17:40
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `produtoravinho`
--
CREATE DATABASE IF NOT EXISTS `produtoravinho` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `produtoravinho`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `casta`
--

CREATE TABLE `casta` (
  `codCasta` int(11) NOT NULL,
  `casta` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `casta`
--

INSERT INTO `casta` (`codCasta`, `casta`) VALUES
(1, 'Alvarinho'),
(2, 'Carbernet Sauvignon'),
(3, 'Sauvignon Blanc'),
(4, 'Malbec'),
(5, 'Pinot Noir'),
(6, 'Chardonnay'),
(7, 'Syrah'),
(8, 'Touriga Nacional');

-- --------------------------------------------------------

--
-- Estrutura para tabela `casta_vinho`
--

CREATE TABLE `casta_vinho` (
  `codVinho` int(11) DEFAULT NULL,
  `codCasta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `casta_vinho`
--

INSERT INTO `casta_vinho` (`codVinho`, `codCasta`) VALUES
(1, 8),
(2, 7),
(3, 6),
(4, 5),
(5, 4),
(6, 3),
(7, 2),
(8, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtor`
--

CREATE TABLE `produtor` (
  `produtorid` int(11) NOT NULL,
  `nomeProdutor` varchar(50) DEFAULT NULL,
  `moradaProdutor` varchar(50) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `codregiao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtor`
--

INSERT INTO `produtor` (`produtorid`, `nomeProdutor`, `moradaProdutor`, `telefone`, `email`, `codregiao`) VALUES
(1, 'Bruno Sorrisos', 'Céus', '254323147', 'sorrisossss@gmail.com', 1),
(2, 'Braya', 'Quarta', '266509270', 'esporao@gmail.com', 2),
(3, 'Moranguinho', 'Centro alto', '946205714', 'joao@gmail.com', 2),
(4, 'Cacetano', 'Quarta', '095748351', 'caetanos@gmail.com', 2),
(5, 'Caespirro', 'Morros', '749375021', 'demarchi@gmail.com', 2),
(6, 'Marquês', 'Riachos', '579370243', 'santana@gmail.com', 2),
(7, 'Xavoso', 'Matagal', '334820571', 'xaves@gmail.com', 2),
(8, 'Daniel', 'Quarta', '123456789', 'daniel@gmail.com', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `regiao`
--

CREATE TABLE `regiao` (
  `idregiao` int(11) NOT NULL,
  `descriregiao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `regiao`
--

INSERT INTO `regiao` (`idregiao`, `descriregiao`) VALUES
(1, 'TestePAN'),
(2, 'Douro'),
(3, 'ETECMCM'),
(4, 'Fazenda da etec'),
(5, 'fazendinha de minas'),
(6, 'groenlandia'),
(7, 'fazenda sul do braya'),
(8, 'Fazenda Sorrisos');

-- --------------------------------------------------------

--
-- Estrutura para tabela `vinho`
--

CREATE TABLE `vinho` (
  `vinhoId` int(11) NOT NULL,
  `nomeVinho` varchar(30) DEFAULT NULL,
  `ano_vinho` int(11) DEFAULT NULL,
  `cor` varchar(15) DEFAULT NULL,
  `grau` decimal(7,2) DEFAULT NULL,
  `preco` decimal(7,2) DEFAULT NULL,
  `codProdutor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `vinho`
--

INSERT INTO `vinho` (`vinhoId`, `nomeVinho`, `ano_vinho`, `cor`, `grau`, `preco`, `codProdutor`) VALUES
(1, 'Esporão Reserva', 2004, 'Tinto', 14.50, 18.50, 3),
(2, 'Quinta do Vallado', 2004, 'Tinto', 14.00, 6.50, 2),
(3, 'Muros Antigos', 2006, 'Branco', 13.00, 7.50, 5),
(4, 'Casca Grossa', 2001, 'Branco', 13.50, 8.00, 4),
(5, 'Lajota Colorida', 2000, 'Tinto', 14.00, 11.00, 7),
(6, 'Fernando Bem Passado', 1995, 'Branco', 15.00, 20.50, 8),
(7, 'Cascavel', 2009, 'Branco', 12.00, 5.00, 6),
(8, 'Morangonni', 2000, 'Tinto', 13.50, 25.00, 1),
(9, 'Cereais Vermelhos', 1872, 'Tinto', 7.20, 44.00, 7),
(10, 'Doze Italiano', 354, 'Tinto', 4.80, 207.00, 6),
(11, 'Garganta Mostra', 1853, 'Branco', 1.30, 7.50, 5),
(12, 'multiplicação caravelas', 2001, 'Branco', 9.90, 98.00, 4),
(13, 'joelho tango', 1709, 'Tinto', 2.50, 150.00, 1),
(14, 'sangrar pastilha', 1995, 'Branco', 6.30, 1980.00, 2),
(15, 'soco gotejante', 2009, 'Branco', 5.70, 666.00, 6),
(16, 'vigor manga', 1512, 'Tinto', 4.70, 50000.00, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `casta`
--
ALTER TABLE `casta`
  ADD PRIMARY KEY (`codCasta`);

--
-- Índices de tabela `casta_vinho`
--
ALTER TABLE `casta_vinho`
  ADD KEY `codVinho` (`codVinho`),
  ADD KEY `codCasta` (`codCasta`);

--
-- Índices de tabela `produtor`
--
ALTER TABLE `produtor`
  ADD PRIMARY KEY (`produtorid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `codregiao` (`codregiao`);

--
-- Índices de tabela `regiao`
--
ALTER TABLE `regiao`
  ADD PRIMARY KEY (`idregiao`);

--
-- Índices de tabela `vinho`
--
ALTER TABLE `vinho`
  ADD PRIMARY KEY (`vinhoId`),
  ADD KEY `codProdutor` (`codProdutor`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `casta`
--
ALTER TABLE `casta`
  MODIFY `codCasta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `produtor`
--
ALTER TABLE `produtor`
  MODIFY `produtorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `regiao`
--
ALTER TABLE `regiao`
  MODIFY `idregiao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `vinho`
--
ALTER TABLE `vinho`
  MODIFY `vinhoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `casta_vinho`
--
ALTER TABLE `casta_vinho`
  ADD CONSTRAINT `casta_vinho_ibfk_1` FOREIGN KEY (`codVinho`) REFERENCES `vinho` (`vinhoId`),
  ADD CONSTRAINT `casta_vinho_ibfk_2` FOREIGN KEY (`codCasta`) REFERENCES `casta` (`codCasta`);

--
-- Restrições para tabelas `produtor`
--
ALTER TABLE `produtor`
  ADD CONSTRAINT `produtor_ibfk_1` FOREIGN KEY (`codregiao`) REFERENCES `regiao` (`idregiao`);

--
-- Restrições para tabelas `vinho`
--
ALTER TABLE `vinho`
  ADD CONSTRAINT `vinho_ibfk_1` FOREIGN KEY (`codProdutor`) REFERENCES `produtor` (`produtorid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
