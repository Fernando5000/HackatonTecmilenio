-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 24-02-2019 a las 11:09:16
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mototli_hackathontecmi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bar`
--

CREATE TABLE `bar` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `informacion` varchar(100) NOT NULL,
  `ubicacion` varchar(100) NOT NULL,
  `precios` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edificios`
--

CREATE TABLE `edificios` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `ubicacion` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edificios_historicos`
--

CREATE TABLE `edificios_historicos` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `informacion` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info_animal`
--

CREATE TABLE `info_animal` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `tamano` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `clase` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `orden` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `nombre_cientifico` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `peso` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `longevidad` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `alimentacion` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `dieta` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `reproduccion` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `distribucion` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `periodo_incubacion` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `origen` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `caracteristicas` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `como_nacen` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `amenazas` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `notas` varchar(100) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `info_animal`
--

INSERT INTO `info_animal` (`ID`, `nombre`, `tamano`, `clase`, `orden`, `nombre_cientifico`, `peso`, `longevidad`, `alimentacion`, `dieta`, `reproduccion`, `distribucion`, `periodo_incubacion`, `origen`, `caracteristicas`, `como_nacen`, `amenazas`, `notas`, `active`) VALUES
(1, 'tiburon', '4 a 7 metros', 'Chondrichthyes', 'Condrictis', 'Selachimorpha', '21 toneladas', '20 a 30 a&nacute;os', 'Carn&iacute;vora', 'Peces, mam&iacute;feros, aves', 'Ovovivipara', 'Todo el planeta', '3 meses – 2 años', ' 455 millones de a&nacute;os', 'blanco y gris', 'naturalmente', 'megalodon', '', 0),
(2, 'aguila', ' 70 a 95 cm', 'Aves', ' Accipitriformes', 'Aquila chrysaetos', '450 gramos a 7 kilogramos', '14 a 25 a&nacute;os', 'Carn&iacute;vora', ' Carn&iacute;vora (peces, mam&iacute;feros, insectos, reptiles)', 'Ov&iacute;para', 'Todo el planeta excepto la Antártida', '30 – 50 días', '150 millones de años', 'voladores', 'huevos', 'ninguna ', '', 0),
(3, 'Conejo', '34 cm a 50 cm', 'Mammalia', 'Lagomorpha', 'Oryctolagus cuniculus', '1,1 a 2,5 kg', ' 9 a 12 a&nacute;os', 'Herb&oacute;vora', 'Frutas, heno, verduras', 'Viv&iacute;para', 'Todo el planeta excepto la Antártida', ' 29 – 35 días', 'Era Terciaria', 'Las orejas de los conejos son bastante grandes.\r\n', ' Las camadas oscilan entre cuatro y doce crías. Las hembras pueden tener varias camadas al año.', 'Las aves son su principal depredador.', 'https://youtu.be/RnBIzUe9Kck', 0),
(5, 'Jirafa', '380 a 570 cm', 'Mamíferos', 'Giraffidae', 'Giraffa camelopardalis', '1000 a 1900 kg', '25 a 30 a&nacute;os', 'Herb&iacute;vora', 'Plantas', 'Viv&iacute;para', 'Sabana', '450 a 465 días', '&Aacute;frica', 'Las patas delanteras de las jirafas son más largas también que sus extremidades traseras y posee dos', 'La gestación tomará entre 14 y 15 meses', 'Los humanos las cazan por su carne.', 'https://youtu.be/ODOLFN4QEmw', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localizacion`
--

CREATE TABLE `localizacion` (
  `ID` int(11) NOT NULL,
  `pais` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `cp` int(11) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `referencia` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugares`
--

CREATE TABLE `lugares` (
  `ID` int(11) NOT NULL,
  `ID_museo` int(11) NOT NULL,
  `ID_bar` int(11) NOT NULL,
  `ID_restaurantes` int(11) NOT NULL,
  `ID_edificios` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `museo`
--

CREATE TABLE `museo` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `concepto` varchar(100) NOT NULL,
  `informacion` varchar(100) NOT NULL,
  `ubicacion` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obra_arte`
--

CREATE TABLE `obra_arte` (
  `ID` int(11) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `informacion` varchar(100) NOT NULL,
  `autor` varchar(100) NOT NULL,
  `anio` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `ID` int(100) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `contrasena` varchar(100) NOT NULL,
  `active` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaurantes`
--

CREATE TABLE `restaurantes` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `ubicacion` varchar(100) NOT NULL,
  `tipo_comida` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zoologico`
--

CREATE TABLE `zoologico` (
  `ID` int(11) NOT NULL,
  `ID_info_animal` int(11) NOT NULL,
  `ID_localizacion` int(11) NOT NULL,
  `QR` varchar(100) NOT NULL,
  `especie` varchar(100) NOT NULL,
  `tiempo` varchar(100) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bar`
--
ALTER TABLE `bar`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `edificios`
--
ALTER TABLE `edificios`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `edificios_historicos`
--
ALTER TABLE `edificios_historicos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `info_animal`
--
ALTER TABLE `info_animal`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `localizacion`
--
ALTER TABLE `localizacion`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `lugares`
--
ALTER TABLE `lugares`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `museo`
--
ALTER TABLE `museo`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `obra_arte`
--
ALTER TABLE `obra_arte`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `restaurantes`
--
ALTER TABLE `restaurantes`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `zoologico`
--
ALTER TABLE `zoologico`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bar`
--
ALTER TABLE `bar`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `edificios`
--
ALTER TABLE `edificios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `edificios_historicos`
--
ALTER TABLE `edificios_historicos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `info_animal`
--
ALTER TABLE `info_animal`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `localizacion`
--
ALTER TABLE `localizacion`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lugares`
--
ALTER TABLE `lugares`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `museo`
--
ALTER TABLE `museo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `obra_arte`
--
ALTER TABLE `obra_arte`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `restaurantes`
--
ALTER TABLE `restaurantes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `zoologico`
--
ALTER TABLE `zoologico`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
