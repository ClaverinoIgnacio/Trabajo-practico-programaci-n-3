-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-11-2026 a las 00:40:51
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `zapateria-rowman`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zapatillas`
--

CREATE TABLE `zapatillas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `tipo_calzado` varchar(50) NOT NULL,
  `genero` enum('hombre','mujer','niño','niña') NOT NULL,
  `disponible` tinyint(1) NOT NULL DEFAULT 1,
  `talles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`talles`)),
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `zapatillas`
--

INSERT INTO `zapatillas` (`id`, `nombre`, `marca`, `tipo_calzado`, `genero`, `disponible`, `talles`, `precio`) VALUES
(1, 'Air Max 90', 'Nike', 'Urbana', 'hombre', 1, '[40, 41, 42, 43]', 189999.00),
(2, 'Revolution 6', 'Nike', 'Running', 'mujer', 1, '[36, 37, 38]', 119999.00),
(3, 'Ultraboost Light', 'Adidas', 'Running', 'hombre', 1, '[41, 42, 43, 44]', 249999.00),
(4, 'Superstar', 'Adidas', 'Urbana', 'mujer', 0, '[35, 36, 37, 38]', 159999.00),
(5, 'Runfalcon 3', 'Adidas', 'Running', 'niño', 1, '[31, 32, 33]', 79999.00),
(6, 'Suede Classic', 'Puma', 'Urbana', 'hombre', 1, '[39, 40, 41]', 139999.00),
(7, 'Carina 2.0', 'Puma', 'Urbana', 'niña', 1, '[30, 31, 32, 33]', 69999.00),
(8, 'Gel-Contend 8', 'Asics', 'Running', 'mujer', 1, '[36, 37, 38, 39]', 129999.00),
(9, 'Fresh Foam 680', 'New Balance', 'Running', 'hombre', 0, '[41, 42, 43]', 169999.00),
(10, '574 Core', 'New Balance', 'Urbana', 'niño', 1, '[32, 33, 34, 35]', 89999.00),
(11, 'Chuck Taylor All Star', 'Converse', 'Urbana', 'niña', 1, '[31, 32, 33]', 74999.00),
(12, 'Old Skool', 'Vans', 'Skate', 'hombre', 1, '[40, 41, 42, 43]', 134999.00),
(13, 'Tiempo Legend 10', 'Nike', 'Fútbol', 'hombre', 1, '[40, 41, 42]', 209999.00),
(14, 'Hoka Clifton 9', 'Hoka', 'Running', 'mujer', 1, '[36, 37, 38]', 279999.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `zapatillas`
--
ALTER TABLE `zapatillas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `zapatillas`
--
ALTER TABLE `zapatillas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
