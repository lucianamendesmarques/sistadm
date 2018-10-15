-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/05/2018 às 21:59
-- Versão do servidor: 5.7.14
-- Versão do PHP: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `celke`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `adms_cads_usuarios`
--

CREATE TABLE `adms_cads_usuarios` (
  `id` int(11) NOT NULL,
  `adms_niveis_acesso_id` int(11) NOT NULL,
  `adms_sits_usuario_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `adms_cads_usuarios`
--

INSERT INTO `adms_cads_usuarios` (`id`, `adms_niveis_acesso_id`, `adms_sits_usuario_id`, `created`, `modified`) VALUES
(1, 5, 3, '2018-05-23 00:00:00', '2018-05-01 17:13:56');

-- --------------------------------------------------------

--
-- Estrutura para tabela `adms_cors`
--

CREATE TABLE `adms_cors` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `cor` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `adms_cors`
--

INSERT INTO `adms_cors` (`id`, `nome`, `cor`, `created`, `modified`) VALUES
(1, 'Azul', 'primary', '2018-03-23 00:00:00', NULL),
(2, 'Cinza', 'secondary', '2018-03-23 00:00:00', NULL),
(3, 'Verde', 'success', '2018-03-23 00:00:00', NULL),
(4, 'Vermelho', 'danger', '2018-03-23 00:00:00', NULL),
(5, 'Laranjado', 'warning', '2018-03-23 00:00:00', NULL),
(6, 'Azul claro', 'info', '2018-03-23 00:00:00', NULL),
(7, 'Claro', 'light', '2018-03-23 00:00:00', NULL),
(8, 'Cinza escuro', 'dark', '2018-03-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `adms_grps_pgs`
--

CREATE TABLE `adms_grps_pgs` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ordem` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `adms_grps_pgs`
--

INSERT INTO `adms_grps_pgs` (`id`, `nome`, `ordem`, `created`, `modified`) VALUES
(1, 'Listar', 1, '2018-03-23 00:00:00', NULL),
(2, 'Cadastrar', 2, '2018-03-23 00:00:00', NULL),
(3, 'Editar', 3, '2018-03-23 00:00:00', NULL),
(4, 'Apagar', 4, '2018-03-23 00:00:00', NULL),
(5, 'Visualizar', 5, '2018-03-23 00:00:00', NULL),
(6, 'Outros', 6, '2018-03-23 00:00:00', NULL),
(7, 'Acesso', 7, '2018-03-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `adms_menus`
--

CREATE TABLE `adms_menus` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `icone` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ordem` int(11) NOT NULL,
  `adms_sit_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `adms_menus`
--

INSERT INTO `adms_menus` (`id`, `nome`, `icone`, `ordem`, `adms_sit_id`, `created`, `modified`) VALUES
(1, 'Dashboard', 'fas fa-tachometer-alt', 1, 1, '2018-03-23 00:00:00', '2018-04-04 12:51:12'),
(2, 'Usuario', 'fas fa-user', 2, 1, '2018-03-23 00:00:00', '2018-04-12 12:21:49'),
(3, 'Menu', 'fas fa-list-ul', 3, 1, '2018-03-23 00:00:00', '2018-04-12 12:21:49'),
(4, 'Sair', 'fas fa-sign-out-alt', 5, 1, '2018-03-23 00:00:00', '2018-05-01 16:59:06'),
(5, 'ConfiguraÃ§Ãµes', 'fas fa-cogs', 4, 1, '2018-05-01 16:54:42', '2018-05-01 16:59:06');

-- --------------------------------------------------------

--
-- Estrutura para tabela `adms_nivacs_pgs`
--

CREATE TABLE `adms_nivacs_pgs` (
  `id` int(11) NOT NULL,
  `permissao` int(11) NOT NULL,
  `ordem` int(11) NOT NULL,
  `dropdown` int(11) NOT NULL,
  `lib_menu` int(11) NOT NULL DEFAULT '2',
  `adms_menu_id` int(11) NOT NULL,
  `adms_niveis_acesso_id` int(11) NOT NULL,
  `adms_pagina_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `adms_nivacs_pgs`
--

INSERT INTO `adms_nivacs_pgs` (`id`, `permissao`, `ordem`, `dropdown`, `lib_menu`, `adms_menu_id`, `adms_niveis_acesso_id`, `adms_pagina_id`, `created`, `modified`) VALUES
(1, 1, 1, 2, 1, 1, 1, 1, '2018-03-23 00:00:00', NULL),
(2, 1, 2, 1, 1, 2, 1, 5, '2018-03-23 00:00:00', NULL),
(3, 1, 3, 1, 1, 2, 1, 6, '2018-03-23 00:00:00', NULL),
(4, 1, 4, 1, 1, 3, 1, 7, '2018-03-23 00:00:00', NULL),
(5, 1, 5, 1, 1, 3, 1, 8, '2018-03-23 00:00:00', NULL),
(6, 1, 6, 2, 1, 4, 1, 4, '2018-03-23 00:00:00', NULL),
(7, 1, 7, 2, 2, 2, 1, 9, '2018-03-23 00:00:00', NULL),
(8, 1, 8, 2, 2, 2, 1, 10, '2018-03-23 00:00:00', NULL),
(9, 1, 9, 2, 2, 2, 1, 11, '2018-03-23 00:00:00', NULL),
(10, 1, 10, 2, 2, 2, 1, 12, '2018-03-23 00:00:00', NULL),
(11, 1, 11, 2, 2, 2, 1, 13, '2018-03-23 00:00:00', NULL),
(12, 1, 1, 2, 1, 1, 3, 1, '2018-03-23 00:00:00', '2018-03-22 18:32:12'),
(13, 1, 3, 1, 1, 2, 3, 5, '2018-03-23 00:00:00', '2018-03-22 22:47:36'),
(14, 2, 2, 1, 2, 2, 3, 6, '2018-03-23 00:00:00', '2018-03-22 21:39:35'),
(15, 2, 4, 1, 2, 3, 3, 7, '2018-03-23 00:00:00', '2018-03-22 21:39:32'),
(16, 2, 5, 1, 2, 3, 3, 8, '2018-03-23 00:00:00', '2018-03-22 21:47:24'),
(17, 1, 6, 2, 1, 4, 3, 4, '2018-03-23 00:00:00', '2018-03-22 17:41:13'),
(18, 2, 7, 2, 2, 2, 3, 9, '2018-03-23 00:00:00', '2018-03-22 21:47:27'),
(19, 2, 8, 2, 2, 2, 3, 10, '2018-03-23 00:00:00', '2018-03-22 21:47:32'),
(20, 2, 9, 2, 2, 2, 3, 11, '2018-03-23 00:00:00', '2018-03-22 21:47:34'),
(21, 2, 10, 2, 2, 2, 3, 12, '2018-03-23 00:00:00', '2018-03-22 21:47:36'),
(22, 2, 11, 2, 2, 2, 3, 13, '2018-03-23 00:00:00', '2018-03-22 21:47:27'),
(23, 1, 12, 2, 2, 2, 1, 14, '2018-03-23 00:00:00', NULL),
(24, 1, 13, 1, 2, 2, 1, 15, '2018-03-23 00:00:00', NULL),
(25, 1, 14, 1, 2, 3, 1, 16, '2018-03-23 00:00:00', NULL),
(26, 1, 15, 1, 2, 3, 1, 17, '2018-03-23 00:00:00', NULL),
(27, 1, 16, 1, 2, 3, 1, 21, '2018-03-19 18:06:40', NULL),
(28, 2, 1, 1, 2, 3, 2, 21, '2018-03-19 18:06:40', NULL),
(29, 2, 12, 1, 2, 3, 3, 21, '2018-03-19 18:06:40', '2018-03-21 22:48:53'),
(30, 2, 1, 1, 2, 3, 14, 21, '2018-03-19 18:06:40', NULL),
(31, 1, 17, 1, 2, 3, 1, 22, '2018-03-21 12:39:49', NULL),
(32, 2, 2, 1, 2, 3, 2, 22, '2018-03-21 12:39:49', NULL),
(33, 2, 13, 1, 2, 3, 3, 22, '2018-03-21 12:39:49', NULL),
(34, 2, 2, 1, 2, 3, 14, 22, '2018-03-21 12:39:49', NULL),
(35, 1, 18, 1, 2, 3, 1, 23, '2018-03-21 16:43:09', NULL),
(36, 2, 3, 1, 2, 3, 2, 23, '2018-03-21 16:43:09', NULL),
(37, 2, 14, 1, 2, 3, 3, 23, '2018-03-21 16:43:09', '2018-03-22 21:47:42'),
(38, 2, 3, 1, 2, 3, 14, 23, '2018-03-21 16:43:09', NULL),
(39, 1, 19, 1, 2, 3, 1, 24, '2018-03-21 17:46:32', NULL),
(40, 2, 4, 1, 2, 3, 2, 24, '2018-03-21 17:46:32', NULL),
(41, 2, 15, 1, 2, 3, 3, 24, '2018-03-21 17:46:32', '2018-03-22 21:47:42'),
(42, 2, 4, 1, 2, 3, 14, 24, '2018-03-21 17:46:32', NULL),
(50, 2, 5, 1, 2, 3, 14, 26, '2018-03-21 20:16:19', NULL),
(49, 1, 16, 1, 2, 3, 3, 26, '2018-03-21 20:16:19', NULL),
(48, 1, 5, 1, 2, 3, 2, 26, '2018-03-21 20:16:19', '2018-03-22 21:36:26'),
(47, 1, 20, 1, 2, 3, 1, 26, '2018-03-21 20:16:19', NULL),
(51, 1, 21, 1, 2, 3, 1, 27, '2018-03-21 21:56:03', NULL),
(52, 1, 6, 1, 2, 3, 2, 27, '2018-03-21 21:56:03', '2018-03-22 21:38:01'),
(53, 2, 17, 1, 2, 3, 3, 27, '2018-03-21 21:56:03', NULL),
(54, 2, 6, 1, 2, 3, 14, 27, '2018-03-21 21:56:03', NULL),
(55, 1, 22, 1, 2, 3, 1, 28, '2018-03-22 17:14:57', NULL),
(56, 1, 7, 1, 2, 3, 2, 28, '2018-03-22 17:14:57', '2018-03-22 21:39:02'),
(57, 2, 18, 1, 2, 3, 3, 28, '2018-03-22 17:14:57', NULL),
(58, 2, 7, 1, 2, 3, 14, 28, '2018-03-22 17:14:57', NULL),
(59, 1, 23, 1, 2, 3, 1, 29, '2018-03-22 18:24:20', NULL),
(60, 1, 8, 1, 2, 3, 2, 29, '2018-03-22 18:24:20', '2018-03-22 21:38:56'),
(61, 2, 19, 1, 2, 3, 3, 29, '2018-03-22 18:24:20', NULL),
(62, 2, 8, 1, 2, 3, 14, 29, '2018-03-22 18:24:20', NULL),
(63, 1, 24, 1, 2, 3, 1, 30, '2018-03-22 19:21:32', NULL),
(64, 1, 9, 1, 2, 3, 2, 30, '2018-03-22 19:21:32', '2018-03-22 21:39:05'),
(65, 2, 20, 1, 2, 3, 3, 30, '2018-03-22 19:21:32', NULL),
(66, 2, 9, 1, 2, 3, 14, 30, '2018-03-22 19:21:32', NULL),
(67, 1, 25, 1, 2, 3, 1, 31, '2018-03-22 20:30:26', NULL),
(68, 2, 10, 1, 2, 3, 2, 31, '2018-03-22 20:30:26', NULL),
(69, 2, 21, 1, 2, 3, 3, 31, '2018-03-22 20:30:26', NULL),
(70, 2, 10, 1, 2, 3, 14, 31, '2018-03-22 20:30:26', NULL),
(71, 1, 26, 1, 2, 3, 1, 2, '2018-03-22 21:16:35', NULL),
(72, 1, 27, 1, 2, 3, 1, 3, '2018-03-22 21:16:35', NULL),
(73, 1, 11, 2, 1, 1, 2, 1, '2018-03-22 21:16:35', '2018-03-22 21:28:00'),
(74, 1, 12, 2, 1, 4, 2, 4, '2018-03-22 21:16:35', '2018-03-22 21:29:19'),
(75, 1, 13, 1, 2, 3, 2, 2, '2018-03-22 21:16:35', NULL),
(76, 1, 14, 1, 2, 3, 2, 3, '2018-03-22 21:16:35', NULL),
(77, 1, 15, 1, 1, 2, 2, 5, '2018-03-22 21:16:35', '2018-03-22 21:29:37'),
(78, 1, 16, 1, 1, 3, 2, 6, '2018-03-22 21:16:35', '2018-03-22 22:43:34'),
(79, 2, 17, 1, 2, 3, 2, 7, '2018-03-22 21:16:35', NULL),
(80, 1, 18, 1, 1, 3, 2, 8, '2018-03-22 21:16:35', '2018-03-22 21:53:14'),
(81, 1, 19, 1, 2, 2, 2, 9, '2018-03-22 21:16:35', '2018-03-22 21:34:30'),
(82, 1, 20, 1, 2, 2, 2, 10, '2018-03-22 21:16:35', '2018-03-22 21:35:15'),
(83, 1, 21, 1, 2, 2, 2, 11, '2018-03-22 21:16:35', '2018-03-22 21:35:18'),
(84, 1, 22, 1, 2, 2, 2, 12, '2018-03-22 21:16:35', '2018-03-22 21:35:21'),
(85, 1, 23, 1, 2, 2, 2, 13, '2018-03-22 21:16:35', '2018-03-22 21:34:30'),
(86, 1, 24, 1, 2, 2, 2, 14, '2018-03-22 21:16:35', '2018-03-22 21:35:18'),
(87, 1, 25, 1, 2, 2, 2, 15, '2018-03-22 21:16:35', '2018-03-22 21:35:25'),
(88, 2, 26, 1, 2, 3, 2, 16, '2018-03-22 21:16:35', NULL),
(89, 2, 27, 1, 2, 3, 2, 17, '2018-03-22 21:16:35', NULL),
(90, 1, 22, 1, 2, 3, 3, 2, '2018-03-22 21:16:35', NULL),
(91, 1, 23, 1, 2, 3, 3, 3, '2018-03-22 21:16:35', NULL),
(92, 2, 24, 1, 2, 2, 3, 14, '2018-03-22 21:16:35', '2018-03-22 21:47:34'),
(93, 2, 25, 1, 2, 2, 3, 15, '2018-03-22 21:16:35', NULL),
(94, 2, 26, 1, 2, 3, 3, 16, '2018-03-22 21:16:35', NULL),
(95, 2, 27, 1, 2, 3, 3, 17, '2018-03-22 21:16:35', NULL),
(96, 2, 11, 1, 2, 1, 14, 1, '2018-03-22 21:16:35', NULL),
(97, 1, 12, 1, 2, 4, 14, 4, '2018-03-22 21:16:35', NULL),
(98, 1, 13, 1, 2, 3, 14, 2, '2018-03-22 21:16:35', NULL),
(99, 1, 14, 1, 2, 3, 14, 3, '2018-03-22 21:16:35', NULL),
(100, 2, 15, 1, 2, 2, 14, 5, '2018-03-22 21:16:35', NULL),
(101, 2, 16, 1, 2, 2, 14, 6, '2018-03-22 21:16:35', NULL),
(102, 2, 17, 1, 2, 3, 14, 7, '2018-03-22 21:16:35', NULL),
(103, 2, 18, 1, 2, 3, 14, 8, '2018-03-22 21:16:35', NULL),
(104, 2, 19, 1, 2, 2, 14, 9, '2018-03-22 21:16:35', NULL),
(105, 2, 20, 1, 2, 2, 14, 10, '2018-03-22 21:16:35', NULL),
(106, 2, 21, 1, 2, 2, 14, 11, '2018-03-22 21:16:35', NULL),
(107, 2, 22, 1, 2, 2, 14, 12, '2018-03-22 21:16:35', NULL),
(108, 2, 23, 1, 2, 2, 14, 13, '2018-03-22 21:16:35', NULL),
(109, 2, 24, 1, 2, 2, 14, 14, '2018-03-22 21:16:35', NULL),
(110, 2, 25, 1, 2, 2, 14, 15, '2018-03-22 21:16:35', NULL),
(111, 2, 26, 1, 2, 3, 14, 16, '2018-03-22 21:16:35', NULL),
(112, 2, 27, 1, 2, 3, 14, 17, '2018-03-22 21:16:35', NULL),
(113, 1, 28, 1, 2, 3, 1, 32, '2018-03-22 22:15:13', NULL),
(114, 1, 28, 1, 2, 3, 2, 32, '2018-03-22 22:15:13', '2018-03-22 22:46:16'),
(115, 2, 28, 1, 2, 3, 3, 32, '2018-03-22 22:15:13', NULL),
(116, 2, 28, 1, 2, 3, 14, 32, '2018-03-22 22:15:13', NULL),
(117, 1, 29, 1, 2, 3, 1, 33, '2018-03-22 22:27:12', NULL),
(118, 1, 29, 1, 2, 3, 2, 33, '2018-03-22 22:27:12', '2018-03-22 22:46:16'),
(119, 2, 29, 1, 2, 3, 3, 33, '2018-03-22 22:27:12', NULL),
(120, 2, 29, 1, 2, 3, 14, 33, '2018-03-22 22:27:12', NULL),
(121, 1, 30, 1, 2, 3, 1, 34, '2018-04-04 10:23:29', NULL),
(122, 2, 30, 1, 2, 3, 2, 34, '2018-04-04 10:23:29', NULL),
(123, 2, 30, 1, 2, 3, 3, 34, '2018-04-04 10:23:29', NULL),
(124, 2, 30, 1, 2, 3, 14, 34, '2018-04-04 10:23:29', NULL),
(125, 1, 31, 1, 2, 3, 1, 35, '2018-04-04 10:40:36', NULL),
(126, 2, 31, 1, 2, 3, 2, 35, '2018-04-04 10:40:36', NULL),
(127, 2, 31, 1, 2, 3, 3, 35, '2018-04-04 10:40:36', NULL),
(128, 2, 31, 1, 2, 3, 14, 35, '2018-04-04 10:40:36', NULL),
(129, 1, 32, 1, 2, 3, 1, 36, '2018-04-04 12:26:09', NULL),
(130, 2, 32, 1, 2, 3, 2, 36, '2018-04-04 12:26:09', NULL),
(131, 2, 32, 1, 2, 3, 3, 36, '2018-04-04 12:26:09', NULL),
(132, 2, 32, 1, 2, 3, 14, 36, '2018-04-04 12:26:09', NULL),
(133, 1, 33, 1, 2, 3, 1, 37, '2018-04-04 12:50:27', NULL),
(134, 2, 33, 1, 2, 3, 2, 37, '2018-04-04 12:50:27', NULL),
(135, 2, 33, 1, 2, 3, 3, 37, '2018-04-04 12:50:27', NULL),
(136, 2, 33, 1, 2, 3, 14, 37, '2018-04-04 12:50:27', NULL),
(137, 1, 34, 1, 2, 3, 1, 38, '2018-04-09 15:22:37', NULL),
(138, 2, 34, 1, 2, 3, 2, 38, '2018-04-09 15:22:37', NULL),
(139, 2, 34, 1, 2, 3, 3, 38, '2018-04-09 15:22:37', NULL),
(140, 2, 34, 1, 2, 3, 14, 38, '2018-04-09 15:22:37', NULL),
(141, 1, 35, 1, 2, 3, 1, 39, '2018-04-09 15:54:43', NULL),
(142, 2, 35, 1, 2, 3, 2, 39, '2018-04-09 15:54:43', NULL),
(143, 2, 35, 1, 2, 3, 3, 39, '2018-04-09 15:54:43', NULL),
(144, 2, 35, 1, 2, 3, 14, 39, '2018-04-09 15:54:43', NULL),
(145, 1, 36, 1, 2, 3, 1, 40, '2018-04-12 12:12:17', NULL),
(146, 2, 36, 1, 2, 3, 2, 40, '2018-04-12 12:12:17', NULL),
(147, 2, 36, 1, 2, 3, 3, 40, '2018-04-12 12:12:17', NULL),
(148, 2, 36, 1, 2, 3, 14, 40, '2018-04-12 12:12:17', NULL),
(149, 1, 37, 1, 2, 3, 1, 41, '2018-04-14 21:23:48', NULL),
(150, 1, 37, 1, 2, 3, 2, 41, '2018-04-14 21:23:48', '2018-04-22 13:17:54'),
(151, 2, 37, 1, 2, 3, 3, 41, '2018-04-14 21:23:48', NULL),
(152, 2, 37, 1, 2, 3, 14, 41, '2018-04-14 21:23:48', NULL),
(153, 1, 38, 1, 2, 3, 1, 42, '2018-04-14 21:49:39', NULL),
(154, 1, 38, 1, 2, 3, 2, 42, '2018-04-14 21:49:39', '2018-04-22 13:17:55'),
(155, 2, 38, 1, 2, 3, 3, 42, '2018-04-14 21:49:39', NULL),
(156, 2, 38, 1, 2, 3, 14, 42, '2018-04-14 21:49:39', NULL),
(157, 1, 39, 1, 2, 3, 1, 43, '2018-04-20 17:50:56', NULL),
(158, 1, 39, 1, 2, 3, 2, 43, '2018-04-20 17:50:56', '2018-04-20 18:42:14'),
(159, 2, 39, 1, 2, 3, 3, 43, '2018-04-20 17:50:56', NULL),
(160, 2, 39, 1, 2, 3, 14, 43, '2018-04-20 17:50:56', NULL),
(161, 1, 40, 1, 2, 3, 1, 44, '2018-04-22 09:00:33', NULL),
(162, 1, 40, 1, 2, 3, 2, 44, '2018-04-22 09:00:33', '2018-04-22 13:17:57'),
(163, 2, 40, 1, 2, 3, 3, 44, '2018-04-22 09:00:33', NULL),
(164, 2, 40, 1, 2, 3, 14, 44, '2018-04-22 09:00:33', NULL),
(165, 1, 41, 1, 2, 3, 1, 45, '2018-04-22 09:50:59', NULL),
(166, 1, 41, 1, 2, 3, 2, 45, '2018-04-22 09:50:59', '2018-04-22 13:17:57'),
(167, 2, 41, 1, 2, 3, 3, 45, '2018-04-22 09:50:59', NULL),
(168, 2, 41, 1, 2, 3, 14, 45, '2018-04-22 09:50:59', NULL),
(169, 1, 42, 1, 2, 3, 1, 46, '2018-04-22 11:18:16', NULL),
(170, 1, 42, 1, 2, 3, 2, 46, '2018-04-22 11:18:16', '2018-04-22 11:45:33'),
(171, 2, 42, 1, 2, 3, 3, 46, '2018-04-22 11:18:16', NULL),
(172, 2, 42, 1, 2, 3, 14, 46, '2018-04-22 11:18:16', NULL),
(173, 1, 43, 1, 2, 3, 1, 47, '2018-04-22 13:50:45', NULL),
(174, 1, 43, 1, 2, 3, 2, 47, '2018-04-22 13:50:45', '2018-04-22 14:00:32'),
(175, 2, 43, 1, 2, 3, 3, 47, '2018-04-22 13:50:45', NULL),
(176, 2, 43, 1, 2, 3, 14, 47, '2018-04-22 13:50:45', NULL),
(177, 1, 44, 1, 2, 3, 1, 48, '2018-04-22 14:04:38', NULL),
(178, 1, 44, 1, 2, 3, 2, 48, '2018-04-22 14:04:38', '2018-04-22 14:37:33'),
(179, 2, 44, 1, 2, 3, 3, 48, '2018-04-22 14:04:38', NULL),
(180, 2, 44, 1, 2, 3, 14, 48, '2018-04-22 14:04:38', NULL),
(181, 1, 45, 1, 2, 3, 1, 49, '2018-04-22 14:15:52', NULL),
(182, 1, 45, 1, 2, 3, 2, 49, '2018-04-22 14:15:52', '2018-04-22 14:37:33'),
(183, 2, 45, 1, 2, 3, 3, 49, '2018-04-22 14:15:52', NULL),
(184, 2, 45, 1, 2, 3, 14, 49, '2018-04-22 14:15:52', NULL),
(185, 1, 46, 1, 2, 3, 1, 50, '2018-05-01 15:38:25', NULL),
(186, 2, 46, 1, 2, 3, 2, 50, '2018-05-01 15:38:25', NULL),
(187, 2, 46, 1, 2, 3, 3, 50, '2018-05-01 15:38:25', NULL),
(188, 2, 46, 1, 2, 3, 14, 50, '2018-05-01 15:38:25', NULL),
(189, 1, 47, 1, 1, 5, 1, 51, '2018-05-01 16:40:55', '2018-05-01 16:58:13'),
(190, 2, 47, 1, 2, 3, 2, 51, '2018-05-01 16:40:55', NULL),
(191, 2, 47, 1, 2, 3, 3, 51, '2018-05-01 16:40:55', NULL),
(192, 2, 1, 1, 2, 3, 4, 51, '2018-05-01 16:40:55', NULL),
(193, 2, 1, 1, 2, 3, 5, 51, '2018-05-01 16:40:55', NULL),
(194, 1, 48, 1, 2, 3, 1, 52, '2018-05-01 17:06:00', NULL),
(195, 2, 48, 1, 2, 3, 2, 52, '2018-05-01 17:06:00', NULL),
(196, 2, 48, 1, 2, 3, 3, 52, '2018-05-01 17:06:00', NULL),
(197, 2, 2, 1, 2, 3, 4, 52, '2018-05-01 17:06:00', NULL),
(198, 2, 2, 1, 2, 3, 5, 52, '2018-05-01 17:06:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `adms_niveis_acessos`
--

CREATE TABLE `adms_niveis_acessos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ordem` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `adms_niveis_acessos`
--

INSERT INTO `adms_niveis_acessos` (`id`, `nome`, `ordem`, `created`, `modified`) VALUES
(1, 'Super Administrador', 1, '2018-03-23 00:00:00', NULL),
(2, 'Administrador', 2, '2018-03-23 00:00:00', '2018-03-18 14:01:00'),
(3, 'Colaborador', 3, '2018-03-23 00:00:00', '2018-03-21 22:17:40'),
(4, 'Financeiro', 4, '2018-03-18 12:46:00', '2018-03-21 22:17:40'),
(5, 'Cliente', 5, '2018-05-01 16:01:08', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `adms_paginas`
--

CREATE TABLE `adms_paginas` (
  `id` int(11) NOT NULL,
  `nome_pagina` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `endereco` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `obs` text COLLATE utf8_unicode_ci,
  `keywords` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lib_pub` int(11) NOT NULL DEFAULT '2',
  `icone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `depend_pg` int(11) NOT NULL DEFAULT '0',
  `adms_grps_pg_id` int(11) NOT NULL,
  `adms_tps_pg_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `adms_robot_id` int(11) NOT NULL DEFAULT '4',
  `adms_sits_pg_id` int(11) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `adms_paginas`
--

INSERT INTO `adms_paginas` (`id`, `nome_pagina`, `endereco`, `obs`, `keywords`, `description`, `author`, `lib_pub`, `icone`, `depend_pg`, `adms_grps_pg_id`, `adms_tps_pg_id`, `adms_robot_id`, `adms_sits_pg_id`, `created`, `modified`) VALUES
(1, 'Home', 'visualizar/home', 'Pagina home', 'home', 'pagina home', 'Celke', 2, 'fas fa-tachometer-alt', 0, 5, '1', 4, 1, '2018-03-23 00:00:00', NULL),
(4, 'Sair', 'acesso/sair', 'Sair do ADM', 'Sair do ADM', 'Sair do ADM', 'Celke', 1, 'fas fa-sign-out-alt', 0, 7, '1', 4, 1, '2018-03-23 00:00:00', NULL),
(2, 'Login', 'acesso/login', 'Pagina de login do ADM', 'celke pagina login', 'celke pagina login', 'Celke', 1, NULL, 0, 7, '1', 1, 1, '2018-03-23 00:00:00', NULL),
(3, 'Validar Login', 'acesso/valida', 'Validar Login', 'Validar Login', 'Validar Login', 'Celke', 1, NULL, 2, 7, '1', 4, 1, '2018-03-23 00:00:00', NULL),
(5, 'Usuarios', 'listar/list_usuario', 'Pagina para listar usuarios', 'Listar usuarios', 'Listar usuarios', 'Celke', 2, 'fas fa-users', 0, 1, '1', 4, 1, '2018-03-23 00:00:00', '2018-03-22 22:47:36'),
(6, 'Nivel de Acesso', 'listar/list_niv_aces', 'Pagina para listar nivel de acesso', 'Listar nivel de acesso', 'Listar nivel de acesso', 'Celke', 2, 'fas fa-key', 0, 1, '1', 4, 1, '2018-03-23 00:00:00', '2018-03-22 22:43:34'),
(7, 'Paginas', 'listar/list_pagina', 'Pagina para listar as paginas do ADM', 'Listar pagina', 'Listar pagina', 'Celke', 2, 'fas fa-file-alt', 0, 1, '1', 4, 1, '2018-03-23 00:00:00', NULL),
(8, 'Menu', 'listar/list_menu', 'Pagina para listar os itens do menu', 'Pagina para listar os itens do menu', 'Pagina para listar os itens do menu', 'Celke', 2, 'fab fa-elementor', 0, 1, '1', 4, 1, '2018-03-23 00:00:00', NULL),
(9, 'Cadastrar NÃ­vel de Acesso', 'cadastrar/cad_niv_aces', 'Pagina para Cadastrar NÃ­vel de Acesso', 'Cadastrar Nivel de Acesso', 'Cadastrar Nivel de Acesso', 'Celke', 2, '', 0, 2, '1', 4, 1, '2018-03-23 00:00:00', '2018-03-22 21:33:52'),
(10, 'Visualizar nivel de acesso', 'visualizar/vis_niv_aces', 'Pagina para Visualizar nivel de acesso', 'Pagina para Visualizar nivel de acesso', 'Pagina para Visualizar nivel de acesso', 'Celke', 2, NULL, 0, 5, '1', 4, 1, '2018-03-23 00:00:00', NULL),
(11, 'Editar nivel de acesso', 'editar/edit_niv_aces', 'Pagina para editar nivel de acesso', 'Pagina para editar nivel de acesso', 'Pagina para editar nivel de acesso', 'Celke', 2, NULL, 0, 3, '1', 4, 1, '2018-03-23 00:00:00', NULL),
(12, 'Apagar nivel de acesso', 'processa/apagar_niv_aces', 'Pagina para apagar nivel de acesso', 'Pagina para apagar nivel de acesso', 'Pagina para apagar nivel de acesso', 'Celke', 2, NULL, 0, 4, '1', 4, 1, '2018-03-23 00:00:00', NULL),
(13, 'Proc o form cadastrar nivel de acesso', 'processa/proc_cad_niv_aces', 'Processa o formulario cadastrar nivel de acesso', 'Processa o formulario cadastrar nivel de acesso', 'Processa o formulario cadastrar nivel de acesso', 'Celke', 2, NULL, 9, 2, '1', 4, 1, '2018-03-23 00:00:00', NULL),
(14, 'Proc o form editar nivel de acesso', 'processa/proc_edit_niv_aces', NULL, 'Processa o formulario editar nivel de acesso', 'Processa o formulario editar nivel de acesso', 'Celke', 2, NULL, 11, 3, '1', 4, 1, '2018-03-23 00:00:00', NULL),
(15, 'Alterar ordem do nivel de acesso', 'processa/proc_ordem_niv_aces', 'Pagina para Alterar ordem do nivel de acesso', 'Alterar ordem do nivel de acesso', 'Alterar ordem do nivel de acesso', 'Celke', 2, NULL, 0, 6, '1', 4, 1, '2018-03-23 00:00:00', NULL),
(16, 'Cadastrar pagina', 'cadastrar/cad_pagina', 'Formulario para Cadastrar pagina', 'Cadastrar pagina', 'Cadastrar pagina', 'Celke', 2, NULL, 0, 2, '1', 4, 1, '2018-03-23 00:00:00', NULL),
(17, 'Procr o form cadastrar pagina', 'processa/proc_cad_pagina', 'Pagina para processar o formulario cadastrar pagina', 'Processar o formulario cadastrar pagina', 'Processar o formulario cadastrar pagina', 'Celke', 2, NULL, 16, 2, '1', 4, 1, '2018-03-23 00:00:00', NULL),
(27, 'Proc Liberar PermissÃ£o', 'processa/proc_lib_per', 'PÃ¡gina para liberar permissÃ£o', 'Proc Liberar Permissao', 'Proc Liberar Permissao', 'Celke', 2, '', 0, 3, '1', 4, 1, '2018-03-21 21:56:03', NULL),
(26, 'PermissÃ£o', 'listar/list_permissao', 'PÃ¡gina para listar as permissÃµes', 'Permissao', 'Permissao', 'Celke', 2, '', 0, 1, '1', 4, 1, '2018-03-21 20:16:19', NULL),
(21, 'Apagar PÃ¡gina', 'processa/apagar_pagina', 'PÃ¡gina para Apagar PÃ¡gina', 'Apagar Pagina', 'Apagar Pagina', 'Celke', 2, '', 0, 4, '1', 4, 1, '2018-03-19 18:06:40', NULL),
(22, 'Visualizar PÃ¡gina', 'visualizar/vis_pagina', 'PÃ¡gina para visualizar detalhes da pÃ¡gina', 'Visualizar Pagina', 'Visualizar Pagina', 'Celke', 2, '', 0, 5, '1', 4, 1, '2018-03-21 12:39:49', NULL),
(23, 'Editar PÃ¡gina', 'editar/edit_pagina', 'FormulÃ¡rio para Editar PÃ¡gina', 'Editar Pagina', 'Editar Pagina', 'Celke', 2, '', 0, 3, '1', 4, 1, '2018-03-21 16:43:09', '2018-03-21 22:55:13'),
(24, 'Proc form edita pagina', 'processa/proc_edit_pagina', 'PÃ¡gina para processar o formulÃ¡rio editar a pÃ¡gina', 'Proc form edita pagina', 'Proc form edita pagina', 'Celke', 2, '', 23, 3, '1', 4, 1, '2018-03-21 17:46:32', '2018-03-21 22:56:16'),
(28, 'Liberar Menu', 'processa/proc_lib_menu', 'PÃ¡gina para Liberar item Menu', 'Liberar Menu', 'Liberar Menu', 'Celke', 2, '', 0, 3, '1', 4, 1, '2018-03-22 17:14:57', NULL),
(29, 'Liberar Dropdown no menu', 'processa/proc_lib_dropdown', 'PÃ¡gina para Liberar Dropdown no menu', 'Liberar Dropdown no menu', 'Liberar Dropdown no menu', 'Celke', 2, '', 0, 3, '1', 4, 1, '2018-03-22 18:24:19', NULL),
(30, 'Alterar Ordem do Menu', 'processa/proc_ordem_menu', 'PÃ¡gina para Alterar Ordem do Menu', 'Alterar Ordem do Menu', 'Alterar Ordem do Menu', 'Celke', 2, '', 0, 3, '1', 4, 1, '2018-03-22 19:21:32', NULL),
(31, 'Sincronizar Paginas', 'processa/proc_sincro_nivac_pg', 'PÃ¡gina para Sincronizar Paginas com nÃ­vel de acesso', 'Sincronizar Paginas', 'Sincronizar Paginas', 'Celke', 2, '', 0, 3, '1', 4, 1, '2018-03-22 20:30:26', NULL),
(32, 'Editar Ã­cone do menu', 'editar/edit_permissao', 'PÃ¡gina para editar o Ã­cone do item do menu', 'Editar icone do menu', 'Editar icone do menu', 'Celke', 2, '', 0, 3, '1', 4, 1, '2018-03-22 22:15:13', '2018-03-22 22:26:41'),
(33, 'Proc form edita permissÃ£o', 'processa/proc_edit_permissao', 'PÃ¡gina para processar o formulÃ¡rio editar permissÃ£o', 'Proc form edita permissÃ£o', 'Proc form edita permissÃ£o', 'Celke', 2, '', 32, 3, '1', 4, 1, '2018-03-22 22:27:12', '2018-03-22 22:27:46'),
(34, 'Cadastrar Menu', 'cadastrar/cad_menu', 'PÃ¡gina para Cadastrar Menu', 'Cadastrar Menu', 'Cadastrar Menu', 'Celke', 2, '', 0, 2, '1', 4, 1, '2018-04-04 10:23:29', NULL),
(35, 'Proc Form Cad Menu', 'processa/proc_cad_menu', 'PÃ¡gina para processar o formulÃ¡rio cadastrar menu', 'Processar o formulario cadastrar menu', 'Processar o formulario cadastrar menu', 'Celke', 2, '', 34, 2, '1', 4, 1, '2018-04-04 10:40:36', NULL),
(36, 'Editar Menu', 'editar/edit_menu', 'FormulÃ¡rio para Editar Menu', 'Editar Menu', 'Editar Menu', 'Celke', 2, '', 0, 3, '1', 4, 1, '2018-04-04 12:26:09', '2018-04-04 12:27:40'),
(37, 'Proc Form Edit Menu', 'processa/proc_edit_menu', 'Processar o formulÃ¡rio editar item de menu', 'Processar o formulario editar item de menu', 'Processar o formulario editar item de menu', 'Celke', 2, '', 36, 3, '1', 4, 1, '2018-04-04 12:50:27', NULL),
(38, 'Visualizar Menu', 'visualizar/vis_menu', 'PÃ¡gina para Visualizar Menu', 'Visualizar Menu', 'Visualizar Menu', 'Celke', 2, '', 0, 5, '1', 4, 1, '2018-04-09 15:22:37', NULL),
(39, 'Apagar Menu', 'processa/apagar_menu', 'PÃ¡gina para Apagar Menu', 'Apagar Menu', 'Apagar Menu', 'Celke', 2, '', 0, 4, '1', 4, 1, '2018-04-09 15:54:43', NULL),
(40, 'Alterar ordem item menu', 'processa/proc_ordem_menu_item', 'PÃ¡gina para alterar ordem item menu', 'Alterar ordem item menu', 'Alterar ordem item menu', 'Celke', 2, '', 0, 3, '1', 4, 1, '2018-04-12 12:12:17', NULL),
(41, 'Cadastrar UsuÃ¡rio', 'cadastrar/cad_usuario', 'FormulÃ¡rio para cadastrar usuÃ¡rio', 'Cadastrar Usuario', 'Cadastrar Usuario', 'Celke', 2, '', 0, 2, '1', 4, 1, '2018-04-14 21:23:48', NULL),
(42, 'Proc Form Cad User', 'processa/proc_cad_usuario', 'PÃ¡gina para processar a pÃ¡gina cadastrar usuÃ¡rio', 'Processar o formulario cadastrar usuario', 'Processar o formulario cadastrar usuario', 'Celke', 2, '', 41, 2, '1', 4, 1, '2018-04-14 21:49:39', NULL),
(43, 'Visualizar usuÃ¡rio', 'visualizar/vis_usuario', 'PÃ¡gina para visualizar usuÃ¡rio', 'visualizar usuario', 'visualizar usuario', 'Celke', 2, '', 0, 5, '1', 4, 1, '2018-04-20 17:50:56', NULL),
(44, 'Editar usuÃ¡rio', 'editar/edit_usuario', 'FormulÃ¡rio para editar o usuÃ¡rio', 'Formulario para editar o usuario', 'Formulario para editar o usuario', 'Celke', 2, '', 0, 3, '1', 4, 1, '2018-04-22 09:00:33', '2018-04-22 09:49:54'),
(45, 'Proc Form Edit Usuario', 'processa/proc_edit_usuario', 'PÃ¡gina para processar o formulÃ¡rio editar usuÃ¡rio', 'Pagina para processar o formulÃ¡rio editar usuario', 'Pagina para processar o formulÃ¡rio editar usuario', 'Celke', 2, '', 44, 3, '1', 4, 1, '2018-04-22 09:50:59', NULL),
(46, 'Apagar usuÃ¡rio', 'processa/apagar_usuario', 'PÃ¡gina para apagar usuÃ¡rio', 'Apagar usuario', 'Apagar usuario', 'Celke', 2, '', 0, 4, '1', 4, 1, '2018-04-22 11:18:16', NULL),
(47, 'Visualizar Perfil', 'visualizar/vis_perfil', 'UsuÃ¡rio Visualizar Perfil', 'Visualizar Perfil', 'Visualizar Perfil', 'Celke', 2, '', 0, 5, '1', 4, 1, '2018-04-22 13:50:45', NULL),
(48, 'Editar Perfil', 'editar/edit_perfil', 'FormulÃ¡rio para Editar Perfil', 'Editar Perfil', 'Editar Perfil', 'Celke', 2, '', 0, 3, '1', 4, 1, '2018-04-22 14:04:38', NULL),
(49, 'Proc Form Edit Perfil', 'processa/proc_edit_perfil', 'PÃ¡gina para processar o formulÃ¡rio editar perfil', 'Processar o formulario editar perfil', 'Processar o formulario editar perfil', 'Celke', 2, '', 48, 3, '1', 4, 1, '2018-04-22 14:15:52', NULL),
(50, 'Cadastrar usuÃ¡rio no login', 'cadastrar/cad_user_login', 'PÃ¡gina para cadastrar usuÃ¡rio no login', 'Cadastrar usuario no login', 'Cadastrar usuario no login', 'Celke', 1, '', 0, 2, '1', 4, 1, '2018-05-01 15:38:25', NULL),
(51, 'Cadastro Login', 'editar/edit_cad_user_login', 'FormulÃ¡rio para editar o nÃ­vel de acesso e a situaÃ§Ã£o do formulÃ¡rio cadastrar usuÃ¡rio na pÃ¡gina de login', 'Editar Cadastro Usuario login', 'Editar Cadastro Usuario login', 'Celke', 2, 'fas fa-edit', 0, 3, '1', 4, 1, '2018-05-01 16:40:55', '2018-05-01 17:00:44'),
(52, 'Proc Form Cad User Login', 'processa/proc_cad_user_login', 'PÃ¡gina para processar o formulÃ¡rio utilizado para editar o nÃ­vel de acesso e a situaÃ§Ã£o do formulÃ¡rio cadastrar usuÃ¡rio atravÃ©s da pÃ¡gina de login', 'Formulario cadastrar usuario no login', 'Formulario cadastrar usuario no login', 'Celke', 2, '', 51, 3, '1', 4, 1, '2018-05-01 17:06:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `adms_robots`
--

CREATE TABLE `adms_robots` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `adms_robots`
--

INSERT INTO `adms_robots` (`id`, `nome`, `tipo`, `created`, `modified`) VALUES
(1, 'Indexar a pÃ¡gina e seguir os links', 'index, follow', '2018-03-23 00:00:00', NULL),
(2, 'NÃ£o indexar a pÃ¡gina mas seguir os links', 'noindex, follow', '2018-03-23 00:00:00', NULL),
(3, 'Indexar a pÃ¡gina mas nÃ£o seguir os links', 'index, nofollow', '2018-03-23 00:00:00', NULL),
(4, 'NÃ£o indexar a pÃ¡gina e nem seguir os links', 'noindex, nofollow', '2018-03-23 00:00:00', NULL),
(5, 'NÃ£o exibir a versÃ£o em cache da pÃ¡gina', 'noarchive', '2018-03-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `adms_sits`
--

CREATE TABLE `adms_sits` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `adms_cor_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `adms_sits`
--

INSERT INTO `adms_sits` (`id`, `nome`, `adms_cor_id`, `created`, `modified`) VALUES
(1, 'Ativo', '3', '2018-03-23 00:00:00', NULL),
(2, 'Inativo', '4', '2018-03-23 00:00:00', NULL),
(3, 'Analise', '1', '2018-03-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `adms_sits_pgs`
--

CREATE TABLE `adms_sits_pgs` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cor` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `adms_sits_pgs`
--

INSERT INTO `adms_sits_pgs` (`id`, `nome`, `cor`, `created`, `modified`) VALUES
(1, 'Ativo', 'success', '2018-03-23 00:00:00', NULL),
(2, 'Inativo', 'danger', '2018-03-23 00:00:00', NULL),
(3, 'Analise', 'primary', '2018-03-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `adms_sits_usuarios`
--

CREATE TABLE `adms_sits_usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `adms_cor_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `adms_sits_usuarios`
--

INSERT INTO `adms_sits_usuarios` (`id`, `nome`, `adms_cor_id`, `created`, `modified`) VALUES
(1, 'Ativo', 3, '2018-03-23 00:00:00', NULL),
(2, 'Inativo', 5, '2018-03-23 00:00:00', NULL),
(3, 'Aguardando confirmacao', 1, '2018-03-23 00:00:00', NULL),
(4, 'Spam', 4, '2018-03-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `adms_tps_pgs`
--

CREATE TABLE `adms_tps_pgs` (
  `id` int(11) NOT NULL,
  `tipo` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `nome` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `obs` text COLLATE utf8_unicode_ci NOT NULL,
  `ordem` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `adms_tps_pgs`
--

INSERT INTO `adms_tps_pgs` (`id`, `tipo`, `nome`, `obs`, `ordem`, `created`, `modified`) VALUES
(1, 'adms', 'Administrativo', 'Core do Administrativo', 1, '2018-03-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `adms_usuarios`
--

CREATE TABLE `adms_usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `apelido` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `recuperar_senha` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chave_descadastro` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conf_email` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagem` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adms_niveis_acesso_id` int(11) NOT NULL,
  `adms_sits_usuario_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `adms_usuarios`
--

INSERT INTO `adms_usuarios` (`id`, `nome`, `apelido`, `email`, `usuario`, `senha`, `recuperar_senha`, `chave_descadastro`, `conf_email`, `imagem`, `adms_niveis_acesso_id`, `adms_sits_usuario_id`, `created`, `modified`) VALUES
(1, 'Cesar N. Szpak', 'Cesar', 'cesar@celke.com.br', 'cesar@celke.com.br', '$2y$10$nA6dx3mjOygZE5Xt5iwt5eRebzXfskbXcwUam8yLCECj7NrjXr12q', NULL, NULL, NULL, 'logo-celke.jpg', 1, 1, '2018-03-23 00:00:00', '2018-04-22 14:43:41'),
(2, 'Jessica', 'Jessica', 'jessica@celke.com.br', 'jessica@celke.com.br', '$2y$10$UDdxOqZghWMPVQQ094COZeNdT/VFBJXqwFfAyRNLZnycaXhY8yK9u', NULL, NULL, NULL, 'celke.jpg', 3, 1, '2018-03-23 00:00:00', NULL),
(3, 'Kelly', 'Kelly', 'kelly@celke.com.br', 'kelly@celke.com.br', '$2y$10$mF6VRdX9nhSW6f0zB6akCONsSBoUnEFBU61BMxUDRVBirP02xVK46', NULL, NULL, NULL, 'logo-celke.jpg', 2, 1, '2018-03-23 00:00:00', '2018-04-22 14:43:08'),
(4, 'Cesar', NULL, 'cesar1@celke.com.br', 'cesar1', '$2y$10$UDdxOqZghWMPVQQ094COZeNdT/VFBJXqwFfAyRNLZnycaXhY8yK9u', NULL, NULL, NULL, 'celke.jpg', 3, 1, '2018-04-14 22:14:15', NULL),
(5, 'Cesar', NULL, 'cesar2@celke.com.br', 'cesar2', '$2y$10$apf4Zu1kNk4iEpR8dcVujuXXnHfcQ9uQSU9Igy1YJsPHem1dbrwga', NULL, NULL, NULL, 'celke.jpg', 2, 1, '2018-04-14 22:33:11', '2018-04-22 11:44:30'),
(6, 'Cesar', NULL, 'cesar6@celke.com.br', 'cesar6@celke.com.br', '$2y$10$z2XY6DOLFd0rPDrnfiUbAOvborNBUFP2yiNx8wQbaiXet7Kutqnz2', NULL, NULL, NULL, NULL, 5, 1, '2018-05-01 16:09:45', NULL),
(7, 'Cesar', NULL, 'cesar7@celke.com.br', 'cesar7@celke.com.br', '$2y$10$WA15R1fSo8qBB2MOr244PufH6FQKUjtt8oRBkPY4vkk/1PZ7GloZ.', NULL, NULL, NULL, NULL, 5, 3, '2018-05-01 16:10:47', NULL),
(8, 'Cesar', NULL, 'celkeadm@gmail.com', 'celkeadm@gmail.com', '$2y$10$NMJZYNImkG4uWJxpUC2cqu8rtNccgN7ieRpRCEtsjrwmIC0mzdjnq', NULL, NULL, '6839283f535e47d6e644ca34ebc557ae', NULL, 5, 3, '2018-05-02 21:54:37', NULL);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `adms_cads_usuarios`
--
ALTER TABLE `adms_cads_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `adms_cors`
--
ALTER TABLE `adms_cors`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `adms_grps_pgs`
--
ALTER TABLE `adms_grps_pgs`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `adms_menus`
--
ALTER TABLE `adms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `adms_nivacs_pgs`
--
ALTER TABLE `adms_nivacs_pgs`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `adms_niveis_acessos`
--
ALTER TABLE `adms_niveis_acessos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `adms_paginas`
--
ALTER TABLE `adms_paginas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `adms_robots`
--
ALTER TABLE `adms_robots`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `adms_sits`
--
ALTER TABLE `adms_sits`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `adms_sits_pgs`
--
ALTER TABLE `adms_sits_pgs`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `adms_sits_usuarios`
--
ALTER TABLE `adms_sits_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `adms_tps_pgs`
--
ALTER TABLE `adms_tps_pgs`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `adms_usuarios`
--
ALTER TABLE `adms_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `adms_cads_usuarios`
--
ALTER TABLE `adms_cads_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `adms_cors`
--
ALTER TABLE `adms_cors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de tabela `adms_grps_pgs`
--
ALTER TABLE `adms_grps_pgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de tabela `adms_menus`
--
ALTER TABLE `adms_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela `adms_nivacs_pgs`
--
ALTER TABLE `adms_nivacs_pgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;
--
-- AUTO_INCREMENT de tabela `adms_niveis_acessos`
--
ALTER TABLE `adms_niveis_acessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela `adms_paginas`
--
ALTER TABLE `adms_paginas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT de tabela `adms_robots`
--
ALTER TABLE `adms_robots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela `adms_sits`
--
ALTER TABLE `adms_sits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `adms_sits_pgs`
--
ALTER TABLE `adms_sits_pgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `adms_sits_usuarios`
--
ALTER TABLE `adms_sits_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `adms_tps_pgs`
--
ALTER TABLE `adms_tps_pgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `adms_usuarios`
--
ALTER TABLE `adms_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
