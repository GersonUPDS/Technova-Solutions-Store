-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-05-2025 a las 19:16:04
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `technova_solutions`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `Id_Cliente` int(11) NOT NULL,
  `Nombre_Cliente` varchar(100) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Direccion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `Id_Compras` int(11) NOT NULL,
  `Id_Proveedor` int(11) DEFAULT NULL,
  `Metodo_Pago` varchar(50) DEFAULT NULL,
  `Estado_Compra` varchar(50) DEFAULT NULL,
  `Importe_Total` decimal(10,2) DEFAULT NULL,
  `Fecha_Compras` date DEFAULT NULL,
  `Id_Usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `Id_DetalleVenta` int(11) NOT NULL,
  `Id_Venta` int(11) DEFAULT NULL,
  `Id_Producto` int(11) DEFAULT NULL,
  `Cantidad` int(11) NOT NULL,
  `Subtotal` decimal(10,2) DEFAULT NULL,
  `Stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `Id_Permiso` int(11) NOT NULL,
  `Id_Roles` int(11) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`Id_Permiso`, `Id_Roles`, `Descripcion`) VALUES
(1, 1, 'Gestionar usuarios'),
(2, 1, 'Registrar ventas'),
(3, 3, 'Gestionar usuarios'),
(4, 3, 'Registrar ventas'),
(5, NULL, NULL),
(6, NULL, NULL),
(7, NULL, NULL),
(8, 9, NULL),
(9, 12, NULL),
(10, 13, 'Gestionar usuarios'),
(11, 13, 'Registrar ventas'),
(12, 13, 'Ver reportes'),
(13, 13, 'Gestionar inventario'),
(14, 14, 'Gestionar usuarios'),
(15, 14, 'Registrar ventas'),
(16, 14, 'Ver reportes'),
(17, 14, 'Gestionar inventario'),
(18, 15, 'Gestionar usuarios'),
(19, 15, 'Registrar ventas'),
(20, 15, 'Ver reportes'),
(21, 15, 'Gestionar inventario'),
(22, 16, 'Registrar ventas'),
(23, 17, 'Registrar ventas'),
(24, 17, 'Ver reportes'),
(25, 18, 'Registrar ventas'),
(26, 18, 'Ver reportes'),
(27, 19, 'Registrar ventas'),
(28, 20, 'Gestionar usuarios'),
(29, 20, 'Gestionar inventario'),
(30, 20, 'Ver reportes'),
(31, 20, 'Registrar ventas'),
(32, 21, 'Gestionar inventario'),
(33, 21, 'Ver reportes'),
(34, 21, 'Registrar ventas'),
(35, 22, 'Gestionar usuarios'),
(36, 22, 'Gestionar inventario'),
(37, 22, 'Ver reportes'),
(38, 22, 'Registrar ventas'),
(39, 23, 'Gestionar inventario'),
(40, 23, 'Ver reportes'),
(41, 23, 'Registrar ventas'),
(42, 24, 'Gestionar usuarios'),
(43, 24, 'Gestionar inventario'),
(44, 24, 'Ver reportes'),
(45, 24, 'Registrar ventas'),
(46, 25, 'Registrar ventas'),
(47, 26, 'Registrar ventas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `Id_Personal` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `Direccion` text DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `Género` enum('Masculino','Femenino','','') NOT NULL,
  `Estado_Civil` enum('Soltero(a)','Casado(a)','Otro','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`Id_Personal`, `Nombre`, `Apellidos`, `Direccion`, `Telefono`, `Fecha_Nacimiento`, `Género`, `Estado_Civil`) VALUES
(5, 'Gerson', 'Alvarado Alvarado', 'Av Omar Chavez', '77001632', '0000-00-00', 'Masculino', 'Soltero(a)'),
(6, 'Luis', 'Dias Vaca', 'Av Paurito', '78596161', '0000-00-00', 'Masculino', 'Soltero(a)'),
(7, 'Humberto', 'Duran', 'El torno', '79463105', '0000-00-00', 'Masculino', 'Soltero(a)'),
(8, 'Manuel', 'Torrez', 'Av Mutualista', '79561832', '0000-00-00', 'Masculino', 'Soltero(a)'),
(9, 'Laura', 'Escobar', 'Av Alemana', '79564813', '0000-00-00', 'Masculino', 'Soltero(a)'),
(10, 'Lucas', 'Torrez A', 'Av Beni', '79461632', '0000-00-00', 'Masculino', 'Soltero(a)'),
(11, 'Lucas', 'Torrez A', NULL, NULL, '0000-00-00', 'Masculino', 'Soltero(a)'),
(12, 'Sofia', 'Alvarado Ezpinoza', 'Av Omar Chavez', '79468162', '0000-00-00', 'Masculino', 'Soltero(a)'),
(13, 'Sofia', 'Alvarado Ezpinoza', 'Av Omar Chavez', '79468162', '0000-00-00', 'Masculino', 'Soltero(a)'),
(14, 'Sofia', 'Alvarado Ezpinoza', 'Av Omar Chavez', '79468162', '0000-00-00', 'Masculino', 'Soltero(a)'),
(15, 'Sofia Laura', 'Alvarado Ezpinoza', 'Av Omar Chavez', '79468162', '0000-00-00', 'Masculino', 'Soltero(a)'),
(16, 'Sofia L', 'Alvarado Ezpinoza', 'Av Omar Chavez', '79468162', '0000-00-00', 'Masculino', 'Soltero(a)'),
(17, 'Sofia L', 'Alvarado Ezpinoza', 'Av Omar Chavez', '79468162', '0000-00-00', 'Masculino', 'Soltero(a)'),
(18, 'Tomas', 'Antelo', NULL, NULL, '0000-00-00', 'Masculino', 'Soltero(a)'),
(19, 'Tomas', 'Antelo', NULL, NULL, '0000-00-00', 'Masculino', 'Soltero(a)'),
(20, 'Tomas', 'Antelo', NULL, NULL, '0000-00-00', 'Masculino', 'Soltero(a)'),
(21, 'Danner', 'Alvarado', NULL, NULL, '0000-00-00', 'Masculino', 'Soltero(a)'),
(22, 'Alberto', 'Suarez', NULL, NULL, '0000-00-00', 'Masculino', 'Soltero(a)'),
(23, 'Ana', 'Perales', NULL, NULL, '0000-00-00', 'Masculino', 'Soltero(a)'),
(24, 'Supervisor', 'super', 'Av mutualista', '79461302', '0000-00-00', 'Masculino', ''),
(25, 'cajero', 'caja', 'av mutu', '79461302', '1995-08-19', 'Masculino', ''),
(26, 'admin', 'uno', 'avenida 2', '79461302', '1995-01-26', 'Masculino', ''),
(27, 'super', 'super', 'avenida beni', '79461302', '1995-05-08', 'Masculino', 'Soltero(a)'),
(28, 'Marco', 'Alvarez', 'Av moscu', '79461066', '1995-08-05', 'Masculino', 'Casado(a)'),
(29, 'jorge', 'Saucedo', 'plan 3000', '79461302', '1999-08-09', 'Femenino', 'Casado(a)'),
(30, 'us123', 'us123', 'av Omar Chavez', '77806195', '1995-05-19', 'Masculino', 'Casado(a)'),
(31, 'cajero1', 'sanchez', 'Av. Omar Chavez', '79461302', '2000-08-19', 'Masculino', 'Casado(a)'),
(32, 'jose luis', 'arancibia', 'paurito', '79461302', '2001-02-19', 'Femenino', 'Casado(a)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `Id_Productos` int(11) NOT NULL,
  `Nombre_Producto` varchar(100) NOT NULL,
  `Descripcion` text DEFAULT NULL,
  `Precio` decimal(10,2) NOT NULL,
  `Stock` int(11) DEFAULT NULL,
  `Id_Proveedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`Id_Productos`, `Nombre_Producto`, `Descripcion`, `Precio`, `Stock`, `Id_Proveedor`) VALUES
(1, 'Nike Air Force 1', 'Cuero premium en la parte superior, suela de goma resistente, amortiguación Air en la entresuela.', 150.00, 4, 1),
(2, 'Adidas Ultraboost 22', 'Tejido Primeknit reciclado en la parte superior, entresuela Boost para amortiguación, suela de caucho Continental.', 250.00, 5, 4),
(3, 'Puma RS-X', 'Malla transpirable con superposiciones de cuero y gamuza, entresuela de EVA, suela de goma con gran tracción.', 180.00, 8, 9),
(4, 'New Balance 574', 'Mezcla de gamuza y malla en la parte superior, entresuela ENCAP para mayor soporte, suela de caucho duradera.', 350.00, 9, 5),
(5, 'Reebok Classic Leather', 'Parte superior de cuero suave, plantilla de espuma EVA para comodidad, suela de caucho de alta resistencia.', 250.00, 10, 1),
(6, 'Converse Chuck Taylor All Star', 'Lona de algodón en la parte superior, ojales de metal, suela de goma vulcanizada para mayor tracción.', 100.00, 5, 3),
(7, 'Vans Old Skool', 'Parte superior de lona y gamuza, puntera reforzada, suela waffle de goma para mejor agarre.', 160.00, 4, 2),
(8, 'Asics Gel-Kayano 29', 'Parte superior de malla transpirable, tecnología GEL para amortiguación, entresuela FF Blast+ para mayor rebote.', 190.00, 6, 10),
(9, 'Jordan 1 Retro High', 'Cuero de alta calidad en la parte superior, suela de goma con patrón de tracción, unidad Air-Sole para amortiguación.', 280.00, 10, 1),
(10, 'Salomon Speedcross 5', 'Parte superior de malla antiresiduos, suela Contagrip con tacos profundos, sistema Quicklace para ajuste rápido.', 190.00, 8, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promociones`
--

CREATE TABLE `promociones` (
  `Id_Promociones` int(11) NOT NULL,
  `Nombre_Promocion` varchar(100) DEFAULT NULL,
  `Descripcion` text DEFAULT NULL,
  `Descuento` decimal(5,2) DEFAULT NULL,
  `Fecha_Inicio` date DEFAULT NULL,
  `Fecha_Fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `Id_Proveedor` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Estado` enum('Activo','Inactivo','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`Id_Proveedor`, `Nombre`, `Estado`) VALUES
(1, 'FairPlay', 'Activo'),
(2, 'Bata', 'Activo'),
(3, 'Manaco', 'Activo'),
(4, 'Adidas', 'Activo'),
(5, 'Casa del tenis', 'Activo'),
(9, 'Yuth', 'Activo'),
(10, 'Azaleia', 'Activo'),
(12, 'Adidas Sport', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `Id_Roles` int(11) NOT NULL,
  `Id_Usuario` int(11) DEFAULT NULL,
  `Cargo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`Id_Roles`, `Id_Usuario`, `Cargo`) VALUES
(1, 1, 'Administrador'),
(2, 2, 'Cajero'),
(3, 3, 'Administrador'),
(4, 4, 'Supervisor'),
(5, 5, 'Administrador'),
(6, 6, 'Administrador'),
(7, 7, 'Administrador'),
(8, 8, 'Administrador'),
(9, 9, 'Administrador'),
(10, 10, 'Administrador'),
(11, 11, 'Administrador'),
(12, 12, 'Administrador'),
(13, 13, 'Administrador'),
(14, 14, 'Administrador'),
(15, 15, 'Administrador'),
(16, 16, 'Cajero'),
(17, 17, 'Supervisor'),
(18, 18, 'Supervisor'),
(19, 19, 'Cajero'),
(20, 20, 'Administrador'),
(21, 21, 'Supervisor'),
(22, 22, 'Administrador'),
(23, 23, 'Supervisor'),
(24, 24, 'Administrador'),
(25, 25, 'Cajero'),
(26, 26, 'Cajero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id_Usuario` int(11) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Contrasena` varchar(255) NOT NULL,
  `Id_Personal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id_Usuario`, `Email`, `Contrasena`, `Id_Personal`) VALUES
(1, 'gerson@gmail.com', '$2y$10$ySRzPxLkF/t5jM2W6pOsFe.tQX14vNjJL1f/JH1OBSQ1V/Twh5Rsi', 5),
(2, 'luis@gmail.com', '$2y$10$y4pdmOxVpC1IY66eKAbt0.PBeKGZ3Y3ok96AjHQGhqqwnoBCD5jui', 6),
(3, 'humberto@gmail.com', '$2y$10$kj/1IzzHkQkbGkdThqYTNOi4odxx7G81JD77KTGKxYRbc6ECtxnVO', 7),
(4, 'manuel@gmail.com', '$2y$10$J0KWWU.FmGG6b6ESDX7I0eUQh4AhazwtX/CwZ5VuAOz8WBta9QTWS', 8),
(5, 'laura@gmail.com', '$2y$10$CYd35O0wviZwT49bhGv9L.hoB8hnsbyPQ6IweCCQsGUPXl.DGPUta', 9),
(6, 'lucas@gmail.com', '$2y$10$KkQbw81P5nkpJzmpa.VWvOSf8RnqzU26hSTai2Wjz4HssaVXKyfTK', 10),
(7, 'sofia@gmail.com', '$2y$10$XSr7vwU1iO1RK0kcnNJ9B.XpWOW8tJktpSiWkQwCHFS6qYr5UQroG', 12),
(8, 'sofia@gmail.com', '$2y$10$.Lqwh6nj7m45DBRojuC83OYH3XAsu41/Iq8C5F0BSV1ijd3ng5NtW', 13),
(9, 'sofia@gmail.com', '$2y$10$N9OZ/caAUYn.OQ67vjpiZubZuR5WzDS2l2pc1Z9y6KH9.0iH1cduO', 14),
(10, 'sofia@gmail.com', '$2y$10$B0qIikyvmgmvsHonA1Tfbu9tSVp3VfXUPIh78DAmYhCCrdUOn9enS', 15),
(11, 'sofia@gmail.com', '$2y$10$PBUmMMQDC3YoplZInuOw5OcCyGXOAJHK0KlQNekmEzKQiEcCGtwU.', 16),
(12, 'sofia@gmail.com', '$2y$10$QyG.CorM1fX/lo2srGt6Cu0YxSSqsgUSxiu44svYwfORZlgkJevSW', 17),
(13, 'tomas@gmail.com', '$2y$10$K.ii3.l7Mq6idk58NdVnTOpfQ3qpMfFVaffyXkKzjc99lsERsx9re', 18),
(14, 'tomas@gmail.com', '$2y$10$V8kYlkheYW4rgxxW78t5xezQSSj2Vyu1LFlo6gZlmLE5T9oNjLdPy', 20),
(15, 'danner@gmail.com', '$2y$10$DyemW9FvemW2l2ZGnuTo3O21uagzZbYq6FAoFl30LvyrvCBWOC9UO', 21),
(16, 'alberto@gmail.com', '$2y$10$M2Bn/ZYBQhPXrEgkxySN2O5RojfP.kJGdnjd/Bw4AByQK6o60N0jS', 22),
(17, 'ana@gmail.com', '$2y$10$ulscXitf7FukDXTVrFepwO5dS2/gQEwb5FP.tQVJVywcxQND9NRAG', 23),
(18, 'supervisor@gmail.com', '$2y$10$1Llw81bU2t1/SHMsqIP.3.EqO3wgHlqO8CIPqRx9aXbxlVvEW.qgG', 24),
(19, 'cajero@gmail.com', '$2y$10$AK1bkPIBYisXSrWISwO94OAq6DHzdgQd0AWciyFj3ka0Wjt4r5LUW', 25),
(20, 'admin@gmail.com', '$2y$10$kByDnkabS7gVhAHtvuMP1uzL66KmrZCVPHHeCXcWBQcIgcLZy3i/K', 26),
(21, 'super@gmail.com', '$2y$10$QedazMcKQbuYMNtSG3cFhuiY8JIyd5WjrznEIdr83lSVOiMPztvvW', 27),
(22, 'marco@gmail.com', '$2y$10$ElrDoKLzx/jr/UxLbKpTmudPRD7hSnkVl/xNi1tBcJok3I53wQ9mC', 28),
(23, 'jorge@gmail.com', '$2y$10$4Ar.rt/X6KVhmBT.9Ah8eupNzGcsCv8FXkaDyEY6.bOvIxcnW9LK6', 29),
(24, 'us1234@gmail.com', '$2y$10$x9yrak9xYSuZD1RYLDG/qeA20vTPabpRNFmKWiZB0pvBXOo/Z6vDe', 30),
(25, 'cajero1@gmail.com', '$2y$10$RfXT/s8Vi8.BJ3Qq1Z3jFuggy52Q1FOR0ZBOXgnE8MB1qesUwAwKC', 31),
(26, 'joseluis@gmail.com', '$2y$10$7dZxI0IZVC5aKsh9mtA.nezAI05ULIWCLeBelfNaBizInMh56HR62', 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `Id_Venta` int(11) NOT NULL,
  `Id_Usuario` int(11) DEFAULT NULL,
  `Id_Cliente` int(11) DEFAULT NULL,
  `Id_Productos` int(11) DEFAULT NULL,
  `Fecha_Venta` date NOT NULL,
  `Total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `Id_ventas` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `Id_Productos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`Id_ventas`, `cantidad`, `total`, `Id_Productos`) VALUES
(0, 1, 150, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Id_Cliente`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`Id_Compras`),
  ADD KEY `Id_Proveedor` (`Id_Proveedor`),
  ADD KEY `Id_Usuario` (`Id_Usuario`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`Id_DetalleVenta`),
  ADD KEY `Id_Venta` (`Id_Venta`),
  ADD KEY `Id_Producto` (`Id_Producto`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`Id_Permiso`),
  ADD KEY `Id_Roles` (`Id_Roles`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`Id_Personal`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`Id_Productos`),
  ADD KEY `fk_proveedor` (`Id_Proveedor`);

--
-- Indices de la tabla `promociones`
--
ALTER TABLE `promociones`
  ADD PRIMARY KEY (`Id_Promociones`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`Id_Proveedor`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`Id_Roles`),
  ADD KEY `Id_Usuario` (`Id_Usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_Usuario`),
  ADD KEY `Id_Personal` (`Id_Personal`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`Id_Venta`),
  ADD KEY `Id_Usuario` (`Id_Usuario`),
  ADD KEY `Id_Cliente` (`Id_Cliente`),
  ADD KEY `Id_Productos` (`Id_Productos`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD KEY `fk_productos` (`Id_Productos`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `Id_Cliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `Id_Compras` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `Id_DetalleVenta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `Id_Permiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
  MODIFY `Id_Personal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `Id_Productos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `promociones`
--
ALTER TABLE `promociones`
  MODIFY `Id_Promociones` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `Id_Proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `Id_Roles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `Id_Venta` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`Id_Proveedor`) REFERENCES `proveedores` (`Id_Proveedor`),
  ADD CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`Id_Usuario`);

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`Id_Venta`) REFERENCES `venta` (`Id_Venta`),
  ADD CONSTRAINT `detalle_venta_ibfk_2` FOREIGN KEY (`Id_Producto`) REFERENCES `productos` (`Id_Productos`);

--
-- Filtros para la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD CONSTRAINT `permiso_ibfk_1` FOREIGN KEY (`Id_Roles`) REFERENCES `roles` (`Id_Roles`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_proveedor` FOREIGN KEY (`Id_Proveedor`) REFERENCES `proveedores` (`Id_Proveedor`);

--
-- Filtros para la tabla `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`Id_Usuario`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`Id_Personal`) REFERENCES `personal` (`Id_Personal`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`Id_Usuario`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`Id_Cliente`) REFERENCES `clientes` (`Id_Cliente`),
  ADD CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`Id_Productos`) REFERENCES `productos` (`Id_Productos`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `fk_productos` FOREIGN KEY (`Id_Productos`) REFERENCES `productos` (`Id_Productos`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
