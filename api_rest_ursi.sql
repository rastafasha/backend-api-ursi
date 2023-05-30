-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 20-05-2023 a las 23:31:25
-- Versión del servidor: 5.7.34
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `api_rest_ursi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anillos`
--

CREATE TABLE `anillos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'no-image.jpg',
  `status` enum('PUBLISHED','PENDING','REJECTED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `anillos`
--

INSERT INTO `anillos` (`id`, `title`, `slug`, `model`, `description`, `price`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Powerful Stone', NULL, 'UG11', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">SILVER 925</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">CARNELIAN OVAL</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">4.2 GRS/0.15 ONZAS</span></p>', '140', NULL, 'PUBLISHED', '2023-05-14 05:36:49', '2023-05-18 08:12:36'),
(2, 'Powerful Stone', NULL, 'UG01/UG04', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">SILVER 925</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">CARNELIAN CABUCHON</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">3.6 GRS/ 0.13 ONZAS</span></p>', '122', NULL, 'PUBLISHED', '2023-05-18 02:30:48', '2023-05-18 08:12:44'),
(3, 'Powerful Stone', NULL, 'UG13', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">SILVER 925</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">LOLITE ROUND</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">4.6 GRS/0.16 ONZAS</span></p>', '183', NULL, 'PUBLISHED', '2023-05-18 07:59:18', '2023-05-18 08:12:51'),
(4, 'Ring', NULL, 'UG08', '<p style=\"margin-left:0px;\">3 SILVER 925<br>PERIDOT, YELOW,<br>PURPLU AND GREEN<br>7, 7 ¼, 6 1/4<br>8 GRS / 0.310 ONZA,<br>(INDIVIDUAL 2.9 / 0.10 ONZA)</p><p style=\"margin-left:0px;\">$420 FOR THREE / INDIVIDUAL $144</p>', '144', NULL, 'PUBLISHED', '2023-05-18 08:00:03', '2023-05-18 08:12:59'),
(5, 'Collection Orafa', NULL, 'MB30', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">MATERIALS: SILVER PLATINUM</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">QUANTILY: 1</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">STONE: AMETHYST</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">MEASURE/SIZE: 7 3/4</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">WEIGTH: 7 GRS / 0.25 ONZA</span></p>', '385', NULL, 'PUBLISHED', '2023-05-18 08:01:27', '2023-05-18 08:13:14'),
(6, 'Collection Orafa', NULL, 'MB29', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">MATERIALS: PLATA CON PLATINO</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">STONE: ROUND BLUE ZIRCON</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">MEASURE/SIZE: 6</span></p>', '289', NULL, 'PUBLISHED', '2023-05-18 08:02:10', '2023-05-18 08:13:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aretes`
--

CREATE TABLE `aretes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','PENDING','REJECTED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `aretes`
--

INSERT INTO `aretes` (`id`, `title`, `slug`, `model`, `description`, `price`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Aretes', NULL, 'UG65', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">MATERIALS :SILVER 925</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">EARRINGS</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">MEASURE/SIZE: 7 CM / 2.75 INCH</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">WEIGTH7.6 GRS / 0.27 OUNZA</span></p>', '80', '2023-05-18 04:03:27arete1png.png', 'PENDING', '2023-05-17 04:15:52', '2023-05-18 08:03:29'),
(2, 'Collection Angels', NULL, 'UG66', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">MATERIALS: SILVER 925</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">EARRING</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">STONE: RUBI BEADS</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">MEASURE/SIZE</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">7.5 CM X 0.8 MM / 2.95 X 0.03 INCH</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">WEIGTH: 5.4 GRS / 0.19 ONZAS</span></p>', '77', NULL, 'PENDING', '2023-05-17 04:15:52', '2023-05-18 08:13:41'),
(3, 'Collection Angels', NULL, 'UG67', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">MATERIALS: SILVER 925</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">EARRING</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">MEASURE/SIZE: 5 CM X 1.5 CM / 1.97 X 0.59 INCH</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">WEIGTH: 5.4 GRS / 0.19 X 0.05 INCH</span></p>', '99', NULL, 'PENDING', '2023-05-18 02:41:16', '2023-05-18 08:13:48'),
(4, 'Collection Angels', NULL, 'UG67', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">MATERIALS: SILVER 925</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">EARRING</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">MEASURE/SIZE: 5 CM X 1.5 CM / 1.97 X 0.59 INCH</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">WEIGTH: 5.4 GRS / 0.19 X 0.05 INCH</span></p>', '99', NULL, 'PENDING', '2023-05-18 08:05:42', '2023-05-18 08:13:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gotBoton` tinyint(1) DEFAULT NULL,
  `botonName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('PUBLISHED','PENDING','REJECTED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `banners`
--

INSERT INTO `banners` (`id`, `title`, `description`, `url`, `target`, `image`, `gotBoton`, `botonName`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Próximo Curso 2023', '<h4 style=\"margin-left:0px;\"><strong>CURSO INTENSIVO DE ORFEBRERÍA EN ORLANDO, FL.</strong></h4><h2 style=\"margin-left:0px;\"><strong>DEL 22 AL 26 DE MAYO 2023</strong></h2>', 'https://eventoorlando.ursigalleti.net', '_self', '2023-05-14 16:58:31orlandofljpeg.jpeg', 1, '+ Info', 'PUBLISHED', '2023-05-14 20:58:34', '2023-05-14 20:58:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Tips y Publicidad', '2023-05-14 21:06:54', '2023-05-18 16:57:58'),
(3, 'Proyecto de Clase', '2023-05-14 21:13:20', '2023-05-14 21:13:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cronologiacursos`
--

CREATE TABLE `cronologiacursos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `modo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `fecha` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hora` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clases` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proyecto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duracion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `costo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cronologiacursos`
--

