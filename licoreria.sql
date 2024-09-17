-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-09-2024 a las 22:36:17
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
-- Base de datos: `licoreria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `comentario` text DEFAULT NULL,
  `promocion_activa` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre`, `comentario`, `promocion_activa`) VALUES
(1, 'Vino tinto', 'Vinos elaborado con uvas rojas', 1),
(2, 'Whiskey', NULL, 0),
(3, 'Vino blanco', 'Vinos elaborados a partir de uvas blancas', 1),
(4, 'Cerveza artesanal', NULL, 0),
(5, 'Cerveza industrial', 'Cerveza fabricada a gran escala', 1),
(6, 'Aperitivos', NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `precio` float NOT NULL,
  `cantidad` int(11) NOT NULL,
  `id_categoria` int(10) NOT NULL,
  `volumen` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre`, `precio`, `cantidad`, `id_categoria`, `volumen`) VALUES
(1, 'Malbec Nampe', 2259.33, 250, 1, 750),
(2, 'Catena Zapata Malbec', 60999, 20, 1, 750),
(3, 'Jack Daniels Hooney', 40680, 30, 2, 700),
(4, 'Johnnie Walker Blue Label', 405639, 10, 2, 750),
(5, 'Johnnie Walker Red Label', 34658, 25, 2, 1000),
(6, 'Johnnie Walker Black Label', 51975, 20, 2, 750),
(7, 'Chenin Dulce Chacabuco', 5629, 150, 3, 750),
(8, 'Patagonia Amber Lager', 1852.16, 100, 4, 473),
(9, 'Scottish Ale Red', 1722.5, 100, 4, 473),
(10, 'Patagonia Bohemian Pilsener', 3148, 100, 4, 730),
(11, 'Patagonia Amber Lager', 3148, 80, 4, 730),
(12, 'Corona', 1400, 200, 5, 330),
(13, 'Corona', 2800, 150, 5, 710),
(14, 'Quilmes', 2800, 300, 5, 1000),
(15, 'Quilmes', 1500, 300, 5, 473),
(16, 'Fernet Branca', 10800, 145, 6, 750),
(17, 'Fernet Branca', 7202.88, 185, 6, 450),
(18, 'Gancia', 6350, 200, 6, 950);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `fk_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
