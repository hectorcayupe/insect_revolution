-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-04-2022 a las 21:44:05
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
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_asociados`
--

CREATE TABLE `app_asociados` (
  `id` bigint(20) NOT NULL,
  `productor_id` bigint(20) NOT NULL,
  `recolector_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `app_asociados`
--

INSERT INTO `app_asociados` (`id`, `productor_id`, `recolector_id`) VALUES
(7, 1, 1),
(8, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_comunas`
--

CREATE TABLE `app_comunas` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `region_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `app_comunas`
--

INSERT INTO `app_comunas` (`id`, `name`, `region_id`) VALUES
(1, 'Arica', 1),
(2, 'Camarones', 1),
(3, 'General Lagos', 1),
(4, 'Putre', 1),
(5, 'Alto Hospicio', 2),
(6, 'Iquique', 2),
(7, 'Camiña', 2),
(8, 'Colchane', 2),
(9, 'Huara', 2),
(10, 'Pica', 2),
(11, 'Pozo Almonte', 2),
(12, 'Antofagasta', 3),
(13, 'Mejillones', 3),
(14, 'Sierra Gorda', 3),
(15, 'Taltal', 3),
(16, 'Calama', 3),
(17, 'Ollague', 3),
(18, 'San Pedro de Atacama', 3),
(19, 'María Elena', 3),
(20, 'Tocopilla', 3),
(21, 'Chañaral', 4),
(22, 'Diego de Almagro', 4),
(23, 'Caldera', 4),
(24, 'Copiapó', 4),
(25, 'Tierra Amarilla', 4),
(26, 'Alto del Carmen', 4),
(27, 'Freirina', 4),
(28, 'Huasco', 4),
(29, 'Vallenar', 4),
(30, 'Canela', 5),
(31, 'Illapel', 5),
(32, 'Los Vilos', 5),
(33, 'Salamanca', 5),
(34, 'Andacollo', 5),
(35, 'Coquimbo', 5),
(36, 'La Higuera', 5),
(37, 'La Serena', 5),
(38, 'Paihuaco', 5),
(39, 'Vicuña', 5),
(40, 'Combarbalá', 5),
(41, 'Monte Patria', 5),
(42, 'Ovalle', 5),
(43, 'Punitaqui', 5),
(44, 'Río Hurtado', 5),
(45, 'Isla de Pascua', 6),
(46, 'Calle Larga', 6),
(47, 'Los Andes', 6),
(48, 'Rinconada', 6),
(49, 'San Esteban', 6),
(50, 'La Ligua', 6),
(51, 'Papudo', 6),
(52, 'Petorca', 6),
(53, 'Zapallar', 6),
(54, 'Hijuelas', 6),
(55, 'La Calera', 6),
(56, 'La Cruz', 6),
(57, 'Limache', 6),
(58, 'Nogales', 6),
(59, 'Olmué', 6),
(60, 'Quillota', 6),
(61, 'Algarrobo', 6),
(62, 'Cartagena', 6),
(63, 'El Quisco', 6),
(64, 'El Tabo', 6),
(65, 'San Antonio', 6),
(66, 'Santo Domingo', 6),
(67, 'Catemu', 6),
(68, 'Llaillay', 6),
(69, 'Panquehue', 6),
(70, 'Putaendo', 6),
(71, 'San Felipe', 6),
(72, 'Santa María', 6),
(73, 'Casablanca', 6),
(74, 'Concón', 6),
(75, 'Juan Fernández', 6),
(76, 'Puchuncaví', 6),
(77, 'Quilpué', 6),
(78, 'Quintero', 6),
(79, 'Valparaíso', 6),
(80, 'Villa Alemana', 6),
(81, 'Viña del Mar', 6),
(82, 'Colina', 7),
(83, 'Lampa', 7),
(84, 'Tiltil', 7),
(85, 'Pirque', 7),
(86, 'Puente Alto', 7),
(87, 'San José de Maipo', 7),
(88, 'Buin', 7),
(89, 'Calera de Tango', 7),
(90, 'Paine', 7),
(91, 'San Bernardo', 7),
(92, 'Alhué', 7),
(93, 'Curacaví', 7),
(94, 'María Pinto', 7),
(95, 'Melipilla', 7),
(96, 'San Pedro', 7),
(97, 'Cerrillos', 7),
(98, 'Cerro Navia', 7),
(99, 'Conchalí', 7),
(100, 'El Bosque', 7),
(101, 'Estación Central', 7),
(102, 'Huechuraba', 7),
(103, 'Independencia', 7),
(104, 'La Cisterna', 7),
(105, 'La Granja', 7),
(106, 'La Florida', 7),
(107, 'La Pintana', 7),
(108, 'La Reina', 7),
(109, 'Las Condes', 7),
(110, 'Lo Barnechea', 7),
(111, 'Lo Espejo', 7),
(112, 'Lo Prado', 7),
(113, 'Macul', 7),
(114, 'Maipú', 7),
(115, 'Ñuñoa', 7),
(116, 'Pedro Aguirre Cerda', 7),
(117, 'Peñalolén', 7),
(118, 'Providencia', 7),
(119, 'Pudahuel', 7),
(120, 'Quilicura', 7),
(121, 'Quinta Normal', 7),
(122, 'Recoleta', 7),
(123, 'Renca', 7),
(124, 'San Miguel', 7),
(125, 'San Joaquín', 7),
(126, 'San Ramón', 7),
(127, 'Santiago', 7),
(128, 'Vitacura', 7),
(129, 'El Monte', 7),
(130, 'Isla de Maipo', 7),
(131, 'Padre Hurtado', 7),
(132, 'Peñaflor', 7),
(133, 'Talagante', 7),
(134, 'Codegua', 8),
(135, 'Coínco', 8),
(136, 'Coltauco', 8),
(137, 'Doñihue', 8),
(138, 'Graneros', 8),
(139, 'Las Cabras', 8),
(140, 'Machalí', 8),
(141, 'Malloa', 8),
(142, 'Mostazal', 8),
(143, 'Olivar', 8),
(144, 'Peumo', 8),
(145, 'Pichidegua', 8),
(146, 'Quinta de Tilcoco', 8),
(147, 'Rancagua', 8),
(148, 'Rengo', 8),
(149, 'Requínoa', 8),
(150, 'San Vicente de Tagua Tagua', 8),
(151, 'La Estrella', 8),
(152, 'Litueche', 8),
(153, 'Marchihue', 8),
(154, 'Navidad', 8),
(155, 'Peredones', 8),
(156, 'Pichilemu', 8),
(157, 'Chépica', 8),
(158, 'Chimbarongo', 8),
(159, 'Lolol', 8),
(160, 'Nancagua', 8),
(161, 'Palmilla', 8),
(162, 'Peralillo', 8),
(163, 'Placilla', 8),
(164, 'Pumanque', 8),
(165, 'San Fernando', 8),
(166, 'Santa Cruz', 8),
(167, 'Cauquenes', 9),
(168, 'Chanco', 9),
(169, 'Pelluhue', 9),
(170, 'Curicó', 9),
(171, 'Hualañé', 9),
(172, 'Licantén', 9),
(173, 'Molina', 9),
(174, 'Rauco', 9),
(175, 'Romeral', 9),
(176, 'Sagrada Familia', 9),
(177, 'Teno', 9),
(178, 'Vichuquén', 9),
(179, 'Colbún', 9),
(180, 'Linares', 9),
(181, 'Longaví', 9),
(182, 'Parral', 9),
(183, 'Retiro', 9),
(184, 'San Javier', 9),
(185, 'Villa Alegre', 9),
(186, 'Yerbas Buenas', 9),
(187, 'Constitución', 9),
(188, 'Curepto', 9),
(189, 'Empedrado', 9),
(190, 'Maule', 9),
(191, 'Pelarco', 9),
(192, 'Pencahue', 9),
(193, 'Río Claro', 9),
(194, 'San Clemente', 9),
(195, 'San Rafael', 9),
(196, 'Talca', 9),
(197, 'Bulnes', 10),
(198, 'Chillán', 10),
(199, 'Chillán Viejo', 10),
(200, 'Cobquecura', 10),
(201, 'Coelemu', 10),
(202, 'Coihueco', 10),
(203, 'El Carmen', 10),
(204, 'Ninhue', 10),
(205, 'Ñiquen', 10),
(206, 'Pemuco', 10),
(207, 'Pinto', 10),
(208, 'Portezuelo', 10),
(209, 'Quirihue', 10),
(210, 'Ránquil', 10),
(211, 'Treguaco', 10),
(212, 'Quillón', 10),
(213, 'San Carlos', 10),
(214, 'San Fabián', 10),
(215, 'San Ignacio', 10),
(216, 'San Nicolás', 10),
(217, 'Yungay', 10),
(218, 'Arauco', 11),
(219, 'Cañete', 11),
(220, 'Contulmo', 11),
(221, 'Curanilahue', 11),
(222, 'Lebu', 11),
(223, 'Los Álamos', 11),
(224, 'Tirúa', 11),
(225, 'Alto Biobío', 11),
(226, 'Antuco', 11),
(227, 'Cabrero', 11),
(228, 'Laja', 11),
(229, 'Los Ángeles', 11),
(230, 'Mulchén', 11),
(231, 'Nacimiento', 11),
(232, 'Negrete', 11),
(233, 'Quilaco', 11),
(234, 'Quilleco', 11),
(235, 'San Rosendo', 11),
(236, 'Santa Bárbara', 11),
(237, 'Tucapel', 11),
(238, 'Yumbel', 11),
(239, 'Chiguayante', 11),
(240, 'Concepción', 11),
(241, 'Coronel', 11),
(242, 'Florida', 11),
(243, 'Hualpén', 11),
(244, 'Hualqui', 11),
(245, 'Lota', 11),
(246, 'Penco', 11),
(247, 'San Pedro de La Paz', 11),
(248, 'Santa Juana', 11),
(249, 'Talcahuano', 11),
(250, 'Tomé', 11),
(251, 'Carahue', 12),
(252, 'Cholchol', 12),
(253, 'Cunco', 12),
(254, 'Curarrehue', 12),
(255, 'Freire', 12),
(256, 'Galvarino', 12),
(257, 'Gorbea', 12),
(258, 'Lautaro', 12),
(259, 'Loncoche', 12),
(260, 'Melipeuco', 12),
(261, 'Nueva Imperial', 12),
(262, 'Padre Las Casas', 12),
(263, 'Perquenco', 12),
(264, 'Pitrufquén', 12),
(265, 'Pucón', 12),
(266, 'Saavedra', 12),
(267, 'Temuco', 12),
(268, 'Teodoro Schmidt', 12),
(269, 'Toltén', 12),
(270, 'Vilcún', 12),
(271, 'Villarrica', 12),
(272, 'Angol', 12),
(273, 'Collipulli', 12),
(274, 'Curacautín', 12),
(275, 'Ercilla', 12),
(276, 'Lonquimay', 12),
(277, 'Los Sauces', 12),
(278, 'Lumaco', 12),
(279, 'Purén', 12),
(280, 'Renaico', 12),
(281, 'Traiguén', 12),
(282, 'Victoria', 12),
(283, 'Corral', 13),
(284, 'Lanco', 13),
(285, 'Los Lagos', 13),
(286, 'Máfil', 13),
(287, 'Mariquina', 13),
(288, 'Paillaco', 13),
(289, 'Panguipulli', 13),
(290, 'Valdivia', 13),
(291, 'Futrono', 13),
(292, 'La Unión', 13),
(293, 'Lago Ranco', 13),
(294, 'Río Bueno', 13),
(295, 'Ancud', 14),
(296, 'Castro', 14),
(297, 'Chonchi', 14),
(298, 'Curaco de Vélez', 14),
(299, 'Dalcahue', 14),
(300, 'Puqueldón', 14),
(301, 'Queilén', 14),
(302, 'Quemchi', 14),
(303, 'Quellón', 14),
(304, 'Quinchao', 14),
(305, 'Calbuco', 14),
(306, 'Cochamó', 14),
(307, 'Fresia', 14),
(308, 'Frutillar', 14),
(309, 'Llanquihue', 14),
(310, 'Los Muermos', 14),
(311, 'Maullín', 14),
(312, 'Puerto Montt', 14),
(313, 'Puerto Varas', 14),
(314, 'Osorno', 14),
(315, 'Puero Octay', 14),
(316, 'Purranque', 14),
(317, 'Puyehue', 14),
(318, 'Río Negro', 14),
(319, 'San Juan de la Costa', 14),
(320, 'San Pablo', 14),
(321, 'Chaitén', 14),
(322, 'Futaleufú', 14),
(323, 'Hualaihué', 14),
(324, 'Palena', 14),
(325, 'Aisén', 15),
(326, 'Cisnes', 15),
(327, 'Guaitecas', 15),
(328, 'Cochrane', 15),
(329, 'O\'higgins', 15),
(330, 'Tortel', 15),
(331, 'Coihaique', 15),
(332, 'Lago Verde', 15),
(333, 'Chile Chico', 15),
(334, 'Río Ibáñez', 15),
(335, 'Antártica', 16),
(336, 'Cabo de Hornos', 16),
(337, 'Laguna Blanca', 16),
(338, 'Punta Arenas', 16),
(339, 'Río Verde', 16),
(340, 'San Gregorio', 16),
(341, 'Porvenir', 16),
(342, 'Primavera', 16),
(343, 'Timaukel', 16),
(344, 'Natales', 16),
(345, 'Torres del Paine', 16),
(346, 'Cabildo', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_productor`
--

CREATE TABLE `app_productor` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `app_productor`
--

INSERT INTO `app_productor` (`id`, `user_id`) VALUES
(1, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_recolector`
--

CREATE TABLE `app_recolector` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `app_recolector`
--

INSERT INTO `app_recolector` (`id`, `user_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_regions`
--

CREATE TABLE `app_regions` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `ordinal_symbol` varchar(200) NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `app_regions`
--

INSERT INTO `app_regions` (`id`, `name`, `ordinal_symbol`, `order`) VALUES
(1, 'Arica y Parinacota', 'XV', 1),
(2, 'Tarapacá', 'I', 2),
(3, 'Antofagasta', 'II', 3),
(4, 'Atacama', 'III', 4),
(5, 'Coquimbo', 'IV', 5),
(6, 'Valparaiso', 'V', 6),
(7, 'Metropolitana de Santiago', 'RM', 7),
(8, 'Libertador General Bernardo O\'Higgins', 'VI', 8),
(9, 'Maule', 'VII', 9),
(10, 'Ñuble', 'XVI', 10),
(11, 'Biobío', 'VIII', 11),
(12, 'La Araucanía', 'IX', 12),
(13, 'Los Ríos', 'XIV', 13),
(14, 'Los Lagos', 'X', 14),
(15, 'Aisén del General Carlos Ibáñez del Campo', 'XI', 15),
(16, 'Magallanes y de la Antártica Chilena', 'XII', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_residuos`
--

CREATE TABLE `app_residuos` (
  `id` bigint(20) NOT NULL,
  `fecha` date NOT NULL,
  `kilos` int(11) NOT NULL,
  `usuarios_asociados_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `app_residuos`
--

INSERT INTO `app_residuos` (`id`, `fecha`, `kilos`, `usuarios_asociados_id`) VALUES
(9, '2022-03-21', 33, 7),
(10, '2022-03-21', 44, 8),
(11, '2022-03-22', 3, 7),
(12, '2022-03-22', 50, 8),
(13, '2022-03-22', 70, 7),
(14, '2022-03-25', 10, 7),
(15, '2022-03-28', 75, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_tipo_usuario`
--

CREATE TABLE `app_tipo_usuario` (
  `id` bigint(20) NOT NULL,
  `rol` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `app_tipo_usuario`
--

INSERT INTO `app_tipo_usuario` (`id`, `rol`) VALUES
(1, 'administrador'),
(2, 'productor'),
(3, 'recolector');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_user`
--

CREATE TABLE `app_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `numero` int(11) DEFAULT NULL,
  `comuna_id` bigint(20) NOT NULL,
  `tipo_usuario_id` bigint(20) NOT NULL,
  `direccion` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `app_user`
--

INSERT INTO `app_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `numero`, `comuna_id`, `tipo_usuario_id`, `direccion`) VALUES
(1, 'pbkdf2_sha256$320000$4nnJQtqjtFcAM0qPiHNocP$ushTWuUnuE+ZBtzUwquj3R0XFQMXm2B/VQwrVwNe27g=', '2022-03-31 16:27:22.438617', 1, 'admin', 'Alan', 'Walker', 'admin@admin.com', 1, 1, '2022-03-16 06:10:14.000000', 3, 1, 3, 'Av siempre viva 123'),
(2, 'pbkdf2_sha256$320000$4nnJQtqjtFcAM0qPiHNocP$ushTWuUnuE+ZBtzUwquj3R0XFQMXm2B/VQwrVwNe27g=', '2022-03-31 22:44:02.801181', 0, 'hector', 'Hector', 'Cayupe', 'hector@hector.com', 0, 1, '2022-03-16 07:15:13.000000', 2, 1, 2, 'Av falsa 123'),
(3, 'pbkdf2_sha256$320000$fuZ3s54eHiNh7IWONzejW6$otwClfP4BdfXRaHR/+Zb76pSyeCwCvtZDPUfNAAQWN8=', NULL, 0, 'adrian', 'Adrian', 'Cayupe', 'adrian@adrian.com', 0, 1, '2022-03-21 18:47:57.000000', 2, 5, 2, 'Av salvador 456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_user_groups`
--

CREATE TABLE `app_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_user_user_permissions`
--

CREATE TABLE `app_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add regions', 7, 'add_regions'),
(26, 'Can change regions', 7, 'change_regions'),
(27, 'Can delete regions', 7, 'delete_regions'),
(28, 'Can view regions', 7, 'view_regions'),
(29, 'Can add tipo_usuario', 8, 'add_tipo_usuario'),
(30, 'Can change tipo_usuario', 8, 'change_tipo_usuario'),
(31, 'Can delete tipo_usuario', 8, 'delete_tipo_usuario'),
(32, 'Can view tipo_usuario', 8, 'view_tipo_usuario'),
(33, 'Can add comunnes', 9, 'add_comunnes'),
(34, 'Can change comunnes', 9, 'change_comunnes'),
(35, 'Can delete comunnes', 9, 'delete_comunnes'),
(36, 'Can view comunnes', 9, 'view_comunnes'),
(37, 'Can add usuarios_asociados', 10, 'add_usuarios_asociados'),
(38, 'Can change usuarios_asociados', 10, 'change_usuarios_asociados'),
(39, 'Can delete usuarios_asociados', 10, 'delete_usuarios_asociados'),
(40, 'Can view usuarios_asociados', 10, 'view_usuarios_asociados'),
(41, 'Can add recolector', 11, 'add_recolector'),
(42, 'Can change recolector', 11, 'change_recolector'),
(43, 'Can delete recolector', 11, 'delete_recolector'),
(44, 'Can view recolector', 11, 'view_recolector'),
(45, 'Can add residuos', 12, 'add_residuos'),
(46, 'Can change residuos', 12, 'change_residuos'),
(47, 'Can delete residuos', 12, 'delete_residuos'),
(48, 'Can view residuos', 12, 'view_residuos'),
(49, 'Can add productor', 13, 'add_productor'),
(50, 'Can change productor', 13, 'change_productor'),
(51, 'Can delete productor', 13, 'delete_productor'),
(52, 'Can view productor', 13, 'view_productor'),
(53, 'Can add asociados', 10, 'add_asociados'),
(54, 'Can change asociados', 10, 'change_asociados'),
(55, 'Can delete asociados', 10, 'delete_asociados'),
(56, 'Can view asociados', 10, 'view_asociados'),
(57, 'Can add comunas', 9, 'add_comunas'),
(58, 'Can change comunas', 9, 'change_comunas'),
(59, 'Can delete comunas', 9, 'delete_comunas'),
(60, 'Can view comunas', 9, 'view_comunas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-03-16 06:13:03.329423', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Numero\"]}}]', 6, 1),
(2, '2022-03-21 18:48:28.579284', '3', 'adrian', 2, '[{\"changed\": {\"fields\": [\"Numero\"]}}]', 6, 1),
(3, '2022-03-21 18:48:45.584336', '2', 'hector', 2, '[]', 6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(10, 'app', 'asociados'),
(9, 'app', 'comunas'),
(13, 'app', 'productor'),
(11, 'app', 'recolector'),
(7, 'app', 'regions'),
(12, 'app', 'residuos'),
(8, 'app', 'tipo_usuario'),
(6, 'app', 'user'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-03-16 06:08:18.343962'),
(2, 'contenttypes', '0002_remove_content_type_name', '2022-03-16 06:08:19.812100'),
(3, 'auth', '0001_initial', '2022-03-16 06:08:24.362249'),
(4, 'auth', '0002_alter_permission_name_max_length', '2022-03-16 06:08:25.384511'),
(5, 'auth', '0003_alter_user_email_max_length', '2022-03-16 06:08:25.428497'),
(6, 'auth', '0004_alter_user_username_opts', '2022-03-16 06:08:25.462845'),
(7, 'auth', '0005_alter_user_last_login_null', '2022-03-16 06:08:25.530401'),
(8, 'auth', '0006_require_contenttypes_0002', '2022-03-16 06:08:25.576845'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2022-03-16 06:08:25.612887'),
(10, 'auth', '0008_alter_user_username_max_length', '2022-03-16 06:08:25.678606'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2022-03-16 06:08:25.779134'),
(12, 'auth', '0010_alter_group_name_max_length', '2022-03-16 06:08:26.067987'),
(13, 'auth', '0011_update_proxy_permissions', '2022-03-16 06:08:26.249000'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2022-03-16 06:08:26.281464'),
(15, 'app', '0001_initial', '2022-03-16 06:08:32.895756'),
(16, 'admin', '0001_initial', '2022-03-16 06:08:34.985392'),
(17, 'admin', '0002_logentry_remove_auto_add', '2022-03-16 06:08:35.073909'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2022-03-16 06:08:35.139268'),
(19, 'app', '0002_alter_user_numero', '2022-03-16 06:08:35.581388'),
(20, 'app', '0003_regions_tipo_usuario_alter_user_numero_comunnes', '2022-03-16 06:08:47.429446'),
(21, 'sessions', '0001_initial', '2022-03-16 06:08:48.243683'),
(22, 'app', '0004_productor_recolector_usuarios_asociados_residuos', '2022-03-16 06:40:08.014722'),
(23, 'app', '0005_rename_usuarios_asociados_asociados', '2022-03-16 10:14:34.815156'),
(24, 'app', '0006_alter_asociados_productor_alter_asociados_recolector', '2022-03-16 10:36:45.233353'),
(25, 'app', '0007_alter_asociados_recolector', '2022-03-16 10:36:45.298143'),
(26, 'app', '0008_alter_asociados_productor_alter_asociados_recolector', '2022-03-16 14:10:12.597426'),
(27, 'app', '0009_rename_comunnes_comunas', '2022-03-24 04:27:07.526541'),
(28, 'app', '0010_user_comuna', '2022-03-24 04:29:28.806633'),
(29, 'app', '0011_user_tipo_usuario', '2022-03-24 04:33:34.036865'),
(30, 'app', '0012_user_direccion', '2022-03-25 12:39:40.504481');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('n82c5ibw2f8a2xcp0xvja2anbeluqawz', '.eJxVi8sOwiAQAP-Fs2lYXose9UPIwi7BGLUp5WT8d2vSgx5nJvNSicba0uiypCurkzLq8OsylZs8voHmedqpT5fR1-ddlvOe_55GvW2D5IC6sBMLaKvVkjXUvCk0HiqiNmSEo0TxQcfAR-8CW7DiCJBKUe8PzdUy9w:1na3WM:SEJgkxNbEhPtYc0PoIa_WrETswULBnv-RqR7tpRmFq0', '2022-04-14 22:44:02.846866');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `app_asociados`
--
ALTER TABLE `app_asociados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_usuarios_asociados_productor_id_86c0f061_fk_app_productor_id` (`productor_id`),
  ADD KEY `app_usuarios_asociad_recolector_id_45f38185_fk_app_recol` (`recolector_id`);

--
-- Indices de la tabla `app_comunas`
--
ALTER TABLE `app_comunas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_comunnes_region_id_3f2c4ce6_fk_app_regions_id` (`region_id`);

--
-- Indices de la tabla `app_productor`
--
ALTER TABLE `app_productor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indices de la tabla `app_recolector`
--
ALTER TABLE `app_recolector`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indices de la tabla `app_regions`
--
ALTER TABLE `app_regions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `app_residuos`
--
ALTER TABLE `app_residuos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_residuos_usuarios_asociados_id_deee4a03_fk_app_asociados_id` (`usuarios_asociados_id`);

--
-- Indices de la tabla `app_tipo_usuario`
--
ALTER TABLE `app_tipo_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `app_user`
--
ALTER TABLE `app_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `app_user_comuna_id_d3f1a7dc_fk_app_comunas_id` (`comuna_id`),
  ADD KEY `app_user_tipo_usuario_id_a862a2d5_fk_app_tipo_usuario_id` (`tipo_usuario_id`);

--
-- Indices de la tabla `app_user_groups`
--
ALTER TABLE `app_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `app_user_groups_user_id_group_id_73b8e940_uniq` (`user_id`,`group_id`),
  ADD KEY `app_user_groups_group_id_e774d92c_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `app_user_user_permissions`
--
ALTER TABLE `app_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `app_user_user_permissions_user_id_permission_id_7c8316ce_uniq` (`user_id`,`permission_id`),
  ADD KEY `app_user_user_permis_permission_id_4ef8e133_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_app_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `app_asociados`
--
ALTER TABLE `app_asociados`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `app_comunas`
--
ALTER TABLE `app_comunas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=347;

--
-- AUTO_INCREMENT de la tabla `app_productor`
--
ALTER TABLE `app_productor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `app_recolector`
--
ALTER TABLE `app_recolector`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `app_regions`
--
ALTER TABLE `app_regions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `app_residuos`
--
ALTER TABLE `app_residuos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `app_tipo_usuario`
--
ALTER TABLE `app_tipo_usuario`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `app_user`
--
ALTER TABLE `app_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `app_user_groups`
--
ALTER TABLE `app_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `app_user_user_permissions`
--
ALTER TABLE `app_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `app_asociados`
--
ALTER TABLE `app_asociados`
  ADD CONSTRAINT `app_usuarios_asociad_recolector_id_45f38185_fk_app_recol` FOREIGN KEY (`recolector_id`) REFERENCES `app_recolector` (`id`),
  ADD CONSTRAINT `app_usuarios_asociados_productor_id_86c0f061_fk_app_productor_id` FOREIGN KEY (`productor_id`) REFERENCES `app_productor` (`id`);

--
-- Filtros para la tabla `app_comunas`
--
ALTER TABLE `app_comunas`
  ADD CONSTRAINT `app_comunnes_region_id_3f2c4ce6_fk_app_regions_id` FOREIGN KEY (`region_id`) REFERENCES `app_regions` (`id`);

--
-- Filtros para la tabla `app_productor`
--
ALTER TABLE `app_productor`
  ADD CONSTRAINT `app_productor_user_id_31e4fbed_fk_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`);

--
-- Filtros para la tabla `app_recolector`
--
ALTER TABLE `app_recolector`
  ADD CONSTRAINT `app_recolector_user_id_851d689f_fk_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`);

--
-- Filtros para la tabla `app_residuos`
--
ALTER TABLE `app_residuos`
  ADD CONSTRAINT `app_residuos_usuarios_asociados_id_deee4a03_fk_app_asociados_id` FOREIGN KEY (`usuarios_asociados_id`) REFERENCES `app_asociados` (`id`);

--
-- Filtros para la tabla `app_user`
--
ALTER TABLE `app_user`
  ADD CONSTRAINT `app_user_comuna_id_d3f1a7dc_fk_app_comunas_id` FOREIGN KEY (`comuna_id`) REFERENCES `app_comunas` (`id`),
  ADD CONSTRAINT `app_user_tipo_usuario_id_a862a2d5_fk_app_tipo_usuario_id` FOREIGN KEY (`tipo_usuario_id`) REFERENCES `app_tipo_usuario` (`id`);

--
-- Filtros para la tabla `app_user_groups`
--
ALTER TABLE `app_user_groups`
  ADD CONSTRAINT `app_user_groups_group_id_e774d92c_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `app_user_groups_user_id_e6f878f6_fk_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`);

--
-- Filtros para la tabla `app_user_user_permissions`
--
ALTER TABLE `app_user_user_permissions`
  ADD CONSTRAINT `app_user_user_permis_permission_id_4ef8e133_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `app_user_user_permissions_user_id_24780b52_fk_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`);

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
