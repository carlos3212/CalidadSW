  -- phpMyAdmin SQL Dump
  -- version 5.1.1
  -- https://www.phpmyadmin.net/
  --
  -- Servidor: localhost
  -- Tiempo de generación: 11-01-2022 a las 06:19:39
  -- Versión del servidor: 10.4.22-MariaDB
  -- Versión de PHP: 7.4.27

  SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
  START TRANSACTION;
  SET time_zone = "+00:00";


  /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
  /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
  /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
  /*!40101 SET NAMES utf8mb4 */;

  --
  -- Base de datos: `smartshop`
  --

  -- --------------------------------------------------------

  --
  -- Estructura de tabla para la tabla `ads`
  --

  CREATE TABLE `ads` (
    `id` int(11) NOT NULL,
    `title` varchar(1000) NOT NULL,
    `img` varchar(1000) NOT NULL,
    `link` varchar(1000) NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

  -- --------------------------------------------------------

  --
  -- Estructura de tabla para la tabla `category`
  --

  CREATE TABLE `category` (
    `id` int(11) NOT NULL,
    `name` varchar(1000) NOT NULL,
    `icon` varchar(1000) NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

  --
  -- Volcado de datos para la tabla `category`
  --

  INSERT INTO `category` (`id`, `name`, `icon`) VALUES
  (1, 'Smartphone', 'phone'),
  (2, 'Smartcam', 'cam'),
  (3, 'Laptop', 'laptop'),
  (4, 'Smartwatch', 'watch'),
  (5, 'Smartspeaker', 'speaker'),
  (6, 'SmartVR', 'vr');

  -- --------------------------------------------------------

  --
  -- Estructura de tabla para la tabla `chat`
  --

  CREATE TABLE `chat` (
    `chatid` int(11) NOT NULL,
    `sender_userid` int(11) NOT NULL,
    `reciever_userid` int(11) NOT NULL,
    `message` text NOT NULL,
    `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
    `status` int(1) NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

  --
  -- Volcado de datos para la tabla `chat`
  --

  INSERT INTO `chat` (`chatid`, `sender_userid`, `reciever_userid`, `message`, `timestamp`, `status`) VALUES
  (1, 5, 6, 'hola', '2022-01-07 23:04:56', 0),
  (2, 6, 5, 'ff', '2022-01-10 22:09:06', 0),
  (3, 5, 6, 'hoooo', '2022-01-10 22:10:01', 1),
  (4, 6, 5, 'yes', '2022-01-10 22:11:07', 0);

  -- --------------------------------------------------------

  --
  -- Estructura de tabla para la tabla `chat_login_details`
  --

  CREATE TABLE `chat_login_details` (
    `id` int(11) NOT NULL,
    `userid` int(11) NOT NULL,
    `last_activity` timestamp NOT NULL DEFAULT current_timestamp(),
    `is_typing` enum('no','yes') NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

  --
  -- Volcado de datos para la tabla `chat_login_details`
  --

  INSERT INTO `chat_login_details` (`id`, `userid`, `last_activity`, `is_typing`) VALUES
  (1, 5, '2022-01-07 23:04:48', 'no'),
  (2, 6, '2022-01-07 23:05:29', 'no'),
  (3, 5, '2022-01-10 19:41:29', 'no'),
  (4, 5, '2022-01-10 21:57:24', 'no');

  -- --------------------------------------------------------

  --
  -- Estructura de tabla para la tabla `command`
  --

  CREATE TABLE `command` (
    `id` int(11) NOT NULL,
    `id_produit` int(11) NOT NULL,
    `quantity` int(11) NOT NULL,
    `dat` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
    `statut` varchar(1000) NOT NULL,
    `id_user` int(11) NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

  --
  -- Volcado de datos para la tabla `command`
  --

  INSERT INTO `command` (`id`, `id_produit`, `quantity`, `dat`, `statut`, `id_user`) VALUES
  (41, 1, 1, '2017-02-06 13:58:34', 'paid', 7),
  (61, 11, 1, '2017-02-07 16:21:05', 'paid', 8),
  (63, 9, 1, '2017-02-07 16:28:20', 'paid', 8),
  (64, 12, 1, '2017-02-07 16:30:14', 'paid', 8),
  (66, 13, 1, '2017-02-07 16:33:19', 'paid', 8),
  (67, 13, 1, '2017-02-07 16:34:20', 'paid', 8),
  (69, 14, 1, '2017-02-07 19:14:55', 'paid', 5),
  (80, 9, 1, '2017-02-11 09:12:00', 'paid', 8),
  (81, 12, 1, '2017-02-11 17:18:30', 'paid', 8),
  (82, 14, 1, '2017-02-12 07:48:51', 'paid', 8),
  (83, 16, 1, '2017-02-12 07:53:37', 'paid', 8),
  (84, 12, 1, '2017-02-14 08:20:56', 'paid', 8),
  (86, 12, 1, '2017-02-14 09:15:08', 'paid', 8),
  (87, 14, 1, '2017-02-15 13:36:42', 'paid', 8),
  (88, 9, 1, '2017-02-15 13:36:42', 'paid', 8),
  (89, 12, 1, '2017-02-15 13:45:26', 'paid', 8),
  (90, 14, 1, '2017-02-15 15:01:27', 'paid', 8),
  (91, 12, 1, '2017-02-15 15:01:27', 'paid', 8),
  (92, 13, 1, '2017-02-15 15:05:20', 'paid', 8),
  (93, 11, 1, '2017-02-15 15:05:20', 'paid', 8),
  (99, 13, 1, '2017-02-15 15:48:25', 'paid', 8),
  (111, 12, 1, '2017-02-19 22:16:32', 'paid', 8),
  (112, 13, 1, '2017-02-19 22:16:32', 'paid', 8),
  (113, 12, 1, '2017-02-19 22:22:05', 'paid', 8),
  (114, 13, 1, '2017-02-19 22:22:05', 'paid', 8),
  (115, 14, 1, '2017-02-19 22:26:43', 'paid', 8),
  (116, 16, 1, '2017-02-19 22:26:43', 'paid', 8),
  (117, 11, 1, '2017-02-19 22:27:39', 'paid', 8),
  (118, 9, 1, '2017-02-19 22:27:39', 'paid', 8),
  (119, 9, 1, '2017-02-19 22:29:15', 'paid', 8),
  (120, 13, 1, '2017-02-19 22:29:15', 'paid', 8),
  (121, 14, 1, '2017-02-19 22:45:27', 'paid', 8),
  (125, 13, 2, '2017-02-20 10:49:00', 'paid', 8),
  (126, 12, 1, '2022-01-07 21:33:54', 'paid', 6),
  (127, 14, 1, '2022-01-07 21:33:54', 'paid', 6),
  (140, 9, 1, '2022-01-10 20:38:38', 'ordered', 5),
  (142, 14, 1, '2022-01-10 20:48:59', 'ordered', 5);

  -- --------------------------------------------------------

  --
  -- Estructura de tabla para la tabla `details_command`
  --

  CREATE TABLE `details_command` (
    `id` int(11) NOT NULL,
    `product` varchar(1000) NOT NULL,
    `quantity` int(11) NOT NULL,
    `price` int(11) NOT NULL,
    `id_command` int(11) NOT NULL,
    `id_user` int(11) NOT NULL,
    `user` varchar(1000) NOT NULL,
    `address` varchar(1000) NOT NULL,
    `country` varchar(1000) NOT NULL,
    `city` varchar(1000) NOT NULL,
    `statut` varchar(1000) NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

  --
  -- Volcado de datos para la tabla `details_command`
  --

  INSERT INTO `details_command` (`id`, `product`, `quantity`, `price`, `id_command`, `id_user`, `user`, `address`, `country`, `city`, `statut`) VALUES
  (1, 'MSI GP62 Leopard Pro', 1, 839, 71, 11, 'ali ghallou', 'N 23 Lot El Waha Errachidia', 'Morocco', 'Errachidia', 'done'),
  (3, 'Oculus rift', 2, 1200, 73, 11, 'ali ghallou', 'N 23 Lot El Waha Errachidia', 'Morocco', 'Errachidia', 'done'),
  (4, 'Apple Watch', 1, 349, 74, 11, 'alighallou', 'N 23 Lot El Waha Errachidia', 'Morocco', 'Errachidia', 'done'),
  (5, 'Samsung s7 edge', 1, 560, 75, 11, 'alighallou', 'N 23 Lot El Waha Errachidia', 'Morocco', 'Errachidia', 'done'),
  (6, 'MSI GP62 Leopard Pro', 1, 839, 76, 11, 'alighallou', 'N 23 Lot El Waha Errachidia', 'Morocco', 'Errachidia', 'done'),
  (7, 'Gopro Hero 5', 1, 450, 77, 11, 'alighallou', 'N 23 Lot El Waha Errachidia', 'Morocco', 'Errachidia', 'done'),
  (8, 'Gopro Hero 5', 1, 450, 78, 11, 'alighallou', 'N 23 Lot El Waha Errachidia', 'Morocco', 'Errachidia', 'done'),
  (9, 'Gopro Hero 5', 1, 450, 80, 8, 'anasmazouni', 'N 20 Lot El dunno Cairo', 'Morocco', 'Cairo', 'done'),
  (10, 'MSI GP62 Leopard Pro', 1, 839, 81, 8, 'anasmazouni', 'N 20 Lot El dunno Cairo', 'Morocco', 'Cairo', 'done'),
  (11, 'Apple Watch', 1, 349, 82, 8, 'anasmazouni', 'N 20 Lot El dunno Cairo', 'Morocco', 'Cairo', 'done'),
  (12, 'Canon EOS 7D', 1, 889, 83, 8, 'anasmazouni', 'N 20 Lot El dunno Cairo', 'Morocco', 'Cairo', 'done'),
  (13, 'MSI GP62 Leopard Pro', 1, 839, 84, 8, 'anasmazouni', 'N 20 Lot El dunno Cairo', 'Morocco', 'Cairo', 'done'),
  (14, 'MSI GP62 Leopard Pro', 1, 839, 86, 8, 'anasmazouni', 'N 20 Lot El dunno Cairo', 'Morocco', 'Cairo', 'done'),
  (16, 'MSI GP62 Leopard Pro', 1, 839, 89, 8, 'anasmazouni', 'N 20 Lot El dunno Cairo', 'Morocco', 'Cairo', 'done'),
  (17, 'MSI GP62 Leopard Pro', 1, 839, 91, 8, 'anasmazouni', 'N 20 Lot El dunno Cairo', 'Morocco', 'Cairo', 'done'),
  (18, 'Oculus rift', 1, 600, 93, 8, 'anasmazouni', 'N 20 Lot El dunno Cairo', 'Morocco', 'Cairo', 'done'),
  (19, 'Amazon Echo', 1, 179, 99, 8, 'anasmazouni', 'N 20 Lot El dunno Cairo', 'Morocco', 'Cairo', 'done'),
  (20, 'Amazon Echo', 1, 179, 101, 11, 'alighallou', 'N 23 Lot El Waha Errachidia', 'Morocco', 'Errachidia', 'done'),
  (21, 'Amazon Echo', 1, 179, 112, 8, 'anasmazouni', 'N 20 Lot El dunno Cairo', 'Morocco', 'Cairo', 'done'),
  (22, 'MSI GP62 Leopard Pro', 1, 839, 113, 8, 'anasmazouni', 'N 20 Lot El dunno Cairo', 'Morocco', 'Cairo', 'done'),
  (23, 'Amazon Echo', 1, 179, 114, 8, 'anasmazouni', 'N 20 Lot El dunno Cairo', 'Morocco', 'Cairo', 'done'),
  (24, 'Apple Watch', 1, 349, 115, 8, 'anas mazouni', 'N 20 Lot El dunno Cairo', 'Egypt', 'Cairo', 'done'),
  (25, 'Canon EOS 7D', 1, 889, 116, 8, 'anas mazouni', 'N 20 Lot El dunno Cairo', 'Egypt', 'Cairo', 'done'),
  (26, 'Oculus rift', 1, 600, 117, 8, 'anasmazouni', 'N 20 Lot El dunno Cairo', 'Egypt', 'Cairo', 'done'),
  (27, 'Gopro Hero 5', 1, 450, 118, 8, 'anasmazouni', 'N 20 Lot El dunno Cairo', 'Egypt', 'Cairo', 'done'),
  (28, 'Gopro Hero 5', 1, 450, 119, 8, 'anas mazouni', 'N 20 Lot El dunno Cairo', 'Algeria', 'Cairo', 'done'),
  (29, 'Amazon Echo', 1, 179, 120, 8, 'anas mazouni', 'N 20 Lot El dunno Cairo', 'Algeria', 'Cairo', 'done'),
  (30, 'Apple Watch', 1, 349, 121, 8, 'anas mazouni', 'N 20 Lot El dunno Cairo', 'Morocco', 'Cairo', 'done'),
  (31, 'Amazon Echo', 2, 358, 125, 8, 'anas mazouni', 'N 20 Lot El dunno Cairo', 'Egypt', 'Cairo', 'done'),
  (32, 'MSI GP62 Leopard Pro', 1, 839, 126, 6, 'ahmed ali', 'N 26 Lot El Waha Errachidia', '', 'Errachidia', 'ready'),
  (33, 'Apple Watch', 1, 349, 127, 6, 'ahmed ali', 'N 26 Lot El Waha Errachidia', '', 'Errachidia', 'ready');

  -- --------------------------------------------------------

  --
  -- Estructura de tabla para la tabla `pictures`
  --

  CREATE TABLE `pictures` (
    `id` int(11) NOT NULL,
    `picture` varchar(1000) NOT NULL,
    `id_produit` int(11) NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

  --
  -- Volcado de datos para la tabla `pictures`
  --

  INSERT INTO `pictures` (`id`, `picture`, `id_produit`) VALUES
  (13, 'Samsung-Galaxy-S6-edge-Gold-Platinum..jpg', 2),
  (14, 'samsung-galaxy-s7-edge.jpg', 2),
  (15, 'galaxy-s7-edge-black.png', 2),
  (16, 'MMY72_AV2.jpg', 8),
  (17, 'iphone7-plus-rosegold-select-2016.jpg', 8),
  (18, 'blue-iphone.jpg', 8),
  (19, 'Hero5-Black-Carousel-3.png', 9),
  (20, 'gopro-hero-5-release-date-price-frame.jpg', 9),
  (21, 'gopro_hero_5_black_review_display.jpg', 9),
  (25, 'oculus_rift_1.jpg', 10),
  (26, 'OculusRift.jpg', 10),
  (27, '61EsR4QA0PL._SL1500_.jpg', 10),
  (28, 'five_pictures1_100259_201506200523405584885cedd68.png', 12),
  (29, 'pi_ms-gp622qe-035za1.jpg', 12),
  (30, 'pi_ms-gp622qe-035za3.jpg', 12),
  (31, 'amazon_b00x4whp5e_echo_1187819.jpg', 13),
  (32, 'amazonecho_4-100599473-orig.jpg', 13),
  (33, 'amazon-echo-part-1-a-consumer-pr.jpg', 13),
  (34, 'og-img.png', 14),
  (35, 'h_51561794.jpg', 14),
  (36, 'apple-watch-thumbnail-100571651-orig.jpg', 14),
  (37, 'pixel.png', 15),
  (38, 'GoogleBlue.jpg', 15),
  (39, 'etui-diztronic-matte-tpu-google-pixel-xl-alloy-grey.jpg', 15),
  (40, 'D3S_4695-1200.jpg', 16),
  (41, 'highres-Canon-EOS-7D-MarkII-8_1417776370.jpg', 16),
  (42, 'highres-Canon-EOS-7D-Mark-II-with-lens-1_1411133185.jpg', 16),
  (43, 'nexus-6p-9444.0.jpg', 17),
  (44, 'nexus-6p-9693.0.jpg', 17),
  (45, 'Google-Nexus-6P-Review-Conc.jpg', 17);

  -- --------------------------------------------------------

  --
  -- Estructura de tabla para la tabla `product`
  --

  CREATE TABLE `product` (
    `id` int(11) NOT NULL,
    `id_category` int(11) NOT NULL,
    `name` varchar(1000) NOT NULL,
    `description` varchar(1000) NOT NULL,
    `price` int(11) NOT NULL,
    `id_picture` int(11) NOT NULL,
    `thumbnail` varchar(1000) NOT NULL,
    `promo` varchar(1000) NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

  --
  -- Volcado de datos para la tabla `product`
  --

  INSERT INTO `product` (`id`, `id_category`, `name`, `description`, `price`, `id_picture`, `thumbnail`, `promo`) VALUES
  (7, 1, 'Samsung s7 edge', '5.50-inch 1440x2560 display powered by 1.6GHz octa-core processor alongside 4GB of RAM and 12-megapixel', 560, 2, 'galaxy-s7-edge-black.png', ''),
  (8, 1, 'Iphone 7', 'Features 3G, 4.7â€³ LED-backlit IPS LCD display, 12 MP camera, Wi-Fi, GPS, Bluetooth', 700, 8, 'rsz_iphone-7-jet-black.jpg', ''),
  (9, 2, 'Gopro Hero 5', ' GoPro HERO5 Black features Supports 4K30, 2.7K60, 1080p120 Video, Capture 12MP Photos at 30fps', 450, 9, 'gopro5.png', '1'),
  (11, 6, 'Oculus rift', 'The Oculus Rift is a virtual reality system that completely immerses you inside virtual worlds', 600, 10, 'Oculus_Product_Dynamic 45.jpg', '1'),
  (12, 3, 'MSI GP62 Leopard Pro', 'In-depth review of the MSI GP62-2QEi781FD (Intel Core i7 5700HQ, NVIDIA GeForce GTX 950M, 15.6\", 2.3 kg) ... The MSI GE series is already the manufacturer\'s entry-level gaming series. ..... ', 839, 12, 'msi-gp62-6qf-product_pictures-3d1.png', ''),
  (13, 5, 'Amazon Echo', 'Amazon Echo is a hands-free speaker you control with your voice. Echo connects to the Alexa Voice Service to play music, provide information, news, sports ...', 179, 13, 'amazon-echo-image.jpg', ''),
  (14, 4, 'Apple Watch', 'The new Apple Watch is the ultimate device for your healthy life. Choose from a range of models including Apple Watch Series 2 and Apple Watch Nike+', 349, 14, 'apple-watch-premium-design-vs-pebble-time-round-classic-design.jpg', ''),
  (16, 2, 'Canon EOS 7D', 'The EOS 7D features a Canon-designed 18.0 Megapixel APS-C size CMOS sensor that captures such a high level of resolution it\'s easy to crop images for ...', 889, 16, 'EOS 7D Mark II Hero.jpg', ''),
  (17, 1, 'Nexus 6P', 'All-metal design Unlocked, LTE smartphone with a powerful 2GHz Snapdragon 810 V2.1 Processor and the newest Android software, Android 6.0 marshmallow.', 499, 17, 'nexus-6p-topic-full.png', '');

  -- --------------------------------------------------------

  --
  -- Estructura de tabla para la tabla `users`
  --

  CREATE TABLE `users` (
    `userid` int(11) NOT NULL,
    `email` varchar(100) NOT NULL,
    `firstname` varchar(1000) NOT NULL,
    `lastname` varchar(1000) NOT NULL,
    `password` varchar(1000) NOT NULL,
    `address` varchar(1000) NOT NULL,
    `city` varchar(1000) NOT NULL,
    `country` varchar(1000) NOT NULL,
    `role` varchar(1000) NOT NULL,
    `username` varchar(255) NOT NULL,
    `avatar` varchar(255) NOT NULL,
    `current_session` int(11) NOT NULL,
    `online` int(11) NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

  --
  -- Volcado de datos para la tabla `users`
  --

  INSERT INTO `users` (`userid`, `email`, `firstname`, `lastname`, `password`, `address`, `city`, `country`, `role`, `username`, `avatar`, `current_session`, `online`) VALUES
  (5, 'user@user.com', 'User', 'User', '12345', 'N 23 Lot El Waha Errachidia', 'Errachidia', 'Morocco', 'client', 'User', 'user1.jpg', 6, 0),
  (6, 'admin@admin.com', 'Admin', 'Admin', '12345', 'N 23 Lot El Waha Errachidia', 'Errachidia', 'Morocco', 'admin', 'Admin', 'user1.jpg', 5, 0);

  --
  -- Índices para tablas volcadas
  --

  --
  -- Indices de la tabla `ads`
  --
  ALTER TABLE `ads`
    ADD PRIMARY KEY (`id`);

  --
  -- Indices de la tabla `category`
  --
  ALTER TABLE `category`
    ADD PRIMARY KEY (`id`);

  --
  -- Indices de la tabla `chat`
  --
  ALTER TABLE `chat`
    ADD PRIMARY KEY (`chatid`);

  --
  -- Indices de la tabla `chat_login_details`
  --
  ALTER TABLE `chat_login_details`
    ADD PRIMARY KEY (`id`);

  --
  -- Indices de la tabla `command`
  --
  ALTER TABLE `command`
    ADD PRIMARY KEY (`id`);

  --
  -- Indices de la tabla `details_command`
  --
  ALTER TABLE `details_command`
    ADD PRIMARY KEY (`id`);

  --
  -- Indices de la tabla `pictures`
  --
  ALTER TABLE `pictures`
    ADD PRIMARY KEY (`id`);

  --
  -- Indices de la tabla `product`
  --
  ALTER TABLE `product`
    ADD PRIMARY KEY (`id`);

  --
  -- Indices de la tabla `users`
  --
  ALTER TABLE `users`
    ADD PRIMARY KEY (`userid`);

  --
  -- AUTO_INCREMENT de las tablas volcadas
  --

  --
  -- AUTO_INCREMENT de la tabla `ads`
  --
  ALTER TABLE `ads`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

  --
  -- AUTO_INCREMENT de la tabla `category`
  --
  ALTER TABLE `category`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

  --
  -- AUTO_INCREMENT de la tabla `chat`
  --
  ALTER TABLE `chat`
    MODIFY `chatid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

  --
  -- AUTO_INCREMENT de la tabla `chat_login_details`
  --
  ALTER TABLE `chat_login_details`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

  --
  -- AUTO_INCREMENT de la tabla `command`
  --
  ALTER TABLE `command`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

  --
  -- AUTO_INCREMENT de la tabla `details_command`
  --
  ALTER TABLE `details_command`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

  --
  -- AUTO_INCREMENT de la tabla `pictures`
  --
  ALTER TABLE `pictures`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

  --
  -- AUTO_INCREMENT de la tabla `product`
  --
  ALTER TABLE `product`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

  --
  -- AUTO_INCREMENT de la tabla `users`
  --
  ALTER TABLE `users`
    MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
  COMMIT;

  /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
  /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
  /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
