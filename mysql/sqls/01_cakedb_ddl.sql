
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `cakedb`
--
DROP DATABASE IF EXISTS `cakedb`;
CREATE DATABASE IF NOT EXISTS `cakedb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cakedb`;

-- --------------------------------------------------------

--
-- Accounts
--

-- `cakeapp`@`%` に対する特権

GRANT USAGE ON *.* TO 'cakeuser'@'%' IDENTIFIED BY 'cakepass';
GRANT SELECT, INSERT, UPDATE, DELETE ON `cakedb`.* TO 'cakeuser'@'%';

-- `cakeapp`@`localhost` に対する特権

GRANT USAGE ON *.* TO 'cakeuser'@'localhost' IDENTIFIED BY 'cakepass';
GRANT SELECT, INSERT, UPDATE, DELETE ON `cakedb`.* TO 'cakeuser'@'localhost';

-- --------------------------------------------------------

--
-- Table: `users`
--
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
    `id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `username` VARCHAR(50) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `role` VARCHAR(20) NOT NULL,
    `created` DATETIME DEFAULT NULL,
    `modified` DATETIME DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table: `articles`
--
DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
    `id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `user_id` INT UNSIGNED,
    `title` VARCHAR(50),
    `body` TEXT,
    `created` DATETIME DEFAULT NULL,
    `modified` DATETIME DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
