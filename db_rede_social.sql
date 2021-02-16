

use db_rede_social;

CREATE TABLE `tema` (
	`id_tema` bigint NOT NULL AUTO_INCREMENT UNIQUE,
	`categoria` varchar(45) NOT NULL UNIQUE,
	`tags` varchar(45) NOT NULL,
	`descricao` TEXT(1000),
	PRIMARY KEY (`id_tema`)
);

CREATE TABLE `postagem` (
	`id_postagem` bigint NOT NULL AUTO_INCREMENT,
	`fk_id_usuario` bigint NOT NULL AUTO_INCREMENT,
	`fk_id_tema` bigint NOT NULL AUTO_INCREMENT,
	`titulo` varchar(50) NOT NULL,
	`data_hora` DATETIME NOT NULL,
	`imagem` TEXT,
	`conteudo` TEXT(1000) NOT NULL,
	PRIMARY KEY (`id_postagem`)
);

CREATE TABLE `usuario` (
	`nome_completo` varchar(100) NOT NULL,
	`email` varchar(45) NOT NULL UNIQUE,
	`senha` varchar(11) NOT NULL,
	`id_usuario` bigint NOT NULL AUTO_INCREMENT UNIQUE,
	PRIMARY KEY (`id_usuario`)
);

ALTER TABLE `postagem` ADD CONSTRAINT `postagem_fk0` FOREIGN KEY (`fk_id_usuario`) REFERENCES `usuario`(`id_usuario`);

ALTER TABLE `postagem` ADD CONSTRAINT `postagem_fk1` FOREIGN KEY (`fk_id_tema`) REFERENCES `tema`(`id_tema`);

