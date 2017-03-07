-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 16-Fev-2017 às 09:34
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `radioifrn`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `like_postagem`
--

CREATE TABLE `like_postagem` (
  `id_like_postagem` int(11) NOT NULL,
  `id_postagem` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `like_postagem`
--

INSERT INTO `like_postagem` (`id_like_postagem`, `id_postagem`, `id_usuario`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `musicas`
--

CREATE TABLE `musicas` (
  `id_musica` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `artista` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `musicas`
--

INSERT INTO `musicas` (`id_musica`, `nome`, `artista`) VALUES
(1, '2345678', 'GABRIEL: O PENSADOR'),
(2, 'CEÚ AZUL', 'CHARLIE BROWN JR'),
(3, 'COMO UMA ONDA NO MAR', 'LULU SANTOS'),
(4, 'AONDE VOCÊ, AONDE VOCÊ FOI MORAR?', 'CIDADE NEGRA'),
(5, 'MUSICA 5', 'DESCONHECIDO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `musicas_top10`
--

CREATE TABLE `musicas_top10` (
  `id_musicas_top10` int(11) NOT NULL,
  `id_musica` int(11) NOT NULL,
  `id_top10` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `musicas_top10`
--

INSERT INTO `musicas_top10` (`id_musicas_top10`, `id_musica`, `id_top10`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 2),
(5, 5, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfil_usuario`
--

CREATE TABLE `perfil_usuario` (
  `id_perfil_usuario` int(11) NOT NULL,
  `descricao` varchar(45) NOT NULL,
  `valor` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `perfil_usuario`
--

INSERT INTO `perfil_usuario` (`id_perfil_usuario`, `descricao`, `valor`) VALUES
(1, 'USUARIO', 0),
(2, 'ADMINISTRADOR', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `postagem`
--

CREATE TABLE `postagem` (
  `id_postagem` int(11) NOT NULL,
  `id_usuario_de` int(11) NOT NULL,
  `id_usuario_para` int(11) NOT NULL,
  `dt_criacao` datetime NOT NULL,
  `id_tppostagem` int(11) NOT NULL,
  `texto` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `postagem`
--

INSERT INTO `postagem` (`id_postagem`, `id_usuario_de`, `id_usuario_para`, `dt_criacao`, `id_tppostagem`, `texto`) VALUES
(1, 1, 2, '2017-02-04 10:00:00', 2, 'Saiba que não gosto de você. Te acho muito metido!');

-- --------------------------------------------------------

--
-- Estrutura da tabela `selecionadas`
--

CREATE TABLE `selecionadas` (
  `id_selecionadas` int(11) NOT NULL,
  `id_musica` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `dt_selecao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `selecionadas`
--

INSERT INTO `selecionadas` (`id_selecionadas`, `id_musica`, `id_usuario`, `dt_selecao`) VALUES
(1, 1, 1, '2017-02-04 10:00:00'),
(2, 1, 2, '2017-02-04 10:00:00'),
(3, 2, 1, '2017-02-04 10:00:00'),
(4, 2, 1, '2017-02-04 10:00:00'),
(5, 2, 2, '2017-02-04 10:00:00'),
(6, 3, 1, '2017-02-04 10:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sugestoes`
--

CREATE TABLE `sugestoes` (
  `id_sugestoes` int(11) NOT NULL,
  `texto` varchar(5000) NOT NULL,
  `dt_sugestao` datetime NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `sugestoes`
--

INSERT INTO `sugestoes` (`id_sugestoes`, `texto`, `dt_sugestao`, `id_usuario`) VALUES
(1, 'Achei a APP tá legal. mas esperava mais!', '2017-02-04 10:00:00', 1),
(2, 'App ficou ótima! Parabéns!', '2017-02-04 10:00:00', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `top10`
--

CREATE TABLE `top10` (
  `id_top10` int(11) NOT NULL,
  `descricao` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `top10`
--

INSERT INTO `top10` (`id_top10`, `descricao`) VALUES
(1, 'TOP 1000'),
(2, 'AS MAIS TOCADAS');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tp_postagem`
--

CREATE TABLE `tp_postagem` (
  `id_tppostagem` int(11) NOT NULL,
  `descricao` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tp_postagem`
--

INSERT INTO `tp_postagem` (`id_tppostagem`, `descricao`) VALUES
(1, 'CORACAO'),
(2, 'DISCORDIA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `cpf` varchar(11) NOT NULL,
  `id_perfilusuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nome`, `senha`, `email`, `cpf`, `id_perfilusuario`) VALUES
(1, 'MARLON', '1234', 'marlon.aelson.gomes@gmail.com', '07289335430', 2),
(2, 'USUARIO', '1234', 'usuario@gmail.com', '11111111111', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `like_postagem`
--
ALTER TABLE `like_postagem`
  ADD PRIMARY KEY (`id_like_postagem`),
  ADD KEY `fk_postagem_like_idx` (`id_postagem`),
  ADD KEY `fk_usuarios_like_idx` (`id_usuario`);

--
-- Indexes for table `musicas`
--
ALTER TABLE `musicas`
  ADD PRIMARY KEY (`id_musica`);

--
-- Indexes for table `musicas_top10`
--
ALTER TABLE `musicas_top10`
  ADD PRIMARY KEY (`id_musicas_top10`),
  ADD KEY `fk_musicas_musicasplaylist_idx` (`id_musica`),
  ADD KEY `fk_top10_musicastop10_idx` (`id_top10`);

--
-- Indexes for table `perfil_usuario`
--
ALTER TABLE `perfil_usuario`
  ADD PRIMARY KEY (`id_perfil_usuario`);

--
-- Indexes for table `postagem`
--
ALTER TABLE `postagem`
  ADD PRIMARY KEY (`id_postagem`),
  ADD KEY `fk_usuarios_postagem_idx` (`id_usuario_de`),
  ADD KEY `fk_usuariopara_postagem_idx` (`id_usuario_para`),
  ADD KEY `fk_tppostagem_postagem_idx` (`id_tppostagem`);

--
-- Indexes for table `selecionadas`
--
ALTER TABLE `selecionadas`
  ADD PRIMARY KEY (`id_selecionadas`),
  ADD KEY `fk_musicas_selecionadas_idx` (`id_musica`),
  ADD KEY `fk_usuarios_selecionadas_idx` (`id_usuario`);

--
-- Indexes for table `sugestoes`
--
ALTER TABLE `sugestoes`
  ADD PRIMARY KEY (`id_sugestoes`),
  ADD KEY `fk_usuarios_sugestao_idx` (`id_usuario`);

--
-- Indexes for table `top10`
--
ALTER TABLE `top10`
  ADD PRIMARY KEY (`id_top10`);

--
-- Indexes for table `tp_postagem`
--
ALTER TABLE `tp_postagem`
  ADD PRIMARY KEY (`id_tppostagem`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);
  

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `like_postagem`
--
ALTER TABLE `like_postagem`
  MODIFY `id_like_postagem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `musicas`
--
ALTER TABLE `musicas`
  MODIFY `id_musica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `perfil_usuario`
--
ALTER TABLE `perfil_usuario`
  MODIFY `id_perfil_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `postagem`
--
ALTER TABLE `postagem`
  MODIFY `id_postagem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `selecionadas`
--
ALTER TABLE `selecionadas`
  MODIFY `id_selecionadas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sugestoes`
--
ALTER TABLE `sugestoes`
  MODIFY `id_sugestoes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tp_postagem`
--
ALTER TABLE `tp_postagem`
  MODIFY `id_tppostagem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `like_postagem`
--
ALTER TABLE `like_postagem`
  ADD CONSTRAINT `fk_postagem_like` FOREIGN KEY (`id_postagem`) REFERENCES `postagem` (`id_postagem`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuarios_like` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `musicas_top10`
--
ALTER TABLE `musicas_top10`
  ADD CONSTRAINT `fk_musicas_musicastop10` FOREIGN KEY (`id_musica`) REFERENCES `musicas` (`id_musica`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_top10_musicastop10` FOREIGN KEY (`id_top10`) REFERENCES `top10` (`id_top10`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `postagem`
--
ALTER TABLE `postagem`
  ADD CONSTRAINT `fk_tppostagem_postagem` FOREIGN KEY (`id_tppostagem`) REFERENCES `tp_postagem` (`id_tppostagem`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuariopara_postagem` FOREIGN KEY (`id_usuario_para`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuariosde_postagem` FOREIGN KEY (`id_usuario_de`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `selecionadas`
--
ALTER TABLE `selecionadas`
  ADD CONSTRAINT `fk_musicas_selecionadas` FOREIGN KEY (`id_musica`) REFERENCES `musicas` (`id_musica`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuarios_selecionadas` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `sugestoes`
--
ALTER TABLE `sugestoes`
  ADD CONSTRAINT `fk_usuarios_sugestao` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_perfilusuario_usuarios` FOREIGN KEY (`id_perfilusuario`) REFERENCES `perfil_usuario` (`id_perfil_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
