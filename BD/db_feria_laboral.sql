-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-09-2017 a las 03:17:48
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_feria_laboral`
--
CREATE DATABASE IF NOT EXISTS `db_feria_laboral` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_feria_laboral`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `rut` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `appat` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
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
  `nombre` varchar(65) COLLATE utf8_spanish_ci NOT NULL,
  `id_oferta` int(11) NOT NULL,
  `descripcion` longtext COLLATE utf8_spanish_ci NOT NULL,
  `carreras` longtext COLLATE utf8_spanish_ci NOT NULL,
  `id_empresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cargos`
--

INSERT INTO `cargos` (`id_cargo`, `nombre`, `id_oferta`, `descripcion`, `carreras`, `id_empresa`) VALUES
(61, 'Atención público', 4, 'Área administrativa, atención publico apoyo logística temporada de fruta.', 'Comercio exterior, técnico en gestión logística, ingeniería en comercio exterior', 1),
(62, 'Analista programador', 5, 'Área administrativa, apoyo en programación computacional', 'Analista programador computacional, ingeniería en conectividad y redes, ingeniería en informatica', 1),
(63, 'Practicante  TI', 1, 'Área administrativa', 'Adm. De redes computacionales, Analista programador computacional, Ingeniería en conectividad y redes, Ingeniería en informática.', 1),
(64, 'Técnico o ingeniero en administración de empresa', 2, 'Cobranza, facturación y clasificación de documentos.', 'Técnico o Ing. En Administración de empresa', 2),
(65, 'Diseñador Industrial', 2, 'Desarrollo de diseño, gestión productiva y planimetrías de juegos infantiles y mobiliario urbano.', 'Técnico o Ing. En Administración de empresa', 2),
(66, 'Ejecutivos de call center ', 1, 'Encargados de recibir llamados telefónicos a clientes tanto en el área de soporte técnico y comercial', 'Enseñanza media completa , las carreras afines es indiferente', 3),
(67, 'Asistente comercial ', 5, 'Área comercial, gestionar nuevos negocios, colaboración continua en todos los procesos de la empresa. ', 'Administración de Empresas Mención Marketing\nComercio Exterior\nIngeniería en Comercio Exterior\nIngeniería en Administración\nTécnico en Gestión Logística', 4),
(69, 'Operarios\r\n', 1, 'Atención a Público\r\n', 'Todas\r\n', 5),
(70, 'Operarios\r\n', 1, 'Operador multifuncional\r\n', 'Todas\r\n', 6),
(71, 'Practicante Área Tecnología\r\n', 2, 'Programar y desarrollar sistemas, disponibilidad horario fulltime.\r\n', 'Ing. Informática \r\n', 7),
(72, 'Ejecutivo Programa Trainee\r\n', 1, 'proyectos informáticos de gran envergadura alineados a industrias de Servicios Financieros (Banca, Seguros, entre otros) y Telecomunicaciones (Telco), aprendiendo alguno de los siguientes lenguajes de programación: Cobol, .NET, Java, Visual Basic, entre otros. Requisito conocimiento previo en programación.\r\n', 'Ing. Informática \r\n', 7),
(73, 'Analista \r\n', 5, 'Desarrollo de proyectos informáticos, se solicita 1 año de experiencia en Java u Oracle.\r\n', 'Ing. Informática \r\n', 7),
(74, 'Encargado Administrativo\r\n', 4, 'Para nuestras diferentes empresas em periodos de verano EST\r\n', '"Egresados o Titulados de Administración de Empresas Mención Marketing, Administración de Recursos Humanos, Administración Financiera, Ingeniería en Administración de Recursos Humanos, Ingeniería en Administración, Ingeniería en Marketing.\r\n"\r\n', 8),
(75, 'Informatico\r\n', 5, 'Funciones varias de soporte\r\n', 'Ingeniero, técnico informatico o carreras a fín\r\n', 8),
(76, 'Practica de auditoria\r\n', 2, 'Area auditoria\r\n', 'Auditoría\r\n', 9),
(77, 'Practica de auditoria\r\n', 2, 'Area administración\r\n', 'Contador General\r\n', 9),
(78, 'Practica en Administración de Empresas.\r\n', 2, 'Apoyo en área administrativa, contratos, remuneraciones, costos, otros.\r\n', 'Ing. o Técnico en Administración de Empresas Mención Marketing, Administración de Recursos Humanos, \r\n', 10),
(79, 'Apoyo a Gerente General\r\n', 2, 'Administrar operaciones logísticas y equipo de trabajo asociado, optimizando recursos involucrados, de acuerdo a objetivos de la organización.\r\n', 'Técnico en Gestión Logística \r\n', 11),
(80, 'Apoyo a Gerente General ', 3, 'Administrar operaciones logísticas y equipo de trabajo asociado, optimizando recursos involucrados, de acuerdo a objetivos de la organización ', 'Técnico en Gestión Logística ', 11),
(81, 'Analista Customer Success', 2, '"Atención usuarios canal interno. \r\nGeneración de informes.\r\nLevantamiento de información.\r\nSeguimiento usuarios críticos definidos por la compañía.\r\n"', '"Relaciones Públicas mención Marketing\r\nAdministración Financiera\r\nIngeniería en Administración\r\nIngeniería en Administración de Recursos Humanos "\r\n', 11),
(82, 'Analista Customer Success', 1, '"Atención usuarios canal interno. \r\nGeneración de informes.\r\nLevantamiento de información.\r\nSeguimiento usuarios críticos definidos por la compañía.\r\n"', '"Relaciones Públicas mención Marketing\r\nAdministración Financiera\r\nIngeniería en Administración\r\nIngeniería en Administración de Recursos Humanos "\r\n', 11),
(83, 'Jefe Customer Success', 3, '"Liderar, entender, controlar, iterar y maximizar conversión de Lead a usuario. \r\nDesarrollo de material de apoyo acorde para la activación de usuarios. \r\nAnálisis e interacción de usuarios/aplicación para generar propuestas de mejoras. \r\nDesarrollo plan para levantamiento y seguimiento de fallas. \r\nApoyo, control y definición de estrategias comerciales."\r\n', 'Ingeniería en Administración, Ingeniería en Administración de Recursos Humanos, Administración de Empresas Mención Marketing.\r\n', 11),
(84, 'Analista programador', 2, 'Conocimientos en javascript y nociones avanzadas de programación web', 'Analista Programador Computacional, Ingeniería en informatica', 11),
(85, 'Analista programador', 1, 'Conocimientos en javascript y nociones avanzadas de programación web', 'Analista Programador Computacional, Ingeniería en informatica', 11),
(86, 'Operarios', 3, 'Tecnicos o profesional para trabajo en operaciones internas.', 'Escuela de Administración y Negocios e Informática y Telecomunicaciones.', 12),
(87, 'Practicante', 2, 'Apoyo en área administrativa.', 'Área administrativa, informática y Recursos Humanos.', 12),
(88, 'Soporte técnico', 2, 'Atender solicitudes técnicas, soporte telefónico y administración redes ', 'Ingeniería en Conectividad y Redes, Administración de Redes Computacionales.', 13),
(89, 'Administrador Web', 2, 'Administrar pagina web, diseño imagen corporativa.', 'Diseño Gráfico, Publicidad.', 13),
(90, 'Atencion cliente', 3, 'Mantención de cuentas clientes, responder teléfono.', 'Técnico en Administración de Empresas Mención Marketing, Administración de Recursos Humanos.', 13),
(91, 'Diseñadores Gráficos o Industriales', 2, 'Diseño de piezas gráficas, prototipos funcionales, material gráfico en soportes análogos y/o digitales.', 'Diseño Gráfico o Industrial.', 14),
(92, 'Diseñadores Gráficos o Industriales', 3, 'Diseño de piezas gráficas, prototipos funcionales, material gráfico en soportes análogos y/o digitales.', 'Diseño Gráfico o Industrial.', 14),
(93, 'Atencion cliente', 1, 'Atención y operación ventas', 'Todas', 15),
(94, 'Atencion cliente', 1, 'Anfitrión, garzón, crupier, otros.', 'Todas', 16),
(95, 'Operarios', 1, 'Atención cliente, reponedor.', 'Todas', 17),
(96, 'Operarios', 3, 'Operaria de máquinas de costuras, máquinas para ensamblar productos', 'Experiencia en el área de costura manual, ensamble automático', 18),
(97, 'Bodeguero', 3, 'Mantenimiento de bodega de productos, persona ordenada, manejo de computación nivel usuario.', 'Conocimientos en manejo de bodega.', 18),
(98, 'Ordenadora', 3, 'Orden de productos.', 'Persona con mucha energía y ganas de trabajar', 18),
(99, 'VENDEDORA', 3, 'Venta de productos línea mujer, atención a clientes, ordenada, responsable', 'Ventas, administración, marketing, etc.', 18),
(100, 'CONTADOR GENERAL Y/O CONTADOR AUDITOR', 3, 'Realizar flujos de caja de los clientes y dar seguimiento a este, control de nómina de pagos , revisión de rendiciones de caja. proceso de conciliación bancaria, análisis de cuentas, revisión de libros contables, preparación de balances y estados financieros , otros.', 'Contabilidad General Mención Legislación Tributaria / Auditoría.', 19),
(101, 'CVendedor', 3, 'Atender y asesorar clientes entregando información de productos y/o materiales, facilitando la elección de compra, participando además, en el carguío y despacho de la mercadería, administrando el área asignada, teniendo especial preocupación de mantener la verticalidad y rotulación (código / cantidad) de las mercaderías en los altillos.', 'Todas', 20),
(102, 'Cajero', 3, 'Recibir el pago de productos y/o servicios de los clientes, tanto en cajas como  en módulo de auto atención (SCO), entregando una atención de calidad y cumpliendo con las conductas críticas y procedimientos del área establecidos por la empresa.', 'Todas', 20),
(103, 'Analista/ Desarrollador ', 3, 'Definir y crear soluciones técnicas en la tecnología del proyecto. Identificar y construir pruebas de desarrollo que cubran el comportamiento requerido de los componentes técnicos. Comunicar el diseño de forma que los otros miembros del equipo lo comprendan.', 'Ing. En informática o Analista programador computacional', 21),
(104, 'Administrador de Sistemas', 3, 'Implementar, configurar, mantener, monitorizar, documentar y asegurar el correcto funcionamiento de un sistema informático o algún aspecto de éste. Garantizar el tiempo de actividad, rendimiento, uso de recursos y la seguridad de los servidores que administra de forma dinámica.', 'Administración de Redes Computacionales o Ingeniería en conectividad y redes', 21),
(105, 'Quality Assurance', 3, 'Diseño y ejecución integral de pruebas. Medición sistemática, comparación con estándares y seguimiento de los procesos.  Prevenir errores durante el proceso de desarrollo del producto.', 'Ing. En informática o Analista programador computacional', 21),
(106, 'Técnico Instalación y Mantención Domiciliaria VTR.', 3, 'Empresa contratista de VTR, busca profesionales egresados o titulados para la instalación y mantención domiciliaria de servicios VTR: Telefonía, Tv Cable e internet.', 'Administración de Redes Computacionales, Técnico en Telecomunicaciones, Analista Programador Computacional, Ingeniería en Conectividad y Redes, Ingeniería en Informática.', 22),
(107, 'ASESOR DE COMPRAS', 1, 'Encargado de reposición y orden de los productos de un departamento de venta específico. Atención y asesoría a clientes.', 'Todas', 23),
(108, 'Cajero', 1, 'Encargado de atención de clientes y transacciones en el sector de cajas.', 'Todas', 23),
(109, 'VENDEDOR ESPECIALISTA', 1, 'Encargado de ventas en departamentos específicos de la tienda. Atención personalizada a clientes', 'Todas', 23),
(110, 'GARZONES', 1, 'TRABAJO EN RESTAURANTE', 'Todas', 24),
(111, 'MUCAMAS', 1, 'TRABAJO EN HABITACIONES', 'Todas', 24),
(112, 'Practicante en área administrativa.', 2, 'Practicante para apoyar labores administrativas, gestión de eventos, atención público entre otros.', 'Técnico o Ingeniería de Carreras en Administración de Empresas Mención Marketing o  Recursos Humanos.', 24),
(113, 'Practicante de apoyo en área de Recursos Humanos. ', 2, 'Gestión de personas, área administrativa.', 'Técnico e Ingenieros en Administración de empresas en RRHH.', 25),
(114, 'Practicante apoyo área Visual.', 2, 'Apoyo en área de Diseño, decoración, visual, entre otras funciones.', 'Diseño de ambientes o Diseño de Vestuario.', 25),
(115, 'Practicante Administración de Redes.', 2, 'Apoyo en área operativa y computacional, desarrollo de programación entre otros.', 'Administración de Redes Computacionales', 25),
(116, 'Practicante en área Publicidad.', 2, 'Apoyo en área operativa de marketing y comunicaciones.', 'Publicidad y Relaciones Públicas Mención Marketing.', 25),
(117, 'Vendedor, Reponedor, Cajero, Auxiliar Bodega.', 1, '"Trabajo de 20 horas semanales en Viña del Mar, Belloto,Valparaiso o Concón, de acuerdo a postulación de estudiante."', 'Todas', 25);

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
(1, 'TPS'),
(2, 'UNIVERSO'),
(3, 'ATENTO - MOVISTAR'),
(4, 'REAL CAPITAL'),
(5, 'MC DONALD''S'),
(6, 'DOGGIS'),
(7, 'ACCENTURE'),
(8, 'MANPOWER'),
(9, 'BAKERTILLY'),
(10, 'MERCADITO ALEGRE'),
(11, 'ORGANIZAME\r\n'),
(12, 'CHILQUINTA'),
(13, 'STELSECURE'),
(14, 'IMECEX'),
(15, 'CASA IDEAS'),
(16, 'ENJOY'),
(17, 'UNIMARC'),
(18, 'LIFELON'),
(19, 'ESTUDIO CONTABLE JBM Y CIA.'),
(20, 'SODIMAC'),
(21, 'ZEKE'),
(22, 'NIELSEN'),
(23, 'RIPLEY'),
(24, 'HOTEL CONFERENCE TOWN'),
(25, 'JUMBO');

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
(311, '9:20', 1, 1),
(312, '9:30', 1, 1),
(313, '9:40', 1, 1),
(314, '9:50', 1, 1),
(315, '10:00', 1, 1),
(316, '10:10', 1, 1),
(317, '10:20', 1, 1),
(318, '10:30', 1, 1),
(319, '10:40', 1, 1),
(320, '10:50', 1, 1),
(321, '11:00', 1, 1),
(322, '11:10', 1, 1),
(323, '11:20', 1, 1),
(324, '11:30', 1, 1),
(325, '11:40', 1, 1),
(326, '11:50', 1, 1),
(327, '12:00', 1, 1),
(328, '12:10', 1, 1),
(329, '12:20', 1, 1),
(330, '12:30', 1, 1),
(331, '12:40', 1, 1),
(332, '12:50', 1, 1),
(333, '13:00', 1, 1),
(334, '13:10', 1, 1),
(335, '13:20', 1, 1),
(336, '13:30', 1, 1),
(337, '13:40', 1, 1),
(338, '13:50', 1, 1),
(339, '14:00', 1, 1),
(340, '9:20', 2, 1),
(341, '9:30', 2, 1),
(342, '9:40', 2, 1),
(343, '9:40', 2, 1),
(344, '9:50', 2, 1),
(345, '10:00', 2, 1),
(346, '10:10', 2, 1),
(347, '10:20', 2, 1),
(348, '10:30', 2, 1),
(349, '10:40', 2, 1),
(350, '10:50', 2, 1),
(351, '11:00', 2, 1),
(352, '11:10', 2, 1),
(353, '11:20', 2, 1),
(354, '11:30', 2, 1),
(355, '11:40', 2, 1),
(356, '11:50', 2, 1),
(357, '12:00', 2, 1),
(358, '12:10', 2, 1),
(359, '12:20', 2, 1),
(360, '12:30', 2, 1),
(361, '12:40', 2, 1),
(362, '12:50', 2, 1),
(363, '13:00', 2, 1),
(364, '13:10', 2, 1),
(365, '13:20', 2, 1),
(366, '13:30', 2, 1),
(367, '13:40', 2, 1),
(368, '13:50', 2, 1),
(369, '14:00', 2, 1),
(370, '15:20', 3, 1),
(371, '15:30', 3, 1),
(372, '15:40', 3, 1),
(373, '15:50', 3, 1),
(374, '16:00', 3, 1),
(375, '16:10', 3, 1),
(376, '16:20', 3, 1),
(377, '16:30', 3, 1),
(378, '16:40', 3, 1),
(379, '16:50', 3, 1),
(380, '17:00', 3, 1),
(381, '17:10', 3, 1),
(382, '17:20', 3, 1),
(383, '17:30', 3, 1),
(384, '17:40', 3, 1),
(385, '17:50', 3, 1),
(386, '18:00', 3, 1),
(387, '18:10', 3, 1),
(388, '18:20', 3, 1),
(389, '18:30', 3, 1),
(391, '9:20', 4, 1),
(392, '9:30', 4, 1),
(393, '9:40', 4, 1),
(394, '9:50', 4, 1),
(395, '10:00', 4, 1),
(396, '10:10', 4, 1),
(397, '10:20', 4, 1),
(398, '10:30', 4, 1),
(399, '10:40', 4, 1),
(400, '10:50', 4, 1),
(401, '11:00', 4, 1),
(402, '11:10', 4, 1),
(403, '11:20', 4, 1),
(404, '11:30', 4, 1),
(405, '11:40', 4, 1),
(406, '11:50', 4, 1),
(407, '12:00', 4, 1),
(408, '12:10', 4, 1),
(409, '12:20', 4, 1),
(410, '12:30', 4, 1),
(411, '12:40', 4, 1),
(412, '12:50', 4, 1),
(413, '13:00', 4, 1),
(414, '13:10', 4, 1),
(415, '13:20', 4, 1),
(416, '13:30', 4, 1),
(417, '13:40', 4, 1),
(418, '13:50', 4, 1),
(419, '14:00', 4, 1),
(423, '15:20', 5, 1),
(424, '15:30', 5, 1),
(425, '15:40', 5, 1),
(426, '15:50', 5, 1),
(427, '16:00', 5, 1),
(428, '16:10', 5, 1),
(429, '16:20', 5, 1),
(430, '16:30', 5, 1),
(431, '16:40', 5, 1),
(432, '16:50', 5, 1),
(433, '17:00', 5, 1),
(434, '17:10', 5, 1),
(435, '17:20', 5, 1),
(436, '17:30', 5, 1),
(437, '17:40', 5, 1),
(438, '17:50', 5, 1),
(439, '18:00', 5, 1),
(440, '18:10', 5, 1),
(441, '18:20', 5, 1),
(442, '18:30', 5, 1),
(443, '18:30', 6, 1),
(444, '18:20', 6, 1),
(445, '18:10', 6, 1),
(446, '18:00', 6, 1),
(447, '17:50', 6, 1),
(448, '17:40', 6, 1),
(449, '17:30', 6, 1),
(450, '17:20', 6, 1),
(451, '17:10', 6, 1),
(452, '17:00', 6, 1),
(453, '16:50', 6, 1),
(454, '16:40', 6, 1),
(455, '16:30', 6, 1),
(456, '16:20', 6, 1),
(457, '16:10', 6, 1),
(458, '16:00', 6, 1),
(459, '15:50', 6, 1),
(460, '15:40', 6, 1),
(461, '15:30', 6, 1),
(462, '15:20', 6, 1),
(463, '9:20', 7, 1),
(464, '9:30', 7, 1),
(465, '9:40', 7, 1),
(466, '9:50', 7, 1),
(467, '10:00', 7, 1),
(468, '10:10', 7, 1),
(469, '10:20', 7, 1),
(470, '10:30', 7, 1),
(471, '10:40', 7, 1),
(472, '10:50', 7, 1),
(473, '11:00', 7, 1),
(474, '11:10', 7, 1),
(475, '11:20', 7, 1),
(476, '11:30', 7, 1),
(477, '11:40', 7, 1),
(478, '11:50', 7, 1),
(479, '12:00', 7, 1),
(480, '12:10', 7, 1),
(481, '12:20', 7, 1),
(482, '12:30', 7, 1),
(483, '12:40', 7, 1),
(484, '12:50', 7, 1),
(485, '13:00', 7, 1),
(486, '13:10', 7, 1),
(487, '13:20', 7, 1),
(488, '13:30', 7, 1),
(489, '13:40', 7, 1),
(490, '13:50', 7, 1),
(491, '14:00', 7, 1),
(492, '15:20', 7, 1),
(493, '15:30', 7, 1),
(494, '15:40', 7, 1),
(495, '15:50', 7, 1),
(496, '16:00', 7, 1),
(497, '16:10', 7, 1),
(498, '16:20', 7, 1),
(499, '16:30', 7, 1),
(500, '16:40', 7, 1),
(501, '16:50', 7, 1),
(502, '17:00', 7, 1),
(503, '17:10', 7, 1),
(504, '17:20', 7, 1),
(505, '17:30', 7, 1),
(506, '17:40', 7, 1),
(507, '17:50', 7, 1),
(508, '18:00', 7, 1),
(509, '18:10', 7, 1),
(510, '18:20', 7, 1),
(511, '18:30', 7, 1),
(512, '9:20', 8, 1),
(513, '9:30', 8, 1),
(514, '9:40', 8, 1),
(515, '9:50', 8, 1),
(516, '10:00', 8, 1),
(517, '10:10', 8, 1),
(518, '10:20', 8, 1),
(519, '10:30', 8, 1),
(520, '10:40', 8, 1),
(521, '10:50', 8, 1),
(522, '11:50', 8, 1),
(523, '11:40', 8, 1),
(524, '11:30', 8, 1),
(525, '11:20', 8, 1),
(526, '11:10', 8, 1),
(527, '11:00', 8, 1),
(528, '12:00', 8, 1),
(529, '12:10', 8, 1),
(530, '12:20', 8, 1),
(531, '12:30', 8, 1),
(532, '12:40', 8, 1),
(533, '12:50', 8, 1),
(534, '13:50', 8, 1),
(535, '13:40', 8, 1),
(536, '13:30', 8, 1),
(537, '13:20', 8, 1),
(538, '13:10', 8, 1),
(539, '13:00', 8, 1),
(540, '14:00', 8, 1),
(541, '14:00', 9, 1),
(542, '13:50', 9, 1),
(543, '13:40', 9, 1),
(544, '13:30', 9, 1),
(545, '13:20', 9, 1),
(546, '13:10', 9, 1),
(547, '13:00', 9, 1),
(548, '12:00', 9, 1),
(549, '12:10', 9, 1),
(550, '12:20', 9, 1),
(551, '12:30', 9, 1),
(552, '12:40', 9, 1),
(553, '12:50', 9, 1),
(554, '11:50', 9, 1),
(555, '11:40', 9, 1),
(556, '11:30', 9, 1),
(557, '11:20', 9, 1),
(558, '11:10', 9, 1),
(559, '11:00', 9, 1),
(560, '10:00', 9, 1),
(561, '10:10', 9, 1),
(562, '10:20', 9, 1),
(563, '10:30', 9, 1),
(564, '10:40', 9, 1),
(565, '10:50', 9, 1),
(566, '9:50', 9, 1),
(567, '9:40', 9, 1),
(568, '9:30', 9, 1),
(569, '9:20', 9, 1),
(571, '9:20', 10, 1),
(572, '9:30', 10, 1),
(573, '9:30', 10, 1),
(574, '9:40', 10, 1),
(575, '9:50', 10, 1),
(576, '10:50', 10, 1),
(577, '10:40', 10, 1),
(578, '10:30', 10, 1),
(579, '10:20', 10, 1),
(580, '10:10', 10, 1),
(581, '10:00', 10, 1),
(582, '11:00', 10, 1),
(583, '11:10', 10, 1),
(584, '11:20', 10, 1),
(585, '11:30', 10, 1),
(586, '11:40', 10, 1),
(587, '11:50', 10, 1),
(588, '12:50', 10, 1),
(589, '12:40', 10, 1),
(590, '12:30', 10, 1),
(591, '12:20', 10, 1),
(592, '12:10', 10, 1),
(593, '12:00', 10, 1),
(594, '13:00', 10, 1),
(595, '13:10', 10, 1),
(596, '13:20', 10, 1),
(597, '13:30', 10, 1),
(598, '13:40', 10, 1),
(599, '13:50', 10, 1),
(600, '14:00', 10, 1),
(601, '14:00', 11, 1),
(602, '13:00', 11, 1),
(603, '13:10', 11, 1),
(604, '13:20', 11, 1),
(605, '13:30', 11, 1),
(606, '13:40', 11, 1),
(607, '13:50', 11, 1),
(608, '12:50', 11, 1),
(609, '12:40', 11, 1),
(610, '12:30', 11, 1),
(611, '12:20', 11, 1),
(612, '12:10', 11, 1),
(613, '12:00', 11, 1),
(614, '11:50', 11, 1),
(615, '11:40', 11, 1),
(616, '11:30', 11, 1),
(617, '11:20', 11, 1),
(618, '11:10', 11, 1),
(619, '11:00', 11, 1),
(620, '10:50', 11, 1),
(621, '10:40', 11, 1),
(622, '10:30', 11, 1),
(623, '10:20', 11, 1),
(624, '10:10', 11, 1),
(625, '10:00', 11, 1),
(626, '9:50', 11, 1),
(627, '9:40', 11, 1),
(628, '9:30', 11, 1),
(629, '9:20', 11, 1),
(630, '9:20', 12, 1),
(631, '9:30', 12, 1),
(632, '9:40', 12, 1),
(633, '9:50', 12, 1),
(634, '10:00', 12, 1),
(635, '10:10', 12, 1),
(636, '10:20', 12, 1),
(637, '10:30', 12, 1),
(638, '10:40', 12, 1),
(639, '10:50', 12, 1),
(640, '11:00', 12, 1),
(641, '11:10', 12, 1),
(642, '11:20', 12, 1),
(643, '11:30', 12, 1),
(644, '11:40', 12, 1),
(645, '11:50', 12, 1),
(646, '12:00', 12, 1),
(647, '12:10', 12, 1),
(648, '12:20', 12, 1),
(649, '12:30', 12, 1),
(650, '12:40', 12, 1),
(651, '12:50', 12, 1),
(652, '13:00', 12, 1),
(653, '13:10', 12, 1),
(654, '13:20', 12, 1),
(655, '13:30', 12, 1),
(656, '13:40', 12, 1),
(657, '13:50', 12, 1),
(658, '14:00', 12, 1),
(659, '9:20', 13, 1),
(660, '9:30', 13, 1),
(661, '9:40', 13, 1),
(662, '9:50', 13, 1),
(663, '10:00', 13, 1),
(664, '10:10', 13, 1),
(665, '10:20', 13, 1),
(666, '10:30', 13, 1),
(667, '10:40', 13, 1),
(668, '10:50', 13, 1),
(669, '11:00', 13, 1),
(670, '11:10', 13, 1),
(671, '11:20', 13, 1),
(672, '11:30', 13, 1),
(673, '11:40', 13, 1),
(674, '11:50', 13, 1),
(675, '12:00', 13, 1),
(676, '12:10', 13, 1),
(677, '12:20', 13, 1),
(678, '12:30', 13, 1),
(679, '12:40', 13, 1),
(680, '12:50', 13, 1),
(681, '13:00', 13, 1),
(682, '13:10', 13, 1),
(683, '13:20', 13, 1),
(684, '13:30', 13, 1),
(685, '13:40', 13, 1),
(686, '13:50', 13, 1),
(687, '14:00', 13, 1),
(688, '9:20', 14, 1),
(689, '9:30', 14, 1),
(690, '9:40', 14, 1),
(691, '9:50', 14, 1),
(692, '10:00', 14, 1),
(693, '10:10', 14, 1),
(694, '10:20', 14, 1),
(695, '10:30', 14, 1),
(696, '10:40', 14, 1),
(697, '10:50', 14, 1),
(698, '11:00', 14, 1),
(699, '11:10', 14, 1),
(700, '11:20', 14, 1),
(701, '11:30', 14, 1),
(702, '11:40', 14, 1),
(703, '11:50', 14, 1),
(704, '12:00', 14, 1),
(705, '12:10', 14, 1),
(706, '12:20', 14, 1),
(707, '12:30', 14, 1),
(708, '12:40', 14, 1),
(709, '12:50', 14, 1),
(710, '13:00', 14, 1),
(711, '13:10', 14, 1),
(712, '13:20', 14, 1),
(713, '13:30', 14, 1),
(714, '13:40', 14, 1),
(715, '13:50', 14, 1),
(716, '14:00', 14, 1),
(717, '15:20', 15, 1),
(718, '15:30', 15, 1),
(719, '15:40', 15, 1),
(720, '15:50', 15, 1),
(721, '16:00', 15, 1),
(722, '16:10', 15, 1),
(723, '16:20', 15, 1),
(724, '16:30', 15, 1),
(725, '16:40', 15, 1),
(726, '16:50', 15, 1),
(727, '17:00', 15, 1),
(728, '17:10', 15, 1),
(729, '17:20', 15, 1),
(730, '17:30', 15, 1),
(731, '17:40', 15, 1),
(732, '17:50', 15, 1),
(733, '18:00', 15, 1),
(734, '18:10', 15, 1),
(735, '18:20', 15, 1),
(736, '18:30', 15, 1),
(737, '15:20', 16, 1),
(738, '15:30', 16, 1),
(739, '15:40', 16, 1),
(740, '15:50', 16, 1),
(741, '16:00', 16, 1),
(742, '16:10', 16, 1),
(743, '16:20', 16, 1),
(744, '16:30', 16, 1),
(745, '16:40', 16, 1),
(746, '16:50', 16, 1),
(747, '17:00', 16, 1),
(748, '17:10', 16, 1),
(749, '17:20', 16, 1),
(750, '17:30', 16, 1),
(751, '17:40', 16, 1),
(752, '17:50', 16, 1),
(753, '18:00', 16, 1),
(754, '18:10', 16, 1),
(755, '18:20', 16, 1),
(756, '18:30', 16, 1),
(757, '15:20', 17, 1),
(758, '15:30', 17, 1),
(759, '15:40', 17, 1),
(760, '15:50', 17, 1),
(761, '16:00', 17, 1),
(762, '16:10', 17, 1),
(763, '16:20', 17, 1),
(764, '16:30', 17, 1),
(765, '16:40', 17, 1),
(766, '16:50', 17, 1),
(767, '17:00', 17, 1),
(768, '17:10', 17, 1),
(769, '17:20', 17, 1),
(770, '17:30', 17, 1),
(771, '17:40', 17, 1),
(772, '17:50', 17, 1),
(773, '18:00', 17, 1),
(774, '18:10', 17, 1),
(775, '18:20', 17, 1),
(776, '18:30', 17, 1),
(777, '9:20', 18, 1),
(778, '9:30', 18, 1),
(779, '9:40', 18, 1),
(780, '9:50', 18, 1),
(781, '10:00', 18, 1),
(782, '10:10', 18, 1),
(783, '10:20', 18, 1),
(784, '10:30', 18, 1),
(785, '10:40', 18, 1),
(786, '10:50', 18, 1),
(787, '11:00', 18, 1),
(788, '11:10', 18, 1),
(789, '11:20', 18, 1),
(790, '11:30', 18, 1),
(791, '11:40', 18, 1),
(792, '11:50', 18, 1),
(793, '12:00', 18, 1),
(794, '12:10', 18, 1),
(795, '12:20', 18, 1),
(796, '12:30', 18, 1),
(797, '12:40', 18, 1),
(798, '12:50', 18, 1),
(799, '13:00', 18, 1),
(800, '13:10', 18, 1),
(801, '13:20', 18, 1),
(802, '13:30', 18, 1),
(803, '13:40', 18, 1),
(804, '13:50', 18, 1),
(805, '14:00', 18, 1),
(806, '9:20', 19, 1),
(807, '9:30', 19, 1),
(808, '9:40', 19, 1),
(809, '9:50', 19, 1),
(810, '10:00', 19, 1),
(811, '10:10', 19, 1),
(812, '10:20', 19, 1),
(813, '10:30', 19, 1),
(814, '10:40', 19, 1),
(815, '10:50', 19, 1),
(816, '11:00', 19, 1),
(817, '11:10', 19, 1),
(818, '11:20', 19, 1),
(819, '11:30', 19, 1),
(820, '11:40', 19, 1),
(821, '11:50', 19, 1),
(822, '12:00', 19, 1),
(823, '12:10', 19, 1),
(824, '12:20', 19, 1),
(825, '12:30', 19, 1),
(826, '12:40', 19, 1),
(827, '12:50', 19, 1),
(828, '13:00', 19, 1),
(829, '13:10', 19, 1),
(830, '13:20', 19, 1),
(831, '13:30', 19, 1),
(832, '13:40', 19, 1),
(833, '13:50', 19, 1),
(834, '14:00', 19, 1),
(835, '15:20', 20, 1),
(836, '15:30', 20, 1),
(837, '15:40', 20, 1),
(838, '15:50', 20, 1),
(839, '16:00', 20, 1),
(840, '16:10', 20, 1),
(841, '16:20', 20, 1),
(842, '16:30', 20, 1),
(843, '16:40', 20, 1),
(844, '16:50', 20, 1),
(845, '17:00', 20, 1),
(846, '17:10', 20, 1),
(847, '17:20', 20, 1),
(848, '17:30', 20, 1),
(849, '17:40', 20, 1),
(850, '17:50', 20, 1),
(851, '18:00', 20, 1),
(852, '18:10', 20, 1),
(853, '18:20', 20, 1),
(854, '18:30', 20, 1),
(855, '9:20', 21, 1),
(856, '9:30', 21, 1),
(857, '9:40', 21, 1),
(858, '9:50', 21, 1),
(859, '10:00', 21, 1),
(860, '10:10', 21, 1),
(861, '10:20', 21, 1),
(862, '10:30', 21, 1),
(863, '10:40', 21, 1),
(864, '10:50', 21, 1),
(865, '11:00', 21, 1),
(866, '11:10', 21, 1),
(867, '11:20', 21, 1),
(868, '11:30', 21, 1),
(869, '11:40', 21, 1),
(870, '11:50', 21, 1),
(871, '12:00', 21, 1),
(872, '12:10', 21, 1),
(873, '12:20', 21, 1),
(874, '12:30', 21, 1),
(875, '12:40', 21, 1),
(876, '12:50', 21, 1),
(877, '13:00', 21, 1),
(878, '13:10', 21, 1),
(879, '13:20', 21, 1),
(880, '13:30', 21, 1),
(881, '13:40', 21, 1),
(882, '13:50', 21, 1),
(883, '14:00', 21, 1),
(884, '9:20', 22, 1),
(885, '9:30', 22, 1),
(886, '9:40', 22, 1),
(887, '9:50', 22, 1),
(888, '10:00', 22, 1),
(889, '10:10', 22, 1),
(890, '10:20', 22, 1),
(891, '10:30', 22, 1),
(892, '10:40', 22, 1),
(893, '10:50', 22, 1),
(894, '11:00', 22, 1),
(895, '11:10', 22, 1),
(896, '11:20', 22, 1),
(897, '11:30', 22, 1),
(898, '11:40', 22, 1),
(899, '11:50', 22, 1),
(900, '12:00', 22, 1),
(901, '12:10', 22, 1),
(902, '12:20', 22, 1),
(903, '12:30', 22, 1),
(904, '12:40', 22, 1),
(905, '12:50', 22, 1),
(906, '13:00', 22, 1),
(907, '13:10', 22, 1),
(908, '13:20', 22, 1),
(909, '13:30', 22, 1),
(910, '13:40', 22, 1),
(911, '13:50', 22, 1),
(912, '14:00', 22, 1),
(913, '15:20', 23, 1),
(914, '15:30', 23, 1),
(915, '15:40', 23, 1),
(916, '15:50', 23, 1),
(917, '16:00', 23, 1),
(918, '16:10', 23, 1),
(919, '16:20', 23, 1),
(920, '16:30', 23, 1),
(921, '16:40', 23, 1),
(922, '16:50', 23, 1),
(923, '17:00', 23, 1),
(924, '17:10', 23, 1),
(925, '17:20', 23, 1),
(926, '17:30', 23, 1),
(927, '17:40', 23, 1),
(928, '17:50', 23, 1),
(929, '18:00', 23, 1),
(930, '18:10', 23, 1),
(931, '18:20', 23, 1),
(932, '18:30', 23, 1),
(933, '15:20', 24, 1),
(934, '15:30', 24, 1),
(935, '15:40', 24, 1),
(936, '15:50', 24, 1),
(937, '16:00', 24, 1),
(938, '16:10', 24, 1),
(939, '16:20', 24, 1),
(940, '16:30', 24, 1),
(941, '16:40', 24, 1),
(942, '16:50', 24, 1),
(943, '17:00', 24, 1),
(944, '17:10', 24, 1),
(945, '17:20', 24, 1),
(946, '17:30', 24, 1),
(947, '17:40', 24, 1),
(948, '17:50', 24, 1),
(949, '18:00', 24, 1),
(950, '18:10', 24, 1),
(951, '18:20', 24, 1),
(952, '18:30', 24, 1),
(953, '15:20', 25, 1),
(954, '15:30', 25, 1),
(955, '15:40', 25, 1),
(956, '15:50', 25, 1),
(957, '16:00', 25, 1),
(958, '16:10', 25, 1),
(959, '16:20', 25, 1),
(960, '16:30', 25, 1),
(961, '16:40', 25, 1),
(962, '16:50', 25, 1),
(963, '17:00', 25, 1),
(964, '17:10', 25, 1),
(965, '17:20', 25, 1),
(966, '17:30', 25, 1),
(967, '17:40', 25, 1),
(968, '17:50', 25, 1),
(969, '18:00', 25, 1),
(970, '18:10', 25, 1),
(971, '18:20', 25, 1),
(972, '18:30', 25, 1);

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
(3, 'LABORAL'),
(4, 'PLAZO FIJO'),
(5, 'CONTRATO INDEFINIDO');

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
  MODIFY `id_cargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id_empresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `entrevistas`
--
ALTER TABLE `entrevistas`
  MODIFY `id_entrevista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id_horarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=973;
--
-- AUTO_INCREMENT de la tabla `ofertas`
--
ALTER TABLE `ofertas`
  MODIFY `id_oferta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
