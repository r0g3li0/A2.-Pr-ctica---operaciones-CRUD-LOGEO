-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-08-2022 a las 08:25:44
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
  `Nombre` varchar(40) NOT NULL,
  `Genero` varchar(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`Matricula`, `Nombre`, `Genero`) VALUES
('20701000176', 'Adrian gil', 'hombre'),
('20701000310', 'PATY GARCIA HERNANDEZ', 'MUJER'),
('57201000000', 'ROGELIO CHEPILLO PASCUALEÃO', 'HOMBRE'),
('57201000164', 'JOSE DE JESUS RODRIGUEZ NAVARRETE', 'HOMBRE'),
('57201000175', 'gabriela espinoza', 'mujer'),
('57201000177', 'FRANCISCO GUTIERREZ SOLANO', 'HOMBRE'),
('57201000178', 'NOHEMI RAMIREZ CASTILLO', 'MUJER'),
('57201000200', 'GONZALO HERNANDEZ FLORES', 'HOMBRE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `Id` varchar(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Paterno` varchar(40) NOT NULL,
  `Materno` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`Id`, `Nombre`, `Paterno`, `Materno`) VALUES
('1101', 'ROGELIO ', 'PASCUALEÃO', 'CHEPILLO'),
('1102', 'ANTONIETA', 'ALEJO', 'TECUAPA'),
('1103', 'JOSE JESUS', 'RODRIGUEZ', 'NAVARRETE'),
('1104', 'HECTOR ', 'DANIEL', 'ESTEBAN'),
('1105', 'YOLETHE', 'ESTEBAN', 'ALEJO'),
('1106', 'GAEL ', 'RODRIGUEZ', 'CATALAN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `Clavemat` varchar(4) NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `Cuatrimestre` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`Clavemat`, `Nombre`, `Cuatrimestre`) VALUES
('1101', 'ESPAÃOL', '11'),
('1102', 'MATEMATICAS', '11'),
('1103', 'RECREACION', '11'),
('1104', 'CIENCIAS NATURALES', '12'),
('1107', 'INGLES', '10'),
('1108', 'CIENCIAS DE LA SALUD', '13'),
('1109', 'EDUCACION FISICA', '13'),
('1110', 'TECNOLOGIAS', '13');

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
