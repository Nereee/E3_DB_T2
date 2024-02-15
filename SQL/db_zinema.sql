-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-02-2024 a las 13:04:24
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
-- Base de datos: `db_zinema`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aretoa`
--
drop database db_zinema;
CREATE TABLE `aretoa` (
  `IdAretoa` int(11) NOT NULL,
  `Izena` varchar(40) NOT NULL,
  `IdZinema` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `aretoa`
--

INSERT INTO `aretoa` (`IdAretoa`, `Izena`, `IdZinema`) VALUES
(1, 'Ikus-entzunezko Aretoa', 1),
(2, 'Argi Aretoa', 1),
(3, 'Fantasia Aretoa', 1),
(4, 'Magia Aretoa', 1),
(5, 'Epikoa Aretoa ', 1),
(1, 'Sorgin Aretoa', 2),
(2, 'Abentura Aretoa', 2),
(3, 'Esentzia Aretoa', 2),
(4, 'Distira Aretoa', 2),
(5, 'Aurrerapen Aretoa', 2),
(1, 'Galaxia Aretoa', 3),
(2, 'Amets Aretoa', 3),
(3, 'Oasi Aretoa', 3),
(4, 'Joko Aretoa', 3),
(5, 'Euforia Aretoa', 3),
(1, 'Eguzki Aretoa', 4),
(2, 'Espetru Aretoa', 4),
(3, 'Sentimendu Aretoa', 4),
(4, 'Inspirazio Aretoa', 4),
(5, 'Topaketa Aretoa', 4),
(1, 'Eskaintza Aretoa', 5),
(2, 'Sortzaile Aretoa', 5),
(3, 'Imajinazio Aretoa', 5),
(4, 'Hurbiltze Aretoa', 5),
(5, 'Izar Aretoa', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bezeroa`
--

