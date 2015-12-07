-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-12-2015 a las 08:29:33
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `resoluciones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE IF NOT EXISTS `detalle` (
`IdDetalle` int(11) NOT NULL,
  `IdRes_Emi` int(11) NOT NULL,
  `NomInsEducativa` varchar(100) DEFAULT NULL,
  `LugarInstitucion` varchar(100) DEFAULT NULL,
  `CargoDesempeñar` varchar(100) DEFAULT NULL,
  `MotVacante` varchar(100) DEFAULT NULL,
  `CodPlaza` varchar(100) DEFAULT NULL,
  `VigenEncargo` int(100) DEFAULT NULL,
  `CargoActual` varchar(100) DEFAULT NULL,
  `CargoDesempeniar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`IdDetalle`, `IdRes_Emi`, `NomInsEducativa`, `LugarInstitucion`, `CargoDesempeñar`, `MotVacante`, `CodPlaza`, `VigenEncargo`, `CargoActual`, `CargoDesempeniar`) VALUES
(7, 4, 'IEPM. N° 70602 Churicanchi-caracoto', 'distrito de caracoto- PROVINCIA SAN ROMAN', 'DERECTOR (E) - 40 Horas N° Sec 6', 'Cese profesor Glicerio RAMOS ORDOÑO,RD. N° 1578-200-DUGEL-SR.', 'Cod de plaza 1166413814F3', 1, 'Profesor', NULL),
(8, 31, 'asdasd', 'bkjbkj', NULL, 'kj', 'kjb', 0, 'bkjbkbjkj', 'kjb'),
(9, 32, 'asdasd', 'bkjbkj', NULL, 'kj', 'kjb', 0, 'bkjbkbjkj', 'kjb');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE IF NOT EXISTS `docente` (
`IdDocente` int(11) NOT NULL,
  `NombreReg` varchar(100) NOT NULL,
  `NombreUnEje` varchar(100) NOT NULL,
  `NombreOrInter` varchar(100) NOT NULL,
  `Provincia` varchar(50) NOT NULL,
  `Distrito` varchar(50) NOT NULL,
  `TipoIE` varchar(50) NOT NULL,
  `Gestion` varchar(50) NOT NULL,
  `Zona` varchar(50) NOT NULL,
  `CodModIE` varchar(50) NOT NULL,
  `Clave8` varchar(50) NOT NULL,
  `NivelEducativo` varchar(50) NOT NULL,
  `NivelInsEduca` varchar(50) NOT NULL,
  `CodPlaza` varchar(50) NOT NULL,
  `TipoTrabajador` varchar(50) NOT NULL,
  `SubTipoTrabajador` varchar(50) NOT NULL,
  `Cargo` varchar(50) NOT NULL,
  `SituacionLab` varchar(50) NOT NULL,
  `MotivoVac` varchar(50) NOT NULL,
  `ApellidoPat` varchar(100) NOT NULL,
  `ApellidoMat` varchar(100) NOT NULL,
  `Nombres` varchar(100) NOT NULL,
  `Categoria` varchar(10) NOT NULL,
  `Jornada` varchar(10) NOT NULL,
  `Estado` varchar(15) NOT NULL,
  `CodigoModular` varchar(15) NOT NULL,
  `FechaNac` varchar(15) NOT NULL,
  `Dni` varchar(8) NOT NULL,
  `FechaInicio` varchar(15) NOT NULL,
  `FechaTermino` varchar(15) NOT NULL,
  `TipoRegistro` varchar(50) NOT NULL,
  `Ley` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`IdDocente`, `NombreReg`, `NombreUnEje`, `NombreOrInter`, `Provincia`, `Distrito`, `TipoIE`, `Gestion`, `Zona`, `CodModIE`, `Clave8`, `NivelEducativo`, `NivelInsEduca`, `CodPlaza`, `TipoTrabajador`, `SubTipoTrabajador`, `Cargo`, `SituacionLab`, `MotivoVac`, `ApellidoPat`, `ApellidoMat`, `Nombres`, `Categoria`, `Jornada`, `Estado`, `CodigoModular`, `FechaNac`, `Dni`, `FechaInicio`, `FechaTermino`, `TipoRegistro`, `Ley`) VALUES
