-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 05-11-2016 a las 01:53:22
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_feria_laboral`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `rut` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `appat` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `apmat` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `celular` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `carrera` varchar(45) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE `cargos` (
  `id_cargo` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `id_oferta` int(11) NOT NULL,
  `descripcion` longtext COLLATE utf8_spanish_ci NOT NULL,
  `carreras` longtext COLLATE utf8_spanish_ci NOT NULL,
  `id_empresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cargos`
--

INSERT INTO `cargos` (`id_cargo`, `nombre`, `id_oferta`, `descripcion`, `carreras`, `id_empresa`) VALUES
(1, 'Analista Contable', 3, 'Apoyar en las tareas del área de contabilidad', 'Titulado Contador general - Contador Auditor', 13),
(2, 'Administrativo de Bodega', 3, 'Recepcionar y coordinar pedidos de bodega', 'Titulado Administrador de empresas o Administrador logístico', 13),
(3, 'Pañolero', 3, 'Encargado de labores de pañol', 'Titulado  Administrativo logístico o Técnico en Logística.', 13),
(4, 'Titulado  Administrativo logístico o Técnico ', 2, 'Ayudar en las labores del área de finanzas', 'Administración de empresas, Contabilidad General, Administración financiera', 13),
(5, 'Desarrollador', 2, 'Desarrollar sistemas para clientes de servicios financieros y/o telecomunicaciones.', 'Informática ', 19),
(6, 'Desarrollador', 3, 'Desarrollar sistemas para clientes de servicios financieros y/o telecomunicaciones.', 'Titulado  Informática. ', 19),
(7, 'Asistente a cliente ', 1, 'La función se orientan al servicio al cliente, además de mantener el orden de la tienda. Asesorar y atender al cliente siguiendo protocolos de servicio.', 'Todas Califican', 3),
(9, 'Cajeros', 1, 'Manejo de dinero y control de pérdidas. Realizar arqueos y cuadraturas de caja.', 'Todas Califican', 3),
(10, 'Reponedor Nocturno', 1, 'Reponer mercadería en las distintas zonas de la tienda.   Reponer mercadería en las distintas zonas de la tienda', 'Todas Califican', 3),
(11, 'Ingeniero informático', 2, 'Apoyo al área de sistemas y TI', 'Ingeniería en Informática', 9),
(12, 'Técnico en redes', 2, 'Apoyo al área de sistemas y TI', 'Administración de redes Computacionales', 9),
(13, 'Relacionador Público', 2, 'Apoyo al área de comunicaciones', 'Relaciones Públicas', 9),
(14, 'Administrador de empresas', 2, 'Apoyo Administrativo', 'Administración de empresas', 9),
(15, 'Analista de estudios oganizacional', 2, 'Apoyo Gerencia de personas', 'Administración de Recursos Humanos', 9),
(16, 'Analista Calidad de Demanda ', 3, 'Maximizar la correcta medición de consumos para la óptima facturación de los cargos de energía y potencia mensual de productos, con tarifa de Demanda, Smartmeters y/o similar.', 'Titulado Ing. en Administración de empresas', 9),
(17, 'Diseñador Gráfico', 2, 'Diseñar requerimientos área Marketing.', 'Diseñador Gráfico', 12),
(18, 'RRPP', 3, 'Dirigir la estrategia de comunicaciones y eventos de la Empresa.', 'Titulado  Relaciones Públicas o Publicidad', 12),
(19, 'EJECUTIVO DE VENTAS', 3, 'Ejecutivos de Ventas Servicios Entel. ', 'Todas Califican', 5),
(20, 'MUCAMA', 3, 'Mucama de Hotel, aseo y ornato habitaciones.', 'Todas Califican', 6),
(21, 'GARZONES', 3, 'Garzón de Restaurant Hotel, excelente disposición y atención al cliente.', 'Todas Califican', 6),
(22, 'RECEPCIONISTA', 3, 'Recepcionar y atender a los huéspedes del hotel en sus necesidades, cumpliendo los estándares y procedimientos de la compañía a nivel nacional e internacional', 'Titulado Administración Hotelera / o Administración de Empresas con Inglés Avanzado.', 10),
(23, 'GARZON', 1, 'Proveer el servicio de montaje y atención de clientes en eventos y outlets  del Hotel, brindando un servicio de excelencia', 'Todas Calific nivel inglés avanzado. ', 10),
(24, 'MUCAMA / ASEADORA', 1, 'Realizar las labores de limpieza y orden de habitaciones y pasillos de estas cumpliendo con los estándares establecidos por la compañía a nivel nacional e internacional para brindar un servicio superior a los huéspedes', 'Todas Califican.', 10),
(25, 'COPERO', 1, 'Mantener el orden e higiene de los materiales e infraestructura de la cocina del Hotel, casino del personal, área de servicio de A&B y salas de basura.', 'Todos Califican', 10),
(26, 'Vendedor Part time', 3, 'Venta de productos de construcción directo a público.', 'Estudiantes de cualquier área', 1),
(27, 'Ingeniero Informático', 2, 'Dar apoyo a los proceso de TI', 'Ing. En Informática', 7),
(28, 'Asistente RRHH', 3, 'Dar Apoyo al área de Desarrollo Organizacional', 'Adm. de RRHH', 7),
(29, 'Practicante Área Administrativa', 2, 'Apoyar el área adnministrativa de la Empresa.', 'Escuela de Administración y Negocios.', 17),
(30, 'ASISTENTE COMERCIAL', 3, 'Apoyar el área comercial de la Empresa.', 'Escuela de Administración y Negocios.', 17),
(31, 'Comercio Exterior', 2, 'Encargado de procesos', 'Comercio Exterior', 11),
(32, 'Contabilidad', 2, 'Analista contables, cobranza.', 'Contabilidad', 11),
(33, 'Crew Operador', 1, 'Atención a público, cajero, cocina, limpieza', 'Todas Califican', 2),
(34, 'Auditor', 2, 'Apoyar gestión en auditoría externa', 'Auditoría', 15),
(35, 'OPERARIOS', 3, 'TRABAJAR EN LAS DISTINTAS ESTACIONES DENTRO DEL LOCAL', 'Todas Califican', 4),
(36, 'ENCARGADO DE LOCAL', 2, 'ADMINISTRACION DE TURNOS DE TRABAJO', 'ADMINITRACION DE EMPRESA', 4),
(37, 'Analista Programador', 2, ' Programación en Php (Codeigniter), Manejo de Base de Datos (Mysql),  Ejecución de pruebas unitarias y de integración.', 'Ingeniería en informática  / Analista Programador', 20),
(38, 'Diseñador Gráfico', 2, 'Diseño web, Diseñar ilustraciones, avisos y apoyo gráficos en general, Manejo de software de diseño como: Adobe illustrator, Photoshop, otros', 'Diseñador Gráfico', 20),
(39, 'Marketing / RRPP', 2, ' Dirigir la estrategia de comunicaciones, Manejo de redes sociales,  Campañas de marketing', 'Relaciones Públicas Mención Marketing. / Publicidad.', 20),
(40, 'Audiovisual', 2, 'Creación y desarrollo de contenidos audiovisuales y animaciones.', 'Técnico Audiovisual, Comunicación Audiovisual,  Animación Digital.', 20),
(41, 'Analista Contable', 3, 'Labores de contabilidad, facturación y administrativas', 'Contador, Contador General o Técnico, Administrativo', 18),
(42, 'Secretaria', 3, 'Labores secretariales como atención central telefónica, correspondencia, archivo, coordinación reuniones, fotocopiado, etc.', 'Titulado Escuela  Administración y Negocios.', 18),
(43, 'Ejecutiva', 3, 'Coordinación de viajes. Tareas Administrativas.', 'Titulado  Escuela  Administración y Negocios.', 18),
(44, 'Vendedor Promotor', 3, 'Promocionar y aumentar la venta de los productos de la marca, dar cumplimiento a las metas solicitadas, mantener orden y stock de productos.', 'Titulado Técnico en Administración de empresas o Ingeniero.', 18),
(45, 'Bodeguero', 3, 'Control de existencia, inventario, despacho, carga y descarga de Productos. Prestar apoyo a distintas área de la bodega', 'Técnico en Logística.', 18),
(46, 'Administrativo', 3, 'Responsable de realizar tareas administrativas y de gestión básica, recibiendo, registrando y Transmitiendo información y documentación.', 'Escuela de Administración y Negocios.', 18),
(47, 'Garzón', 3, 'Atender al cliente ofreciendo y entregando un servicio del área de AA&BB', 'Todas Califican.', 8),
(48, 'Anfitrión de tragamonedas', 3, 'Orientar y ofrecer al cliente el servicio de transbank y solucionar requerimientos mínimos de las máquinas de juego', 'Todas Califican.', 8),
(49, 'Asistente administrativo Hotel', 3, 'Administrar los servicios requeridos en el área de hospedaje y supervisión del personal a cargo', 'Titulado de Tec. o Ing. en Administración de Empresas.', 8),
(50, 'Práctica RRHH', 2, 'Apoyar en los trámites administrativos del equipo de Capital humano, principalmente en planificación de turnos y D.O', 'Administración de RRHH', 8),
(51, 'Asistente Contable', 3, 'Digitación de Facturas o documentos contables en general', 'Titulado de Tec. o Ing. en Administración de Empresas.', 14),
(52, 'Técnico en Telecomunicaciones', 3, 'Soporte Informático', 'Titulado de Adm. De redes computacionales', 14),
(53, 'Ejecutivos de Venta', 3, 'Venta de Servicios Bancarios, atención clientes y empresas.', 'Titulado preferentemente de la Escuela de Administración y Negocios.', 16),
(54, 'Administrativo de recepción de bodega.', 3, 'Recepcionar mercadería y su documentación tributaria, ingresar oportunamente a sistema Medisyn, disponibilizar la mercadería para su correcto almacenamiento, control documentario.', 'Tecnico en logística.', 22),
(55, 'Recepcionista de consultas médicas.', 3, 'Recibir al paciente, emitir órdenes de atención y orientar en materias de su competencia.', 'Técnico en Administración de Empresas.', 22),
(56, 'Diseñador Gráfico/industrial ', 2, 'Orientación a producto', 'Diseñador industrial', 21),
(57, 'Informática ', 2, 'Programación en PHP, aplicaciones móviles. ITO, bases de datos, redes ', 'Electrónica, Informática ', 21),
(58, 'RRPP', 2, 'Marketing, canales de distribución, ventas, promoción', 'Negocios', 21),
(59, 'Atención Publico Temporada de fruta', 3, 'Dar apoyo a las necesidades de los departamentos ZEAL y Fruta, en la temporada de verano', 'Comercio Exterior', 7),
(60, 'Recepcionista', 3, 'Recepcionar y atender a los huéspedes del hotel en sus necesidades, cumpliendo los estándares y procedimientos de la compañía a nivel nacional e internacional', 'Titulado Administración Hotelera / o Administración de Empresas con Inglés Avanzado.', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id_empresa` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id_empresa`, `nombre`) VALUES
(1, 'SODIMAC'),
(2, 'MC DONALD'),
(3, 'CASAIDEAS'),
(4, 'DOGGIS'),
(5, 'ENTEL'),
(6, 'HOTEL OHIGGINS'),
(7, 'TPS'),
(8, 'ENJOY'),
(9, 'CHILQUINTA'),
(10, 'RADISSON'),
(11, 'ULTRAMAR'),
(12, 'DIB'),
(13, 'DEMARIA'),
(14, 'PROPAL'),
(15, 'BAKERTILLY'),
(16, 'SANTANDER'),
(17, 'TECNORED'),
(18, 'MANPOWER'),
(19, 'ACCENTURE'),
(20, 'INFORED'),
(21, 'INNEVYCS'),
(22, 'CLINICA CIUDAD DEL MAR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrevistas`
--

