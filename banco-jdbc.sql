-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               9.3.0 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for jdbc_prova
CREATE DATABASE IF NOT EXISTS `jdbc_prova` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `jdbc_prova`;

-- Dumping structure for table jdbc_prova.funcionario
CREATE TABLE IF NOT EXISTS `funcionario` (
  `id` int NOT NULL,
  `matricula` varchar(4) NOT NULL,
  `departamento` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `matricula` (`matricula`),
  CONSTRAINT `fk_funcionario_pessoa` FOREIGN KEY (`id`) REFERENCES `pessoa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table jdbc_prova.funcionario: ~10 rows (approximately)
INSERT INTO `funcionario` (`id`, `matricula`, `departamento`) VALUES
	(1, 'F003', 'Marketing'),
	(2, 'F004', 'Financeiro'),
	(3, 'F005', 'TI'),
	(4, 'F006', 'Comercial'),
	(5, 'F007', 'Marketing'),
	(6, 'F008', 'RH'),
	(7, 'F009', 'TI'),
	(8, 'F010', 'Financeiro'),
	(9, 'F001', 'TI'),
	(10, 'F002', 'RH');

-- Dumping structure for table jdbc_prova.pessoa
CREATE TABLE IF NOT EXISTS `pessoa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table jdbc_prova.pessoa: ~10 rows (approximately)
INSERT INTO `pessoa` (`id`, `nome`, `email`) VALUES
	(1, 'Ana Silva', 'ana.silva@email.com'),
	(2, 'Bruno Costa', 'bruno.costa@email.com'),
	(3, 'Carla Souza', 'carla.souza@email.com'),
	(4, 'Daniel Lima', 'daniel.lima@email.com'),
	(5, 'Eduarda Alves', 'eduarda.alves@email.com'),
	(6, 'Felipe Mendes', 'felipe.mendes@email.com'),
	(7, 'Gabriela Rocha', 'gabriela.rocha@email.com'),
	(8, 'Henrique Matos', 'henrique.matos@email.com'),
	(9, 'Isabela Ferreira', 'isabela.ferreira@email.com'),
	(10, 'João Oliveira', 'joao.oliveira@email.com');

-- Dumping structure for table jdbc_prova.projeto
CREATE TABLE IF NOT EXISTS `projeto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `descricao` text,
  `id_funcionario` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_projeto_funcionario` (`id_funcionario`),
  CONSTRAINT `fk_projeto_funcionario` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table jdbc_prova.projeto: ~10 rows (approximately)
INSERT INTO `projeto` (`id`, `nome`, `descricao`, `id_funcionario`) VALUES
	(1, 'Campanha Q4', 'Campanha de marketing para o quarto trimestre', 1),
	(2, 'Relatórios Financeiros', 'Automatização de relatórios mensais', 2),
	(3, 'App Mobile', 'Aplicativo para clientes acessarem produtos', 3),
	(4, 'Portal Vendas', 'Sistema interno para equipe de vendas', 4),
	(5, 'Rebranding 2025', 'Reformulação visual da marca', 5),
	(6, 'Onboarding RH', 'Melhoria no processo de integração', 6),
	(7, 'Infraestrutura Cloud', 'Migração de serviços para nuvem', 7),
	(8, 'Análise de Custos', 'Sistema de análise de gastos e orçamento', 8),
	(9, 'Sistema Web', 'Desenvolvimento de um sistema interno para gestão', 9),
	(10, 'RH Digital', 'Automação de processos de RH', 10);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
