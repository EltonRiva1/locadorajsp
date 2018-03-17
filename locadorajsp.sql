-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 17-Mar-2018 às 03:05
-- Versão do servidor: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `locadorajsp`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `carro`
--

CREATE TABLE IF NOT EXISTS `carro` (
  `car_marca` varchar(20) NOT NULL,
  `car_modelo` varchar(20) NOT NULL,
  `car_cor` varchar(20) NOT NULL,
  `car_placa` varchar(20) NOT NULL,
  `car_ano` int(20) NOT NULL,
  `car_id` int(3) NOT NULL AUTO_INCREMENT,
  `car_locado` int(20) NOT NULL,
  PRIMARY KEY (`car_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `carro`
--

INSERT INTO `carro` (`car_marca`, `car_modelo`, `car_cor`, `car_placa`, `car_ano`, `car_id`, `car_locado`) VALUES
('Hyundai', 'HB20', 'Branco', 'OZS4237', 2015, 1, 0),
('Fiat', 'Palio', 'Marrom', 'OZS1234', 2014, 2, 0),
('Ford', 'Focus', 'Branco', 'OZS5678', 2015, 3, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `cli_id` int(3) NOT NULL AUTO_INCREMENT,
  `cli_nome` varchar(20) NOT NULL,
  `cli_endereco` varchar(20) NOT NULL,
  `cli_telefone` varchar(20) NOT NULL,
  `cli_celular` varchar(20) NOT NULL,
  `cli_email` varchar(30) NOT NULL,
  `cli_cpf` varchar(20) NOT NULL,
  `cli_usuario` varchar(20) NOT NULL,
  `cli_senha` varchar(20) NOT NULL,
  PRIMARY KEY (`cli_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cli_id`, `cli_nome`, `cli_endereco`, `cli_telefone`, `cli_celular`, `cli_email`, `cli_cpf`, `cli_usuario`, `cli_senha`) VALUES
(2, 'Elton Riva', 'Rua General Labatut', '7130112498', '71996469564', 'notleamil@hotmail.com', '02166827543', 'Elton', 'Riva');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE IF NOT EXISTS `funcionario` (
  `func_id` int(3) NOT NULL AUTO_INCREMENT,
  `func_nome` varchar(20) NOT NULL,
  `func_endereco` varchar(20) NOT NULL,
  `func_telefone` varchar(20) NOT NULL,
  `func_celular` varchar(20) NOT NULL,
  `func_email` varchar(20) NOT NULL,
  `func_cpf` varchar(20) NOT NULL,
  `func_usuario` varchar(20) NOT NULL,
  `func_senha` varchar(20) NOT NULL,
  PRIMARY KEY (`func_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `locacao`
--

CREATE TABLE IF NOT EXISTS `locacao` (
  `Loc_cliente_id` int(20) NOT NULL,
  `Loc_id` int(3) NOT NULL AUTO_INCREMENT,
  `Loc_carro_id` int(20) NOT NULL,
  `Loc_datareserva` varchar(20) NOT NULL,
  `Loc_dataentrega` varchar(20) NOT NULL,
  PRIMARY KEY (`Loc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Extraindo dados da tabela `locacao`
--

INSERT INTO `locacao` (`Loc_cliente_id`, `Loc_id`, `Loc_carro_id`, `Loc_datareserva`, `Loc_dataentrega`) VALUES
(2, 11, 3, '12/08/2016', '15/08/2016');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