CREATE TABLE `entrevistas` (
  `id_entrevista` int(11) NOT NULL,
  `rut` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `id_cargo` int(11) NOT NULL,
  `id_horario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `id_horarios` int(11) NOT NULL,
  `horario` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `activo_horario` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`id_horarios`, `horario`, `id_empresa`, `activo_horario`) VALUES
(1, '09:00', 2, 1),
(2, '09:15', 2, 1),
(3, '09:30', 2, 1),
(4, '09:45', 2, 1),
(5, '10:00', 2, 1),
(6, '10:15', 2, 1),
(7, '10:30', 2, 1),
(8, '10:45', 2, 1),
(9, '11:00', 2, 1),
(10, '11:15', 2, 1),
(11, '11:30', 2, 1),
(12, '11:45', 2, 1),
(13, '12:00', 2, 1),
(14, '12:15', 2, 1),
(15, '12:30', 2, 1),
(16, '12:45', 2, 1),
(17, '13:00', 2, 1),
(18, '09:00', 1, 1),
(19, '09:15', 1, 1),
(20, '09:30', 1, 1),
(21, '09:45', 1, 1),
(22, '10:00', 1, 1),
(23, '10:15', 1, 1),
(24, '10:30', 1, 1),
(25, '10:45', 1, 1),
(26, '11:00', 1, 1),
(27, '11:15', 1, 1),
(28, '11:30', 1, 1),
(29, '11:45', 1, 1),
(30, '12:00', 1, 1),
(31, '12:15', 1, 1),
(32, '12:30', 1, 1),
(33, '12:45', 1, 1),
(34, '13:00', 1, 1),
(35, '09:00', 3, 1),
(36, '09:15', 3, 1),
(37, '09:30', 3, 1),
(38, '09:45', 3, 1),
(39, '10:00', 3, 1),
(40, '10:15', 3, 1),
(41, '10:30', 3, 1),
(42, '10:45', 3, 1),
(43, '11:00', 3, 1),
(44, '11:15', 3, 1),
(45, '11:30', 3, 1),
(46, '11:45', 3, 1),
(47, '12:00', 3, 1),
(48, '12:15', 3, 1),
(49, '12:30', 3, 1),
(50, '12:45', 3, 1),
(51, '13:00', 3, 1),
(52, '09:00', 4, 1),
(53, '09:15', 4, 1),
(54, '09:30', 4, 1),
(55, '09:45', 4, 1),
(56, '10:00', 4, 1),
(57, '10:15', 4, 1),
(58, '10:30', 4, 1),
(59, '10:45', 4, 1),
(60, '11:00', 4, 1),
(61, '11:15', 4, 1),
(62, '11:30', 4, 1),
(63, '11:45', 4, 1),
(64, '12:00', 4, 1),
(65, '12:15', 4, 1),
(66, '12:30', 4, 1),
(67, '12:45', 4, 1),
(68, '13:00', 4, 1),
(69, '09:00', 5, 1),
(70, '09:15', 5, 1),
(71, '09:30', 5, 1),
(72, '09:45', 5, 1),
(73, '10:00', 5, 1),
(74, '10:15', 5, 1),
(75, '10:30', 5, 1),
(76, '10:45', 5, 1),
(77, '11:00', 5, 1),
(78, '11:15', 5, 1),
(79, '11:30', 5, 1),
(80, '11:45', 5, 1),
(81, '12:00', 5, 1),
(82, '12:15', 5, 1),
(83, '12:30', 5, 1),
(84, '12:45', 5, 1),
(85, '13:00', 5, 1),
(86, '09:00', 6, 1),
(87, '09:15', 6, 1),
(88, '09:30', 6, 1),
(89, '09:45', 6, 1),
(90, '10:00', 6, 1),
(91, '10:15', 6, 1),
(92, '10:30', 6, 1),
(93, '10:45', 6, 1),
(94, '11:00', 6, 1),
(95, '11:15', 6, 1),
(96, '11:30', 6, 1),
(97, '11:45', 6, 1),
(98, '12:00', 6, 1),
(99, '12:15', 6, 1),
(100, '12:30', 6, 1),
(101, '12:45', 6, 1),
(102, '13:00', 6, 1),
(103, '14:00', 7, 1),
(104, '14:20', 7, 1),
(105, '14:40', 7, 1),
(106, '15:00', 7, 1),
(107, '15:20', 7, 1),
(108, '15:40', 7, 1),
(109, '16:00', 7, 1),
(110, '16:20', 7, 1),
(111, '16:40', 7, 1),
(112, '17:00', 7, 1),
(113, '17:20', 7, 1),
(114, '17:40', 7, 1),
(115, '18:00', 7, 1),
(116, '14:00', 8, 1),
(117, '14:20', 8, 1),
(118, '14:40', 8, 1),
(119, '15:00', 8, 1),
(120, '15:20', 8, 1),
(121, '15:40', 8, 1),
(122, '16:00', 8, 1),
(123, '16:20', 8, 1),
(124, '16:40', 8, 1),
(125, '17:00', 8, 1),
(126, '17:20', 8, 1),
(127, '17:40', 8, 1),
(128, '18:00', 8, 1),
(129, '14:00', 9, 1),
(130, '14:20', 9, 1),
(131, '14:40', 9, 1),
(132, '15:00', 9, 1),
(133, '15:20', 9, 1),
(134, '15:40', 9, 1),
(135, '16:00', 9, 1),
(136, '16:20', 9, 1),
(137, '16:40', 9, 1),
(138, '17:00', 9, 1),
(139, '17:20', 9, 1),
(140, '17:40', 9, 1),
(141, '18:00', 9, 1),
(142, '14:00', 10, 1),
(143, '14:20', 10, 1),
(144, '14:40', 10, 1),
(145, '15:00', 10, 1),
(146, '15:20', 10, 1),
(147, '15:40', 10, 1),
(148, '16:00', 10, 1),
(149, '16:20', 10, 1),
(150, '16:40', 10, 1),
(151, '17:00', 10, 1),
(152, '17:20', 10, 1),
(153, '17:40', 10, 1),
(154, '18:00', 10, 1),
(155, '14:00', 11, 1),
(156, '14:20', 11, 1),
(157, '14:40', 11, 1),
(158, '15:00', 11, 1),
(159, '15:20', 11, 1),
(160, '15:40', 11, 1),
(161, '16:00', 11, 1),
(162, '16:20', 11, 1),
(163, '16:40', 11, 1),
(164, '17:00', 11, 1),
(165, '17:20', 11, 1),
(166, '17:40', 11, 1),
(167, '18:00', 11, 1),
(168, '14:00', 12, 1),
(169, '14:20', 12, 1),
(170, '14:40', 12, 1),
(171, '15:00', 12, 1),
(172, '15:20', 12, 1),
(173, '15:40', 12, 1),
(174, '16:00', 12, 1),
(175, '16:20', 12, 1),
(176, '16:40', 12, 1),
(177, '17:00', 12, 1),
(178, '17:20', 12, 1),
(179, '17:40', 12, 1),
(180, '18:00', 12, 1),
(181, '14:00', 13, 1),
(182, '14:20', 13, 1),
(183, '14:40', 13, 1),
(184, '15:00', 13, 1),
(185, '15:20', 13, 1),
(186, '15:40', 13, 1),
(187, '16:00', 13, 1),
(188, '16:20', 13, 1),
(189, '16:40', 13, 1),
(190, '17:00', 13, 1),
(191, '17:20', 13, 1),
(192, '17:40', 13, 1),
(193, '18:00', 13, 1),
(194, '14:00', 14, 1),
(195, '14:20', 14, 1),
(196, '14:40', 14, 1),
(197, '15:00', 14, 1),
(198, '15:20', 14, 1),
(199, '15:40', 14, 1),
(200, '16:00', 14, 1),
(201, '16:20', 14, 1),
(202, '16:40', 14, 1),
(203, '17:00', 14, 1),
(204, '17:20', 14, 1),
(205, '17:40', 14, 1),
(206, '18:00', 14, 1),
(207, '14:00', 15, 1),
(208, '14:20', 15, 1),
(209, '14:40', 15, 1),
(210, '15:00', 15, 1),
(211, '15:20', 15, 1),
(212, '15:40', 15, 1),
(213, '16:00', 15, 1),
(214, '16:20', 15, 1),
(215, '16:40', 15, 1),
(216, '17:00', 15, 1),
(217, '17:20', 15, 1),
(218, '17:40', 15, 1),
(219, '18:00', 15, 1),
(220, '14:00', 16, 1),
(221, '14:20', 16, 1),
(222, '14:40', 16, 1),
(223, '15:00', 16, 1),
(224, '15:20', 16, 1),
(225, '15:40', 16, 1),
(226, '16:00', 16, 1),
(227, '16:20', 16, 1),
(228, '16:40', 16, 1),
(229, '17:00', 16, 1),
(230, '17:20', 16, 1),
(231, '17:40', 16, 1),
(232, '18:00', 16, 1),
(233, '14:00', 17, 1),
(234, '14:20', 17, 1),
(235, '14:40', 17, 1),
(236, '15:00', 17, 1),
(237, '15:20', 17, 1),
(238, '15:40', 17, 1),
(239, '16:00', 17, 1),
(240, '16:20', 17, 1),
(241, '16:40', 17, 1),
(242, '17:00', 17, 1),
(243, '17:20', 17, 1),
(244, '17:40', 17, 1),
(245, '18:00', 17, 1),
(246, '14:00', 18, 1),
(247, '14:20', 18, 1),
(248, '14:40', 18, 1),
(249, '15:00', 18, 1),
(250, '15:20', 18, 1),
(251, '15:40', 18, 1),
(252, '16:00', 18, 1),
(253, '16:20', 18, 1),
(254, '16:40', 18, 1),
(255, '17:00', 18, 1),
(256, '17:20', 18, 1),
(257, '17:40', 18, 1),
(258, '18:00', 18, 1),
(259, '14:00', 19, 1),
(260, '14:20', 19, 1),
(261, '14:40', 19, 1),
(262, '15:00', 19, 1),
(263, '15:20', 19, 1),
(264, '15:40', 19, 1),
(265, '16:00', 19, 1),
(266, '16:20', 19, 1),
(267, '16:40', 19, 1),
(268, '17:00', 19, 1),
(269, '17:20', 19, 1),
(270, '17:40', 19, 1),
(271, '18:00', 19, 1),
(272, '14:00', 20, 1),
(273, '14:20', 20, 1),
(274, '14:40', 20, 1),
(275, '15:00', 20, 1),
(276, '15:20', 20, 1),
(277, '15:40', 20, 1),
(278, '16:00', 20, 1),
(279, '16:20', 20, 1),
(280, '16:40', 20, 1),
(281, '17:00', 20, 1),
(282, '17:20', 20, 1),
(283, '17:40', 20, 1),
(284, '18:00', 20, 1),
(285, '14:00', 21, 1),
(286, '14:20', 21, 1),
(287, '14:40', 21, 1),
(288, '15:00', 21, 1),
(289, '15:20', 21, 1),
(290, '15:40', 21, 1),
(291, '16:00', 21, 1),
(292, '16:20', 21, 1),
(293, '16:40', 21, 1),
(294, '17:00', 21, 1),
(295, '17:20', 21, 1),
(296, '17:40', 21, 1),
(297, '18:00', 21, 1),
(298, '14:00', 22, 1),
(299, '14:20', 22, 1),
(300, '14:40', 22, 1),
(301, '15:00', 22, 1),
(302, '15:20', 22, 1),
(303, '15:40', 22, 1),
(304, '16:00', 22, 1),
(305, '16:20', 22, 1),
(306, '16:40', 22, 1),
(307, '17:00', 22, 1),
(308, '17:20', 22, 1),
(309, '17:40', 22, 1),
(310, '18:00', 22, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `nickname` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `clave` longtext COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`nickname`, `clave`) VALUES
('paul_baci', '8d8d8fa79967bff3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ofertas`
--

CREATE TABLE `ofertas` (
  `id_oferta` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ofertas`
--

INSERT INTO `ofertas` (`id_oferta`, `nombre`) VALUES
(1, 'PART-TIME'),
(2, 'PRACTICA'),
(3, 'LABORAL');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`rut`);

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id_cargo`),
  ADD KEY `fk_cargos_empresa_idx` (`id_empresa`),
  ADD KEY `fk_cargos_ofertas_idx` (`id_oferta`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id_empresa`);

--
-- Indices de la tabla `entrevistas`
--
ALTER TABLE `entrevistas`
  ADD PRIMARY KEY (`id_entrevista`),
  ADD KEY `fk_entrevistas_alumnos_idx` (`rut`),
  ADD KEY `fk_entrevistas_cargo_idx` (`id_cargo`),
  ADD KEY `fk_entrevistas_horario_idx` (`id_horario`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id_horarios`),
  ADD KEY `fk_horarios_empresa_idx` (`id_empresa`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`nickname`);

--
-- Indices de la tabla `ofertas`
--
ALTER TABLE `ofertas`
  ADD PRIMARY KEY (`id_oferta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id_cargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id_empresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `entrevistas`
--
ALTER TABLE `entrevistas`
  MODIFY `id_entrevista` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id_horarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;
--
-- AUTO_INCREMENT de la tabla `ofertas`
--
ALTER TABLE `ofertas`
  MODIFY `id_oferta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD CONSTRAINT `fk_cargos_empresa` FOREIGN KEY (`id_empresa`) REFERENCES `empresas` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cargos_ofertas` FOREIGN KEY (`id_oferta`) REFERENCES `ofertas` (`id_oferta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `entrevistas`
--
ALTER TABLE `entrevistas`
  ADD CONSTRAINT `fk_entrevistas_alumnos` FOREIGN KEY (`rut`) REFERENCES `alumnos` (`rut`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_entrevistas_cargo` FOREIGN KEY (`id_cargo`) REFERENCES `cargos` (`id_cargo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_entrevistas_horario` FOREIGN KEY (`id_horario`) REFERENCES `horarios` (`id_horarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD CONSTRAINT `fk_horarios_empresa` FOREIGN KEY (`id_empresa`) REFERENCES `empresas` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
