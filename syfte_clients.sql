-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-04-2019 a las 06:35:28
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `syfte`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `syfte_clients`
--

CREATE TABLE `syfte_clients` (
  `cli_id` int(11) NOT NULL,
  `cli_email` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='newsletter' ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `syfte_clients`
--

INSERT INTO `syfte_clients` (`cli_id`, `cli_email`) VALUES
(3, 'carlos8estarita@hotmail.com'),
(5, 'cesteban2007@hotmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `syfte_clients`
--
ALTER TABLE `syfte_clients`
  ADD PRIMARY KEY (`cli_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `syfte_clients`
--
ALTER TABLE `syfte_clients`
  MODIFY `cli_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
