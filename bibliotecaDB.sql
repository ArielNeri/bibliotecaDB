-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.34 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para bibliotecadb
DROP DATABASE IF EXISTS `bibliotecadb`;
CREATE DATABASE IF NOT EXISTS `bibliotecadb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bibliotecadb`;

-- Copiando estrutura para tabela bibliotecadb.autores
DROP TABLE IF EXISTS `autores`;
CREATE TABLE IF NOT EXISTS `autores` (
  `AutorID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(255) NOT NULL,
  `Sobrenome` varchar(255) NOT NULL,
  `Nacionalidade` varchar(100) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`AutorID`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela bibliotecadb.autores: ~0 rows (aproximadamente)
INSERT INTO `autores` (`AutorID`, `Nome`, `Sobrenome`, `Nacionalidade`, `Email`) VALUES
	(1, 'Machado', 'de Assis', NULL, 'machado@exemplo.com'),
	(2, 'Clarice', 'Lispector', 'Ucraniana', 'clarice@exemplo.com'),
	(3, 'Graciliano', 'Ramos', 'Brasileira', 'graciliano.ramos@exemplo.com.br'),
	(4, 'José', 'de Alencar', 'Brasileira', 'jose@exemplo.com');

-- Copiando estrutura para tabela bibliotecadb.livros
DROP TABLE IF EXISTS `livros`;
CREATE TABLE IF NOT EXISTS `livros` (
  `LivroID` int NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(255) NOT NULL,
  `AutorID` int NOT NULL,
  `AnoPublicacao` int DEFAULT NULL,
  `Genero` varchar(100) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`LivroID`),
  UNIQUE KEY `ISBN` (`ISBN`),
  KEY `AutorID` (`AutorID`),
  CONSTRAINT `livros_ibfk_1` FOREIGN KEY (`AutorID`) REFERENCES `autores` (`AutorID`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela bibliotecadb.livros: ~0 rows (aproximadamente)
INSERT INTO `livros` (`LivroID`, `Titulo`, `AutorID`, `AnoPublicacao`, `Genero`, `ISBN`) VALUES
	(36, 'Dom Casmurro', 1, 1899, 'Romance', '978-85-00-00000-0'),
	(37, 'Memórias Póstumas de Brás Cubas', 1, 1881, 'Romance', '978-85-00-00001-7'),
	(39, 'Vidas Secas', 3, 1938, 'Romance', '978-85-00-00003-1'),
	(40, 'Iracema', 4, 1865, 'Romance', '978-85-00-00004-8'),
	(41, 'O Cortiço', 3, 1890, 'Realismo', '978-85-00-00005-5'),
	(42, 'Grande Sertão: Veredas', 2, 1956, 'Romance', '978-85-00-00006-2');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
