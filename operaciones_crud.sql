-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-08-2022 a las 16:12:49
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `operaciones_crud`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `Matricula` varchar(17) NOT NULL,
  `Nombre` varchar(17) NOT NULL,
  `Genero` varchar(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`Matricula`, `Nombre`, `Genero`) VALUES
('121211212', 'HILario', 'hombre'),
('123456789012', 'florinda mesa', 'mujer'),
('201920202021', 'kiko', 'mujer'),
('3434344344', 'fernando lilia', 'hombre'),
('454545454', 'gtgtgt', 'h'),
('565656565656', 'jlia', 'mujer'),
('57201000174', 'ROGELIO', 'PASCUALEÑO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `Id` varchar(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Paterno` varchar(19) NOT NULL,
  `Materno` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`Id`, `Nombre`, `Paterno`, `Materno`) VALUES
('0087', 'Antony', 'alejo', 'Tecuapa'),
('1100', 'ingless', 'hhhhhh', 'nmmmmmm'),
('1102', 'EFRAIN', 'TECORRAL', 'CESAR'),
('1103', 'gerardo', 'ort', 'sss'),
('1115', 'hhhhh', 'jjjjjjj', 'kkkkkkkkkkkk'),
('1118', 'reyes', 'gonzales', 'gerardo'),
('6565', 'GHJGHJGHJGJ', 'HJGHJGHJG', 'KJHJKHJKHKJ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `Clavemat` varchar(4) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Cuatrimestre` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`Clavemat`, `Nombre`, `Cuatrimestre`) VALUES
('1102', 'Talleres', '12'),
('1103', 'matematicas', '11'),
('1109', 'espaÃnol', '11'),
('1198', 'historia', '20'),
('1235', 'geografia', '25'),
('4040', 'hhhhhhh', '56'),
('5454', 'julio', '76'),
('5656', 'extranjeras', '12'),
('7878', 'tutotia', '12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id` int(11) NOT NULL,
  `Usuario` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id`, `Usuario`, `Password`) VALUES
(1, 'rogelio', 'rogelio'),
(2, 'jesus', 'jesus');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`Matricula`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`Clavemat`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
