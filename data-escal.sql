-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Nov-2022 às 19:21
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mydb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamento`
--

CREATE TABLE `departamento` (
  `id_departamento` int(11) NOT NULL,
  `nome_departamento` varchar(45) NOT NULL,
  `id_empresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamento_documento`
--

CREATE TABLE `departamento_documento` (
  `id_documento` int(11) NOT NULL,
  `id_departamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `documentos`
--

CREATE TABLE `documentos` (
  `id_documentos` int(11) NOT NULL,
  `desc` varchar(45) DEFAULT NULL,
  `doc` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `doc_contabil`
--

CREATE TABLE `doc_contabil` (
  `id_doc_contabil` int(11) NOT NULL,
  `valor_faturamento` float DEFAULT NULL,
  `valor_honorario` float DEFAULT NULL,
  `ultimo_reajuste` date DEFAULT NULL,
  `num_lancamentos_contab` int(11) DEFAULT NULL,
  `prolabore` enum('sim','não') NOT NULL DEFAULT 'não',
  `id_documentos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `doc_fiscal`
--

CREATE TABLE `doc_fiscal` (
  `id_doc_fiscal` int(11) NOT NULL,
  `regularidade_registros` enum('regulado','desregulado') DEFAULT 'desregulado',
  `doc_fiscalcol` varchar(45) DEFAULT NULL,
  `dta_inicio_prestacao_servico` date DEFAULT NULL,
  `prestacao_servico` enum('sim','não') DEFAULT 'não',
  `num_alteracao_contratual` int(11) DEFAULT 1,
  `cad_taxas_agefis` enum('sim','não') DEFAULT 'não',
  `id_documentos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `doc_legalizacao`
--

CREATE TABLE `doc_legalizacao` (
  `id_doc_legalizacao` int(11) NOT NULL,
  `registro_1` varchar(45) DEFAULT NULL,
  `registro_2` varchar(45) DEFAULT NULL,
  `id_documentos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `doc_pessoal`
--

CREATE TABLE `doc_pessoal` (
  `id_doc_pessoal` int(11) NOT NULL,
  `contratacoes` int(11) DEFAULT NULL,
  `demicoes` int(11) DEFAULT NULL,
  `id_documentos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

CREATE TABLE `empresa` (
  `id_empresa` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `nome_social` varchar(45) NOT NULL,
  `dta_inicio` date NOT NULL,
  `atividade` varchar(45) DEFAULT NULL,
  `registros_necessários` varchar(45) DEFAULT NULL,
  `licenciamento` enum('sim','não') DEFAULT 'não'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `id_funcionario` int(11) NOT NULL,
  `dta_contratacao` date DEFAULT NULL,
  `dta_demissao` date DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `genero` enum('masculono','feminino','prefiro não informar') DEFAULT NULL,
  `id_empresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `socios`
--

CREATE TABLE `socios` (
  `id_socios` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `participacao_societaria` float DEFAULT NULL,
  `id_empresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_departamento`),
  ADD KEY `id_departamento` (`id_empresa`);

--
-- Índices para tabela `departamento_documento`
--
ALTER TABLE `departamento_documento`
  ADD KEY `id_documento` (`id_documento`),
  ADD KEY `id_departamento` (`id_departamento`);

--
-- Índices para tabela `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`id_documentos`);

--
-- Índices para tabela `doc_contabil`
--
ALTER TABLE `doc_contabil`
  ADD PRIMARY KEY (`id_doc_contabil`),
  ADD KEY `id_documentos` (`id_documentos`);

--
-- Índices para tabela `doc_fiscal`
--
ALTER TABLE `doc_fiscal`
  ADD PRIMARY KEY (`id_doc_fiscal`),
  ADD KEY `id_documentos` (`id_documentos`);

--
-- Índices para tabela `doc_legalizacao`
--
ALTER TABLE `doc_legalizacao`
  ADD PRIMARY KEY (`id_doc_legalizacao`),
  ADD KEY `id_documentos` (`id_documentos`);

--
-- Índices para tabela `doc_pessoal`
--
ALTER TABLE `doc_pessoal`
  ADD PRIMARY KEY (`id_doc_pessoal`),
  ADD KEY `id_documentos` (`id_documentos`);

--
-- Índices para tabela `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id_empresa`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`id_funcionario`),
  ADD KEY `id_funcionario` (`id_empresa`);

--
-- Índices para tabela `socios`
--
ALTER TABLE `socios`
  ADD PRIMARY KEY (`id_socios`),
  ADD KEY `id_socios` (`id_empresa`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `documentos`
--
ALTER TABLE `documentos`
  MODIFY `id_documentos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `doc_contabil`
--
ALTER TABLE `doc_contabil`
  MODIFY `id_doc_contabil` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `doc_fiscal`
--
ALTER TABLE `doc_fiscal`
  MODIFY `id_doc_fiscal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `doc_legalizacao`
--
ALTER TABLE `doc_legalizacao`
  MODIFY `id_doc_legalizacao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `doc_pessoal`
--
ALTER TABLE `doc_pessoal`
  MODIFY `id_doc_pessoal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id_empresa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `id_funcionario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `socios`
--
ALTER TABLE `socios`
  MODIFY `id_socios` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `id_departamento` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`);

--
-- Limitadores para a tabela `departamento_documento`
--
ALTER TABLE `departamento_documento`
  ADD CONSTRAINT `departamento_documento_ibfk_1` FOREIGN KEY (`id_documento`) REFERENCES `documentos` (`id_documentos`),
  ADD CONSTRAINT `departamento_documento_ibfk_2` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`);

--
-- Limitadores para a tabela `doc_contabil`
--
ALTER TABLE `doc_contabil`
  ADD CONSTRAINT `doc_contabil_ibfk_1` FOREIGN KEY (`id_documentos`) REFERENCES `documentos` (`id_documentos`);

--
-- Limitadores para a tabela `doc_fiscal`
--
ALTER TABLE `doc_fiscal`
  ADD CONSTRAINT `doc_fiscal_ibfk_1` FOREIGN KEY (`id_documentos`) REFERENCES `documentos` (`id_documentos`);

--
-- Limitadores para a tabela `doc_legalizacao`
--
ALTER TABLE `doc_legalizacao`
  ADD CONSTRAINT `doc_legalizacao_ibfk_1` FOREIGN KEY (`id_documentos`) REFERENCES `documentos` (`id_documentos`);

--
-- Limitadores para a tabela `doc_pessoal`
--
ALTER TABLE `doc_pessoal`
  ADD CONSTRAINT `doc_pessoal_ibfk_1` FOREIGN KEY (`id_documentos`) REFERENCES `documentos` (`id_documentos`);

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `id_funcionario` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`);

--
-- Limitadores para a tabela `socios`
--
ALTER TABLE `socios`
  ADD CONSTRAINT `id_socios` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
