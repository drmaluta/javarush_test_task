CREATE DATABASE IF NOT EXISTS `test`;

CREATE TABLE `user` (
`ID` INT(8) NOT NULL AUTO_INCREMENT PRIMARY KEY,
`NAME` VARCHAR(25) NOT NULL,
`AGE` INT NOT NULL,
`IS_ADMIN` BIT(1) NOT NULL DEFAULT false,
`CREATED_DATE` TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

INSERT INTO `user` (`NAME`, `AGE`) VALUES ('Kola', '21');
INSERT INTO `user` (`NAME`, `AGE`) VALUES ('Vasa', '23');
INSERT INTO `user` (`NAME`, `AGE`) VALUES ('Dande', '56');