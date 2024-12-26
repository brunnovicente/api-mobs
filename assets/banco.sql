-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.32-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.7.0.6850
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para mobs
CREATE DATABASE IF NOT EXISTS `mobs` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `mobs`;

-- Copiando estrutura para tabela mobs.perfis
CREATE TABLE IF NOT EXISTS `perfis` (
                                        `id` int(11) NOT NULL AUTO_INCREMENT,
    `nome` varchar(150) DEFAULT NULL,
    `endereco` varchar(150) DEFAULT NULL,
    `cidade` varchar(150) DEFAULT NULL,
    `bairro` varchar(150) DEFAULT NULL,
    `telefone` varchar(20) DEFAULT NULL,
    `email` varchar(150) DEFAULT NULL,
    `createdAt` datetime NOT NULL,
    `updatedAt` datetime NOT NULL,
    PRIMARY KEY (`id`)
    ) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela mobs.perfis: ~20 rows (aproximadamente)
INSERT INTO `perfis` (`id`, `nome`, `endereco`, `cidade`, `bairro`, `telefone`, `email`, `createdAt`, `updatedAt`) VALUES
                                                                                                                       (1, 'João Silva', 'Rua A, 123', 'São Paulo', 'Centro', '11987654321', 'joao.silva@example.com', '2024-12-25 23:58:21', '2024-12-25 23:58:21'),
                                                                                                                       (2, 'Maria Oliveira', 'Rua B, 456', 'Rio de Janeiro', 'Botafogo', '21987654321', 'maria.oliveira@example.com', '2024-12-25 23:58:21', '2024-12-25 23:58:21'),
                                                                                                                       (3, 'Pedro Santos', 'Rua C, 789', 'Belo Horizonte', 'Savassi', '31987654321', 'pedro.santos@example.com', '2024-12-25 23:58:21', '2024-12-25 23:58:21'),
                                                                                                                       (4, 'Ana Souza', 'Rua D, 101', 'Curitiba', 'Batel', '41987654321', 'ana.souza@example.com', '2024-12-25 23:58:21', '2024-12-25 23:58:21'),
                                                                                                                       (5, 'Carlos Lima', 'Rua E, 202', 'Recife', 'Boa Viagem', '81987654321', 'carlos.lima@example.com', '2024-12-25 23:58:21', '2024-12-25 23:58:21'),
                                                                                                                       (6, 'Beatriz Rocha', 'Rua F, 303', 'Fortaleza', 'Aldeota', '85987654321', 'beatriz.rocha@example.com', '2024-12-25 23:58:21', '2024-12-25 23:58:21'),
                                                                                                                       (7, 'Rafael Alves', 'Rua G, 404', 'Porto Alegre', 'Moinhos', '51987654321', 'rafael.alves@example.com', '2024-12-25 23:58:21', '2024-12-25 23:58:21'),
                                                                                                                       (8, 'Fernanda Costa', 'Rua H, 505', 'Salvador', 'Barra', '71987654321', 'fernanda.costa@example.com', '2024-12-25 23:58:21', '2024-12-25 23:58:21'),
                                                                                                                       (9, 'Gabriel Melo', 'Rua I, 606', 'Brasília', 'Asa Sul', '61987654321', 'gabriel.melo@example.com', '2024-12-25 23:58:21', '2024-12-25 23:58:21'),
                                                                                                                       (10, 'Laura Pereira', 'Rua J, 707', 'Manaus', 'Centro', '92987654321', 'laura.pereira@example.com', '2024-12-25 23:58:21', '2024-12-25 23:58:21'),
                                                                                                                       (11, 'Lucas Carvalho', 'Rua K, 808', 'Florianópolis', 'Trindade', '48987654321', 'lucas.carvalho@example.com', '2024-12-25 23:58:21', '2024-12-25 23:58:21'),
                                                                                                                       (12, 'Paula Duarte', 'Rua L, 909', 'Vitória', 'Praia do Canto', '27987654321', 'paula.duarte@example.com', '2024-12-25 23:58:21', '2024-12-25 23:58:21'),
                                                                                                                       (13, 'Rodrigo Gomes', 'Rua M, 111', 'Campo Grande', 'Centro', '67987654321', 'rodrigo.gomes@example.com', '2024-12-25 23:58:21', '2024-12-25 23:58:21'),
                                                                                                                       (14, 'Juliana Mendes', 'Rua N, 222', 'João Pessoa', 'Tambaú', '83987654321', 'juliana.mendes@example.com', '2024-12-25 23:58:21', '2024-12-25 23:58:21'),
                                                                                                                       (15, 'Felipe Ferreira', 'Rua O, 333', 'Aracaju', 'Atalaia', '79987654321', 'felipe.ferreira@example.com', '2024-12-25 23:58:21', '2024-12-25 23:58:21'),
                                                                                                                       (16, 'Camila Barros', 'Rua P, 444', 'Natal', 'Ponta Negra', '84987654321', 'camila.barros@example.com', '2024-12-25 23:58:21', '2024-12-25 23:58:21'),
                                                                                                                       (17, 'André Nogueira', 'Rua Q, 555', 'Belém', 'Nazaré', '91987654321', 'andre.nogueira@example.com', '2024-12-25 23:58:21', '2024-12-25 23:58:21'),
                                                                                                                       (18, 'Aline Farias', 'Rua R, 666', 'Maceió', 'Pajuçara', '82987654321', 'aline.farias@example.com', '2024-12-25 23:58:21', '2024-12-25 23:58:21'),
                                                                                                                       (19, 'Bruno Souza', 'Rua S, 777', 'Teresina', 'Centro', '86987654321', 'bruno.souza@example.com', '2024-12-25 23:58:21', '2024-12-25 23:58:21'),
                                                                                                                       (20, 'Mariana Teixeira', 'Rua T, 888', 'São Luís', 'Renascença', '98987654321', 'mariana.teixeira@example.com', '2024-12-25 23:58:21', '2024-12-25 23:58:21');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
