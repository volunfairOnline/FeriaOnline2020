-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 15-11-2020 a las 18:55:44
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rifa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rifa`
--

DROP TABLE IF EXISTS `rifa`;
CREATE TABLE IF NOT EXISTS `rifa` (
  `id_rifa` int(11) NOT NULL AUTO_INCREMENT,
  `articulo_rifa` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `descripcion_rifa` longtext COLLATE utf8mb4_spanish2_ci,
  `foto_rifa` text COLLATE utf8mb4_spanish2_ci,
  `empresa_rifa` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL COMMENT 'empresa o tienda que nos de el articulo',
  `instagram_rifa` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `twitter_rifa` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `rrss_rifa` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL COMMENT 'cualquier otra red social',
  `telefono_rifa` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL COMMENT 'telefono de contacto de la persona de la empresa',
  `email_rifa` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL COMMENT 'email de contacto de la persona de la empresa',
  PRIMARY KEY (`id_rifa`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
