-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-08-2023 a las 02:07:23
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `node-ejs-3parcial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(10) UNSIGNED NOT NULL,
  `matricula` varchar(10) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido_paterno` varchar(255) NOT NULL,
  `apellido_materno` varchar(255) NOT NULL,
  `genero` int(11) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `id_domicilio` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `matricula`, `nombre`, `apellido_paterno`, `apellido_materno`, `genero`, `fecha_nacimiento`, `id_domicilio`) VALUES
(9, '5722190121', 'Angel', 'Abundes', 'Arteaga', 1, '0000-00-00', 10),
(10, '5722190122', 'José Manuel', 'Bautista', 'Morals', 1, '0000-00-00', 12),
(11, '5722190123', 'Juan Diego', 'Cantor', 'Jimón', 1, '0000-00-00', 13),
(12, '5722190124', 'Roberto', 'Chauteco', 'Bello', 1, '0000-00-00', 14),
(13, '5722190125', 'Brenda Lizeth', 'García', 'García', 2, '0000-00-00', 15),
(14, '5722190126', 'Geovanni', 'Melchor', 'Solano', 1, '0000-00-00', 10),
(15, '5722190127', 'Oliver Oswaldo', 'Meza', 'Moreno', 1, '0000-00-00', 17),
(16, '5722190128', 'Saul', 'Nava', 'Luciano', 1, '0000-00-00', 18),
(17, '5722190129', 'Marcos', 'Sanchez', 'Del Carmen', 1, '0000-00-00', 19),
(18, '5722190130', 'Francisco', 'Ramirez', 'Martínez', 1, '1999-03-24', 20),
(19, '5722190131', 'Miguel Angel', 'Moreles', 'Estevan', 1, '1998-08-25', 21),
(20, '5722190132', 'Verónica', 'Marín ', 'Jorge', 2, '1998-11-24', 22),
(21, '111111111', 'pruebas', 'pruebas', 'prueba', 1, '2023-08-29', 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE `calificaciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `parcial1` int(10) UNSIGNED DEFAULT NULL,
  `parcial2` int(10) UNSIGNED DEFAULT NULL,
  `parcial3` int(10) UNSIGNED DEFAULT NULL,
  `extraordinario` int(10) UNSIGNED DEFAULT NULL,
  `id_materia` int(10) UNSIGNED NOT NULL,
  `id_alumno` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `calificaciones`
--

INSERT INTO `calificaciones` (`id`, `parcial1`, `parcial2`, `parcial3`, `extraordinario`, `id_materia`, `id_alumno`) VALUES
(45, 9, NULL, NULL, NULL, 10, 9),
(46, 8, NULL, NULL, NULL, 10, 10),
(47, 9, NULL, NULL, NULL, 10, 11),
(48, 8, NULL, NULL, NULL, 10, 12),
(49, 9, NULL, NULL, NULL, 10, 13),
(50, 8, NULL, NULL, NULL, 10, 14),
(51, 9, NULL, NULL, NULL, 10, 15),
(52, 8, NULL, NULL, NULL, 10, 16),
(53, 9, NULL, NULL, NULL, 10, 17),
(54, 8, NULL, NULL, NULL, 10, 18),
(55, 9, NULL, NULL, NULL, 10, 19),
(56, 9, NULL, NULL, NULL, 10, 20),
(57, 8, NULL, NULL, NULL, 10, 21),
(58, 10, NULL, NULL, NULL, 11, 9),
(59, 8, NULL, NULL, NULL, 11, 10),
(60, 8, NULL, NULL, NULL, 11, 11),
(61, 8, NULL, NULL, NULL, 11, 12),
(62, 9, NULL, NULL, NULL, 11, 13),
(63, 9, NULL, NULL, NULL, 11, 14),
(64, 9, NULL, NULL, NULL, 11, 15),
(65, 8, NULL, NULL, NULL, 11, 16),
(66, 9, NULL, NULL, NULL, 11, 17),
(67, 8, NULL, NULL, NULL, 11, 18),
(68, 9, NULL, NULL, NULL, 11, 19),
(69, 9, NULL, NULL, NULL, 11, 20),
(70, 8, NULL, NULL, NULL, 11, 21),
(71, 1, 1, 1, NULL, 18, 9),
(72, 10, 10, 10, NULL, 18, 10),
(73, 1, 1, 1, NULL, 18, 11),
(74, 1, 1, 1, NULL, 18, 12),
(75, 1, 1, 1, NULL, 18, 13),
(76, 1, 1, 1, NULL, 18, 14),
(77, 1, 1, 1, NULL, 18, 15),
(78, 1, 1, 1, NULL, 18, 16),
(79, 1, 1, 1, NULL, 18, 17),
(80, 1, 1, 1, NULL, 18, 18),
(81, 1, 1, 1, NULL, 18, 19),
(82, 1, 1, 1, NULL, 18, 20),
(83, 1, 1, 1, NULL, 18, 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `domicilio`
--

CREATE TABLE `domicilio` (
  `id` int(10) UNSIGNED NOT NULL,
  `calle` varchar(255) DEFAULT NULL,
  `colonia` varchar(255) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `domicilio`
--

INSERT INTO `domicilio` (`id`, `calle`, `colonia`, `numero`) VALUES
(10, '13 sur', 'El tecolote', '516'),
(11, '11 poniente', 'San juan', '768'),
(12, 'miguel hidalgo', 'la popular', '183'),
(13, 'S/C', 'S/C', '1111'),
(14, '9 poniente', 'San josé', '542'),
(15, 'S/C', 'la ciénega', 'S/N'),
(16, '13 Sur', 'El Tecolote', '516'),
(17, '24 Sur', 'San Juan', 'S/C'),
(18, 'S/C', 'La ciénega', 'S/C'),
(19, '18 sur', 'San josé', '657'),
(20, 'Emiliano', 'Emiliano', 'S/N'),
(21, 'S/C', 'S/C', 'S/N'),
(22, 'S/C', 'S/C', 'S/N'),
(23, 'prueba', 'prueba', 'prueba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(10) UNSIGNED NOT NULL,
  `clave_materia` varchar(10) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `cuatrimestre` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `clave_materia`, `nombre`, `cuatrimestre`) VALUES
(10, 'Ar-Sof7', 'Arquitectura de Software', 7),
(11, 'Me-DeP7', 'Metodologías para el desarrollo de proyectos', 7),
(12, 'De-WeP8', 'Desarrollo Web Profesional', 8),
(13, 'Se-DAp8', 'Seguridad en el Desarrollo de Aplicaciones', 8),
(14, 'De-WIn9', 'Desarrollo Web Integral', 9),
(15, 'De-DiM9', 'Desarrollo para Dispositivos Inteligéntes', 9),
(16, 'Ap-WeP10', 'Aplicaciones Web Progresivas', 10),
(17, 'De-MoI10', 'Desarrrollo Móvil Integral', 10),
(18, 'nueva', 'Materia nueva', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre_completo` varchar(255) NOT NULL,
  `correo_electronico` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_rol` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_completo`, `correo_electronico`, `password`, `id_rol`) VALUES
(1, 'Geovanni', 'geovannimel18@gmail.com', '$2b$10$LZ4ehwSwSb/TGbgETwXxcuR1AW5hm0jCE11cqVk3H5tMraxXuPQX.', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_alumnos_domicilio` (`id_domicilio`);

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `domicilio`
--
ALTER TABLE `domicilio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT de la tabla `domicilio`
--
ALTER TABLE `domicilio`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `fk_alumnos_domicilio` FOREIGN KEY (`id_domicilio`) REFERENCES `domicilio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