(2, 'PUNO', 'EDUCACION SAN ROMAN', 'UGEL SAN ROMÁN\r\n', 'SAN ROMAN', 'JULIACA', 'POLIDOCENTE COMPLETO', 'ESTATAL', 'URBANO / FRONTERA', '0000000', 'DF310005', 'ADMINISTRACION', 'SEDE ADMINISTRATIVA - UGEL SAN ROMAN', '1161111214F2', 'DOCENTE', 'JERARQUICO', 'ESPECIALISTA EN EDUCACION', 'ENCARGADO', 'CESE DE : ADCO SUNCHULLI, LADISLAO, Resolución Nº ', 'CONDORI\r\n', 'CARDENAS\r\n', 'ROSA\r\n', '1', '40', 'ACTIVO', '1002168563', '29/08/1974', '02168563', '12/01/2015', '31/12/2015', 'ORGANICA', 'LEY 29944'),
(3, 'PUNO', 'EDUCACION SAN ROMAN', 'UGEL SAN ROMÁN\r\n', 'SAN ROMAN', 'JULIACA', 'POLIDOCENTE COMPLETO', 'ESTATAL', 'URBANO / FRONTERA', '0000000', 'DF310005', 'ADMINISTRACION', 'SEDE ADMINISTRATIVA - UGEL SAN ROMAN', '1161111214F2', 'DOCENTE', 'JERARQUICO', 'ESPECIALISTA EN EDUCACION', 'ENCARGADO', 'CESE DE : ADCO SUNCHULLI, LADISLAO, Resolución Nº ', 'CONDORI\r\n', 'CARDENAS\r\n', 'ROSA\r\n', '1', '40', 'ACTIVO', '1002168563', '29/08/1974', '02168563', '12/01/2015', '31/12/2015', 'ORGANICA', 'LEY 29944'),
(5, 'PUNO', '123', '123', 'JULIACA', 'SAN ROMAN', 'USUARIO', 'ADMINISTRADOR', 'PUNO', '23423', '23423', 'PRIMARIO', 'SEGUNDARIO', 'DSASDAS', 'CSDBCHJD', 'HJVBHJB', 'BHBJ', 'HBJHBHJ', 'BHJ', 'BHJBHJ', 'BHJB', 'JHB', 'JHB', 'HJB', 'JBJHB', 'JH', 'BHJ', '87987897', 'JHVHJDCV', 'JKHBHJBCHJ', 'GHVDHJCVDS', 'JHBHJV');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item`
--

CREATE TABLE IF NOT EXISTS `item` (
`IdItem` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Tipo` varchar(1000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2515173 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `item`
--

INSERT INTO `item` (`IdItem`, `Nombre`, `Tipo`) VALUES
(2515165, 'Visto', 'texto'),
(2515166, 'Considerando1', 'texto'),
(2515167, 'Considerando21', 'texto'),
(2515168, 'Considerando2.2', 'texto'),
(2515169, 'Considerando3', 'texto'),
(2515170, 'Considerando4', 'texto'),
(2515171, 'Articulo1', 'texto'),
(2515172, 'Articulo2', 'texto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item_resol`
--

CREATE TABLE IF NOT EXISTS `item_resol` (
`IdIntRels` int(11) NOT NULL,
  `IdResolucion` int(11) NOT NULL,
  `IdItem` int(11) NOT NULL,
  `Campo` varchar(1000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `item_resol`
--

INSERT INTO `item_resol` (`IdIntRels`, `IdResolucion`, `IdItem`, `Campo`) VALUES
(12, 5, 2515165, 'Visto, el expediente N° 0099-2013-ME-DREP-DUGEL.SR/ESP.ESP.J. Informe N° 001-2013-ME-DREP-DUGELSR/CPRII, Acta de adjudicacion de plaza en 100 folios utiles y demas actuados sobre encatgatura de puesto yfunciones de cargo directivo'),
(13, 5, 2515166, 'que , es la politica del ministerio publico  y funciones de la unidad de gestion educativa local SAN ROMAN, garantizar la calidad de un servicio educativo eficiente y oportuno para el normal desarrollo de las actividaddes academicas  programadas para el presente año, en las diferentes instituciones educativas del ambito de la unidad de gestion educativa local de san roman.'),
(14, 5, 2515167, 'Que la institucion educativa que se detalla en parte resolutiva de la presente resolucion directoral se encuentra vacante el cargo  directivo por cese funciones de:'),
(15, 5, 2515167, 'el mismo que es necesario encargar las funciones de conformidad con el resultado  obtenido en proceso de evaluacion de encargaturas de personal directivo u jerrarquico  de la UGEL San Roman,  regulado por la directiva N° 046-2012-DREP-DGP, con la finalidad de garantizar el normal desarrollo de las actividades tecnico pedagogicas y administrativas.'),
(16, 5, 2515169, 'Estando a lo conforme y ejecutado por la comision de encargaturas del personal - |, visado por los directores de las areas de gestion administrativas, gestion institucional y asesoria juridica.'),
(17, 5, 2515170, 'De conformidad con las leyes N° 28044,28,411,27444-ED;R.S. N° 203-2002,R.V.M.N° 018-2002-ED.'),
(18, 5, 2515171, 'ENCARGAR EL PUESTO Y FUNCIONES DE LA INSTITUCION:'),
(19, 5, 2515172, 'AFECTESE, al sector 099 gobierno regionales, pliego 458, unidad ejecutora 301 EDUCACAION-SAN ROMAN, Categoria, proghramas presupuestos con enfoque a resultados, programa presupuestal 0090, Producto 3-000385; Actividades 5-003108; funcion 22, divicion funcional 047, grupo educativo especifica el gasto 2,1,1,2,1,1 personal nombrado.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resolemitida`
--

CREATE TABLE IF NOT EXISTS `resolemitida` (
`IdRes_Emi` int(11) NOT NULL,
  `IdDocente` int(11) NOT NULL,
  `IdResolucion` int(11) NOT NULL,
  `CodResolucion` varchar(50) NOT NULL,
  `FechaEmitida` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `resolemitida`
--

INSERT INTO `resolemitida` (`IdRes_Emi`, `IdDocente`, `IdResolucion`, `CodResolucion`, `FechaEmitida`) VALUES
(4, 2, 5, '0138-2013-DUGEL', '2015-12-08'),
(5, 3, 1, 'dsadadadasadadasdasdssasa', '2015-12-03'),
(6, 3, 1, 'dsadadadasadadasdasdssasa', '2015-12-03'),
(7, 3, 1, 'dsadadadasadadasdasdssasa', '2015-12-03'),
(8, 3, 1, 'dsadadadasadadasdasdssasa', '2015-12-03'),
(9, 3, 1, 'dsadadadasadadasdasdssasa', '2015-12-03'),
(10, 3, 1, 'dsadadadasadadasdasdssasa', '2015-12-03'),
(11, 3, 1, 'dsadadadasadadasdasdssasa', '2015-12-03'),
(12, 3, 1, 'dsadadadasadadasdasdssasa', '2015-12-03'),
(13, 3, 1, 'dsadadadasadadasdasdssasa', '2015-12-03'),
(14, 3, 1, 'dsadadadasadadasdasdssasa', '2015-12-03'),
(15, 3, 1, 'dsadadadasadadasdasdssasa', '2015-12-03'),
(16, 3, 1, 'dsadadadasadadasdasdssasa', '2015-12-03'),
(17, 3, 1, 'dsadadadasadadasdasdssasa', '2015-12-03'),
(18, 3, 1, 'dsadadadasadadasdasdssasa', '2015-12-03'),
(19, 3, 1, 'dsadadadasadadasdasdssasa', '2015-12-03'),
(20, 3, 1, 'dsadadadasadadasdasdssasa', '2015-12-03'),
(21, 3, 1, 'dsadadadasadadasdasdssasa', '2015-12-03'),
(22, 3, 1, 'dsadadadasadadasdasdssasa', '2015-12-03'),
(23, 3, 1, 'dsadadadasadadasdasdssasa', '2015-12-03'),
(24, 3, 1, 'dsadadadasadadasdasdssasa', '2015-12-03'),
(25, 3, 1, 'dsadadadasadadasdasdssasa', '2015-12-03'),
(26, 2, 5, '12334rsdf', '2015-12-11'),
(27, 2, 5, '12334rsdf', '2015-12-11'),
(28, 2, 5, '12334rsdf', '2015-12-11'),
(29, 2, 5, '12334rsdf', '2015-12-11'),
(30, 2, 5, '12334rsdf', '2015-12-11'),
(31, 2, 1, '23423', '2015-12-17'),
(32, 2, 5, '23423', '2015-12-17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resolucion`
--

CREATE TABLE IF NOT EXISTS `resolucion` (
`IdResolucion` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `resolucion`
--

INSERT INTO `resolucion` (`IdResolucion`, `Nombre`) VALUES
(1, 'Felicitaciones'),
(5, 'Encargatura');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
`IdUsuario` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `role` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`IdUsuario`, `Nombre`, `Password`, `role`) VALUES
(1, 'Jhean', '123456', 'Administrador');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
 ADD PRIMARY KEY (`IdDetalle`), ADD KEY `resolemitida_detalle_fk` (`IdRes_Emi`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
 ADD PRIMARY KEY (`IdDocente`);

--
-- Indices de la tabla `item`
--
ALTER TABLE `item`
 ADD PRIMARY KEY (`IdItem`);

--
-- Indices de la tabla `item_resol`
--
ALTER TABLE `item_resol`
 ADD PRIMARY KEY (`IdIntRels`), ADD KEY `resolucion_item_resol_fk` (`IdResolucion`), ADD KEY `iten_item_resol_fk` (`IdItem`);

--
-- Indices de la tabla `resolemitida`
--
ALTER TABLE `resolemitida`
 ADD PRIMARY KEY (`IdRes_Emi`), ADD KEY `resolucion_resolemitida_fk` (`IdResolucion`), ADD KEY `docente_resolemitida_fk` (`IdDocente`);

--
-- Indices de la tabla `resolucion`
--
ALTER TABLE `resolucion`
 ADD PRIMARY KEY (`IdResolucion`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
 ADD PRIMARY KEY (`IdUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalle`
--
ALTER TABLE `detalle`
MODIFY `IdDetalle` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
MODIFY `IdDocente` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `item`
--
ALTER TABLE `item`
MODIFY `IdItem` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2515173;
--
-- AUTO_INCREMENT de la tabla `item_resol`
--
ALTER TABLE `item_resol`
MODIFY `IdIntRels` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `resolemitida`
--
ALTER TABLE `resolemitida`
MODIFY `IdRes_Emi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `resolucion`
--
ALTER TABLE `resolucion`
MODIFY `IdResolucion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
MODIFY `IdUsuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle`
--
ALTER TABLE `detalle`
ADD CONSTRAINT `resolemitida_detalle_fk` FOREIGN KEY (`IdRes_Emi`) REFERENCES `resolemitida` (`IdRes_Emi`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `item_resol`
--
ALTER TABLE `item_resol`
ADD CONSTRAINT `iten_item_resol_fk` FOREIGN KEY (`IdItem`) REFERENCES `item` (`IdItem`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `resolucion_item_resol_fk` FOREIGN KEY (`IdResolucion`) REFERENCES `resolucion` (`IdResolucion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `resolemitida`
--
ALTER TABLE `resolemitida`
ADD CONSTRAINT `docente_resolemitida_fk` FOREIGN KEY (`IdDocente`) REFERENCES `docente` (`IdDocente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `resolucion_resolemitida_fk` FOREIGN KEY (`IdResolucion`) REFERENCES `resolucion` (`IdResolucion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
