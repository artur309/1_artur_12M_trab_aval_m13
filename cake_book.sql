-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 11-Jan-2020 às 01:33
-- Versão do servidor: 5.7.26
-- versão do PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cake_book`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ingredientes`
--

DROP TABLE IF EXISTS `ingredientes`;
CREATE TABLE IF NOT EXISTS `ingredientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `receitas` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ingredientes`
--

INSERT INTO `ingredientes` (`id`, `nome`, `receitas`) VALUES
(1, 'Alface', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `receitas`
--

DROP TABLE IF EXISTS `receitas`;
CREATE TABLE IF NOT EXISTS `receitas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` text,
  `descricao` text,
  `ingredientes` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `receitas`
--

INSERT INTO `receitas` (`id`, `nome`, `descricao`, `ingredientes`) VALUES
(1, 'Numeros', '123', ''),
(2, 'A descricao é feita a partir de conteudo', 'www.googl.ptt', ''),
(3, '13', '13241e321321sahnjhsb', ''),
(6, 'Teste', '3123132132123', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `receitas_ingredientes`
--

DROP TABLE IF EXISTS `receitas_ingredientes`;
CREATE TABLE IF NOT EXISTS `receitas_ingredientes` (
  `receitas_id` int(11) NOT NULL,
  `ingrediente_id` int(11) NOT NULL,
  `ingredientes` text NOT NULL,
  `receitas` int(11) NOT NULL,
  UNIQUE KEY `receitas_id` (`receitas_id`),
  UNIQUE KEY `Ingrediente_id` (`ingrediente_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `receitas_ingredientes`
--
ALTER TABLE `receitas_ingredientes`
  ADD CONSTRAINT `receitas_ingredientes_ibfk_1` FOREIGN KEY (`receitas_id`) REFERENCES `receitas` (`id`),
  ADD CONSTRAINT `receitas_ingredientes_ibfk_2` FOREIGN KEY (`ingrediente_id`) REFERENCES `ingredientes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