INSERT INTO `cronologiacursos` (`id`, `modo`, `title`, `description`, `fecha`, `hora`, `clases`, `proyecto`, `duracion`, `costo`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Curso Online', 'Alambrismo Avanzado', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">Trabajaremos otras técnicas, mas de tipo manual sin tanta intervención del alicate, entorchado de hilos, trenzados, amarres y mucha creatividad serán las constantes para la confección de estos proyectos.</span></p>', 'Lunes 27 de Marzo y 3 de Abril', '12 A 1 PM', '2 clases de 1:30 horas c/u', '1 proyecto', '3 horas', '90', '2023-05-14 15:06:57alambrismo-avanzadopng.png', '2023-05-14 19:06:59', '2023-05-14 19:06:59'),
(2, 'Curso Online', 'Resina con Metal', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">La Resina tiene muchos usos y formas de aplicación por lo que hemos dividido el curso en varios talleres que lo puedes tomarlos en el orden que desees según te interese.</span></p>', 'Lunes 13 y 20 de Abril', '2:30 PM A 4 PM', '2 clases de 1:30 horas c/u', '1 proyecto', '3 horas', '90', '2023-05-17 23:35:15resinaymetalljpg.jpg', '2023-05-18 03:35:18', '2023-05-18 03:35:18'),
(3, 'Curso Online', 'Esmalte al Fuego', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">Este taller de esmalte sobre metal al fuego esta diseñado para que puedas crear tus piezas de una manera simple usando incluso un soplete de cocina.</span></p>', 'Lunes 27 de Marzo y 3 de Abril', '2:30 PM A 4 PM', '1 clase', '1 proyecto', '3 horas', '50', '2023-05-17 23:38:41esmaltealfuegopng.png', '2023-05-18 03:38:44', '2023-05-18 03:38:44'),
(4, 'Curso Online', 'Elaboración Molde de Silicona', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">Es ideal para reproducir piezas, se usa para verter en ellos cera derretida para procesos de fundición o también resinas, tiene muchas utilidades, por ejemplo en el Metal clay se usan texturas en planchas hechas de silicona</span></p>', 'Lunes 10 y 17 de Abril', '12 PM A 1 PM', '2 clases de 1:30 horas c/u', '1 proyecto', '3 horas', '90', '2023-05-17 23:40:18moldesiliconapng.png', '2023-05-18 03:40:20', '2023-05-18 03:40:20'),
(5, 'Curso Online', 'Baños Electrolíticos de Oro sobre Plata', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">Se dará toda la información del tipo de maquina o regulador ideal según sean tus recubrimientos a realizar, trabajaremos en la preparación de la pieza a enchapar y todo el tema del anodo y catodo y el uso de la solución de oro.</span></p>', 'Lunes 10 de Abril', '2:30 PM A 4:30 PM', '1 clases de 2 horas c/u', '1 proyecto', '3 horas', '90', '2023-05-17 23:42:24electrolitospng.png', '2023-05-18 03:42:27', '2023-05-18 03:42:27'),
(6, 'Curso Online', 'Curso Básico de Orfebrería', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">Este es un paquete de 4 proyectos en un taller, esta ideal para quienes quieren una formación rápida e intensiva, trabajaremos 3 anillos y unos aretes que son los que estan en la foto, aprenderas desde las tecnicas mas basicas.</span></p>', '24 Abril a 1/8/15 de Mayo', '12 PM A 1:30 PM', '4 clases de 1:30 horas c/u', '1 proyecto', '3 horas', '180', '2023-05-17 23:45:25basicoorfebreriapng.png', '2023-05-18 03:45:27', '2023-05-18 03:45:27'),
(7, 'Curso Online', 'Remaches', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">En este taller aprenderás la forma más rápida y segura para unir materiales sin necesidad de soldaduras o pegamentos, solo utilizaras remache también conocido como \"Soldadura en frio\", formidable recurso a la hora de unir elementos que no se pueden soldar y seguro.</span></p>', 'Lunes 22 y 29 de Mayo', '12 PM A 1 PM', '2 clases de 1:30 horas c/u', '1 proyecto', '3 horas', '90', '2023-05-17 23:47:48remachespng.png', '2023-05-18 03:47:56', '2023-05-18 03:47:56'),
(8, 'Curso Online', 'Cordón Tejido', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">Este cordón resulta una fina solución cuando estamos realizando un dije y necesitamos una cadena para colgarlo o necesitamos una forma para completar una pulsera etc. es de muy fácil elaboración y es muy entretenido</span></p>', 'Lunes 22 de Mayo', '2:30 PM A 4:30 PM', '1 clase', '1 proyecto', '2 horas', '45', '2023-05-17 23:49:55cordontejidopng.png', '2023-05-18 03:49:59', '2023-05-18 03:49:59'),
(9, 'Curso Online', 'Engaste de Piedra Facetada en Caja sobre Superficie Curva', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">Técnica avanzada, el participante debe saber ya realizar una caja para engastar piedra y buen uso de la lima de media caña el objetivo es que la caja se adapte a la forma curva del anillo o también de un brazalete</span></p>', 'Lunes 5 y 12 de Junio', '12 PM A 1:30 PM', '2 clases de 1:30 horas c/u', '1 proyecto', '3 horas', '90', '2023-05-17 23:52:13engastepiedrapng.png', '2023-05-18 03:52:15', '2023-05-18 03:52:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `adicional` text COLLATE utf8mb4_unicode_ci,
  `modal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `isFeatured` tinyint(1) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urlVideo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','PENDING','REJECTED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `user_id`, `name`, `price`, `description`, `adicional`, `modal`, `slug`, `isFeatured`, `image`, `urlVideo`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Curso de Remache combinado con Cuero y otros materiales', '220', 'Este taller aprenderás la forma más rápida y segura de unir materiales', '<p style=\"margin-left:0px;\">En este taller aprenderás la forma más rápida y segura para unir materiales sin necesidad de soldaduras ni pegamentos, solo utilizaras el remache también conocido como \"Soldadura en frio\", puedes unir metales como aluminio, oro, plata y acero, etc. junto con materiales como el cuero el vidrio, acrílico etc.<br>Es un formidable recurso a la hora de unir elementos que no se pueden soldar y muy seguro.</p><ul><li>2 clases</li><li>6 horas</li><li>2 proyecto</li><li>Costo: $220</li></ul>', 'remachecuero', 'curso-de-remache-combinado-con-cuero-y-otros-materiales', 0, NULL, NULL, 'PUBLISHED', '2023-05-14 05:05:00', '2023-05-18 03:58:30'),
(2, 1, 'Esmalte al fuego', '160', 'Taller de esmalte sobre metal al fuego', '<p style=\"margin-left:0px;\">Este taller de esmalte sobre metal al fuego esta diseñado para que puedas crear tus piezas de una manera simple usando incluso un soplete de cocina, podrás realizar hermosas piezas con colores, alegrar y refrescar tu trabajo actual, el curso se hace en un dia, es continuo por 6 horas.<br>El material esta incluido</p><ul><li>Full Day</li><li>6 horas de capacitación y creación continuas</li><li>varios proyectos</li></ul>', 'esmaltefuego', 'esmalte-al-fuego', 0, '2023-05-18 00:00:36esmaltealfuegopng.png', 'CcrmJ0MAPKY', 'PUBLISHED', '2023-05-17 05:15:13', '2023-05-18 04:00:38'),
(3, 1, 'Alambrismo Avanzado', '200', 'Este nivel trabajaremos con otras técnicas más de tipo manual', '<p style=\"margin-left:0px;\">En este nivel trabajaremos con otras técnicas más de tipo manual sin tanta intervención del alicate, entorchado de hilos, trenzados, amarres y mucha creatividad serán las constantes para la confección de estos proyectos a realizar.<br>Todos nuestros cursos incluyen los materiales</p><ul><li>Clases: 2</li><li>horas: 8</li><li>proyectos: 2</li></ul>', 'alambrismoavanzado', 'alambrismo-avanzado', 0, '2023-05-18 00:02:17alambrismo-avanzadopng.png', 'WZRkLcyAbN0', 'PUBLISHED', '2023-05-17 05:15:13', '2023-05-18 04:02:19'),
(4, 1, 'Filigrana', '350', 'En este taller aprenderás todo lo relacionado con esta parte importante de la joyería', '<p style=\"margin-left:0px;\">En este taller aprenderás todo lo relacionado con esta parte tan importante de la joyería como es la Filigrana, aprenderás desde cómo preparar la cinta doble trenzada y laminada que deja el borde dentado hasta como realizar el relleno, soldadura y sus acabados.</p><ul><li>3 clases</li><li>9 horas</li><li>2 proyectos</li></ul>', 'filigrana', 'filigrana', 0, '2023-05-18 00:03:45filigranapng.png', 'bDQp1aM9w3w', 'PUBLISHED', '2023-05-18 02:39:11', '2023-05-18 04:04:03'),
(5, 1, 'Resina Coloreada', '350', 'Aprenderás a hacer calados y soldaduras para la confección de las joyas', '<p style=\"margin-left:0px;\">Aprenderás hacer calados y soldaduras para la confección de las joyas donde se aplicará la resina con color</p><ul><li>3 clases</li><li>9 horas</li></ul>', 'resinacoloreada', 'resina-coloreada', 1, NULL, NULL, 'PUBLISHED', '2023-05-18 04:06:34', '2023-05-18 04:14:45'),
(6, 1, 'Resina y Madera', '240', 'Elabora hermosas piezas de orfebrería combinando madera y resina', '<p style=\"margin-left:0px;\">Elabora hermosas piezas de orfebrería combinando madera y resina coloreada</p><ul><li>2 clases, 4 horas c/u</li><li>8 horas, clase privada</li></ul>', 'resinamadera', 'resina-y-madera', 1, NULL, NULL, 'PUBLISHED', '2023-05-18 04:08:00', '2023-05-18 04:14:54'),
(7, 1, 'Resina y Metal', '350', 'Aprenderás algo de soldadura y cómo se aplica la resina', '<p style=\"margin-left:0px;\">Aprenderás algo de soldadura y como se aplica la resina</p><ul><li>Clases: 3</li><li>Horas: 9</li></ul>', 'resinametal', 'resina-y-metal', 1, NULL, NULL, 'PUBLISHED', '2023-05-18 04:09:13', '2023-05-18 04:15:04'),
(8, 1, 'Resina por Inclusión', '220', 'Elaboraremos unas piezas usando por un lado molde de silicona y otra en metal', '<p style=\"margin-left:0px;\">Elaboraremos unas piezas usando por un lado un molde de silicona y otra en metal</p><ul><li>2 clases</li><li>6 horas</li></ul>', 'resinainclusion', 'resina-por-inclusion', 1, NULL, NULL, 'PUBLISHED', '2023-05-18 04:10:56', '2023-05-18 04:15:14'),
(9, 1, 'Curso Remache con Engaste', '220', 'En este taller aprenderás la forma más rápida y segura para unir materiales sin necesidad de soldaduras ni pegamentos', '<p style=\"margin-left:0px;\">En este taller aprenderás la forma más rápida y segura para unir materiales sin necesidad de soldaduras ni pegamentos, solo utilizaras el remache también conocido como \"Soldadura en frio\", puedes unir metales como aluminio, oro, plata y acero, etc. junto con materiales como el cuero el vidrio, acrílico etc.<br>Es un formidable recurso a la hora de unir elementos que no se pueden soldar y muy seguro.</p><ul><li>2 clases</li><li>6 horas</li><li>2 proyectos</li></ul>', 'remacheengaste', 'curso-remache-con-engaste', 0, '2023-05-18 00:12:38remachespng.png', NULL, 'PUBLISHED', '2023-05-18 04:12:40', '2023-05-18 04:12:48'),
(10, 1, 'Curso Bisabra y Broche Gaveta', '380', 'Articulaciones, micro mecanismos o bisagras, en este taller construiremos un brazalete con bisagra', '<p style=\"margin-left:0px;\">Articulaciones, micro mecanismo o bisagras, en este taller construiremos un brazalete con bisagra y broche de gaveta, fabricaremos la charnela o tubo y como se ajusta, remache y acabados</p><ul><li>3 clases de 3 horas c/u</li><li>12 horas</li><li>1 proyecto, brazalete</li></ul>', 'bisagragaveta', 'curso-bisagra-y-broche-gaveta', 0, '2023-05-18 00:14:25bisagrabrochepng.png', NULL, 'PUBLISHED', '2023-05-18 04:14:34', '2023-05-18 04:15:24'),
(11, 1, 'Curso de Joyería Textil', '250', 'Usando la técnica de telar y utilizando hilos finos de metal podemos crear este tipo de malla sólida', '<p style=\"margin-left:0px;\">Usando la técnica del telar y utilizando hilos finos de metal podemos crear este tipo de malla solida muy usada en el alambrismo</p><ul><li>2 clases de 4 horas c/u</li><li>8 horas</li><li>1 proyecto, brazalete</li></ul>', 'joyeriatextil', 'curso-de-joyeria-textil', 0, '2023-05-18 00:17:02joyeria-textilpng.png', NULL, 'PUBLISHED', '2023-05-18 04:17:05', '2023-05-18 04:17:13'),
(12, 1, 'Crayon Art', '350', 'Usaremos creyones para elaborar junto con la resina piezas de joyería', '<p style=\"margin-left:0px;\">Usaremos creyones para elaborar junto con la resina piezas de joyería</p><ul><li>3 clases</li><li>9 horas</li></ul>', 'crayonart', 'crayon-art', 0, '2023-05-18 00:18:16crayonartjpg.jpg', NULL, 'PUBLISHED', '2023-05-18 04:18:18', '2023-05-18 04:18:25'),
(13, 1, 'Curso Engaste de piedras facetadas en caja', '380', 'Usando la técnica del telar y utilizando hilos finos de metal podemos crear este tipo de malla sólida', '<p style=\"margin-left:0px;\">Usando la técnica del telar y utilizando hilos finos de metal podemos crear este tipo de malla solida muy usada en el alambrismo</p><ul><li>3 clases de 3 horas c/u</li><li>12 horas</li><li>1 proyecto</li></ul>', 'piedrasfacetada', 'curso-engaste-de-piedras-facetadas-en-caja', 0, '2023-05-18 00:20:14engastepiedrapng.png', NULL, 'PUBLISHED', '2023-05-18 04:20:16', '2023-05-18 04:20:24'),
(14, 1, 'Curso Anillo de Piedra reconstituido en base metal', '380', 'Anillo de piedra reconstituida, sobre un anillo tipo Bulgari', '<p style=\"margin-left:0px;\">ANILLO DE PIEDRA RECONSTITUIDA, sobre un anillo tipo Bulgari reconstituiremos la superficie con piedra molida como: Malaquita, Turquesa y Lapislázuli.<br>El curso está dividido en una parte de orfebrería y la otra el molido de la piedra y forma de aplicarlo y sus acabados</p><ul><li>3 clases de 3 horas c/u</li><li>9 horas</li><li>1 proyecto</li></ul>', 'anillopiedrareconst', 'curso-anillo-de-piedra-reconstituido-en-base-metal', 0, '2023-05-18 00:22:10anillopriedrapng.png', NULL, 'PUBLISHED', '2023-05-18 04:22:11', '2023-05-18 04:22:19'),
(15, 1, 'Curso de Reconstituido', '380', 'Para aprender a realizar este tipo de anillo con piedra molidas primero realizaremos el contenedor donde aprenderás...', '<p style=\"margin-left:0px;\">Para aprender a realizar este tipo de anillo con piedras molidas primero realizaremos el contenedor donde aprenderás técnicas de joyería y podemos hacer como proyecto un anillo o dije.</p><ul><li>3 clases</li><li>9 horas</li><li>1 proyecto</li></ul>', 'reconstituido', 'curso-de-reconstituido', 0, '2023-05-18 00:36:12reconstituidopng.png', NULL, 'PUBLISHED', '2023-05-18 04:36:14', '2023-05-18 04:36:22'),
(16, 1, 'Curso Anillo de Volumen', '380', 'Realizaremos un anillo de sello y entraremos en el tema de la joyería', '<p style=\"margin-left:0px;\">Realizaremos un anillo de sello y entraremos en el tema de la joyería Hueca y volumetrica</p><ul><li>3 clases</li><li>9 horas</li><li>1 proyecto</li></ul>', 'anillovolumen', 'curso-anillo-de-volumen', 0, '2023-05-18 00:37:31anillovolumenpng.png', NULL, 'PUBLISHED', '2023-05-18 04:37:33', '2023-05-18 04:37:41'),
(17, 1, 'Curso Anillo Comprimido', '380', 'Un modelo de técnica avanzada, el alumno debe de tener dominio de la soldadura y uso de soplete aprenderemos como se crea este tipo de efecto', '<p style=\"margin-left:0px;\">Es un modelo de técnica avanzada, el alumno debe de tener dominio de la soldadura y uso de soplete aprenderemos como se crea este tipo de efecto haciendo un tipo de comprimido mecánico sobre el metal.</p><ul><li>3 clases de 3 horas c/u</li><li>9 horas</li><li>1 proyecto</li></ul>', 'anillocomprimido', 'curso-anillo-comprimido', 0, '2023-05-18 00:38:53anillocomprimidopng.png', NULL, 'PUBLISHED', '2023-05-18 04:38:55', '2023-05-18 04:39:03'),
(18, 1, 'Curso de Anillo Plegado', '240', 'un hermoso modelo de con sencilla técnica muy especial por sus dimensiones y curvas que le da al diseño a pesar...', '<p style=\"margin-left:0px;\">Es un hermoso modelo de con sencilla técnica muy especial por sus dimensiones y curvas que le da al diseño a pesar de que es realizado con hilo y lamina.</p><ul><li>2 clases de 3 horas c/u</li><li>6 horas</li><li>1 proyecto</li></ul>', 'anilloplegado', 'curso-anillo-plegado', 0, '2023-05-18 00:43:39anilloplegadopng.png', NULL, 'PUBLISHED', '2023-05-18 04:43:42', '2023-05-18 04:43:49'),
(19, 1, 'Curso de Anillo con Engaste 6 uñas', '280', 'Anillo con montura de 6 uñas, adiestramiento en soldadura, el alumno debe de tener conocimientos básicos del oficio', '<p style=\"margin-left:0px;\">Elaboración de un anillo con montura de 6 uñas, adiestramiento en soldadura, el alumno debe de tener conocimientos básicos del oficio.</p><p style=\"margin-left:0px;\">Clases: 3</p><p style=\"margin-left:0px;\">Horas: 9</p><p style=\"margin-left:0px;\">Numero de Proyectos:</p><ul><li>1 anillo</li></ul>', 'anillo6', 'curso-de-anillo-con-engaste-6-unas', 0, '2023-05-18 00:45:41engastedeunaspng.png', NULL, 'PUBLISHED', '2023-05-18 04:45:43', '2023-05-18 04:57:49'),
(20, 1, 'Alambrismo Básico', '280', 'En este taller aprenderás el correcto uso del Alicate y el tratamiento del Alambre, se realizarán unos proyectos de entrenamiento como pulsera, anillo...', '<p style=\"margin-left:0px;\">En este taller aprenderás el correcto uso del Alicate y el tratamiento del Alambre, se realizarán unos proyectos de entrenamiento como pulsera, anillo y zarcillos</p><ul><li>Clases: 2</li><li>proyectos: 8</li></ul>', 'alambrismobasico', 'alambrismo-basico', 0, '2023-05-18 01:00:29alambrismobasicopng.png', 'oKJgmWeRKoo', 'PUBLISHED', '2023-05-18 05:00:46', '2023-05-18 05:00:54'),
(21, 1, 'Curso de elaboración de molde con masa epoxica', '180', 'Es un hermoso modelo de con sencilla técnica muy especial por sus dimensiones y curvas que le da al diseño a pesar...', '<p style=\"margin-left:0px;\">Es un hermoso modelo de con sencilla técnica muy especial por sus dimensiones y curvas que le da al diseño a pesar de que es realizado con hilo y lamina.</p><ul><li>1 clases</li><li>4 horas</li><li>1 proyecto</li></ul>', 'moldeepoxica', 'curso-de-elaboracion-de-molde-con-masa-epoxica', 0, '2023-05-18 01:02:43moldeepoxicapng.png', NULL, 'PUBLISHED', '2023-05-18 05:02:45', '2023-05-18 05:02:52'),
(22, 1, 'Curso de Grabado al acido y remaches', '220', 'El grabado en el metal es como dibujar sobre el metal, para eso usamos ciertas sustancias las cuales te enseñaremos a usar para que puedas hacer tus diseños', '<p style=\"margin-left:0px;\">El grabado en el metal es como dibujar sobre el metal, para eso usamos ciertas sustancias las cuales te enseñaremos a usar para que puedas hacer tus diseños como dar texturas o imprimir formas en el metal y trabajaremos con 2 tipos de materiales como bronce y cobre con remaches</p><ul><li>2 clases</li><li>6 horas</li><li>1 pulsera como proyecto</li></ul>', 'gabadoacidoremaches', 'curso-de-grabado-al-acido-y-remaches', 0, '2023-05-18 01:04:28grabadoalacidoyremachespng.png', NULL, 'PUBLISHED', '2023-05-18 05:04:31', '2023-05-18 05:04:39'),
(23, 1, 'Curso de Anilo Embutido y Galloneado', '120', 'Este es un anillo muy clásico en la joyería que puede también ser decorado con galloneados', '<p style=\"margin-left:0px;\">Este es un anillo muy clásico en la joyería que puede también ser decorado con galloneados y engastes de pave, embutimos en el dado para curvear el anillo</p><ul><li>1 clases</li><li>4 horas</li><li>1 proyecto</li></ul>', 'anillogalloneado', 'curso-de-anillo-embutido-y-galloneado', 0, '2023-05-18 01:05:46anilloembutidopng.png', NULL, 'PUBLISHED', '2023-05-18 05:05:48', '2023-05-18 05:05:56'),
(24, 1, 'Curso de Anillo varios aros enlazados', '220', 'También conocido como Anillo Cartier , este anillo es el que tradicionalmente se usaba en Rusia como anillo de matrimonio también llamado Anillo de los Zares', '<p style=\"margin-left:0px;\">También conocido como Anillo Cartier , este anillo es el que tradicionalmente se usaba en Rusia como anillo de matrimonio también llamado Anillo de los Zares.</p><ul><li>2 clases</li><li>4 horas</li><li>1 proyecto</li></ul>', 'anilloenlzado', 'curso-de-anillo-varios-aros-enlazados', 0, '2023-05-18 01:07:28anillovariosarospng.png', NULL, 'PUBLISHED', '2023-05-18 05:07:30', '2023-05-18 05:07:37'),
(25, 1, 'Curso de Calado', '120', 'Esta es la técnica mas básica del oficio con la que puedes realizar maravillosas joyas en los materiales que desees además del metal con esta técnica...', '<p style=\"margin-left:0px;\">Esta es la técnica mas básica del oficio con la que puedes realizar maravillosas joyas en los materiales que desees además del metal con esta técnica y el uso del arco de sequeta puedes usarlo también en acrílico, madera entre otros</p><ul><li>1 clases</li><li>4 horas</li><li>1 proyecto</li></ul>', 'calado', 'curso-de-calado', 0, '2023-05-18 01:08:50caladopng.png', NULL, 'PUBLISHED', '2023-05-18 05:08:51', '2023-05-18 05:08:58'),
(26, 1, 'Curso de Flor Repujada', '220', 'Aprenderás a calar o cortar el metal con el arco de segueta el recocido del metal, el embutido y coplado para conformar la flor', '<p style=\"margin-left:0px;\">Aprenderás a calar o cortar el metal con el arco de segueta el recocido del metal, el embutido y coplado para conformar la flor</p><ul><li>3 clases</li><li>9 horas</li><li>1 proyecto</li></ul>', 'florrepujada', 'curso-de-flor-repujada', 0, '2023-05-18 01:10:14florrepujadapng.png', NULL, 'PUBLISHED', '2023-05-18 05:10:16', '2023-05-18 05:10:22'),
(27, 1, 'Curso de Anillo Encamisado', '320', 'Si ya te has propuesto hacer un anillo con las complicaciones de este es porque ya manejas muy bien la soldadura...', '<p style=\"margin-left:0px;\">Si ya te has propuesto hacer un anillo con las complicaciones de este es porque ya manejas muy bien la soldadura y tienes destreza en el uso de las herramientas para dar forma y ajustar partes, es un anillo clásico con muchas variaciones</p><ul><li>3 clases</li><li>9 horas</li><li>1 proyecto</li></ul>', 'anilloencamisado', 'curso-de-anillo-encamisado', 0, '2023-05-18 01:11:09anilloencamisadopng.png', NULL, 'PUBLISHED', '2023-05-18 05:11:11', '2023-05-18 05:11:19'),
(28, 1, 'Curso de Grabado al Acido', '1800', 'El grabado en el metal es como pintar en él para eso usamos ciertas sustancias las cuales te enseñaremos a usar para que puedas...', '<p style=\"margin-left:0px;\">El grabado en el metal es como pintar en él para eso usamos ciertas sustancias las cuales te enseñaremos a usar para que puedas hacer tus diseños, como dar texturas o imprimir formas en el metal</p><p style=\"margin-left:0px;\">Clases: 1</p><p style=\"margin-left:0px;\">Horas: 4</p><p style=\"margin-left:0px;\">Numero de Proyectos:</p><ul><li>brazalete</li></ul>', 'grabadoacido', 'curso-de-grabado-al-acido', 0, '2023-05-18 01:12:19grabadoalacidopng.png', NULL, 'PUBLISHED', '2023-05-18 05:12:21', '2023-05-18 05:12:27'),
(29, 1, 'Curso de Engaste de Caja Cabujon', '220', 'Trabajaremos en La elaboración de una caja para piedra cabujón, es considerado el engaste de mayor seguridad...', '<p style=\"margin-left:0px;\">Trabajaremos en La elaboración de una caja para piedra cabujón, es considerado el engaste de mayor seguridad, funciona para piedras cabujón o formas irregulares en este taller realizaremos un anillo y un dije.</p><ul><li>1 clases</li><li>6 horas</li><li>1 proyecto</li></ul>', 'engastecajacabujon', 'curso-de-engaste-caja-cabujon', 0, '2023-05-18 01:14:23engastecajacabujonpng.png', NULL, 'PUBLISHED', '2023-05-18 05:14:32', '2023-05-18 05:14:39'),
(30, 1, 'Curso de Engaste de 4 Uñas', '380', 'Se realizara un anillo con engaste de 4 uñas para piedra facetada preferiblemente redonda u ovalada, el participante debe...', '<p style=\"margin-left:0px;\">Se realizara un anillo con engaste de 4 uñas para piedra facetada preferiblemente redonda u ovalada, el participante debe de tener dominio del soplete y soldadura</p><ul><li>3 clases de 3 horas cada uno</li><li>9 horas</li><li>1 proyecto</li></ul>', 'engaste4unas', 'curso-de-engaste-de-4-unas', 0, '2023-05-18 01:16:12engaste4png.png', NULL, 'PUBLISHED', '2023-05-18 05:16:14', '2023-05-18 05:16:20'),
(31, 1, 'Curso de Anillo Bulgari', '220', 'Este anillo consta de 3 partes las cuales son: los aros de los bordes realizados en hilo cuadrado y una banda central el taller...', '<p style=\"margin-left:0px;\">Este anillo consta de 3 partes las cuales son: los aros de los bordes realizados en hilo cuadrado y una banda central el taller consiste en preparar con medidas exactas estas 3 piezas para posteriormente ser ensambladas y soldadas obteniendo este hermoso modelo</p><ul><li>2 clases</li><li>6 horas</li><li>1 proyecto</li></ul>', 'anillobulgari', 'curso-de-anillo-bulgari', 0, '2023-05-18 01:17:18anillobulgaripng.png', NULL, 'PUBLISHED', '2023-05-18 05:17:20', '2023-05-18 05:17:26'),
(32, 1, 'Curso Modelado en Cera', '220', 'Se  realizara un anillo Bombe con la técnica del modelado en cera realizando la talla y escavado de la cera usando para ello limas...', '<p style=\"margin-left:0px;\">Se realizara un anillo Bombe con la técnica del modelado en cera realizando la talla y escavado de la cera usando para ello limas y fresas hasta lograr el modelo con los diámetros o espesor de la pieza en la medida correcta realizándole los acabados correspondientes dejándolo listo para el proceso de fundición obteniendo como resultado la misma pieza en el material deseado sea oro o plata</p><ul><li>2 clases</li><li>6 horas</li><li>1 proyecto</li></ul>', 'modeladocera', 'curso-de-modelado-en-cera', 0, '2023-05-18 01:18:27modeladocerapng.png', NULL, 'PUBLISHED', '2023-05-18 05:18:29', '2023-05-18 05:18:35'),
(33, 1, 'Curso Anillo con Engaste 2 Uñas', '260', 'Este es un hermoso modelo de anillo con un engaste con solo 2 uñas es ideal para piedras redondas, el participante debe de tener dominio del soplete', '<p style=\"margin-left:0px;\">Este es un hermoso modelo de anillo con un engaste con solo 2 uñas es ideal para piedras redondas, el participante debe de tener dominio del soplete y la soldadura.</p><ul><li>2 clases de 3 horas c/u</li><li>6 horas</li><li>1 proyecto</li></ul>', 'engaste2unas', 'curso-anillo-con-engaste-2-unas', 0, '2023-05-18 01:19:38encaste2png.png', NULL, 'PUBLISHED', '2023-05-18 05:19:40', '2023-05-18 05:19:47'),
(34, 1, 'Curso de Anillo Embutido y Forjado', '260', 'Este anillo es de técnica avanzada ya que debemos de tener un dominio de martillo para el repujado y embutido...', '<p style=\"margin-left:0px;\">Este anillo es de técnica avanzada ya que debemos de tener un dominio de martillo para el repujado y embutido, utilizaremos el dado de embutir como herramienta de apoyo y le daremos volumen deseado al anillo.</p><ul><li>2 clases de 3 horas c/u</li><li>6 horas</li><li>1 proyecto</li></ul>', 'anilloembutidoforjado', 'curso-de-anillo-embutido-y-forjado', 0, '2023-05-18 01:21:09anilloforjadopng.png', NULL, 'PUBLISHED', '2023-05-18 05:21:11', '2023-05-18 05:21:20'),
(35, 1, 'Metal Clay I', '360', 'En este taller trabajaremos el material de metal clay que como su nombre lo indica es arcilla y así la trabajaremos, como arcilla, por decirlo así \"modelaremos una joya\"...', '<p style=\"margin-left:0px;\">En este taller trabajaremos el material de metal clay que como su nombre lo indica es arcilla y así la trabajaremos, como arcilla, por decirlo así \"modelaremos una joya\", como una masa flexible, trabajaremos piezas sencillas estampado y texturas como las de una hoja del jardín o una de las tantas placas de texturas que se consiguen en el mercado, otra cosa importante es trabajar las uniones</p><ul><li>3 clases de 3 horas c/u</li><li>9 horas</li><li>1 proyecto</li></ul>', 'metalclayI', 'metal-clay-1', 0, '2023-05-18 01:22:15metalclaypng.png', NULL, 'PUBLISHED', '2023-05-18 05:22:16', '2023-05-18 05:22:24'),
(36, 1, 'Metal Clay 2', '320', 'En este nivel II nos pondremos como meta la creación de una pieza más compleja en su elaboración que debe contemplar muchos elementos...', '<p style=\"margin-left:0px;\">En este nivel II nos pondremos como meta la creación de una pieza más compleja en su elaboración que debe contemplar muchos elementos a unir</p><ul><li>3 clases de 3 horas c/u</li><li>9 horas</li><li>1 proyecto</li></ul>', 'metalclay2', 'metal-clay-2', 0, '2023-05-18 01:23:10metalclay2png.png', NULL, 'PUBLISHED', '2023-05-18 05:23:12', '2023-05-18 05:23:19'),
(37, 1, 'Curso de Cadena Cubana', '360', 'Realizaremos una pulsera empezando por preparar nuestra soldadura y el hilo que necesitamos para realizarlo, el entorchado..', '<p style=\"margin-left:0px;\">Realizaremos una pulsera empezando por preparar nuestra soldadura y el hilo que necesitamos para realizarlo, el entorchado, el calado de eslabón y el armado y soldadura de la cadena, estirado y pulido, llevara un broche sencillo</p><ul><li>3 clases de 3 horas c/u</li><li>9 horas</li><li>1 proyecto</li></ul>', 'cadenacubana', 'curso-de-cadena-cubana', 1, '2023-05-18 01:24:18cadenacubanapng.png', NULL, 'PUBLISHED', '2023-05-18 05:24:20', '2023-05-18 05:24:28'),
(38, 1, 'Curso de Engastes Artesanales', '380', 'Son muchas las maneras de engastar piedras de forma artesanal usando muchas veces solo el arco de segueta', '<p style=\"margin-left:0px;\">Son muchas las maneras de engastar piedras de forma artesanal usando muchas veces solo el arco de segueta y en otros casos soldaduras sencillas, realizaremos 3 diferentes engastes</p><ul><li>3 clases de 3 horas cada uno</li><li>9 horas</li><li>3 proyecto</li></ul>', 'engasteartesanal', 'curso-de-engastes-artesanales', 0, '2023-05-18 01:27:12engastesartesanalespng.png', NULL, 'PUBLISHED', '2023-05-18 05:27:13', '2023-05-18 05:27:20'),
(39, 1, 'Curso de Reconstituido en Lamina', '380', 'Es la forma clásica de hacer un reconstituido sobre lamina, buscando un acabado liso y brillante, para ello', '<p style=\"margin-left:0px;\">Esta es la forma clásica de hacer un reconstituido sobre lamina, buscando un acabado liso y brillante, para ello debemos de calar y soldar dos laminas donde queden los espacios que rellenaremos con piedras molidas</p><ul><li>3 clases de 3 horas cada uno</li><li>9 horas</li><li>1 proyecto</li></ul>', 'reconstituidolamina', 'curso-de-reconstituido-en-lamina', 0, '2023-05-18 01:28:17reconstituidolaminapng.png', NULL, 'PUBLISHED', '2023-05-18 05:28:19', '2023-05-18 05:28:25'),
(40, 1, 'Curdo de Calado, Textura y Soldadura (Paquete)', '380', 'Es un curso intensivo de calado con conocimientos básicos del soplete soldadura, texturas martilladas y embutidos.', '<p style=\"margin-left:0px;\">Este es un curso intensivo de calado con conocimientos básicos del soplete soldadura, texturas martilladas y embutidos. En solo una clase aprenderás estas importantes técnicas de la joyería y te llevaras un par de zarcillos embutidos y un anillo de plantilla realizados por ti</p><ul><li>1 clases</li><li>4 horas</li><li>2 proyecto</li></ul>', 'caladotexturasoldadura', 'curso-de-calado-textura-y-soldadura-paquete', 0, '2023-05-18 01:29:46caladoysoldadurapng.png', NULL, 'PUBLISHED', '2023-05-18 05:29:48', '2023-05-18 05:29:55'),
(41, 1, 'Curso de Anillo Reconstituido sin Base, Solido', '220', 'Realizaremos un anillo 100% reconstituido sin necesidad de base compactaremos la molienda de piedra y daremos forma...', '<p style=\"margin-left:0px;\">Realizaremos un anillo 100% reconstituido sin necesidad de base compactaremos la molienda de piedra y daremos forma al anillo</p><ul><li>2 clases</li><li>6 horas</li><li>4 proyecto</li></ul>', 'anillosinbase', 'curso-de-anillo-reconstituido-sin-base-solido', 0, '2023-05-18 01:31:32anilloreconstituidopng.png', NULL, 'PUBLISHED', '2023-05-18 05:31:36', '2023-05-18 05:31:43'),
(42, 1, 'Curso de Anillo de Madera Reconstituida y Base de Plata', '380', 'Utilizando chapilla ( laminas) haremos este aro solido en madera con un método que te enseñaremos el cual será montado...', '<p style=\"margin-left:0px;\">Utilizando chapilla ( laminas) haremos este aro solido en madera con un método que te enseñaremos el cual será montado en un anillo de plata con la técnica de encapsulado</p><ul><li>3 clases</li><li>9 horas</li><li>1 proyecto</li></ul>', 'anillomadera', 'curso-de-anillo-de-madera-reconstituida-y-base-de-plata', 0, '2023-05-18 01:33:08anillomaderapng.png', NULL, 'PUBLISHED', '2023-05-18 05:33:28', '2023-05-18 05:33:37'),
(43, 1, 'Curso Básico de Orfebrería', '480', 'Paquete de proyectos en un solo taller esta especialmente diseñado para quieres quieren una formación rápida e intensiva, es una manera de empezar aunque es mucha la información contenida', '<p style=\"margin-left:0px;\">Este paquete de proyectos en un solo taller esta especialmente diseñado para quieres quieren una formación rápida e intensiva, es una manera de empezar aunque es mucha la información contenida ya que en 4 proyectos aprenderás todas las técnicas básicas incluso engaste de cabujón que ya es avanzado, y después puedes continuar con el orden del curso de capacitación curricular<br>Proyectos a Realizar:</p><ul><li>anillo de plantilla</li><li>zarcillos embutidos con texturas con ganchos</li><li>anillo embutido</li><li>anillo con piedra cabujón en engaste de caja</li><li>4 clase clase</li><li>12 horas</li><li>4 proyecto</li></ul>', 'basicoorfebreria', 'curso-basico-de-orfebreria', 1, '2023-05-18 01:35:1501jpg.jpg', 'WZRkLcyAbN0', 'PUBLISHED', '2023-05-18 05:35:17', '2023-05-18 05:35:24'),
(44, 1, 'Cadenas Armadas y Abiertas (sin soldadura)', '120', 'Son muchas las cadenas para trabajar es todo un mundo...', '<p style=\"margin-left:0px;\">Son muchas las cadenas para trabajar es todo un mundo, las más usadas son :</p><ul><li>La Bizantina</li><li>Cola de pescado</li><li>La Redonda</li></ul><p style=\"margin-left:0px;\">cada cadena toma una clase la puedes tomar en el orden que desees</p><ul><li>1 clases</li><li>3 horas</li><li>1 proyecto</li></ul>', 'cadenaarmada', 'cadenas-armadas-y-abiertas-sin-soldadura', 0, '2023-05-18 01:36:40cadenaarmadapng.png', NULL, 'PUBLISHED', '2023-05-18 05:36:41', '2023-05-18 05:36:48'),
(45, 1, 'Curso de Elaboración de Moldes de Silicona', '220', 'Técnica es ideal para reproducir piezas, puede ser usado para verter en ellos cera derretida para procesos de fundición o también resinas', '<p style=\"margin-left:0px;\">Esta técnica es ideal para reproducir piezas, puede ser usado para verter en ellos cera derretida para procesos de fundición o también resinas, tiene muchas utilidades, por ejemplo en el Metal clay se usan texturas en planchas hechas de silicona</p><ul><li>2 clases</li><li>6 horas</li><li>1 proyecto</li></ul>', 'moldesiliconaa', 'curso-de-elaboracion-de-moldes-de-silicona', 0, '2023-05-18 01:38:02moldesiliconapng.png', NULL, 'PUBLISHED', '2023-05-18 05:38:04', '2023-05-18 05:38:10'),
(46, 1, 'Curso de Cordón Tejido', '120', 'Este cordón resulta una fina solución cuando estamos realizando un dije y necesitamos una cadena para colgarlo o necesitamos una forma', '<p style=\"margin-left:0px;\">Este cordón resulta una fina solución cuando estamos realizando un dije y necesitamos una cadena para colgarlo o necesitamos una forma para completar una pulsera etc. es de muy fácil elaboración y es muy entretenido</p><ul><li>1 clases</li><li>3 horas</li><li>1 proyecto</li></ul>', 'cordontejido', 'curso-de-cordon-tejido', 0, '2023-05-18 01:39:12cordontejidopng.png', NULL, 'PUBLISHED', '2023-05-18 05:39:14', '2023-05-18 05:39:35'),
(47, 1, 'Curso de Escapulario con imagen en resina', '220', 'Realizaremos una pieza que consistirá en 2 etapas la primera es realizar la pieza en resina con la inclusión de una imagen', '<p style=\"margin-left:0px;\">Realizaremos una pieza que consistirá en 2 etapas la primera es realizar la pieza en resina con la inclusión de una imagen y como segunda parte es preparara la armazón en metal se realizara un diseño calado con textura y usaremos la técnica del remache para unir</p><ul><li>2 clases</li><li>6 horas</li><li>1 proyecto</li></ul>', 'escapularioresina', 'curso-de-escapulario-con-imagen-en-resina', 0, '2023-05-18 01:40:35escapulatoriopng.png', NULL, 'PUBLISHED', '2023-05-18 05:40:37', '2023-05-18 05:40:43'),
(48, 1, 'Elaboración de cajas con la ayuda de: Lamina fina, una moneda y el dado de embutir', '220', 'Esta es una técnica de la vieja escuela, es como la introducción al troquel, es muy rápido de hacer, los contenedores', '<p style=\"margin-left:0px;\">Esta es una técnica de la vieja escuela, es como la introducción al troquel, es muy rápido de hacer, los contenedores normalmente los usos para resina o reconstituido.</p><ul><li>2 clase clase</li><li>6 horas</li><li>1 proyecto</li></ul>', 'cajalaminafina', 'elaboracion-de-cajas-con-la-ayuda-de-lamina-fina-una-moneda-y-el-dado-de-embutir', 0, '2023-05-18 02:22:02elabcajaspng.png', NULL, 'PUBLISHED', '2023-05-18 06:22:04', '2023-05-18 06:22:12'),
(49, 1, 'Curso de Cadena China', '400', 'La Cadena China tiene una forma muy especial en su construcción y su técnica de ensamblaje, es muy elaborada pero de una gran hermosura para el diseño de joyas...', '<p style=\"margin-left:0px;\">La Cadena China tiene una forma muy especial en su construcción y su técnica de ensamblaje, es muy elaborada pero de una gran hermosura para el diseño de joyas, en este curso aprenderás a fundir y preparar tu hilo de plata, medidas y cálculos de la cadena para su confección y sus diferentes acabados.<br>Incluye materiales</p><ul><li>4 clases</li><li>12 horas</li><li>1 pulsera como proyecto</li></ul>', 'cadenachina', 'curso-de-cadena-china', 1, '2023-05-18 02:23:17cadenachinapng.png', NULL, 'PUBLISHED', '2023-05-18 06:23:19', '2023-05-18 06:23:26'),
(50, 1, 'Curso de Diseño 3D', '960', 'Los tiempos han cambiado hace unos años un joyero para crear una joya con múltiples engastes de piedras en las formas más complicadas le podía llevar semanas de trabajo...', '<p style=\"margin-left:0px;\">Los tiempos han cambiado hace unos años un joyero para crear una joya con múltiples engastes de piedras en las formas más complicadas le podía llevar semanas de trabajo, ahora con este método de diseño 3D puedes desde tu computador realizar la joya más majestuosa que desees, esta se imprime después en impresora 3D en cera para pasar posteriormente al casting o fundición en el material deseado</p><ul><li>8 clases de 2 horas cada una</li><li>16 horas</li><li>varios proyecto</li></ul>', 'diseno3d', 'curson-de-diseno-3d', 1, '2023-05-18 02:24:33diseno3dpng.png', NULL, 'PUBLISHED', '2023-05-18 06:24:35', '2023-05-18 06:24:43'),
(51, 1, 'Curso de baños Electrolíticos en Oro, Plata, Cobre, Niquel, Rodio', '160', 'En este taller aprenderás cómo se realiza un enchapado o baño electrolítico usando un regulador de voltaje y sales de metales como oro, plata...', '<p style=\"margin-left:0px;\">En este taller aprenderás cómo se realiza un enchapado o baño electrolítico usando un regulador de voltaje y sales de metales como oro, plata, etc.&nbsp;</p><p style=\"margin-left:0px;\">Aprenderás sobre la limpieza de la pieza, como debe estar su acabado según lo deseado y los cuidados que debemos que tener al momento de realizar esta tarea.</p><ul><li>1 clase</li><li>4 horas</li></ul>', 'banoelectrolitico', 'curso-de-banos-electroliticos-en-oro-plata-cobre-niquel-rodio', 1, '2023-05-18 02:33:52electrolitospng.png', NULL, 'PUBLISHED', '2023-05-18 06:33:54', '2023-05-18 06:34:01'),
(52, 1, 'Curso Certificado en \"Asistente de Joyero Calificado\"', '10800', 'Este taller es una capacitación intensiva, con un perfil para \"Asistente de joyero\", formado para cumplir las diversas tareas que se realizan en un taller productivo o de servicios,', '<p style=\"margin-left:0px;\">Este taller es una capacitación intensiva, con un perfil para \"Asistente de joyero\", formado para cumplir las diversas tareas que se realizan en un taller productivo o de servicios, iniciamos el taller con la fundición de metal en crisol con soplete oxi-gas para realizar láminas e hilos y se continúa con un programa de clases dividido en tres niveles.</p><ul><li>120 clases, de 3 horas cada una</li><li>360 horas</li><li>3 niveles</li><li>3 horas diarias</li></ul>', 'joyerocalificado', 'curso-certificado-en-asistente-de-joyero-calificado', 1, '2023-05-18 02:42:49asistentejoyeropng.png', NULL, 'PUBLISHED', '2023-05-18 06:42:51', '2023-05-18 06:42:58'),
(53, 1, 'Curso de Anillo Antiestress', '400', 'Este es un modelo de anillo con mucho movimientos ya que todos los aros internos se moverán libremente, los bordes los expandimos...', '<p style=\"margin-left:0px;\">Este es un modelo de anillo con mucho movimientos ya que todos los aros internos se moverán libremente, los bordes los expandimos con un embutidor y no se saldrán nunca<br>incluye materiales</p><ul><li>clases: 1</li><li>horas: 6</li><li>proyecto: 1</li></ul>', 'anilloantiestress', 'curso-de-anillo-antiestress', 0, '2023-05-18 02:44:15anilloantiestresspng.png', NULL, 'PUBLISHED', '2023-05-18 06:44:17', '2023-05-18 06:44:24'),
(54, 1, 'Curso de Casting', '350', 'Aprende a reproducir piezas bajo esta forma también llamada cera perdida, aprenderás a realizar todo el proceso de fundición desde el momento...', '<p style=\"margin-left:0px;\">Aprende a reproducir piezas bajo esta forma también llamada cera perdida, aprenderás a realizar todo el proceso de fundición desde el momento de hacer el árbol de ceras hasta el momento de echar la colada en el molde</p><ul><li>3 clases, de 3 horas cada una</li><li>9 horas</li></ul>', 'cursocasting', 'curso-de-casting', 1, '2023-05-18 02:45:16castingpng.png', NULL, 'PUBLISHED', '2023-05-18 06:45:19', '2023-05-18 06:45:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dijes`
--

CREATE TABLE `dijes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','PENDING','REJECTED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `dijes`
--

INSERT INTO `dijes` (`id`, `title`, `slug`, `model`, `description`, `price`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'COLLECTION: POWERFULS', NULL, 'MC25', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">MATERIALS: SILVER 925</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">PENDANTIF</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">STONE:CARNELIAN</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">MEASURE/SIZE: 50 CM / 19.6 INCH</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">WEIGTH:21 GRS / 0.74 OZ</span></p>', '120', '2023-05-18 04:06:43dije1png.png', 'PUBLISHED', '2023-05-17 05:08:17', '2023-05-18 08:08:18'),
(2, 'COLLECTION: ORAFA COLLECTION', NULL, 'MB27', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">MATERIALS: SILVER</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">PENDANTIF</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">STONE: ZIRCON BLUE</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">MEASURE/SIZE: 60 CM / 23.6 INCH</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">WEIGTH: 3.4 GRS / 0.12 OUNZA</span></p>', '289', '2023-05-18 04:07:26dije2png.png', 'PUBLISHED', '2023-05-17 05:08:17', '2023-05-18 08:08:22'),
(3, 'COLLECTION: POWERFULS', NULL, 'MB26', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">MATERIALS: SILVER PLATINUM</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">PENDENTIF</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">STONE: CITRINE</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">MEASURE/SIZE: 6 1/4</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">WEIGTH: 3.3 GRS / 0.12</span></p>', '375', '2023-05-18 04:08:09dije3png.png', 'PUBLISHED', '2023-05-18 02:41:29', '2023-05-18 08:08:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventoorlandos`
--

CREATE TABLE `eventoorlandos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pais` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `movil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dondeSeEntero` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expocafs`
--

CREATE TABLE `expocafs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','PENDING','REJECTED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `expocafs`
--

INSERT INTO `expocafs` (`id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, '2023-05-18 04:28:06piezasexpocaf01jpg.jpg', 'PUBLISHED', '2023-05-17 04:35:58', '2023-05-18 08:29:36'),
(2, '2023-05-18 04:28:26piezasexpocaf02jpg.jpg', 'PUBLISHED', '2023-05-18 02:43:20', '2023-05-18 08:29:41'),
(3, '2023-05-18 04:28:40piezasexpocaf03jpg.jpg', 'PUBLISHED', '2023-05-18 08:28:41', '2023-05-18 08:29:44'),
(4, '2023-05-18 04:28:52piezasexpocaf04jpg.jpg', 'PUBLISHED', '2023-05-18 08:28:53', '2023-05-18 08:29:48'),
(5, '2023-05-18 04:29:02piezasexpocaf04jpg.jpg', 'PUBLISHED', '2023-05-18 08:29:03', '2023-05-18 08:29:53'),
(6, '2023-05-18 04:29:21piezasexpocaf05jpg.jpg', 'PUBLISHED', '2023-05-18 08:29:22', '2023-05-18 08:29:56'),
(7, '2023-05-18 04:29:30piezasexpocaf06jpg.jpg', 'PUBLISHED', '2023-05-18 08:29:32', '2023-05-18 08:30:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galleryschools`
--

CREATE TABLE `galleryschools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `galleryschools`
--

INSERT INTO `galleryschools` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, NULL, '2023-05-18 13:40:38img-4941jpg.jpg', '2023-05-18 17:40:41', '2023-05-18 17:40:41'),
(2, NULL, '2023-05-18 13:40:57img-3946jpg.jpg', '2023-05-18 17:40:59', '2023-05-18 17:40:59'),
(3, NULL, '2023-05-18 13:41:15img-3260jpg.jpg', '2023-05-18 17:41:18', '2023-05-18 17:41:18'),
(4, NULL, '2023-05-18 13:41:3410982416-782793918440642-3183658290050116652-njpg.jpg', '2023-05-18 17:41:37', '2023-05-18 17:41:37'),
(5, NULL, '2023-05-18 13:42:17escuelajpg.jpg', '2023-05-18 17:42:19', '2023-05-18 17:42:19'),
(6, NULL, '2023-05-18 13:42:32escuela2jpg.jpg', '2023-05-18 17:42:33', '2023-05-18 17:42:33'),
(7, NULL, '2023-05-18 13:43:04escuela3jpg.jpg', '2023-05-18 17:43:05', '2023-05-18 17:43:05'),
(8, NULL, '2023-05-18 13:43:22ursijpg.jpg', '2023-05-18 17:43:23', '2023-05-18 17:43:23'),
(9, NULL, '2023-05-18 13:46:143bcdf6a1-c522-4cb9-8df2-f8df9240fd9bjpg.jpg', '2023-05-18 17:46:16', '2023-05-18 17:46:16'),
(10, NULL, '2023-05-18 13:46:283f00b15a-2294-40ac-a5b5-d1dae004df0fjpg.jpg', '2023-05-18 17:46:29', '2023-05-18 17:46:29'),
(11, NULL, '2023-05-18 13:46:467be113ec-8d95-4ab5-8ae8-04b3a3365f9fjpg.jpg', '2023-05-18 17:46:48', '2023-05-18 17:46:48'),
(12, NULL, '2023-05-18 13:46:5818f6955c-c474-4cdb-a97b-4915845a1092jpg.jpg', '2023-05-18 17:46:59', '2023-05-18 17:46:59'),
(13, NULL, '2023-05-18 13:47:1219be6ab7-e211-4ff0-b5b2-76f1554dff0ejpg.jpg', '2023-05-18 17:47:13', '2023-05-18 17:47:13'),
(14, NULL, '2023-05-18 13:47:2347de5f79-2a9d-4cd5-9b61-e0bf271cbe86jpg.jpg', '2023-05-18 17:47:24', '2023-05-18 17:47:24'),
(15, NULL, '2023-05-18 13:47:3587de360d-1aec-4542-9926-3c4632048f91jpg.jpg', '2023-05-18 17:47:37', '2023-05-18 17:47:37'),
(16, NULL, '2023-05-18 13:47:4602193f44-a916-4f3d-958c-b8166aebd12bjpg.jpg', '2023-05-18 17:47:47', '2023-05-18 17:47:47'),
(17, NULL, '2023-05-18 13:47:5871916d73-2bb8-40bd-a107-da22563630b6jpg.JPG', '2023-05-18 17:47:59', '2023-05-18 17:47:59'),
(18, NULL, '2023-05-18 13:48:0894476d91-763b-456e-94f3-4dfebe35805cjpg.jpg', '2023-05-18 17:48:09', '2023-05-18 17:48:09'),
(19, NULL, '2023-05-18 13:48:2395812741-e925-4dd0-8a0c-24d6b9c52258jpg.jpg', '2023-05-18 17:48:25', '2023-05-18 17:48:25'),
(20, NULL, '2023-05-18 13:48:3697986291-b52c-4257-9fc6-345eaa104b73-editadojpg.jpg', '2023-05-18 17:48:37', '2023-05-18 17:48:37'),
(21, NULL, '2023-05-18 13:48:53be6626fc-2b6c-4fef-bd22-58fe512f53e01jpg.jpg', '2023-05-18 17:48:55', '2023-05-18 17:48:55'),
(22, NULL, '2023-05-18 13:49:11d09bcc9c-b9e3-4efd-9227-3a1566131722jpg.JPG', '2023-05-18 17:49:12', '2023-05-18 17:49:12'),
(23, NULL, '2023-05-18 13:49:27imagen-013jpg.jpg', '2023-05-18 17:49:29', '2023-05-18 17:49:29'),
(24, NULL, '2023-05-18 13:49:41img-0205jpg.JPG', '2023-05-18 17:49:42', '2023-05-18 17:49:42'),
(25, NULL, '2023-05-18 13:49:52img-0208jpg.JPG', '2023-05-18 17:49:53', '2023-05-18 17:49:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `herramientas`
--

CREATE TABLE `herramientas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','PENDING','REJECTED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `herramientas`
--

INSERT INTO `herramientas` (`id`, `title`, `subtitle`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Kit de Herramientas e Insumos', 'Para Reconstituido', '<ol><li>mortero de metal</li><li>lijas</li><li>crema de pulir</li><li>pinzas</li><li>pega loca</li><li>Malaquita</li><li>coral</li><li>lapislazuli</li><li>turquesa</li></ol>', '2023-05-16 21:59:55herramienta1png.png', 'PUBLISHED', '2023-05-14 21:49:00', '2023-05-17 04:59:58'),
(2, 'Kit de Herramientas e Insumos', 'Para Metal Clay', '<ol><li>listones plasticos calibrrados para laminar clay.</li><li>exacto</li><li>reglas de medir</li><li>punzon de corte y marcado</li><li>rodillo y otros para lminado y texturas</li><li>aceite desmoldante</li><li>algodon</li><li>cepillo de bronce</li><li>lijas</li><li>papel plastico</li><li>papel encerado</li><li>pinza de cobre</li><li>soplete opciones</li><li>crema de pulir</li><li>pinza doble AA</li><li>set de medidas de anillos</li><li>martillo de plastico</li><li>lastra de madera</li><li>lastra de metal con medidas</li><li>centra punto.</li><li>calentador</li><li>olla electrica</li></ol>', '2023-05-18 02:48:58herramienta2png.png', 'PUBLISHED', '2023-05-14 21:49:01', '2023-05-18 06:49:00'),
(3, 'Kit de Herramientas e Insumos', 'Para Orfebrería', '<ol><li>Arco de segueta de 120 mm</li><li>Pelos de segueta # 2/0 o 3/0</li><li>Vernier</li><li>Tijera grande</li><li>Soplete</li><li>Pinzas de soldar</li><li>Ladrillo de soldadura</li><li>Lamina de latón</li><li>Aspillero de tornillo</li><li>Pinza de cobre</li><li>Bolsa de arena</li><li>Mordaza de madera</li><li>Lijas</li><li>Martillo de Herrero</li><li>Martillo de plastico</li><li>Matillo de bola</li><li>Tas de martillar</li><li>Motor colgante</li><li>Set de alicates</li><li>Base para motor colgante</li><li>Mechas de taladro</li><li>Lima</li><li>Crema de pulir</li></ol>', '2023-05-18 02:48:28herramienta3png.png', 'PUBLISHED', '2023-05-18 02:44:51', '2023-05-18 06:48:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `joyas`
--

CREATE TABLE `joyas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','PENDING','REJECTED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `joyas`
--

INSERT INTO `joyas` (`id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, '2023-05-18 05:02:03expojoyasgranpantalla01jpg.jpg', 'PUBLISHED', '2023-05-17 18:31:25', '2023-05-18 09:02:05'),
(2, '2023-05-18 04:42:59expojoyasgranpantalla02jpg.jpg', 'PUBLISHED', '2023-05-18 02:43:41', '2023-05-18 08:43:13'),
(3, '2023-05-18 13:06:51expojoyasgranpantalla03jpg.jpg', 'PUBLISHED', '2023-05-18 17:06:53', '2023-05-18 17:20:20'),
(4, '2023-05-18 13:10:05expojoyasgranpantalla04jpg.jpg', 'PUBLISHED', '2023-05-18 17:10:07', '2023-05-18 17:20:15'),
(5, '2023-05-18 13:10:17expojoyasgranpantalla05jpg.jpg', 'PUBLISHED', '2023-05-18 17:10:19', '2023-05-18 17:20:10'),
(6, '2023-05-18 13:10:29expojoyasgranpantalla06jpg.jpg', 'PUBLISHED', '2023-05-18 17:10:30', '2023-05-18 17:20:05'),
(7, '2023-05-18 13:10:40expojoyasgranpantalla07jpg.jpg', 'PUBLISHED', '2023-05-18 17:10:41', '2023-05-18 17:20:00'),
(8, '2023-05-18 13:10:50expojoyasgranpantalla08jpg.jpg', 'PUBLISHED', '2023-05-18 17:10:52', '2023-05-18 17:19:56'),
(9, '2023-05-18 13:11:01expojoyasgranpantalla09jpg.jpg', 'PUBLISHED', '2023-05-18 17:11:02', '2023-05-18 17:19:49'),
(10, '2023-05-18 13:11:11expojoyasgranpantalla10jpg.jpg', 'PUBLISHED', '2023-05-18 17:11:13', '2023-05-18 17:19:45'),
(11, '2023-05-18 13:11:30expojoyasgranpantalla11jpg.jpg', 'PUBLISHED', '2023-05-18 17:11:31', '2023-05-18 17:19:41'),
(12, '2023-05-18 13:16:32expojoyasgranpantalla12jpg.jpg', 'PUBLISHED', '2023-05-18 17:16:34', '2023-05-18 17:19:36'),
(13, '2023-05-18 13:16:43expojoyasgranpantalla13jpg.jpg', 'PUBLISHED', '2023-05-18 17:16:44', '2023-05-18 17:19:33'),
(14, '2023-05-18 13:16:55expojoyasgranpantalla14jpg.jpg', 'PUBLISHED', '2023-05-18 17:16:57', '2023-05-18 17:19:28'),
(15, '2023-05-18 13:17:05expojoyasgranpantalla15jpg.jpg', 'PUBLISHED', '2023-05-18 17:17:07', '2023-05-18 17:19:24'),
(16, '2023-05-18 13:17:16expojoyasgranpantalla16jpg.jpg', 'PUBLISHED', '2023-05-18 17:17:18', '2023-05-18 17:19:21'),
(17, '2023-05-18 13:17:27expojoyasgranpantalla17jpg.jpg', 'PUBLISHED', '2023-05-18 17:17:29', '2023-05-18 17:19:14'),
(18, '2023-05-18 13:17:38expojoyasgranpantalla18jpg.jpg', 'PUBLISHED', '2023-05-18 17:17:41', '2023-05-18 17:19:10'),
(19, '2023-05-18 13:17:53expojoyasgranpantalla19jpg.jpg', 'PUBLISHED', '2023-05-18 17:17:55', '2023-05-18 17:19:05'),
(20, '2023-05-18 13:18:04expojoyasgranpantalla20jpg.jpg', 'PUBLISHED', '2023-05-18 17:18:06', '2023-05-18 17:19:01'),
(21, '2023-05-18 13:18:14expojoyasgranpantalla21jpg.jpg', 'PUBLISHED', '2023-05-18 17:18:16', '2023-05-18 17:18:57'),
(22, '2023-05-18 13:18:28expojoyasgranpantalla22jpg.jpg', 'PUBLISHED', '2023-05-18 17:18:30', '2023-05-18 17:18:53'),
(23, '2023-05-18 13:18:38expojoyasgranpantalla23jpg.jpg', 'PUBLISHED', '2023-05-18 17:18:39', '2023-05-18 17:18:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_30_175428_create_jobs_table', 1),
(6, '2022_12_18_035041_create_contacts_table', 1),
(7, '2023_04_30_145301_create_categories_table', 1),
(8, '2023_04_30_150901_create_profile_table', 1),
(9, '2023_05_02_150541_create_banner_table', 1),
(10, '2023_05_02_150700_create_cursos_table', 1),
(11, '2023_05_02_150901_create_cronologiacursos_table', 1),
(12, '2023_05_02_151113_create_eventoorlando_table', 1),
(13, '2023_05_02_192419_create_services_table', 1),
(14, '2023_05_02_200736_create_galleryschools_table', 1),
(15, '2023_05_13_170813_create_anillos_table', 1),
(16, '2023_05_13_180326_create_aretes_table', 1),
(17, '2023_05_13_180425_create_dijes_table', 1),
(18, '2023_05_13_180450_create_pulseras_table', 1),
(19, '2023_05_13_180525_create_publicaciones_table', 1),
(20, '2023_05_13_180558_create_joyas_table', 1),
(21, '2023_05_13_180622_create_expocafs_table', 1),
(22, '2023_05_13_232827_create_herramientas_table', 1),
(23, '2022_12_09_225551_create_payments_table', 2),
(24, '2023_05_15_001711_create_subscripciones_table', 3),
(26, '2023_04_30_145714_create_posts_table', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `curso_id` bigint(20) UNSIGNED DEFAULT NULL,
  `referencia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `curso_id`, `referencia`, `name`, `email`, `nombre`, `monto`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2VB7412495004994W', 'Anillo Antiestress', 'sb-4d2wh864245@personal.example.com', 'Doe', '400.00', '2023-05-17 03:57:44', '2023-05-17 03:57:44', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isFeatured` tinyint(1) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('PUBLISHED','PENDING','REJECTED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `slug`, `isFeatured`, `image`, `user_id`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Curso Cadena Parte 1', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">Este es el resultado del curso de cadena Cubana y broche de caja, realizado por nuestra colega Orfebre de Venezuela Zury que nos visita y siempre que viene a Houston aprovecha y toma algunos de mis cursos, la pulsera quedo muy bien la hicimos de 8 pulgadas y termino pesando 21.5 grs calculo que hubo una merma de un 10 %</span></p>', 'curso-cadena-parte-1', 1, NULL, 1, 3, 'PUBLISHED', '2023-05-18 16:43:41', '2023-05-18 16:59:21'),
(2, 'Lista de Cursos en Orlando FL, del 22 al 26 de Mayo 2023', '<p>Nuestra lista de los cursos que estarán disponibles en el evento Orlando 2023</p>', 'lista-de-cursos-en-orlando-fl-del-22-al-26-de-mayo-2023', 1, '2023-05-18 13:03:45blog1png.png', 1, 2, 'PUBLISHED', '2023-05-18 17:03:47', '2023-05-18 17:05:35'),
(3, '¿Cómo se hace una Cadena Barbada ó Cubana?', '<p>Aprende mas sobre esta técnica en nuestro cursos online, o presenciales</p>', 'como-se-hace-una-cadena-barbada-o-cubana', 1, '2023-05-18 13:05:21blog3png.png', 1, 2, 'PUBLISHED', '2023-05-18 17:05:23', '2023-05-18 17:05:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` text COLLATE utf8mb4_unicode_ci,
  `pais` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telhome` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telmovil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('VERIFIED','PENDING','REJECTED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `nombre`, `surname`, `direccion`, `pais`, `estado`, `ciudad`, `telhome`, `telmovil`, `facebook`, `instagram`, `twitter`, `linkedin`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Malcolm', 'Cordova', NULL, 'Venezuela', 'Distrito Federal', NULL, '+584241874370', '1223', NULL, NULL, NULL, NULL, '2023-05-18 14:19:002jpg.jpg', 'PENDING', '2023-05-17 20:14:52', '2023-05-18 18:24:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','PENDING','REJECTED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, '2023-05-18 04:14:33articulosprensa01jpg.jpg', 'PUBLISHED', '2023-05-17 18:02:02', '2023-05-18 08:15:09'),
(2, '2023-05-18 04:14:48articulosprensa02jpg.jpg', 'PUBLISHED', '2023-05-17 18:02:02', '2023-05-18 08:15:14'),
(3, '2023-05-18 04:15:02articulosprensa03jpg.jpg', 'PUBLISHED', '2023-05-18 02:44:01', '2023-05-18 08:15:20'),
(4, '2023-05-18 04:15:31articulosprensa04jpg.jpg', 'PUBLISHED', '2023-05-18 08:15:33', '2023-05-18 08:15:40'),
(5, '2023-05-18 04:15:51articulosprensa05jpg.jpg', 'PUBLISHED', '2023-05-18 08:15:52', '2023-05-18 08:15:58'),
(6, '2023-05-18 04:16:10articulosprensa06jpg.jpg', 'PUBLISHED', '2023-05-18 08:16:12', '2023-05-18 08:19:11'),
(7, '2023-05-18 04:16:23articulosprensa07jpg.jpg', 'PUBLISHED', '2023-05-18 08:16:24', '2023-05-18 08:19:15'),
(8, '2023-05-18 04:16:35articulosprensa08jpg.jpg', 'PUBLISHED', '2023-05-18 08:16:36', '2023-05-18 08:19:19'),
(9, '2023-05-18 04:16:47articulosprensa09jpg.jpg', 'PUBLISHED', '2023-05-18 08:16:49', '2023-05-18 08:19:47'),
(10, '2023-05-18 04:17:01articulosprensa10jpg.jpg', 'PUBLISHED', '2023-05-18 08:17:02', '2023-05-18 08:19:51'),
(11, '2023-05-18 04:17:16articulosprensa11jpg.jpg', 'PUBLISHED', '2023-05-18 08:17:17', '2023-05-18 08:19:55'),
(12, '2023-05-18 04:17:36articulosprensa12jpg.jpg', 'PUBLISHED', '2023-05-18 08:17:38', '2023-05-18 08:20:01'),
(13, '2023-05-18 04:17:48articulosprensa13jpg.jpg', 'PUBLISHED', '2023-05-18 08:17:50', '2023-05-18 08:20:05'),
(14, '2023-05-18 04:18:01articulosprensa14jpg.jpg', 'PUBLISHED', '2023-05-18 08:18:02', '2023-05-18 08:20:09'),
(15, '2023-05-18 04:18:16articulosprensa15jpg.jpg', 'PUBLISHED', '2023-05-18 08:18:17', '2023-05-18 08:20:13'),
(16, '2023-05-18 04:18:56articulosprensa16jpg.jpg', 'PUBLISHED', '2023-05-18 08:18:58', '2023-05-18 08:20:17'),
(17, NULL, 'PUBLISHED', '2023-05-18 08:19:03', '2023-05-18 08:20:22'),
(18, '2023-05-18 04:21:10articulosprensa17jpg.jpg', 'PUBLISHED', '2023-05-18 08:21:12', '2023-05-18 08:24:55'),
(19, '2023-05-18 04:21:49articulosprensa18jpg.jpg', 'PUBLISHED', '2023-05-18 08:21:51', '2023-05-18 08:24:59'),
(20, '2023-05-18 04:22:02articulosprensa19jpg.jpg', 'PUBLISHED', '2023-05-18 08:22:04', '2023-05-18 08:25:03'),
(21, '2023-05-18 04:22:16articulosprensa20jpg.jpg', 'PUBLISHED', '2023-05-18 08:22:18', '2023-05-18 08:25:08'),
(22, '2023-05-18 04:22:34articulosprensa21jpg.jpg', 'PUBLISHED', '2023-05-18 08:22:35', '2023-05-18 08:25:12'),
(23, '2023-05-18 04:22:46articulosprensa22jpg.jpg', 'PUBLISHED', '2023-05-18 08:22:47', '2023-05-18 08:25:16'),
(24, '2023-05-18 04:23:26articulosprensa23jpg.jpg', 'PUBLISHED', '2023-05-18 08:23:27', '2023-05-18 08:25:20'),
(25, '2023-05-18 04:23:40articulosprensa24jpg.jpg', 'PUBLISHED', '2023-05-18 08:23:42', '2023-05-18 08:25:27'),
(26, '2023-05-18 04:23:55articulosprensa25jpg.jpg', 'PUBLISHED', '2023-05-18 08:23:56', '2023-05-18 08:25:32'),
(27, '2023-05-18 04:24:11articulosprensa26jpg.jpg', 'PUBLISHED', '2023-05-18 08:24:13', '2023-05-18 08:25:36'),
(28, '2023-05-18 04:24:27articulosprensa27jpg.jpg', 'PUBLISHED', '2023-05-18 08:24:29', '2023-05-18 08:25:40'),
(29, '2023-05-18 04:24:40articulosprensa28jpg.jpg', 'PUBLISHED', '2023-05-18 08:24:42', '2023-05-18 08:25:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pulseras`
--

CREATE TABLE `pulseras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','PENDING','REJECTED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pulseras`
--

INSERT INTO `pulseras` (`id`, `title`, `slug`, `model`, `description`, `price`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Collection Angel', NULL, 'UG53', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">BANGLE</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">Silver 925</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">Stone: Mother of Pearl heart,</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">Pearl beads, ruby beads,</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">Agatha beads.</span></p>', '0', '2023-05-18 04:09:54pulsera1png.png', 'PUBLISHED', '2023-05-17 18:12:45', '2023-05-18 17:20:39'),
(2, 'Collection Bangle', NULL, 'UG54', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">MATERIALS: Silver 925</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">STONES: Mother of Pearl heart,</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">beads Glass MEASURE : 6.5 cm / 2.56 inch</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">(Internal Measure).</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">WEIGTH: 54.02 GRS / 1.91 OUNCE</span></p>', '225', '2023-05-18 04:10:50pulsera2png.png', 'PUBLISHED', '2023-05-17 18:12:46', '2023-05-18 17:20:51'),
(3, 'Powerfuls Collection', NULL, 'UG55', '<p><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">MATERIALS: SILVER 925</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">BRACELET</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">STONE: AMHETYST</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">MEASURE/SIZE: 17.3 CM / 6.8 INCH</span><br><span style=\"background-color:rgb(255,255,255);color:rgb(51,51,51);\">WEIGTH: 23.5 GRS / 0.82 OUNZA</span></p>', '205', '2023-05-18 04:12:13pulsera3png.png', 'PUBLISHED', '2023-05-18 02:44:22', '2023-05-18 17:20:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `videoUrl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','PENDING','REJECTED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `services`
--

INSERT INTO `services` (`id`, `title`, `subtitle`, `model`, `description`, `price`, `image`, `videoUrl`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Reparación de Joyas en Oro y Plata', 'Reparación y Actualización de Diseño de Joyas', NULL, '<p style=\"margin-left:0px;\">Realizamos todo tipo de reparación como:</p><ul><li>Soldadura de cadenas</li><li>Soldadura de post de zarcillo</li><li>Cambio de Broches</li><li>Montura de piedras</li><li>Reparaciones en general en oro y plata</li><li>Cambio de pilas relojes</li><li>Limpieza y mantenimiento de joyas</li><li>Baños de oro</li><li>Encargos</li></ul>', NULL, NULL, 'EPmgpcI0nrA', 'PUBLISHED', '2023-05-14 21:36:16', '2023-05-14 21:41:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subscripciones`
--

CREATE TABLE `subscripciones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('SUPERADMIN','ADMIN','MEMBER','GUEST') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'GUEST',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `role`, `email`, `email_verified_at`, `password`, `is_active`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'superadministrador', 'SUPERADMIN', 'superadmin@superadmin.com', '2023-05-14 03:46:43', '$2y$10$Yq1AN5MGhqiXw2kzVKLk1OdYdM014GP44JQ60.vLj1QbkGM1xaPlq', NULL, NULL, '2023-05-14 03:46:43', '2023-05-14 03:46:43', NULL),
(2, 'administrador', 'ADMIN', 'admin@admin.com', '2023-05-14 03:46:43', '$2y$10$4Mqrru5HJrDUHDRnhwKS0eRgmDSN.jtm9D.okcNxUBXG576MwTG.6', NULL, NULL, '2023-05-14 03:46:43', '2023-05-14 03:46:43', NULL),
(3, 'miembro', 'MEMBER', 'miembro@miembro.com', '2023-05-14 03:46:43', '$2y$10$/AUEBNePzWStLep3rqkqSORTIu335jmwPlU/.QaKfLOEDEqfg5fRu', NULL, NULL, '2023-05-14 03:46:43', '2023-05-14 03:46:43', NULL),
(4, 'invitado', 'GUEST', 'invitado@invitado.com', '2023-05-14 03:46:43', '$2y$10$iuVUUBqgvAXMWEKf7JxQwub2Z0UpcRM4aGPj4gNG.ZR7YQSFeXooS', NULL, NULL, '2023-05-14 03:46:43', '2023-05-14 03:46:43', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anillos`
--
ALTER TABLE `anillos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aretes`
--
ALTER TABLE `aretes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cronologiacursos`
--
ALTER TABLE `cronologiacursos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cursos_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `dijes`
--
ALTER TABLE `dijes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `eventoorlandos`
--
ALTER TABLE `eventoorlandos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `expocafs`
--
ALTER TABLE `expocafs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `galleryschools`
--
ALTER TABLE `galleryschools`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `herramientas`
--
ALTER TABLE `herramientas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `joyas`
--
ALTER TABLE `joyas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`),
  ADD KEY `payments_curso_id_foreign` (`curso_id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pulseras`
--
ALTER TABLE `pulseras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subscripciones`
--
ALTER TABLE `subscripciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anillos`
--
ALTER TABLE `anillos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `aretes`
--
ALTER TABLE `aretes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cronologiacursos`
--
ALTER TABLE `cronologiacursos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `dijes`
--
ALTER TABLE `dijes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `eventoorlandos`
--
ALTER TABLE `eventoorlandos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `expocafs`
--
ALTER TABLE `expocafs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `galleryschools`
--
ALTER TABLE `galleryschools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `herramientas`
--
ALTER TABLE `herramientas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `joyas`
--
ALTER TABLE `joyas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `pulseras`
--
ALTER TABLE `pulseras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `subscripciones`
--
ALTER TABLE `subscripciones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_curso_id_foreign` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
