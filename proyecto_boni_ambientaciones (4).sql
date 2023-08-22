-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 22-08-2023 a las 20:06:27
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto boni ambientaciones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `subtitulo` varchar(250) NOT NULL,
  `cuerpo` text NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`, `img_id`) VALUES
(1, 'Tendencias para eventos 2024', 'Nuevas tendencias para eventos 2024', '1. Bodas coloridas y eclécticas 2. Estilos rústico chic 3. Luces protagonistas 4. Instalaciones florales 5. Ramos petite 6. Plantas de interior 7. Fondos de ceremonia En cada temporada, vuelven a surgir las ideas renovadas para decorar y expresar las preferencias en la ambientación. Sin importar el look de novios o el salón elegido, el mayor impacto está dado por la decoración y efecto sorpresa en sus invitados.', 'fchgn4lze51rcyhwtvdj'),
(2, 'Crear experiencias', 'Crear experiencias en cada evento, que lo hagan marivolloso ', 'Es el show de animación para eventos más interactivo y divertido del momento, de pronto cambia la iluminación y la música de la fiesta, se disparan unos cañones de confeti mientras el sonido de una sirena da paso a la aparición animadores y performances de todo tipo que interactúan con los invitados.', 'lr3wvbdim13jfjf75nky'),
(3, 'Las flores en los eventos', 'Hoy, si hay un evento no pueden faltar las flores', 'Los arreglos florales decoran, armonizan, dan color, luz, calidez y un millón de sensaciones. El uso de diferentes materiales, objetos, recipientes, bases y flores no tiene límite en la imaginación.\r\n', 'tjcwmsvxkedbwfdozkti');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'gabriela', '21c3134ee5edcb618c4f9aae358d73a7'),
(2, 'laura', '21c3134ee5edcb618c4f9aae358d73a7');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
