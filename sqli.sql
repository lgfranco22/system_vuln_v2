-- phpMyAdmin SQL Dump
-- version 4.6.6deb4+deb9u2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 18/05/2022 às 15:57
-- Versão do servidor: 10.1.48-MariaDB-0+deb9u2
-- Versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sqli`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `produto` varchar(20) NOT NULL,
  `preco_compra` varchar(20) DEFAULT NULL,
  `preco_venda` varchar(20) DEFAULT NULL,
  `fornecedor` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Fazendo dump de dados para tabela `produtos`
--

INSERT INTO `produtos` (`id`, `produto`, `preco_compra`, `preco_venda`, `fornecedor`) VALUES
(1, 'celular', '100', '500', 'ze da esquina'),
(2, 'cama', '200', '800', 'ze dos moveis'),
(3, 'microondas', '10', '200', 'ze da eletronica'),
(4, 'computador', '100', '5000', 'ze da informatica'),
(5, 'cd sertanejo', '2', '50', 'ze da musica'),
(6, 'cd eletronica', '2', '50', 'ze da musica'),
(7, 'cd gospel', '2', '50', 'ze da musica'),
(8, 'cd reagge', '2', '50', 'ze da musica');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `contato` varchar(20) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `email` varchar(40) NOT NULL,
  `senha` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Fazendo dump de dados para tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `contato`, `endereco`, `email`, `senha`) VALUES
(1, 'luiz', '19 9 9649 6681', 'rua dos ipes dinamicos hahaha', 'luiz@gmail.com', 'e3050067fc0bb156ab4904c7b2b5a2b7'),
(2, 'fornecedor ze', '19 9 9884 4444', 'rua dos fornecedores hahaha', 'forn1@gmail.com', 'caafda57048cbb570405a5258d7af311'),
(3, 'usuario1', '13 5 3342 7655', 'rua dos usuarios hahaha', 'usuario@gmail.com', '51a8f60231f6e74eb9e2fef9db355ff2'),
(4, 'usuario2', '16 1 3212 3333', 'rua dos usuarios hahaha', 'usuario2@gmail.com', 'd401ce6bdcd71dc1a00b8765553b8991');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
