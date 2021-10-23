-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 23-10-2021 a las 22:43:39
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `amate`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `id_actividad` int(100) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` date NOT NULL,
  `imagen` text NOT NULL,
  `area_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`id_actividad`, `titulo`, `descripcion`, `fecha`, `imagen`, `area_id`) VALUES
(2, 'curso de office', 'Dirijido a jovenes entre 15 y 20 años con la finalidad de nmf sfdms    njkhjewf wefjk kjhjlkefs jkl kefsnl wef', '2021-07-20', 'img/actividades/excel.jpg', 2),
(3, 'Alimentos para mi pueblo', 'Recolecta de alimentos para el pueblo de caripe, a los sectores en pobreza extrema.', '2021-07-27', 'img/actividades/alimentos.jpg', 1),
(4, 'curso de maquillaje', 'Dirigido a Jóvenes entre 18 y 21 años.h dsfhhjf hj ndfh h fhjhj nfj nhjhadq', '2021-08-19', 'img/actividades/maquillaje.jpg', 2),
(5, 'Un plato navideño para los niños de la casa abrigo San Martin', 'hghg ggh ghgh ghghjg hghjgj mghghj', '2021-07-29', 'img/actividades/plato.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `id_area` tinyint(1) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `areas`
--

INSERT INTO `areas` (`id_area`, `nombre`, `descripcion`, `imagen`) VALUES
(1, 'Asistencia a la Pobreza Extrema', 'La asistencia de personas en extrema pobreza que requieran medicinas, alimentación, calzado, ropa, vivienda, artículos deportivos, materiales de construcción, tecnológicos y biológico.', 'img/areas/pobrezaExtrema.jpg'),
(2, 'Capacitación', 'La producción y realización de todo tipo de cursos técnicos y talleres, laboratorios, bibliotecas y salones de lectura, ya sea en exclusividad o en cooperación con cualquier otro individuo o institución, para lo cual la Fundación podrá contratar, tanto en Venezuela, como en el exterior, las organizaciones, empresas o personal necesario.', 'img/areas/capacitacion.png'),
(3, 'Producción de Material Educativo', 'La elaboración y venta de folletos, libros, manuales y demás material impreso de carácter educativo.', 'img/areas/material.png'),
(4, 'Becas', 'Donar becas y/o establecer fondos para asignar ayudas a estudiantes o profesionales que realicen investigaciones o estudios en general en cualquier institución o asociaciones que tengan objetivos similares a los de esta Fundación, cooperando con cualquier persona en la ayuda de dichos objetivos', 'img/areas/becas.png'),
(5, 'General', '', ''),
(6, 'Asistencia Médica', 'Colaborar con la población e instituciones medicas en la dotación de medicinas así como la realización de Jornadas de despistaje y evaluaciones médicas con el fin de contribuir a una población sana. ', 'img/areas/salud.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiarios`
--

CREATE TABLE `beneficiarios` (
  `id_beneficio` int(11) NOT NULL,
  `dni` int(10) NOT NULL,
  `actividad_id` tinyint(1) NOT NULL,
  `fecha_beneficio` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `beneficiarios`
--

INSERT INTO `beneficiarios` (`id_beneficio`, `dni`, `actividad_id`, `fecha_beneficio`) VALUES
(1, 3030, 1, '2021-07-23'),
(2, 6546, 2, '2021-07-28'),
(3, 7865, 1, '2021-07-31'),
(4, 3030, 2, '2021-08-26'),
(5, 435788, 3, '2021-07-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `donativos`
--

CREATE TABLE `donativos` (
  `id_donativo` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `email` varchar(20) NOT NULL,
  `telefono` int(11) NOT NULL,
  `servicio` varchar(10) NOT NULL,
  `referencia` int(10) DEFAULT NULL,
  `monto` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `donativos`
--

INSERT INTO `donativos` (`id_donativo`, `nombre`, `email`, `telefono`, `servicio`, `referencia`, `monto`) VALUES
(1, 'Pedro perez', 'pedro@gmail.com', 48452391, 'Salud', 56252, '200000000'),
(2, 'Inversiones Luz', 'invluz@gmail.com', 416325678, 'Salud', 56252233, '68000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id_noticia` tinyint(11) NOT NULL,
  `titulo` varchar(25) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id_noticia`, `titulo`, `descripcion`, `imagen`) VALUES
(1, 'TYU Dona Vitaminas a Vene', 'ttttttt vbnvbn bbmedio de tratado sdsahcd shab a sdhu asadhjjhas dh adhk asdhk a,msdjasd qwheuqgyeqgka oesf scbavsc xmc zjaduas m,anv caola xags. hygdkascvagdfjwad hjgdjwkadckjasdkvcjygad gkjff gdbkaugasbdkudkuaskj.\r\nvasdgfsyab awgdas bcjasgg hh gdgy gugd auadha.\r\nasdbajhscfyuadnwavdjhavskjcnbasjcvhjacjha vhjasvcjhasvcjahbcjavchjgdjhwebkfutywyuoiqwudgbvahvcsacsa.', 'img/noticias/vitaminas.jpg'),
(2, 'Llegan las Vacuna Pfizer', 'Dsdfsd  sdf  sf  df  sf  sf  f  sf  f s fwsefrejfjeskfjksd usjef s,mh m,sjufi lsjilj f msfjlsjfl.\r\nfhhfjdsf hes fkesyh wewygwe slifjeslfne hsf s mvlksh s,khjles f,esmfhiosdufioesfe  fuufhdkdhjdhf kifhfufrurur fuujgjnf.\r\nhfyyrirj fhy fhf uutytywewewesaadaa aol,adg kdyufffdfdffd. hasdgfsyq a', 'img/noticias/vacunas.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `dni` int(10) NOT NULL,
  `nombres` varchar(25) NOT NULL,
  `apellidos` varchar(25) NOT NULL,
  `sexo` char(1) NOT NULL,
  `fecha_nac` date NOT NULL,
  `email` varchar(40) NOT NULL,
  `telefono` int(11) NOT NULL,
  `pais` varchar(25) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `foto` text NOT NULL,
  `tipo_id` tinyint(1) NOT NULL,
  `area_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`dni`, `nombres`, `apellidos`, `sexo`, `fecha_nac`, `email`, `telefono`, `pais`, `direccion`, `foto`, `tipo_id`, `area_id`) VALUES
(1, 'Carolina Y.', 'Rosas R.', 'S', '0000-00-00', 'yesyv1@hotmail.com', 333, 'País', 'dwfwef', 'img/miembros/carolina.jpg', 1, 5),
(30, 'Carlos J', 'Fuentes M', 'm', '2021-07-07', 'rrr@gmail.com', 123, 'f', 'swss', 'img/miembros/carlosv.jpg', 1, 1),
(3030, 'lula', 'luz', 'f', '2021-07-07', 'licyvelasquez8@gmail.com', 0, 'f', 'paris', 'preba', 3, 1),
(6546, 'lula', 'dacilva', 'm', '2021-08-04', 'velasques@hotmail.com', 88763, 'f', 'eee', 'preba', 3, 2),
(7865, 'andreita', 'itttt', 'f', '2021-07-14', 'rrr@gmail.com', 4553, 'f', '54344fgvvvvnb ', 'preba', 3, 1),
(98765, 'Anaica', 'Martinez', 'f', '2021-08-03', 'yesyv1@hotmail.com', 2147483647, 'País', 'calle 5 sector b', 'img/miembros/foto yeni.jpg', 2, 4),
(435788, 'albin', 'machuca', 'f', '2021-08-12', 'yesyv1@hotmail.comi', 123, 'País', 'swss', 'preba', 3, 1),
(15203027, 'Clariza', 'Muñoz', 'f', '2021-08-04', 'jose299@hotmail.com', 416567987, 'Argentina', 'vgfh hg hukhk', 'img/miembros/clarizab.jpg', 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_persona`
--

CREATE TABLE `tipo_persona` (
  `id_tipo` tinyint(1) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_persona`
--

INSERT INTO `tipo_persona` (`id_tipo`, `nombre`) VALUES
(1, 'administrativo'),
(2, 'voluntario'),
(3, 'beneficiario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `password` varchar(8) NOT NULL,
  `dni` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`password`, `dni`) VALUES
('And', 1),
('amor', 30),
('1234', 15203027);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`id_actividad`),
  ADD KEY `area_id` (`area_id`);

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id_area`);

--
-- Indices de la tabla `beneficiarios`
--
ALTER TABLE `beneficiarios`
  ADD PRIMARY KEY (`id_beneficio`),
  ADD KEY `area_id` (`actividad_id`),
  ADD KEY `dni` (`dni`);

--
-- Indices de la tabla `donativos`
--
ALTER TABLE `donativos`
  ADD PRIMARY KEY (`id_donativo`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id_noticia`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`dni`),
  ADD KEY `tipo_id` (`tipo_id`),
  ADD KEY `area_id` (`area_id`);

--
-- Indices de la tabla `tipo_persona`
--
ALTER TABLE `tipo_persona`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`dni`),
  ADD KEY `dni` (`dni`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `id_actividad` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `beneficiarios`
--
ALTER TABLE `beneficiarios`
  MODIFY `id_beneficio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `donativos`
--
ALTER TABLE `donativos`
  MODIFY `id_donativo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id_noticia` tinyint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `beneficiarios`
--
ALTER TABLE `beneficiarios`
  ADD CONSTRAINT `beneficiarios_ibfk_1` FOREIGN KEY (`dni`) REFERENCES `personas` (`dni`),
  ADD CONSTRAINT `beneficiarios_ibfk_2` FOREIGN KEY (`actividad_id`) REFERENCES `areas` (`id_area`);

--
-- Filtros para la tabla `personas`
--
ALTER TABLE `personas`
  ADD CONSTRAINT `personas_ibfk_1` FOREIGN KEY (`tipo_id`) REFERENCES `tipo_persona` (`id_tipo`),
  ADD CONSTRAINT `personas_ibfk_2` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id_area`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`dni`) REFERENCES `personas` (`dni`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