CREATE TABLE `bezeroa` (
  `NAN` varchar(9) NOT NULL,
  `Erabiltzailea` varchar(10) NOT NULL,
  `Izena` varchar(20) NOT NULL,
  `Abizena` varchar(30) NOT NULL,
  `J_data` date NOT NULL,
  `Mail` varchar(50) NOT NULL,
  `Generoa` enum('E','G','N','O') DEFAULT NULL,
  `Pasahitza` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `bezeroa`
--

INSERT INTO `bezeroa` (`NAN`, `Erabiltzailea`, `Izena`, `Abizena`, `J_data`, `Mail`, `Generoa`, `Pasahitza`) VALUES
('12345678G', 'juan', 'Juan', 'Fernandez', '2003-12-05', 'juanfernandez@gmail.com', 'G', '1234'),
('12325558F', 'hector', 'Hector', 'Ruiz', '2001-02-23', 'hectorru@gmail.com', 'G', '321'),
('98765258G', 'leire', 'Leire', 'Flores', '1998-08-15', 'floreslei@gmail.com', 'E', '98547l'),
('47845875J', 'mikel', 'Mikel', 'Castro', '1987-12-25', 'mikelcas56@gmail.com', 'G', '22587484');

-- --------------------------------------------------------
-- Estructura de tabla para la tabla `erosketa`
--

CREATE TABLE `erosketa` (
  `IdErosketa` int(11) NOT NULL,
  `Jatorria` int(11) NOT NULL,
  `Deskontua` float DEFAULT NULL,
  `PrezioTot` double NOT NULL,
  `NAN` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------
INSERT INTO `erosketa` (`IdErosketa`, `Jatorria`, `Deskontua`, `PrezioTot`, `NAN`) VALUES 
(1, 1, 0.2, 10.0, '12345678G'),
(2, 2, 0.3, 15.0, '12325558F'),
(3, 2, 0.0, 5.00, '98765258G'),
(4, 1, 0.3, 40.0, '47845875J');
--
-- Estructura de tabla para la tabla `filma`
--

CREATE TABLE `filma` (
  `Idfilma` int(11) NOT NULL,
  `Izenburua` varchar(30) NOT NULL,
  `Iraupena` int(11) NOT NULL,
  `Generoa` varchar(20) NOT NULL,
  `Prezioa` double DEFAULT NULL,
  `Zuzendaria` varchar(20) DEFAULT NULL,
  `Sinopsia` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `filma`
--

INSERT INTO `filma` (`Idfilma`, `Izenburua`, `Iraupena`, `Generoa`, `Prezioa`, `Zuzendaria`, `Sinopsia`) VALUES
(1, 'Handia', 116, 'Drama', 5, 'Jon Garaño, Aitor Ar', '1843an, etxera itzuli da Martín, Lehen Gerra Karlistan borrokatu ondoren. Gipuzkoako familia-baserrira iritsi denean, harrituta ikusi du bere anaia txikia, Joaquín, ohi baino askoz altuagoa dela. Martin ziur dago anaia zirkuko pertsonaia bihur dezakeela, eta denek ikusi nahiko dutela. Bi anaiek bidaia luze bat egin dute Europan zehar, eta anbizioa, dirua eta fama betiko aldatuko dira familiaren patua.'),
(2, 'La Lista De Schindler', 197, 'Drama', 5, 'Steven Spielberg', 'Oskar Schindler gizon maltzurrak eta talentudunak anbizio handiko plana antolatu du nazien sinpatia lortzeko eta milaka judu erreskatatzeko.'),
(3, 'Cadena Perpetua', 142, 'Drama', 5, 'Frank Darabont', 'Andrew Dufresne gizon errugabea da, eta emaztea hiltzea leporatu diote.Betiko kartzela-zigorra jaso ondoren, Shawshank-eko kartzelara bidali dute, Mainera. Urteen poderioz, Andrewk ikastetxeko zuzendariaren konfiantza eta beste konbiktuekiko errespetua lortuko ditu,batez ere Red mafiako buruarekiko errespetua.'),
(4, 'Million Dollar Baby', 133, 'Drama', 5, 'Clint Eastwood', 'Frankie Dunn entrenatzailea Maggie Fitzgerald entrenatzen amaitu du, zakarra eta neskak ez entrenatzeko araua den arren. Maggie boxeolaria izan nahi duen neska da, eta edozer egiteko prest dago hori lortzeko.'),
(5, 'Psicosis', 109, 'Beldurra', 5, 'Alfred Hitchcock', 'Higiezinen enpresa bateko idazkaria, Marion Crane, ezin da Sam Loomis maitalearekin ezkondu. Nagusiak bankuan sartzeko emandako 40.000 dolar jartzen ditu bere esku patuak. Marionek diru hori bereganatzea erabaki du, Samekin bizitza berri bati ekiteko. Kaliforniara bidean, gaua erori da, eta ekaitz gogor batek Norman Bates gazte lotsati, bitxi eta demente batek eta haren amak zuzendutako errepideko motel bakarti batean ostatu hartzera behartu du.'),
(6, 'El Resplandor', 146, 'Beldurra', 5, 'Stanley Kubrick', 'Jack Torrance familiarekin hotel isolatu batera joan da bizitzera. Hotel hori zaindu egin behar du, bere idazkeraren blokeo sortzailetik ateratzeko itxaropenarekin. Jackek blokeotik ihes egin ezin duen bitartean, semearen irudipen psikikoak areagotzen ari dira.'),
(7, 'Dracula', 155, 'Beldurra', 5, 'Francis Ford Coppola', 'Banpiro bihurtu aurretik, Dracula kondea Vlad printzea zen, bere maitearen heriotzaren berri izan zuenean, deabruari saldu zion arima. Lau mende geroago, Dracula kondeak harrapatu du Jonathan Harker, Europako ekialdean galdutako gaztelu batera doan abokatu gaztea.'),
(8, 'Cisne Negro', 110, 'Beldurra', 5, 'Darren Aronofsky', 'Nina (Natalie Portman), New Yorkeko ballet konpainia bateko kide den dantzari bikaina, dantzak erabat xurgatuta bizi da. Bere ama kontrolatzailearen (Barbara Hershey) presioa, Lily (Mila Kunis) lankidearekiko lehia eta zuzendari zorrotzaren (Vincent Cassel) eskakizunak areagotuz joango dira estreinaldiaren eguna hurbildu ahala. Tentsio horrek nerbio-akidura eta nahasmen mentala eragiten dizkio Ninari, eta horrek errealitatea eta fikzioa bereizteko ezgaitzen du.'),
(9, '2001: Odisea En El Espacio', 142, 'Zientzia Fikzioa', 5, 'Stanley Kubrick', 'Zinemaren historiako zientzia-fikziozko filmak gizateriaren historiako aldiak kontatzen ditu, ez iraganekoak bakarrik, baita etorkizunekoak ere. Duela milioika urte, homo sapiensa agertu baino lehen, primate batzuek monolito bat aurkitu dute, eta horrek adimen handiagoko estadio batera eraman ditu. Milioika urte geroago, ilargian lurperatutako beste monolito batek zientzialarien interesa piztu du.'),
(10, 'La Novia De Frankenstein', 75, 'Zientzia Fikzioa', 5, 'James Whale', '\"Frankensteinen emaztegaia\"\" klasiko bikaina da, James Whalek zuzendua, \"\"Frankenstein doktorearen\"\" jarraipena. Sortu zuen izaki higuingarriarekin lotutako gertaera traumatikoak ahazten saiatu ondoren, eta esperimentuak bertan behera utziko zituela zin egin ondoren, Henry Frankensteinek Pretorius doktorearen xantaiei amore eman beharko zien munstroarentzako lagun bat sortzeko.\"'),
(11, 'El Planeta De Los Simios', 115, 'Zientzia Fikzioa', 5, 'Franklin Schaffner', 'George Taylor espazio-ontzi bateko tripulazioko kide da, iraupen luzeko misio batean. Planeta ezezagun eta itxuraz bizitza adimentsurik gabeko batean erori da. Hala ere, laster konturatuko da oso garatuta dauden tximino-arraza batek gobernatzen duela, komunikatzeko gai ez diren gizaki batzuk esklabo bihurtzen dituena. Zaius doktorea Taylorrek hitzaren dohaina duela jakin duenean, kentzea erabaki du.'),
(12, 'Alien, El Octavo Pasajero', 117, 'Zientzia Fikzioa', 5, 'Ridley Scott', 'De regreso a la Tierra, la nave de carga Nostromo interrumpe su viaje y despierta a sus siete tripulantes. El ordenador central, MADRE, ha detectado la misteriosa transmisión de una forma de vida desconocida, procedente de un planeta cercano aparentemente deshabitado. La nave se dirige entonces al extraño planeta para investigar el origen de la comunicación.'),
(13, 'Scary Movie', 90, 'Komedia', 5, 'Keenen Ivory Wayans', 'Ikasle eder bat hil dute. Nerabe desorientatuen talde batek haien artean hiltzaile bat dagoela jakingo du. Cyndi Campbell heroia eta bere lagun despistatuen taldea izutu egingo dira haien mendekua hartu nahi duen psikopata mozorrotu berezi batek jota, iragan Halloween egunean ustekabean harrapatu ondoren.'),
(14, 'El Gran Lebowsky', 119, 'Komedia', 5, 'Joel David Coen, Eth', 'El Nota (Jeff Bridges), Los Angelesen bizi den lauso bat, egun batean Jeff Lebowski milioidunarekin nahasten dute pare bat hiltzailek. Alfonbran pixa egin ondoren, Oharrak Lebowski handiaren bilaketa hasten du. Bere topaketatik tratu bat sortuko da: Oharrak sari bat jasoko du handikiaren emaztea aurkitzea lortzen badu.'),
(15, 'La Vida De Brian', 114, 'Komedia', 5, 'Terry Jones', 'Brian Belengo aska batean jaiotzen da Jesukristoren egun berean. Nahas-mahas pilo batek eramango zaitu. benetako Jainkoaren Semearen bizitza paraleloa. Bere argi apurrak eta gainbehera eta erabateko kaos giroa egun haietako Galilea urperatuta, amaren, feminista iraultzaile baten eta Poncio Pilatos, kalbarioaren bertsio propioa.'),
(16, 'Aterriza Como Puedas', 88, 'Komedia', 5, 'David Zucker, Jerry ', 'Trans American 209 hegaldia Los Angelesetik Chicagora doa. Pasartean pertsonaia bitxi batzuk daude. Horien artean, borroka-pilotu ohi bat, hegaldian, hegazkin komertzialaren agintea hartu beharko du, pilotuak janari batengatik ondoezik geratu ondoren.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `saioa`
--

CREATE TABLE `saioa` (
  `IdSaioa` int(11) NOT NULL,
  `Ordu_Data` varchar(5) NOT NULL,
  `S_Data` date NOT NULL,
  `IdFilma` int(11) DEFAULT NULL,
  `IdAretoa` int(11) DEFAULT NULL,
  `IdZinema` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `saioa`
--

INSERT INTO `saioa` (`IdSaioa`, `Ordu_Data`, `S_Data`, `IdFilma`, `IdAretoa`, `IdZinema`) VALUES
(1, '8:00', '2024-02-10', 1, 1, 1),
(2, '10:30', '2023-05-20', 2, 2, 1),
(3, '13:15', '2024-02-12', 3, 1, 2),
(4, '15:45', '2024-02-15', 1, 2, 2),
(5, '18:00', '2024-03-23', 2, 1, 3);



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sarrera`
--

CREATE TABLE `sarrera` (
  `IdSarrera` int(11) NOT NULL,
  `IdSaioa` int(11) DEFAULT NULL,
  `Prezioa` double NOT NULL,
  `IdErosketa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------
INSERT INTO `sarrera` (`IdSarrera`, `IdSaioa`, `Prezioa`, `IdErosketa`) VALUES 
(1, 1, 5.00, 1),
(2, 1, 5.00, 2),
(3, 3, 5.00, 3),
(4, 4, 5.00, 4),
(5, 1, 5.00, 1),
(6, 1, 5.00, 1);
--
-- Estructura de tabla para la tabla `zinema`
--

CREATE TABLE `zinema` (
  `Idzinema` int(11) NOT NULL,
  `Izena` varchar(50) NOT NULL,
  `Kalea` varchar(50) NOT NULL,
  `Zenbakia` varchar(5) DEFAULT NULL,
  `PostaKodea` varchar(5) NOT NULL,
  `Herria` varchar(50) NOT NULL,
  `Kontaktua` varchar(12) DEFAULT NULL,
  `Deskribapena` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `zinema`
--

INSERT INTO `zinema` (`Idzinema`, `Izena`, `Kalea`, `Zenbakia`, `PostaKodea`, `Herria`, `Kontaktua`, `Deskribapena`) VALUES
(1, 'Elorrieta Zinema', ' Agirre Lehendakariaren Etorbidea ', '184', '48015', 'Deusto', '944 02 80 00', 'Ongi etorri Elorrieta zinemen gure web orri ofizialera.2023an San Ignazio auzoan inauguratutako zinema-areto berria gara. Atera diren azken film estreinaldia eukiko ditugu,horretaz gain ere tokiko filmak izango ditugu euskal kultura bultzatzeko. Azken teknologiak eskaintzen ditugu gure areto guztietan,esperientzia ahalik eta atseginena eta erosoena izan dadin.'),
(2, 'Cinesa Max Ocio', 'Kareaga Kalea', '', '48903', 'Barakaldo', '932 28 96 00', 'Max Ocio Max Ocio gune komertzialean kokatutako zinema da, giro moderno eta eroso batean kalitatezko esperientzia zinematografikoa eskaintzeagatik ezaguna. Max Ocio zinemak hainbat genero eta formatutako filmak eta 2D eta 3Dko proiekzioak eskaintzen ditu, ikusle guztien gustuak asetzeko. Zinema-aretoez gain, janari- eta entretenimendu-guneak ere baditu konplexuak, familian edo lagunekin gozatzeko helmuga oso bihurtuz.'),
(3, 'Cinesa Zubiarte', ' Leizaola Lehendakariaren Kalea', '2', '48009', 'Abando', '932 28 96 00', 'Zubiarte Cinesak 8 areto ditu, Zubiarte merkataritza-gunearen barruan kokatua, zinemako esperientziarik onena eskaintzeko. Gela guztiek VIP besaulkiak dituzte, erosotasun handiagoa, leku gehiago eta banakako beso-euskarriak eskaintzen dituztenak. Zinema Bilboko erdigunean dago, itsasadarraren ertzean eta Deustuko zubiaren ondoan. Gainera, Iberdrola Dorrearekin, Guggenheim eta Arte Eder museoekin eta Euskalduna Jauregiarekin partekatzen du espazioa.'),
(4, 'Golem Alhóndiga', 'Arriquíbar Plaza', '4', '48001', 'Abando', '946 07 07 67', 'Golem Alhóndiga zinema Alhóndiga Bilbao kultur zentroan kokatutako zinema bat da, askotariko programazioagatik eta film independenteetan, egile-filmetan eta arte-zineman duen ikuspegiagatik ezaguna. Esperientzia paregabea eskaintzen du kulturalki aberasgarria den giroan, kalitate handiko proiekzio-teknologiaz hornitutako aretoekin. Proiekzio erregularrak ez ezik, zinemak ekitaldi bereziak, ziklo tematikoak eta zinema-jaialdiak ere antolatzen ditu, zazpigarren arteak maite duen ikus-entzuleak erakartzeko.'),
(5, 'Cine Yelmo Premium Artea', 'Peruri Auzoa', '33', '48940', 'Leioa', '', 'Yelmo Premium Artea zinema Artea merkataritza-gunean kokatutako zinema da, eta saritutako esperientzia zinematografikoa eskaintzen du. Abangoardiako instalazio eta teknologia modernoekin, zinema honek bereizmen handiko proiekzioak eta soinu inguratzailea eskaintzen ditu. Gainera, premium aretoak ditu, eserleku atzeragarriak eta janari- eta edari-zerbitzua eskaintzen dituztenak, ikusleei erosotasuna eta luxua emanez. Yelmo Premium Artea zinema eskualdeko zinema-zaleentzako herri-helmuga da, estreinaldiko filmen eta ekitaldi berezien aukera zabalarekin.'),
(6, '', '', '', '', '', '', ''),
(7, '', '', '', '', '', '', ''),
(8, '', '', '', '', '', '', ''),
(9, '', '', '', '', '', '', ''),
(10, '', '', '', '', '', '', ''),
(11, '', '', '', '', '', '', ''),
(12, '', '', '', '', '', '', ''),
(13, '', '', '', '', '', '', ''),
(14, '', '', '', '', '', '', ''),
(15, '', '', '', '', '', '', ''),
(16, '', '', '', '', '', '', ''),
(17, '', '', '', '', '', '', ''),
(18, '', '', '', '', '', '', ''),
(19, '', '', '', '', '', '', ''),
(20, '', '', '', '', '', '', ''),
(21, '', '', '', '', '', '', ''),
(22, '', '', '', '', '', '', ''),
(23, '', '', '', '', '', '', ''),
(24, '', '', '', '', '', '', ''),
(25, '', '', '', '', '', '', ''),
(26, '', '', '', '', '', '', ''),
(27, '', '', '', '', '', '', ''),
(28, '', '', '', '', '', '', ''),
(29, '', '', '', '', '', '', ''),
(30, '', '', '', '', '', '', ''),
(31, '', '', '', '', '', '', ''),
(32, '', '', '', '', '', '', ''),
(33, '', '', '', '', '', '', ''),
(34, '', '', '', '', '', '', ''),
(35, '', '', '', '', '', '', ''),
(36, '', '', '', '', '', '', ''),
(37, '', '', '', '', '', '', ''),
(38, '', '', '', '', '', '', ''),
(39, '', '', '', '', '', '', ''),
(40, '', '', '', '', '', '', ''),
(41, '', '', '', '', '', '', ''),
(42, '', '', '', '', '', '', ''),
(43, '', '', '', '', '', '', ''),
(44, '', '', '', '', '', '', ''),
(45, '', '', '', '', '', '', ''),
(46, '', '', '', '', '', '', ''),
(47, '', '', '', '', '', '', ''),
(48, '', '', '', '', '', '', ''),
(49, '', '', '', '', '', '', ''),
(50, '', '', '', '', '', '', '');


--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aretoa`
--
ALTER TABLE `aretoa`
  ADD PRIMARY KEY (`IdZinema`,`IdAretoa`);

--
-- Indices de la tabla `bezeroa`
--
ALTER TABLE `bezeroa`
  ADD PRIMARY KEY (`NAN`),
  ADD UNIQUE KEY `Erabiltzailea` (`Erabiltzailea`),
  ADD UNIQUE KEY `Mail` (`Mail`);

--
-- Indices de la tabla `erosketa`
--
ALTER TABLE `erosketa`
  ADD PRIMARY KEY (`IdErosketa`),
  ADD KEY `NAN` (`NAN`);

--
-- Indices de la tabla `filma`
--
ALTER TABLE `filma`
  ADD PRIMARY KEY (`Idfilma`);

--
-- Indices de la tabla `saioa`
--
ALTER TABLE `saioa`
  ADD PRIMARY KEY (`IdSaioa`),
  ADD KEY `IdZinema` (`IdZinema`,`IdAretoa`),
  ADD KEY `IdFilma` (`IdFilma`);

--
-- Indices de la tabla `sarrera`
--
ALTER TABLE `sarrera`
  ADD PRIMARY KEY (`IdSarrera`),
  ADD KEY `IdSaioa` (`IdSaioa`),
  ADD KEY `IdErosketa` (`IdErosketa`);

--
-- Indices de la tabla `zinema`
--
ALTER TABLE `zinema`
  ADD PRIMARY KEY (`Idzinema`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `erosketa`
--
ALTER TABLE `erosketa`
  MODIFY `IdErosketa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `filma`
--
ALTER TABLE `filma`
  MODIFY `Idfilma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `saioa`
--
ALTER TABLE `saioa`
  MODIFY `IdSaioa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `sarrera`
--
ALTER TABLE `sarrera`
  MODIFY `IdSarrera` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `zinema`
--
ALTER TABLE `zinema`
  MODIFY `Idzinema` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aretoa`
--
ALTER TABLE `aretoa`
  ADD CONSTRAINT `aretoa_ibfk_1` FOREIGN KEY (`IdZinema`) REFERENCES `zinema` (`Idzinema`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `erosketa`
--
ALTER TABLE `erosketa`
  ADD CONSTRAINT `erosketa_ibfk_1` FOREIGN KEY (`NAN`) REFERENCES `bezeroa` (`NAN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `saioa`
--
ALTER TABLE `saioa`
  ADD CONSTRAINT `saioa_ibfk_1` FOREIGN KEY (`IdZinema`,`IdAretoa`) REFERENCES `aretoa` (`IdZinema`, `IdAretoa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `saioa_ibfk_2` FOREIGN KEY (`IdFilma`) REFERENCES `filma` (`Idfilma`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sarrera`
--
ALTER TABLE `sarrera`
  ADD CONSTRAINT `sarrera_ibfk_1` FOREIGN KEY (`IdSaioa`) REFERENCES `saioa` (`IdSaioa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sarrera_ibfk_2` FOREIGN KEY (`IdErosketa`) REFERENCES `erosketa` (`IdErosketa`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

select * from langile;