-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1:3306
-- Timp de generare: iul. 27, 2021 la 07:10 AM
-- Versiune server: 5.7.31
-- Versiune PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `naturals_cosmetics`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(250) NOT NULL,
  `brand_about` text NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`, `brand_about`) VALUES
(6, 'Leac de-un veac', 'Leac din medicina tradiÈ›ionalÄƒ romÃ¢neascÄƒ, pus Ã®n practicÄƒ È™i transmis din tatÄƒ Ã®n fiu de o familie din Jiul de Munte, dinaintea Ã®nceputului de secol 19.'),
(7, 'FERETO', 'Fiecare formulÄƒ Fereto este creatÄƒ È™i testatÄƒ Ã®n laboratoarele din FranÈ›a. NutrienÈ›ii regasiti Ã®n ingredientele naturale ajutÄƒ pielea sÄƒ ramÃ¢nÄƒ tÃ¢nÄƒrÄƒ mai mult timp, luptÃ¢nd eficient Ã®mpotriva radicalilor liberi. DatoritÄƒ ingredientelor preÈ›ioase din naturÄƒ, dermocosmeticele Fereto vindecÄƒ, trateazÄƒ, protejeazÄƒ È™i hrÄƒnesc pielea Ã®n profunzime.'),
(8, 'IVATHERM', 'Ingredientul esenÈ›ial din produsele Ivatherm este apa termalÄƒ Herculane. SelecÈ›ia ingredientelor active este atentÄƒ, riguroasÄƒ, Ã®ntotdeauna din cele mai bune surse.\r\nCombinÄƒ expertiza laboratoarelor franceze cu beneficiile apei termale Herculane, È™i creeazÄƒ tratamente eficiente pentru afecÈ›iunile pielii.'),
(9, 'PANACEA URBAN APOTHECARY', 'PANACEA URBAN APOTHECARY este un brand revoluÈ›ionar pentru Ã®ngrijirea pielii.'),
(10, 'Raftul cu miresme', 'Povestea â€œRaftul cu miresmeâ€ a inceput cu o calatorie prin lumea ingredientelor naturale, in Sri Lanka, Ã®ntr-un loc minunat: o padure denumita â€œSpice Gardenâ€.'),
(11, 'Sabio', 'Sabio foloseÈ™te numai ingrediente 100% naturale, bioactive, din care unele sunt rare ÅŸi organice. Selectate cu atenÈ›ie, din cele mai fiabile È™i regenerabile surse, materii prime precum uleiuri È™i unturi vegetale, substanÈ›e active preÈ›ioase, extracte de plante È™i fructe, seminÈ›e, cearÄƒ de albine, emulsifianÈ›i naturali, plante È™i flori, sare de Himalaya, sare de la Marea MoartÄƒ, surfactanÈ›i naturali, minerale marine È™i argile, uleiuri esenÈ›iale pure din punct de vedere microbiologic È™i vitamine cosmetice. '),
(12, 'Trio Verde', 'Trio Verde este un brand romÃ¢nesc ce cuprinde o gamÄƒ largÄƒ de produse cosmetice È™i de Ã®ngrijire personalÄƒ. Aceste produse sunt realizate folosind ingrediente naturale pentru uz cosmetic precum uleiuri È™i unturi vegetale, ape florale, extracte de plante È™i plante uscate, argile È™i pulberi. Produsele au o largÄƒ Ã®ntrebuinÈ›are fiind destinate Ã®ngrijirii feÈ›ei, corpului, pÄƒrului È™i unghiilor.');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_qty` int(11) NOT NULL,
  `productCart_id` int(11) NOT NULL,
  `userCart_id` int(11) NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `product_id` (`productCart_id`),
  KEY `user_id` (`userCart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `cart`
--

INSERT INTO `cart` (`cart_id`, `product_qty`, `productCart_id`, `userCart_id`) VALUES
(50, 1, 25, 24);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_order_id` int(11) NOT NULL,
  `order_products` text NOT NULL,
  `order_total` int(11) NOT NULL,
  `payment_option` varchar(200) NOT NULL,
  `order_phone_no` int(11) NOT NULL,
  `order_address` varchar(100) NOT NULL,
  `order_city` varchar(100) NOT NULL,
  `order_county` varchar(100) NOT NULL,
  `order_postal_code` int(8) NOT NULL,
  `order_date` timestamp NOT NULL,
  `order_status` varchar(200) DEFAULT 'In curs de procesare',
  PRIMARY KEY (`order_id`),
  KEY `user_order_id` (`user_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `orders`
--

INSERT INTO `orders` (`order_id`, `user_order_id`, `order_products`, `order_total`, `payment_option`, `order_phone_no`, `order_address`, `order_city`, `order_county`, `order_postal_code`, `order_date`, `order_status`) VALUES
(1, 22, 'Multi-performance CremÄƒ hidratantÄƒ pentru corp (Cantitate: 1), Gel de duÈ™ cu Propolis È™i Miere (Cantitate: 1), È˜ampon anticÄƒdere cu extract de CafeinÄƒ (Cantitate: 1)', 142, 'Ramburs', 764325142, 'Strada Florilor, nr. 50', 'Cluj-Napoca', 'Cluj', 564732, '2021-06-21 11:20:13', 'Procesata'),
(2, 22, 'È˜ampon anticÄƒdere cu extract de CafeinÄƒ (Cantitate: 2), Gel de duÈ™ cu Citrus Verde (Cantitate: 2), Aquafil Hydra Light SPF30 CremÄƒ hidratantÄƒ  (Cantitate: 1), CremÄƒ multifuncÈ›ionalÄƒ pentru piele (Cantitate: 1), Gel de duÈ™ cu Propolis È™i Miere (Cantitate: 1)', 333, 'Ramburs', 764325142, 'Strada Florilor, nr. 50', 'Cluj-Napoca', 'Cluj', 564732, '2021-06-25 10:08:22', 'Finalizata'),
(3, 22, 'Gel de duÈ™ cu Propolis È™i Miere (Cantitate: 1), CremÄƒ multifuncÈ›ionalÄƒ pentru piele (Cantitate: 1), SÄƒpun cu cafea verde È™i argilÄƒ (Cantitate: 1)', 117, 'Ramburs', 764325142, 'Strada Florilor, nr. 50', 'Cluj-Napoca', 'Cluj', 564732, '2021-06-25 12:34:22', 'In curs de procesare'),
(4, 22, 'Gel de duÈ™ cu Citrus Verde (Cantitate: 1), Demachiant The Lovely (Cantitate: 2)', 150, 'Ramburs', 764325142, 'Strada Florilor, nr. 50', 'Cluj-Napoca2', 'Cluj', 564732, '2021-06-28 16:47:14', 'In curs de procesare'),
(5, 22, 'Demachiant The Lovely (Cantitate: 1)', 60, 'Ramburs', 764325142, 'Strada Florilor, nr. 50', 'Cluj-Napoca2', 'Cluj', 564732, '2021-06-28 20:50:38', 'In curs de procesare'),
(6, 22, 'È˜ampon anticÄƒdere cu extract de CafeinÄƒ (Cantitate: 1)', 46, 'Card', 764325142, 'Strada Florilor, nr. 50', 'Cluj-Napoca2', 'Cluj', 564732, '2021-06-28 20:51:01', 'Procesata'),
(7, 22, 'Demachiant The Lovely (Cantitate: 2)', 120, 'Ramburs', 764325142, 'Strada Florilor, nr. 50', 'Cluj-Napoca2', 'Cluj', 564732, '2021-06-29 08:39:48', 'In curs de procesare'),
(8, 22, 'Gel de duÈ™ cu Citrus Verde (Cantitate: 1)', 30, 'Card', 764325142, 'Strada Florilor, nr. 50', 'Cluj-Napoca2', 'Cluj', 564732, '2021-06-29 08:40:35', 'In curs de procesare'),
(9, 22, 'Demachiant The Lovely (Cantitate: 2)', 120, 'Ramburs', 764325142, 'Strada Florilor, nr. 50', 'Cluj-Napoca2', 'Cluj', 564732, '2021-07-19 06:40:48', 'In curs de procesare');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(250) NOT NULL,
  `product_image` varchar(250) NOT NULL,
  `product_price` float NOT NULL,
  `product_code` int(7) NOT NULL,
  `product_description` text NOT NULL,
  `id_brand` int(11) NOT NULL,
  `product_weight` int(5) NOT NULL,
  `product_um` varchar(100) NOT NULL,
  `product_ingredients` text NOT NULL,
  `product_application` text NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `product_stock` int(11) NOT NULL,
  `product_added_date` timestamp NOT NULL,
  `product_updated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `id_brand` (`id_brand`),
  KEY `id_category` (`id_category`),
  KEY `id_type` (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_image`, `product_price`, `product_code`, `product_description`, `id_brand`, `product_weight`, `product_um`, `product_ingredients`, `product_application`, `id_category`, `id_type`, `product_stock`, `product_added_date`, `product_updated_date`) VALUES
(18, 'Aquafil CremÄƒ20', 'images/1943997167.png', 53, 12345, 'Lapte demachiant lejer, special conceput pentru curÄƒÈ›area zilnicÄƒ a pielii sensibile, normale È™i mixte. Textura sa finÄƒ Ã®nlaturÄƒ cu delicateÈ›e machiajul È™i impuritÄƒÈ›ile de pe suprafaÈ›a pielii. Are proprietÄƒÈ›i antiinflamatorii È™i hidratante. AjutÄƒ la eliminarea toxinelor È™i Ã®mbunÄƒtÄƒÈ›eÈ™te respiraÈ›ia cutanatÄƒ.\r\n\r\nProdus testat dermatologic.', 8, 200, 'ml', 'Aquaxyl Â® are acÈ›iune hidratantÄƒ prin echilibrarea fluxului hidric cutanat. Ca urmare a limitÄƒrii pierderilor de apÄƒ ÅŸi optimizÄƒrii rezervelor hidrice, pielea devine suplÄƒ, finÄƒ ÅŸi elasticÄƒ.\r\n\r\nCalmiskinÂ® este un ingredient bogat Ã®n flavonoide, reduce inflamaÅ£ia ÅŸi creÅŸte starea de confort.\r\n\r\nApa TermalÄƒ Herculane are proprietÄƒÈ›i antiinflamatorii dovedite, fiind indicatÄƒ pentru piele sensibilÄƒ È™i reactivÄƒ. CalmeazÄƒ pielea È™i are efect antiiritant.', 'Se aplicÄƒ pe faÈ›Äƒ È™i gÃ¢t folosind o dischetÄƒ pentru demachiere. Se maseazÄƒ uÈ™or, cu miÈ™cÄƒri circulare, pÃ¢nÄƒ la eliminarea tuturor resturilor de machiaj È™i a impuritÄƒÈ›ilor. Foarte bine tolerat de pielea sensibilÄƒ din jurul ochilor.', 17, 26, 100, '2021-06-08 08:39:11', '2021-06-29 08:36:34'),
(19, 'Aquafil Hydra Light SPF30 CremÄƒ hidratantÄƒ ', 'images/353856136.jpg', 84, 12344, 'Aquafil Hydra Light SPF 30 Crema conferÄƒ pielii sensibile normal-mixte un aspect neted È™i luminos, printr-o hidratare intensÄƒ È™i de duratÄƒ, datoritÄƒ Ã®mbunÄƒtÄƒÈ›irii circulaÈ›iei apei Ã®n celule È™i creÈ™terea rezervelor de apÄƒ È™i acid hialuronic. ProtejeazÄƒ Ã®mpotriva efectelor nocive ale radiaÈ›iilor UV È™i previne procesul de fotoÃ®mbÄƒtrÃ¢nire cutanatÄƒ.', 8, 50, 'ml', 'AquaphylineÂ® este un ingredient natural, extras din panseluÈ›a sÄƒlbaticÄƒ (Viola Tricolor). Este un inductor de hidratare cu un puternic efect hidratant prin douÄƒ mecanisme: sinteza aquaporinelor (creÈ™terea numÄƒrului de canale de apÄƒ la nivelul membranelor celulare) È™i o creÈ™tere uriaÈ™Äƒ a cantitÄƒÈ›ii de acid hialuronic â€“ binecunoscutul â€žburete molecularâ€ al pielii , efecte care au fost dovedite clinic. Pielea este hidratatÄƒ din interior spre exterior prin atragerea apei din derm cÄƒtre epiderm È™i duce la Ã®mbunÄƒtÄƒÈ›irea fluxului constant de apÄƒ Ã®n piele.\r\n\r\nFiltrele solare SPF 30 au acÈ›iune sinergicÄƒ pentru a proteja pielea Ã®mpotriva radiaÈ›iilor UV.\r\n\r\n5-Alpha avocutaÂ® este obÈ›inut din fructul de avocado, reduce producÈ›ia de sebum È™i matifiazÄƒ zonele strÄƒlucitoare ale feÈ›ei prin inhibarea 5-alfa-reductazei, enzima implicatÄƒ Ã®n stimularea activitÄƒÈ›ii glandelor sebacee.\r\n\r\nUleiul de jojoba este un ingredient natural, extras din Buxus Chinensis, care hidrateazÄƒ intens, protejeazÄƒ È™i asigurÄƒ elasticitatea pielii.', 'Se aplicÄƒ pe pielea curatÄƒ, dimineaÈ›a, Ã®nainte de expunerea la soare. Seara se poate folosi crema hidratantÄƒ Aquafil Hydra Light, fÄƒrÄƒ SPF. ExcelentÄƒ bazÄƒ de machiaj.', 17, 28, 99, '2021-06-08 08:40:51', '2021-06-25 10:08:22'),
(20, 'Multi-performance CremÄƒ hidratantÄƒ pentru Ã®ngrijirea mÃ¢inilor', 'images/1083239534.png', 40, 12343, 'AsigurÄƒ hidratarea profundÄƒ, imediatÄƒ È™i pe termen lung, redÃ¢nd supleÈ›ea pielii uscate, deshidratate È™i agresate a mÃ¢inilor, Ã®n urma acÈ›iunii factorilor interni sau externi (frig, vÃ¢nt, soare, detergenÈ›i etc.). Are efect nutritiv, antiinflamator È™i antibacterian.', 8, 50, 'ml', 'AquaphylineÂ®, extras din panseluÈ›e sÄƒlbatice (Viola Tricolor), are un puternic efect de hidratare prin: stimularea sintezei aquaporinelor â€“ canale transportatoare de apÄƒ dintre celule È™i creÈ™terea cantitÄƒÈ›ii de acid hialuronic â€“ binecunoscutul â€žburete molecularâ€ al pielii.\r\n\r\nUntul de Karite (Butyrospermum parkii) (Butirospermum parkii) (Butirospermum parkii) este renumit pentru importantele sale proprietÄƒÈ›i hidratante È™i antiinflamatorii. Bogat Ã®n fitosteroli È™i vitamine (A, E, C) are rol nutritiv, calmant È™i restructurant.', 'Se aplicÄƒ pe mÃ¢ini cu generozitate, de douÄƒ ori pe zi sau la nevoie.', 16, 24, 100, '2021-06-08 08:42:20', '2021-06-14 18:17:29'),
(21, 'Multi-performance Balsam de buze nutritiv È™i reparator', 'images/238260783.png', 40, 12334, 'Balsamul de buze Ivatherm este un produs cu o texturÄƒ foarte bogatÄƒ È™i densÄƒ, hidrateazÄƒ È™i reparÄƒ buzele cu agenÈ›i de hidratare ocluzivi, Ã®mpiedicÃ¢nd evaporarea apei È™i conferind buzelor un aspect catifelat. ÃŽnmoaie buzele uscate, cu fisuri È™i scuame, cauzate de factori fiziologici sau agresiuni de mediu. Are o texturÄƒ care se absoarbe cu uÈ™urinÈ›Äƒ Ã®n piele È™i are un parfum revigorant de citrice.', 8, 15, 'ml', 'Pentru acest produs am ales agenÈ›i de hidratare ocluzivi, pe bazÄƒ de grÄƒsimi de calitate È™i acizi graÈ™i prezenÈ›i Ã®n mai multe uleiuri naturale.\r\n\r\nUntul de Cupuacu este un ingredient natural, cremos È™i aromat obÈ›inut din fructele de Theobroma Grandiflorum, bogat Ã®n polifenoli, vitamina B1, B2, B3 È™i antioxidanÈ›i. Are proprietÄƒÈ›i speciale de hidratare, regenerare È™i restaurare a fermitÄƒÈ›ii pielii. CalmeazÄƒ È™i protejeazÄƒ pielea sensibilÄƒ iritatÄƒ È™i absoarbe uÈ™or radiaÈ›iile UV, neutralizÃ¢ndu-le È™i protejÃ¢nd pielea. Este un bun emolient È™i are un efect de catifelare a pielii, oferindu-i un aspect mÄƒtÄƒsos.', 'Se aplicÄƒ Ã®n 1-2 straturi pe buze, ori de cÃ¢te ori este nevoie.', 17, 27, 100, '2021-06-08 08:43:39', '2021-06-14 18:18:28'),
(22, 'CremÄƒ multifuncÈ›ionalÄƒ pentru piele', 'images/1964966919.jpg', 65, 12341, 'Ingredientele naturale din compoziÈ›ie sunt un adevarat cocktail de substanÈ›e benefice, crema formÃ¢nd o peliculÄƒ protectoare pe suprafaÈ›a pielii, pe care o hidrateazÄƒ Ã®n profunzime. Acesta ajutÄƒ la scÄƒderea inflamaÈ›iei ÅŸi la regenerarea celularÄƒ rapidÄƒ.', 6, 50, 'g', 'Remediu de tradiÅ£ie Ã®n medicina naturistÄƒ din RomÃ¢nia, propolisul a uimit oamenii de ÅŸtiinÅ£Äƒ cu numeroasele sale proprietÄƒÅ£i, devenind cu uÅŸurinÅ£Äƒ cel mai puternic medicament antiinfecÅ£ios cunoscut. Este benefic pentru Ã®ntreg organismul uman, Ã®n compoziÅ£ia sa regÄƒsindu-se, printre multe altele: substanÅ£e antibiotice, aminoacizi, acizi graÅŸi, calciu, fier, magneziu, siliciu ÅŸi vitaminele A, B, E, PP. Inclus Ã®n creme sau unguente, acesta scade inflamaÅ£ia, dezinfecteazÄƒ, regenereazÄƒ pielea ÅŸi acÅ£ioneazÄƒ ca un anestezic local.', 'este util Ã®n caz de arsuri de gradul I È™i II, rÄƒni, iritaÈ›ii ale pielii, dermatite de contact, escare sau in urma indepÄƒrtarii bÄƒtÄƒturilor;\r\nhidrateazÄƒ, calmeazÄƒ È™i reface pielea uscatÄƒ/crapatÄƒ/descuamatÄƒ\r\najutÄƒ refacerea È›esutului dupÄƒ supunerea la intervenÈ›ii chirurgicale;\r\ndatoritÄƒ efectului calmant, crema poate fi folositÄƒ È™i dupÄƒ plajÄƒ, pentru reducerea iritaÈ›iilor asociate cu expunerea la soare, precum si pentru vindecarea arsurilor solare;', 16, 23, 98, '2021-06-08 08:50:29', '2021-06-25 12:34:22'),
(23, 'Demachiant The Lovely', 'images/1459686974.jpg', 60, 12134, 'Demachiant The Lovely', 9, 200, 'ml', 'Demachiant The Lovely', 'Demachiant The Lovely', 17, 26, 93, '2021-06-08 08:51:31', '2021-07-19 06:40:48'),
(24, 'Tratament facial The Caring', 'images/717152563.jpg', 65, 12131, 'CremÄƒ anti-Ã®mbÄƒtrÃ¢nire Time Reversal', 9, 200, 'ml', 'CremÄƒ anti-Ã®mbÄƒtrÃ¢nire Time Reversal', 'CremÄƒ anti-Ã®mbÄƒtrÃ¢nire Time Reversal', 17, 29, 100, '2021-06-08 08:52:20', '2021-06-14 18:44:58'),
(25, 'CremÄƒ anti-Ã®mbÄƒtrÃ¢nire Time Reversal', 'images/426852658.jpg', 80, 13421, 'CremÄƒ anti-Ã®mbÄƒtrÃ¢nire Time Reversal', 9, 50, 'ml', 'CremÄƒ anti-Ã®mbÄƒtrÃ¢nire Time Reversal', 'CremÄƒ anti-Ã®mbÄƒtrÃ¢nire Time Reversal', 17, 28, 100, '2021-06-08 08:53:24', '2021-06-14 18:44:43'),
(26, 'CremÄƒ anti-acnee Detox', 'images/1027452324.jpg', 75, 11234, 'CremÄƒ pentru ten sensibil Skin Rescue', 9, 50, 'ml', 'CremÄƒ pentru ten sensibil Skin Rescue', 'CremÄƒ pentru ten sensibil Skin Rescue', 17, 28, 100, '2021-06-08 08:54:06', '2021-06-14 18:44:24'),
(27, 'CremÄƒ pentru ten sensibil Skin Rescue', 'images/1033506800.jpg', 80, 21342, 'o crema de fata ce hidrateaza delicat, calmand si protejand pielea. Un mix bogat in extracte organice de musetel, ceai verde si ghimbir, in ulei de seminte de struguri si de lemongrass.', 9, 50, 'ml', 'Un mix bogat in extracte organice de musetel, ceai verde si ghimbir, in ulei de seminte de struguri si de lemongrass.', 'Se aplicÄƒ zilnic, dimineaÈ›a È™i seara.', 17, 28, 100, '2021-06-08 08:54:46', '2021-06-14 18:42:34'),
(28, 'Balsam de buze cu unt de cacao È™i miere', 'images/1821634572.png', 35, 32143, 'Lipbalm-ul cu MIERE È™i unt de CACAO regenereazÄƒ È™i hidrateazÄƒ. Amestecul de ulei de cocos, ricin, miere È™i cearÄƒ naturalÄƒ, hrÄƒneÈ™te È™i protejeazÄƒ pielea delicatÄƒ a buzelor.', 12, 25, 'ml', '\r\nBUTYROSPERMUM PARKII BUTTER EXTRACT, COCOS NUCIFERA OIL, RICINUS COMMUNIS SEED OIL, BEESWAX, HIPPOPHAE RHAMNOIDES FRUIT EXTRACT, MEL, LIMONENE, CITRUS SINENSIS PEEL OIL EXPRESSED, CITRUS PARADISI PEEL OIL, TOCOPHEROL, MENTHA PIPERITA OIL, LINALOOL, CITRAL. (unt de shea, ulei de cocos, ulei de ricin, cearÄƒ naturalÄƒ, ulei de cÄƒtinÄƒ, miere de albine, vitamina E, uleiuri esenÈ›iale de portocale, grapefruit È™i mentÄƒ).', 'Se aplicÄƒ pe buzele curate È™i se maseazÄƒ uÈ™or. Acest produs este recomandat a fi folosit tot timpul anului.', 17, 27, 100, '2021-06-08 08:58:11', '2021-06-14 19:27:34'),
(29, 'Multi-performance CremÄƒ hidratantÄƒ pentru corp', 'images/562812234.png', 64, 22313, 'CombinaÈ›ia de hidroxiceramide, acid hialuronic, acizi graÈ™i, restabileÈ™te imediat confortul pielii uscate È™i ajutÄƒ Ã®n lupta Ã®mpotriva Ã®mbÄƒtrÃ¢nirii pielii, are efect regenerator, filmogen, reparator È™i asigurÄƒ aportul de vitamine. Are textura emolientÄƒ È™i non-grasÄƒ.', 8, 200, 'ml', 'Hidroxiceramidele È™i uleiul de Borago cresc coeziunea Ã®ntre celulele de suprafaÈ›Äƒ ale pielii (corneocite), contribuind astfel la regenerarea barierei lipidice cutanate È™i la regularizarea pierderii transepidermice de apÄƒ. ConÈ›inutul important Ã®n hidroxiceramide al cremei hidratante pentru corp ajutÄƒ la o limitare a descuamÄƒrii accelerate a pielii.\r\n\r\nAcidul hialuronic Ã®mbunÄƒtÄƒÈ›eÈ™te reÈ›inerea apei Ã®n profunzimea pielii. AsigurÄƒ un control al transferului de proteine, enzime È™i hormoni.', 'AplicaÈ›i seara È™i dimineaÈ›a pe pielea curatÄƒ, insistÃ¢nd pe zonele foarte uscate ale corpului.', 16, 23, 99, '2021-06-14 18:23:17', '2021-06-21 11:20:13'),
(30, 'Exfoliant facial cu vitamine', 'images/968816437.jpg', 70, 43212, 'TexturÄƒ cremoasÄƒ, cu particule fine de orez pentru o exfoliere non-agresivÄƒ\r\nExfolierea feÈ›ei este extrem de importantÄƒ pentru cÄƒ are rolul de a indepÄƒrta celulele moarte, de a micÈ™ora porii È™i de a uniformiza aspectul pielii. De asemenea, faciliteazÄƒ absorbÈ›ia produselor de ingrijire din rutina zilnicÄƒ.\r\nÃŽmbogÄƒÈ›it cu vitaminele A È™i E, acest exfoliant curÄƒÈ›Äƒ delicat tenul, lÄƒsÃ¢nd Ã®n urmÄƒ o piele suplÄƒ È™i revitalizatÄƒ.', 6, 200, 'ml', 'Particulele de orez È™i kaolinul ajutÄƒ la eliminarea impuritÄƒÈ›ilor È™i a celulelor moarte, oferind pielii luminozitate. Orezul e un ingredient cosmetic extraordinar, folosit de secole ca tratament de Ã®nfrumuseÈ›are. PrezintÄƒ proprietÄƒÈ›i antioxidante, hidratante È™i de albire a pielii, estompÃ¢nd petele maronii de pe faÈ›Äƒ È™i Ã®mbunÄƒtÄƒÈ›ind circulaÈ›ia localÄƒ, astfel Ã®ncÃ¢t tenul este mai luminos È™i mai catifelat.', 'UmeziÈ›i tenul cu apÄƒ cÄƒlduÈ›Äƒ È™i aplicaÈ›i o cantitate micÄƒ de exfoliant pe vÃ¢rfurile degetelor. Cu miÈ™cÄƒri circulare, masaÈ›i pe Ã®ntreagÄƒ faÈ›Äƒ, evitÃ¢nd zona ochilor, apoi clÄƒtiÈ›i pentru a dezvÄƒlui o textura mai finÄƒ È™i uniformÄƒ a pielii. A se folosi de 2-3 ori pe sÄƒptÄƒmÃ¢nÄƒ. ÃŽncetaÈ›i folosirea dacÄƒ observaÈ›i apariÈ›ia unor reacÈ›ii alergice.', 17, 29, 100, '2021-06-14 18:41:03', NULL),
(31, 'CremÄƒ contur ochi anticearcÄƒn', 'images/340001140.png', 67, 34213, 'Uleiul de Centella Asiatica este drenant. ÃŽn India este denumit â€œiarba tigruluiâ€ datorita faptului ca tigrii de Bengal au fost deseori vazuti rostogolindu-se in ea dupa ce au fost raniti in lupte.\r\nUlei de Aloe Vera aduce hidratare si cel de migdale dulci catifelare.\r\n\r\nOchii tai vor zambi mangaiati de mirosul suav de vanilie si Ylang Ylang.', 10, 30, 'g', 'ulei de migdale dulci (prunus amygdalus dulcis oil), ulei de Aloe Vera (glycine soja oil, aloe barbadensis leaf extract, tocopherol), ulei de orez (oryza sativa bran oil), Ulei de rodie BIO virgin (punica granatum seed oil), ulei de Centella Asiatica (helianthus annuus seed oil, centella asiatica extractnon-toxic extern), Apa de imortele BIO (helichrysum italicum flower water), ceara alba (cera alba), extract de vanilie de Bourbon (vanilla planifolia bean extract) , ulei esential de Ylang Ylang (cananga odorata flower oil)\r\n\r\nâ€“ 100% naturala\r\nâ€“ nu contine: conservanti, parabeni, OMG (organisme modificate genetic)\r\nâ€“ produs VEGAN\r\nâ€“ aport ridicat de substante active', 'Se aplica o cantitate mica de crema prin miscari circulare in jurul ochilor pana cand crema intra in piele.\r\n\r\nSe poate aplica si pe restul fetei.', 17, 28, 100, '2021-06-14 18:48:09', NULL),
(32, 'Exfoliant fin', 'images/1986382961.png', 95, 45324, 'Exfolierea cu Exfoliantul fin de la Raftul cu miresme se poate face in fiecare zi timp de o luna pentru un efect de intinerire vizibil. In fiecare seara se face o exfoliere cu presiune medie pe toata fata, inclusiv in jurul ochilor. Dupa 1 saptamana se observa un efect de luminozitate iar dupa 1 luna de intinerire. Aceast procedeu se face 1 singura data pe an. Ulterior acestuia se mentine ritualul exfolierii de 3 ori/ saptamana. Recomandam acest procedeu doar cu produsul nostru fiindca are particula fina.', 10, 200, 'ml', 'Miere de salcam (melem), ulei de canepa (cannabis sativa seed oil), ulei de Rosa Mosqueta BIO (rosa moschata seed oil), ulei de migdale dulci (prunus amygdalus dulcis oil), ulei de floarea soarelui (helianthus annuus seed oil), faina de orez, ulei esential de citrice.\r\n\r\nâ€“ 100% naturala\r\nâ€“ nu contine: conservanti, parabeni, OMG (organisme modificate genetic)\r\nâ€“ produs VEGAN\r\nâ€“ aport ridicat de substante active', 'Se ia o cantitate de exfoliant cu tot cu particula cam cat o aluna. Apoi se aplica pe toata fata cu presiune medie, inclusiv in jurul ochilor. La final se spala cu apa calduta.\r\n\r\nSe poate lasa pe ten sa actioneze si ca o masca timp de 15 min.', 17, 29, 100, '2021-06-14 18:50:04', NULL),
(33, 'Demachiant natural', 'images/397355626.png', 67, 23421, 'Un demachiant 100% natural ideal pentru zona ochilor pentru cÄƒ nu usturÄƒ cÃ¢t È™i pentru restul tenului. Sunt suficiente 2 È™tergeri cu pad-ul pentru ca machiajul sÄƒ fie Ã®nlÄƒturat Ã®ntr-un mod delicat. GÄƒsirea unui produs care  Ã®nlÄƒturÄƒ machiajul Ã®ntr-un mod delicat este esenÈ›ialÄƒ pentru ca tenul sa se menÈ›inÄƒ tÃ¢nÄƒr.', 10, 100, 'ml', 'Apa (aqua), ulei de masline virgin (olea europaea oil), ulei de migdale dulci (prunus amygdalus dulcis oil), ulei de Jojoba (simmondsia chinensis seed oil), ulei esential de grapefruit (citrus paradisi peel oil), ulei esential de mandarina (Citrus reticulata).\r\n\r\nâ€“ 100% naturala\r\nâ€“ nu contine: conservanti, parabeni, OMG (organisme modificate genetic)\r\nâ€“ produs VEGAN\r\nâ€“ aport ridicat de substante active', 'Dupa ce agitati flaconul puneti solutie demachianta pe disc si curatati machiajul. Folositi si a doua discheta cu demachiant pentru curata ulterior si impuritatile fine. Uleiul ramas pe ten se inlatura cu apa florala sau apa tonica.\r\n\r\nA SE AGITA inainte de fiecare folosire!', 17, 26, 100, '2021-06-14 18:51:38', NULL),
(34, 'CremÄƒ iluminatoare regenerantÄƒ', 'images/1184862963.png', 84, 23432, 'Cocktail-ul inmiresmat din 12 uleiuri regenerante ofera tenului nutrientii necesari obtinerii unui ten luminos si vizibil intinerit. Este ideala persoanelor de peste 30 de ani carora le-au aparut primele semne de inaintare in varsta.', 10, 30, 'g', 'Ulei de germeni de grau (triticum vulgare germ oil), apa (aqua), ceara (cera alba), ulei de morcov (helianthus annuus oil, daucus carota sativa root extract), ulei de Aloe Vera (glycine soja oil, aloe barbadensis leaf extract, tocopherol), ulei de orez (oryza sativa bran oil), ulei de Pepene Kalahari virgin (citrullus lanatus oil), ulei de Rosa Mosqueta (rosa moschata seed oil), ulei din lemn de santal (santalum album wood oil), ulei de cocos (cocos nucifera oil), ulei esential de lavanda (lavandula angustifolia oil), ulei esential de Ylang Ylang (cananga odorata flower oil), ulei esential de melissa (melissa officinalis leaf oil) si portocala (citrus aurantium dulcis peel oil).\r\n\r\nâ€“ 100% naturala\r\nâ€“ nu contine: conservanti, parabeni, OMG (organisme modificate genetic)\r\nâ€“ produs VEGAN\r\nâ€“ aport ridicat de substante active', 'Se aplica o cantitate mica de crema prin miscari circulare.', 17, 28, 100, '2021-06-14 18:54:40', NULL),
(35, 'Ulei Tratament pentru pÄƒr', 'images/27274018.png', 62, 22342, 'Uleiul tratament pentru pÄƒr este soluÈ›ia 100% naturalÄƒ pentru menÈ›inerea sÄƒnÄƒtÄƒÈ›ii pÄƒrului È™i prevenirea degradÄƒrii acestuia. Uleiurile din compoziÈ›ia sa sunt bogate Ã®n acizi graÈ™i esenÈ›iali È™i recunoscute pentru calitÄƒÈ›ile lor hidratante È™i reparatorii.', 12, 200, 'ml', 'COCOS NUCIFERA OIL, RICINUS COMMUNIS SEED OIL, SIMMONDSIA CHINENSIS SEED OIL, ARGANIA SPINOSA KERNEL OIL, LAVANDULA HYBRIDA OIL, MELALEUCA ALTERNIFOLIA LEAF OIL, TOCOPHEROL, LINALOOL, LIMONENE, COUMARIN. (RO: ulei de cocos, ulei de ricin, ulei de jojoba, ulei de argan, uleiuri esenÅ£iale de lavandÄƒ ÅŸi tea tree, vitamina E).', 'Se aplicÄƒ pe toatÄƒ lungimea firului de pÄƒr de la rÄƒdÄƒcinÄƒ pÃ¢nÄƒ la vÃ¢rf, se maseazÄƒ uÈ™or scalpul È™i se lasÄƒ sÄƒ acÈ›ioneze cÃ¢teva minute Ã®nainte de È™amponare.', 19, 20, 100, '2021-06-14 19:12:43', NULL),
(36, 'È˜ampon anticÄƒdere cu extract de CafeinÄƒ', 'images/538971670.jpg', 46, 11223, 'È˜amponul cu cafeinÄƒ ajutÄƒ la Ã®ntÄƒrirea rÄƒdÄƒcinii È™i la energizarea firelor de pÄƒr pe toatÄƒ lungimea lor. Previne cÄƒderea prematurÄƒ a pÄƒrului È™i subÈ›ierea firelor, fenomene ce afecteazÄƒ atÃ¢t bÄƒrbaÈ›ii cÃ¢t È™i femeile. Cafeina stimuleazÄƒ circulaÈ›ia sÃ¢ngelui la nivelul scalpului ajutÃ¢nd la transportarea nutrienÈ›ilor necesari unui pÄƒr sÄƒnÄƒtos, bogat È™i strÄƒlucitor, cu mai puÈ›ine fire de pÄƒr cÄƒzute.', 12, 200, 'ml', '\r\nAQUA, SODIUM COCO-SULFATE, COCO-GLUCOSIDE, POTASSIUM COCOYL RICE AMINO ACIDS, GLYCERYL OLEATE, CITRIC ACID, DISODIUM COCOYL GLUTAMATE, PENTYLENE GLYCOL, SODIUM BENZOATE, GUAR HYDROXYPROPYLTRIMONIUM CHLORIDE, CEDRUS ATLANTICA WOOD OIL, CAFFEINE, COFFEA ARABICA SEED EXTRACT, LAVANDULA HYBRIDA OIL, POTASSIUM SORBATE, ROSMARINUS OFFICINALIS FLOWER OIL, LINALOOL, ISOCHRYSIS GALBANA EXTRACT, TOCOPHEROL, HYDROGENATED PALM GLYCERIDES CITRATE.\r\n\r\n', 'AplicÄƒ È™amponul pe pÄƒrul ud, maseazÄƒ uÅŸor timp de 2-3 minute ÅŸi clÄƒteÅŸte cu apÄƒ din abundenÅ£Äƒ. RepetÄƒ dacÄƒ este necesar.', 19, 19, 96, '2021-06-14 19:14:48', '2021-06-28 20:51:01'),
(37, 'È˜ampon AntimÄƒtreaÈ›Äƒ cu ulei de Cocos', 'images/1893451644.jpg', 28, 23433, 'EliminÄƒ È™i previne formarea mÄƒtreÈ›ei avÃ¢nd la bazÄƒ ulei de cocos È™i ingredientul activ Octopirox. Aceste ingrediente hidrateazÄƒ scalpul È™i au acÈ›iune antimicrobianÄƒ È™i antioxidantÄƒ.', 12, 200, 'ml', '\r\nAQUA, DISODIUM LAURETH SULFOSUCCINATE, SODIUM LAURETH SULFATE, COCO-GLUCOSIDE, ACRYLATES/VINYL NEODECANOATE CROSSPOLYMER, COCAMIDOPROPYL BETAINE, COCAMIDE DEA, GLYCERIN, PEG-7 GLYCERYL COCOATE, PIROCTONE OLAMINE, AMINOMETHYL PROPANOL, COCOS NUCIFERA OIL,PEG-40 HYDROGENATED CASTOR OIL, POLYQUATERNIUM-39, BENZYL ALCOHOL, PROPYLENE GLYCOL, MAGNESIUM NITRATE, METHYLCHLOROISOTHIAZOLINONE AND METHYLISOTHIAZOLINONE, MAGNESIUM CHLORIDE, BENZYL SALICYLATE, BUTYLPHENYL METHYLPROPIONAL, LINALOOL. ', 'AplicÄƒ È™amponul pe pÄƒrul ud, maseazÄƒ uÅŸor timp de 2-3 minute ÅŸi clÄƒteÅŸte cu apÄƒ din abundenÅ£Äƒ. RepetÄƒ dacÄƒ este necesar.', 19, 19, 100, '2021-06-14 19:16:14', NULL),
(38, 'È˜ampon antimÄƒtreaÈ›Äƒ cu extract din sÃ¢mburi de ÈšelinÄƒ', 'images/141105875.jpg', 40, 23221, 'È˜amponul antimÄƒtreaÈ›Äƒ conÈ›ine un extract activ natural din seminÈ›e de È›elinÄƒ ce ajutÄƒ la echilibrarea producÈ›iei de sebum È™i trateazÄƒ mÄƒtreaÈ›a atÃ¢t pentru scalpul seboreic cÃ¢t È™i pentru scalp uscat.\r\n\r\nIngredient activ Ã®mpiedicÄƒ dezvoltarea bacteriilor ce produc mÄƒtreaÈ›a È™i reduce descuamarea excesivÄƒ a pielii scalpului.\r\n\r\n  ', 12, 200, 'ml', 'FÄƒrÄƒ dedurizatori precum SLS, ce distrug structura firului de pÄƒr È™i usucÄƒ pielea.\r\nFÄƒrÄƒ silicon È™i uleiuri minerale, ce vor Ã®ngreuna Ã®n timp firul de pÄƒr fÄƒcÃ¢ndu-l lipsit de vitalitate.\r\nFÄƒrÄƒ coloranÈ›i artificiali È™i parfumuri sintetice ce sensibilizeazÄƒ scalpul.\r\nFÄƒrÄƒ parabeni.', '\r\nAplicÄƒ È™amponul pe pÄƒrul ud, maseazÄƒ uÅŸor timp de 2-3 minute ÅŸi clÄƒteÅŸte cu apÄƒ din abundenÅ£Äƒ. RepetÄƒ dacÄƒ este necesar.', 19, 19, 100, '2021-06-14 19:17:09', NULL),
(39, 'Gel de duÈ™ cu CÄƒrbune È™i Tea Tree', 'images/1416841122.jpg', 34, 123456, 'Gelul de duÈ™ cu cÄƒrbune si tea-tree curÄƒÈ›Äƒ È™i detoxificÄƒ pielea Ã®n profunzime, prevenind senzaÈ›ia de uscarea datoritÄƒ proprietÄƒÈ›ilor sale emoliente È™i hidratante. Bogat Ã®n cÄƒrbune activ, acesta atrage ca un magnet impuritÄƒÈ›ile È™i excesul de sebum de la nivelul pielii, prevenind acumularea murdÄƒriei zilnice È™i Ã®ncÄƒrcarea porilor. ', 12, 300, 'ml', 'AQUA, SODIUM COCO-SULFATE, COCO-GLUCOSIDE, POTASSIUM COCOYL RICE AMINO ACIDS, DISODIUM COCOYL GLUTAMATE, GLYCERYL OLEATE, CITRIC ACID, SODIUM CHLORIDE, SODIUM BENZOATE, LAVANDULA HYBRIDA OIL, CITRUS SINENSIS PEEL OIL EXPRESSED, CEDRUS ATLANTICA WOOD OIL, POTASSIUM SORBATE, CITRUS AURANTIUM AMARA LEAF/TWIG OIL, TOCOPHEROL, HYDROGENATED PALM GLYCERIDES CITRATE, LIMONENE, LINALOOL.\r\n\r\nFabricat Ã®n', 'AplicatÌ§i pe pielea umedaÌ†, saÌ†punitÌ§i bine sÌ§i claÌ†titÌ§i cu apaÌ† curataÌ†. A se agita bine Ã®nainte de folosire.', 18, 22, 100, '2021-06-14 19:20:56', NULL),
(40, 'Gel de duÈ™ cu Citrus Verde', 'images/1709572702.jpg', 30, 234512, 'Gelul de duÈ™ cu Citrus Verde este bogat in Vitamina C. CunoscutÄƒ pentru beneficiile sale antibacteriene, antiseptice È™i tonice, acest gel de duÈ™ curÄƒÈ›Äƒ È™i menÈ›ine pielea sÄƒnÄƒtoasÄƒ È™i restabileÈ™te echilibrul natural al acesteia, luptÃ¢nd eficient cu radicalii liberi. Formula uÈ™oarÄƒ de gel-cremÄƒ curÄƒÈ›Äƒ delicat, fiind adecvatÄƒ utilizÄƒrii zilnice, oferind strÄƒlucire È™i un efect de fermitate pielii. Se potriveÈ™te tuturor tipurilor de ten.', 12, 300, 'ml', 'AQUA, SODIUM COCO-SULFATE, COCO-GLUCOSIDE, POTASSIUM COCOYL RICE AMINO ACIDS, DISODIUM COCOYL GLUTAMATE, GLYCERYL OLEATE, CITRIC ACID, SODIUM CHLORIDE, SODIUM BENZOATE, LAVANDULA HYBRIDA OIL, CITRUS SINENSIS PEEL OIL EXPRESSED, CEDRUS ATLANTICA WOOD OIL, POTASSIUM SORBATE, CITRUS AURANTIUM AMARA LEAF/TWIG OIL, TOCOPHEROL, HYDROGENATED PALM GLYCERIDES CITRATE, LIMONENE, LINALOOL.\r\n\r\n', 'AplicatÌ§i pe pielea umedaÌ†, saÌ†punitÌ§i bine sÌ§i claÌ†titÌ§i cu apaÌ† curataÌ†. A se agita bine Ã®nainte de folosire.', 18, 22, 96, '2021-06-14 19:21:39', '2021-06-29 08:40:35'),
(41, 'Gel de duÈ™ cu Propolis È™i Miere', 'images/454478861.png', 32, 234532, 'ProprietÄƒÈ›ile antioxidante, antibacteriene È™i emoliente ale mierii, restabilesc È™i susÈ›in funcÈ›ia naturalÄƒ a pielii. Propolisul, bogat Ã®n substanÈ›e nutritive oferÄƒ beneficii antibacteriene, antiseptice, antioxidante È™i antifungice. ÃŽmpreunÄƒ, aceste ingrediente accelereazÄƒ rata de regenerare a celulelor È™i decongestioneazÄƒ porii. Este potrivit oricÄƒrui tip de piele, cu beneficii deosebite pentru tenul sensibil, cu imperfecÈ›iuni sau cel matur.', 12, 300, 'ml', 'AQUA, SODIUM COCO-SULFATE, COCO-GLUCOSIDE, POTASSIUM COCOYL RICE AMINO ACIDS, DISODIUM COCOYL GLUTAMATE, SODIUM CHLORIDE, GLYCERYL OLEATE, CITRIC ACID, SODIUM BENZOATE, PROPANEDIOL, PROPYLENE GLYCOL, LITSEA CUBEBA FRUIT OIL, AMYRIS BALSAMIFERA BARK OIL, POTASSIUM SORBATE, PROPOLIS EXTRACT, HONEY EXTRACT, TOCOPHEROL, HYDROGENATED PALM GLYCERIDES CITRATE, CITRAL.', 'AplicatÌ§i pe pielea umedaÌ†, saÌ†punitÌ§i bine sÌ§i claÌ†titÌ§i cu apaÌ† curataÌ†. A se agita bine Ã®nainte de folosire.', 18, 22, 97, '2021-06-14 19:22:17', '2021-06-25 12:34:22'),
(42, 'SÄƒpun cu cafea verde È™i argilÄƒ', 'images/156968257.jpg', 20, 2345123, 'SÄƒpunul cu cafea verde È™i argilÄƒ Ã®mprospÄƒteazÄƒ È™i curÄƒÈ›Äƒ pielea lÄƒsÃ¢nd-o finÄƒ È™i strÄƒlucitoare. Uleiurile esenÈ›iale de grapefruit, brad È™i scorÈ›iÈ™oarÄƒ  vin sÄƒ ajute la prevenirea È™i combaterea celulitei. Cafeaua verde stimuleazÄƒ circulaÈ›ia la nivelul pielii iar argila curÄƒÈ›Äƒ delicat eliminÃ¢nd impuritÄƒÈ›ile È™i excesul de sebum. Este un sÄƒpun potrivit tuturor tipurilor de piele cu uÈ™oare efecte de exfoliere.', 12, 100, 'gr', 'INGREDIENTE: SODIUM OLIVATE, AQUA, SODIUM COCOATE, SODIUM PALMATE, SIMMONDSIA CHINENSIS SEED OIL, SODIUM CASTORATE, SODIUM SHEA BUTTERATE, CITRUS NOBILIS LEAF OIL, MELALEUCA ALTERNIFOLIA LEAF OIL, CHARCOAL POWDER, CITRUS LIMON PEEL OIL, LIMONENE.\r\n\r\n(uleiuri saponificate de MÄ‚SLINE, COCOS, PALMIER, JOJOBA È™i RICIN, UNT DE SHEA, APÄ‚, uleiuri esenÈ›iale de MANDARINE, TEA TREE È™i LÄ‚MÃ‚IE, CÄ‚RBUNE PULBERE)', '\r\nUmeziti uÈ™or mÃ¢inile È™i sÄƒpunul. Treceti de cÃ¢teva ori sÄƒpunul prin pame È™i frecaÈ›i palmele pentru a obÈ›ine o spumÄƒ bogatÄƒ. FolosiÈ›i spuma obÈ›inutÄƒ pentru a curÄƒÈ›a zona doritÄƒ a corpului È™i clÄƒtiÈ›i.', 18, 21, 99, '2021-06-14 19:23:17', '2021-06-25 12:34:22'),
(43, 'SÄƒpun cu cÄƒrbune È™i tea tree', 'images/1233101153.png', 21, 234561, 'SÄƒpunul cu CÄ‚RBUNE È™i TEA TREE Ã®ndepÄƒrteazÄƒ celulele moarte È™i absoarbe sebumul de la suprafaÈ›a pielii, pÄƒstrÃ¢nd umiditatea naturalÄƒ a acesteia. CombinaÅ£ia de tea tree, mandarine È™i lÄƒmÃ¢ie dau o notÄƒ uÈ™or masculinÄƒ sÄƒpunului, un aer sofisticat ÅŸi misterios. Este potrivit tuturor tipurilor de piele, cu beneficii speciale pentru cea mixtÄƒ sau celei predispuse la acnee.', 12, 100, 'gr', 'INGREDIENTE: SODIUM OLIVATE, AQUA, SODIUM COCOATE, SODIUM PALMATE, SIMMONDSIA CHINENSIS SEED OIL, SODIUM CASTORATE, SODIUM SHEA BUTTERATE, CITRUS NOBILIS LEAF OIL, MELALEUCA ALTERNIFOLIA LEAF OIL, CHARCOAL POWDER, CITRUS LIMON PEEL OIL, LIMONENE.\r\n\r\n(uleiuri saponificate de MÄ‚SLINE, COCOS, PALMIER, JOJOBA È™i RICIN, UNT DE SHEA, APÄ‚, uleiuri esenÈ›iale de MANDARINE, TEA TREE È™i LÄ‚MÃ‚IE, CÄ‚RBUNE PULBERE)', '\r\nUmeziti uÈ™or mÃ¢inile È™i sÄƒpunul. Treceti de cÃ¢teva ori sÄƒpunul prin pame È™i frecaÈ›i palmele pentru a obÈ›ine o spumÄƒ bogatÄƒ. FolosiÈ›i spuma obÈ›inutÄƒ pentru a curÄƒÈ›a zona doritÄƒ a corpului È™i clÄƒtiÈ›i.', 18, 21, 100, '2021-06-14 19:23:59', NULL),
(44, 'SÄƒpun cu cÄƒtinÄƒ È™i morcov', 'images/1794938620.jpg', 21, 234521, 'SÄƒpunul cu cÄƒtinÄƒ È™i morcov ajutÄƒ la obÈ›inerea unui ten sÄƒnÄƒtos È™i hidratat. Ingredientele de bazÄƒ curÄƒÈ›Äƒ delicat iar amestecul uleiurilor de cÄƒtinÄƒ, gÄƒlbenele È™i morcov pregÄƒteÈ™te pielea pentru a  un bronz strÄƒlucitor, uniform È™i de lungÄƒ duratÄƒ. Este potrivit tuturor tipurilor de piele, cu beneficii speciale pentru cea sensibilÄƒ.\r\n\r\n  ', 12, 100, 'gr', 'INGREDIENTE: SODIUM OLIVATE, AQUA, SODIUM COCOATE, SODIUM PALMATE, SIMMONDSIA CHINENSIS SEED OIL, SODIUM CASTORATE, SODIUM SHEA BUTTERATE, CITRUS NOBILIS LEAF OIL, MELALEUCA ALTERNIFOLIA LEAF OIL, CHARCOAL POWDER, CITRUS LIMON PEEL OIL, LIMONENE.\r\n\r\n(uleiuri saponificate de MÄ‚SLINE, COCOS, PALMIER, JOJOBA È™i RICIN, UNT DE SHEA, APÄ‚, uleiuri esenÈ›iale de MANDARINE, TEA TREE È™i LÄ‚MÃ‚IE, CÄ‚RBUNE PULBERE)', '\r\nUmeziti uÈ™or mÃ¢inile È™i sÄƒpunul. Treceti de cÃ¢teva ori sÄƒpunul prin pame È™i frecaÈ›i palmele pentru a obÈ›ine o spumÄƒ bogatÄƒ. FolosiÈ›i spuma obÈ›inutÄƒ pentru a curÄƒÈ›a zona doritÄƒ a corpului È™i clÄƒtiÈ›i.', 18, 21, 100, '2021-06-14 19:24:49', NULL),
(45, 'SÄƒpun cu cÄƒtinÄƒ È™i muÈ™eÈ›el', 'images/74442136.png', 23, 2345321, 'SÄƒpunul  cu ulei de CÄ‚TINÄ‚ È™i MUÈ˜EÈšEL protejeazÄƒ pielea È™i regenereazÄƒ stratul natural de lipide de la suprafaÈ›a pielii, datoritÄƒ conÈ›inutului ridicat de antioxidanÈ›i precum vitamina E È™i vitamina A. Este un sÄƒpun bogat Ã®n acizi graÈ™i esenÈ›iali, Ã®n special acid oleic, palmitic È™i linoleic care susÈ›in procesele de regenerarea ale È›esutului cutanat. ProprietÄƒÈ›ile antibacteriene È™i astringente ale uleiului de muÈ™eÈ›el menÈ›in pielea curatÄƒ È™i tonifiantÄƒ. Este potrivit tuturor tipurilor de piele.', 12, 100, 'gr', 'INGREDIENTE: SODIUM OLIVATE, AQUA, SODIUM COCOATE, SODIUM PALMATE, SIMMONDSIA CHINENSIS SEED OIL, SODIUM CASTORATE, SODIUM SHEA BUTTERATE, CITRUS NOBILIS LEAF OIL, MELALEUCA ALTERNIFOLIA LEAF OIL, CHARCOAL POWDER, CITRUS LIMON PEEL OIL, LIMONENE.\r\n\r\n(uleiuri saponificate de MÄ‚SLINE, COCOS, PALMIER, JOJOBA È™i RICIN, UNT DE SHEA, APÄ‚, uleiuri esenÈ›iale de MANDARINE, TEA TREE È™i LÄ‚MÃ‚IE, CÄ‚RBUNE PULBERE)', 'Umeziti uÈ™or mÃ¢inile È™i sÄƒpunul. Treceti de cÃ¢teva ori sÄƒpunul prin pame È™i frecaÈ›i palmele pentru a obÈ›ine o spumÄƒ bogatÄƒ. FolosiÈ›i spuma obÈ›inutÄƒ pentru a curÄƒÈ›a zona doritÄƒ a corpului È™i clÄƒtiÈ›i.', 18, 21, 100, '2021-06-14 19:25:33', NULL),
(46, 'SÄƒpun cu lapte de caprÄƒ È™i lavandÄƒ', 'images/2125496770.jpg', 20, 23452132, 'SÄƒpun cu LAPTE de CAPRÄ‚ È™i LAVANDÄ‚ te Ã®nvÄƒluie Ã®n aroma proaspÄƒtÄƒ a uleiului esenÈ›ial de lavandÄƒ ce Ã®È›i induce o stare de relaxare È™i te binedispune. Laptele de caprÄƒ conÈ›ine acid lauric natural cu ph-ul neutru. Bogat Ã®n vitamina D, B6, C, E, minerale È™i proteine, este foarte hrÄƒnitor pentru piele. ConÈ›inutul natural ridicat de grÄƒsimi Ã®l face un bun hidratant pentru pielea uscatÄƒ È™i sensibilÄƒ. Aceasta Ã®È™i recapÄƒtÄƒ aspectul neted È™i catifelat.', 12, 100, 'gr', 'INGREDIENTE: SODIUM OLIVATE, AQUA, SODIUM COCOATE, SODIUM PALMATE, SIMMONDSIA CHINENSIS SEED OIL, SODIUM CASTORATE, SODIUM SHEA BUTTERATE, CITRUS NOBILIS LEAF OIL, MELALEUCA ALTERNIFOLIA LEAF OIL, CHARCOAL POWDER, CITRUS LIMON PEEL OIL, LIMONENE.\r\n\r\n(uleiuri saponificate de MÄ‚SLINE, COCOS, PALMIER, JOJOBA È™i RICIN, UNT DE SHEA, APÄ‚, uleiuri esenÈ›iale de MANDARINE, TEA TREE È™i LÄ‚MÃ‚IE, CÄ‚RBUNE PULBERE)', '\r\nUmeziti uÈ™or mÃ¢inile È™i sÄƒpunul. Treceti de cÃ¢teva ori sÄƒpunul prin pame È™i frecaÈ›i palmele pentru a obÈ›ine o spumÄƒ bogatÄƒ. FolosiÈ›i spuma obÈ›inutÄƒ pentru a curÄƒÈ›a zona doritÄƒ a corpului È™i clÄƒtiÈ›i.', 18, 21, 100, '2021-06-14 19:26:24', NULL),
(47, 'Emulsie demachiantÄƒ cu CÄƒtinÄƒ È™i MuÈ™eÈ›el', 'images/1147176473.png', 30, 1234567, 'TexturaÌ† finaÌ† sÌ¦i usÌ¦oaraÌ† curaÌ†tÌ¦aÌ† tenul de impuritaÌ†È›i sÌ¦i machiaj. Uleiul de caÌ†tinaÌ† sÌ¦i apa de musÌ¦etÌ¦el hidrateazaÌ† pielea, iÌ‚i iÌ‚mbunaÌ†taÌ†tÌ¦esc elasticitatea È™i acÈ›ioneazÄƒ Ã®mpotriva factorilor nocivi de mediu, avaÌ‚nd un efect de calmare È™i tonifiere. Pielea rÄƒmaÌ‚ne curatÄƒ, catifelatÄƒ È™i matifiatÄƒ.', 12, 200, 'ml', 'AQUA, COCOS NUCIFERA OIL*, PALMITIC ACID, STEARIC ACID, CETEARYL ALCOHOL, CETEARYL GLUCOSIDE, PRUNUS AMYGDALUS DULCIS OIL, TOCOPHEROL, SODIUM STEAROYL GLUTAMATE, ALCOHOL, SODIUM BENZOATE, POTASSIUM SORBATE, HIPPOPHAE RHAMNOIDES FRUIT EXTRACT, MATRICARIA RECUTITA FLOWER OIL*. (RO: apÄƒ, apÄƒ de muÈ™eÈ›el*, ulei de cocos*, ulei de migdale, vitamina E, ulei de cÄƒtinÄƒ, emulgatori acceptati COSMOS, conservant acceptat ECOCERT).', '\r\nSe aplicÄƒ pe piele, se maseazÄƒ uÈ™or, apoi se Ã®ndepÄƒrteazÄƒ cu ajutorul unei dischete demachiante. Nu folosiÈ›i produsul pe pielea iritatÄƒ sau rÄƒnitÄƒ. ÃŽn cazul apariÈ›iei unei iritaÈ›ii, Ã®ncetaÈ›i sÄƒ-l mai folosiÈ›i. ', 17, 26, 100, '2021-06-14 19:29:52', NULL),
(48, 'Miracle Scrub', 'images/1255855466.jpg', 120, 12345657, 'Exfoliant intens bogat in nutrienti pretiosi care ajuta la curatarea porilor, detoxifiaza pielea, indeparteaza punctele negre, sebumul si celulele moarte. Miracle Scrub este recomandat pentru toate tipurile de ten si asigura o curatare si o purificare perfecta a tenului. Acest exfoliant reda luminozitate tenului si un aspect mai sanatos.', 7, 50, 'ml', 'Aqua, Caprylyl capryl glucoside, Rosa canina seed powder* (Exfoliant de Graines de Rosier Muscat biologique), Glycerin (Glycerine vegetale naturelle), Aloe barbadensis extract* (Extrait d\'Aloe Vera biologique), Paullinia cupana seed extract* (Extrait de Guarana biologique), Ziziphus joazeiro bark extract (Extrait d\'ecorce de Ziziphus), Chondrus cripsus (carrageenan)(Extrait d\'Algue), Xanthan gum, Parfum, Dehydroacetic acid, Sodium benzoate, Potassium sorbate, Sodium hydroxyde, Citric acide, Benzyl Alcohol, Citronellol, Geraniol, Linalool.', 'Exfoliant intens bogat in nutrienti pretiosi care ajuta la curatarea porilor, detoxifiaza pielea, indeparteaza punctele negre, sebumul si celulele moarte. Miracle Scrub este recomandat pentru toate tipurile de ten si asigura o curatare si o purificare perfecta a tenului. Acest exfoliant reda luminozitate tenului si un aspect mai sanatos.', 17, 29, 100, '2021-06-14 19:42:45', NULL),
(49, 'Hydra Sensitive Botanical', 'images/2003939658.jpg', 100, 23562174, 'Hydra Sensitive este o infuzie de ingrediente pretioase si o crema speciala pentru tenul deshidratat si sensibil.\r\n\r\nAcesta crema pretioasa contine o sursa pretioasa de nutrienti esentiali pentru regenerarea pielii, precum extract de musetel, aloe vera, ulei de cocos, acid hialuronic natural si unt de shea. Este o crema potrivita pentru toate tipurile de ten in special tenului cu probleme deoarece are o putere mare de regenerare a pielii. Hidrateaza intens si regenereaza pielea in profunzime. In plus, binecunoscutul unt de Shea stimuleaza productia de colagen si previne atat aparitia ridurilor, cat si a altor semne de imbatranire.', 7, 50, 'ml', 'Aqua, Cocoglycerides, Glycerin (Glycerine naturelle vegetale), Cetearyl olivate, Coco caprylate/caprate, Zea mays (corn) starch (Amidon de Mais naturel), C10-18 Triglycerides, Helianthus annuus seed oil*(Huile de Tournesol biologique), Sorbitan olivate (Emulsionnant naturel a base dhuile dOlive), Acacia decurrens / Jojoba / Sunflower seed wax / Polyglyceryl-3 esters (Co-emulsionnant naturel a base de Mimosa, de Jojona et, de Tournesol), Butyrospermum parkii*(Beurre de Karite biologique), Parfum (Parfum naturel), Plukenetia volubilis seed oil*(Huile dInca Inchi biologique ), Tocopherol (Vitamine E naturelle), Chamomila recutita (matricaria) flower extract*(Extrait de Camomille biologique), Sodium Hyaluronate (Acide hyaluronique naturel), Palmaria palmate extract (Extrait dAlgue rouge naturel), Ulex europaeus extract (Extrait Dajonc naturel), Xanthan gum, Chondrus crispus (carrageenan) extract, Dehydroacetic acid, Sodium hydroxide, Citric acid, Potassium sorbate, Sodium benzonate, Benzyl alcohol.', 'Se aplica in fiecare zi pe tenul curat.', 17, 28, 100, '2021-06-14 20:35:50', NULL),
(50, 'Hydra Regenerating Body Emulsion', 'images/1715908465.jpg', 149, 135796, 'O crema concentrata in nutrienti pretiosi pentru hidratarea si regenerarea pielii.\r\n\r\nAcesta crema de corp contine o infuzie pretioasa de nutrienti esentiali pentru hidratarea pielii, precum ulei de cocos, ulei de argan, aloe vera si alge marine.\r\n\r\nPielea este hidratata si revitalizata in profunzime. Bogata in vitaminele A,D,E si F, ajuta la refacerea pielii deshidratate si uscate. ', 7, 200, 'ml', 'Aqua, Coco carpylate/caprate, Bentonite, Polyglyceryl-2, Dipolydroxystearate, Glycerin* (Glycerine biologique), Gluconolactone, Adansonia digitata seed oil* (Huile de Baobab biologique et equitable), Argania spinosa kernel oil* (Huile de Argan biologique), Aloe barbadensis extract* (Extrait d\'Aloe Vera biologique), Helianthus annuus seed oil* (Huile de Tournesol oleique biologique), Sunflower seed oil polyglyceryl-6 esters (Agent adoucissant a base de Tournesol), Alaria esculenta extract (Extrait d\'Algue), Caprylic / carpic triglyceride, Sodium stearoyl glutamate, Parfum, Sodium benzoate, Xanthan gum, Zea mays (corn) starch, Dehydroacetic acid, Calcium gluconate, Benzyl alcohol, Geraniol, Limonene, Linalool.', 'Se aplica masand crema pe pielea corpului.', 16, 23, 100, '2021-06-14 20:39:06', NULL),
(51, 'Miracle Cleanser', 'images/643298727.jpg', 89, 2325311, 'Miracle Cleanser curata machiajul instant si lasa pielea pielea sa respire.\r\n\r\nEste un gel catifelat pe baza de aloe vera, propolis, proteine din migdale dulci si extracte pretioase din plante, ideal pentru demachierea si curatarea tenului normal, gras, sensibil si mixt. Indeparteaza eficient machiajul si impuritatile fara sa usuce pielea si o hraneste cu nutrienti pretiosi. Utilizarea zilnica a gelului demachiant Miracle Cleanser va face diferenta la nivelul tenului si vei observa cum pielea tenului va avea un aspect mai luminos si o culoare uniforma.  ', 7, 200, 'ml', 'Aqua, Ammonium lauryl sulfate, Cocamidopropyl betaine, Decyl glucoside, Glycerin* (Glycerine Biologique), Aloe barabadensis extract* (Extrait d\'Aloe Vera Biologique), Propolis extract* (Extrait de Propolis Biologique), Hydrolyzed sweet almond, Sucrose laurate, Glyceryl oleate, Cocoglucoside, Sodium lauryl glucose carboxylate, Lauryl glucoside, Sodium benzoate, Parfum, Alcohol, Potassium Sorbate, Benzoic acid, Phytic acid, Citric acid, Linalool. ', 'Produsul se aplica regulat, dimineata si seara, pe tenul umed, se maseaza si apoi se clateste cu apa din abundenta. ', 17, 26, 100, '2021-06-14 20:40:48', NULL),
(56, 'SÄƒpun facial anti-pete pigmentare', 'images/621257737.jpg', 30, 3456786, 'SÄƒpun facial anti-pete pigmentare', 11, 130, 'gr', 'SÄƒpun facial anti-pete pigmentare', 'SÄƒpun facial anti-pete pigmentare', 18, 21, 100, '2021-06-14 20:54:08', NULL),
(57, 'MascÄƒ facialÄƒ AcerolÄƒ È™i MimozÄƒ', 'images/1025487919.jpg', 33, 4534673, 'MascÄƒ facialÄƒ AcerolÄƒ È™i MimozÄƒ', 11, 250, 'ml', 'MascÄƒ facialÄƒ AcerolÄƒ È™i MimozÄƒ', 'MascÄƒ facialÄƒ AcerolÄƒ È™i MimozÄƒ', 17, 29, 100, '2021-06-14 20:55:03', NULL),
(64, 'CremÄƒ hidratantÄƒ pentru corp', 'images/42581474.png', 63, 987654, 'CremÄƒ reparatoare È™i restructurantÄƒ a pielii foarte uscate È™i sensibile cu tendinÈ›Äƒ atopicÄƒ. CremÄƒ emolientÄƒ ce asigurÄƒ hidratarea profundÄƒ, imediatÄƒ È™i pe termen lung, redÃ¢nd supleÈ›ea pielii uscate È™i agresate. Efect nutritiv, antiinflamator È™i antibacterian intens. CalmeazÄƒ senzaÈ›ia de disconfort È™i mÃ¢ncÄƒrime.', 8, 200, 'ml', 'Alantoina are efect reparator, antiseptic, calmant.\r\n\r\nAlfabisabolol, extras din Vanillomopsis Erythropapa (arbore al pÄƒdurii amazoniene), are o puternicÄƒ acÈ›iune antiinflamatoare. Fiind un extract natural, nu are efecte alergizante.\r\n\r\nGlicerina limiteazÄƒ pierderea transepidermicÄƒ de apÄƒ È™i hidrateazÄƒ intens.\r\n\r\nApa TermalÄƒ Herculane are proprietÄƒÈ›i antiinflamatorii dovedite, fiind indicatÄƒ pentru piele sensibilÄƒ È™i reactivÄƒ. CalmeazÄƒ pielea È™i are efect antiiritant.', 'Se aplicÄƒ dimineaÈ›a È™i seara pe pielea curÄƒÈ›atÄƒ È™i uscatÄƒ. Este foarte bine toleratÄƒ de pielea delicatÄƒ a copiilor È™i bebeluÈ™ilor.', 16, 23, 100, '2021-06-20 13:04:32', NULL),
(65, 'CremÄƒ de mÃ¢ini cu Aroma Iernii', 'images/301922274.jpg', 32, 456324, 'Crema de mÃ¢ini cu AROMA IERNII trezeÈ™te sentimentul sÄƒrbÄƒtorii È™i te Ã®nvÄƒluie Ã®ntr-un parfum aerisit de scortÌ¦isÌ¦oaraÌ† sÌ¦i portocale. Crema este uÈ™or absorbitÄƒ Ã®n piele, hrÄƒnind-o Ã®n profunzime fÄƒrÄƒ sÄƒ lase reziduuri uleioase.', 12, 120, 'ml', 'AQUA, GLYCERIN, BUTYROSPERMUM PARKII BUTTER EXTRACT*, COCOS NUCIFERA OIL*, CETEARYL ALCOHOL, CETEARYL GLUCOSIDE, PALMITIC ACID, STEARIC ACID, TOCOPHEROL, SODIUM STEAROYL GLUTAMATE, CITRUS SINENSIS PEEL OIL EXPRESSED, SODIUM BENZOATE, POTASSIUM SORBATE, CINNAMOMUM ZEYLANICUM LEAF OIL, BENZYL BENZOATE, LIMONENE, EUGENOL, LINALOOL, CINNAMAL, CITRAL. (apÄƒ, unt de shea*, glicerinÄƒ, ulei de cocos*, emulgatori aprobaÈ›i COSMOS, conservant aprobat ECOCERT, vitamina E, uleiuri esenÈ›iale de portocale È™i scorÈ›iÈ™oarÄƒ.)', 'AplicaÈ›i pe mÃ¢ini de mai multe ori pe zi sau ori de cÃ¢te ori este nevoie. Nu folosiÈ›i produsul pe pielea iritatÄƒ sau rÄƒnitÄƒ. ÃŽn cazul apariÈ›iei unei iritaÈ›ii, Ã®ncetaÈ›i sÄƒ-l mai folosiÈ›i.', 16, 24, 100, '2021-06-20 13:12:49', NULL),
(66, 'CremÄƒ de mÃ¢ini cu Aroma PrimÄƒverii', 'images/1906460070.jpg', 34, 435564, 'Crema de mÃ¢ini cu aroma PRIMÄ‚VERII te cuprinde Ã®ntr-un buchet floral, cald È™i feminin datoritÄƒ uleiurilor esenÈ›iale de palmarosa È™i muÈ™eÈ›el. Crema este uÈ™or absorbitÄƒ Ã®n piele, hrÄƒnind-o Ã®n profunzime fÄƒrÄƒ sÄƒ lase reziduuri uleioase.\r\n\r\n  ', 12, 120, 'ml', 'AQUA, BUTYROSPERMUM PARKII BUTTER EXTRACT*, COCOS NUCIFERA OIL*, GLYCERIN, CETEARYL ALCOHOL, CETEARYL GLUCOSIDE, THEOBROMA CACAO SEED BUTTER*, STEARIC ACID, PALMITIC ACID, SODIUM STEAROYL GLUTAMATE, TOCOPHEROL, SODIUM BENZOATE, POTASSIUM SORBATE, ALCOHOL, CYMBOPOGON MARTINI HERB EXTRACT, ORMENIS MULTICAULIS OIL, ROSA DAMASCENA FLOWER OIL*, GERANIOL, LIMONENE, CITRAL, LINALOOL, BENZYL SALICYLATE, FARNESOL, CINNAMAL. (apÄƒ, unt de shea*, ulei de cocos*, glicerinÄƒ, apÄƒ de trandafir*, unt de cacao*, emulgatori aprobaÈ›i COSMOS, conservant aprobat ECOCERT, vitamina E, uleiuri esenÈ›iale de palmarosa È™i muÈ™eÈ›el).', 'AplicaÈ›i pe mÃ¢ini de mai multe ori pe zi sau ori de cÃ¢te ori este nevoie. Nu folosiÈ›i produsul pe pielea iritatÄƒ sau rÄƒnitÄƒ. ÃŽn cazul apariÈ›iei unei iritaÈ›ii, Ã®ncetaÈ›i sÄƒ-l mai folosiÈ›i.', 16, 24, 100, '2021-06-20 13:13:42', NULL),
(67, 'CremÄƒ Reparatoare pentru cÄƒlcÃ¢ie uscate', 'images/2072327716.jpg', 31, 33232, 'Crema REPARATOARE emoliazÄƒ È™i hidrateazÄƒ Ã®n profunzime pielea uscatÄƒ È™i crÄƒpatÄƒ a cÄƒlcÃ¢ielor. Untul de shea È™i uleiul de cocos au un conÈ›inut ridicat de acizi graÈ™i, vitamina A ÅŸi vitamina E, care menÈ›in elasticitatea pielii ÅŸi Ã®i redau aspectul sÄƒnÄƒtos, catifelat. Uleiurile esenÈ›iale de portocale, mentÄƒ È™i lavandÄƒ oferÄƒ o senzaÈ›ie de prospeÈ›ime.', 12, 60, 'ml', 'AQUA, BUTYROSPERMUM PARKII BUTTER EXTRACT, COCOS NUCIFERA OIL, GLYCERIN, PRUNUS ARMENIACA KERNEL OIL, CETEARYL ALCOHOL, CETEARYL GLUCOSIDE , TOCOPHEROL, SODIUM STEAROYL GLUTAMATE, PALMITIC ACID, STEARIC ACID , CITRUS SINENSIS PEEL OIL EXPRESSED, SODIUM BENZOATE, ALCOHOL, LAVANDULA HYBRIDA OIL, MENTHA PIPERITA OIL, POTASSIUM SORBATE, MATRICARIA RECUTITA FLOWER OIL, LIMONENE, LINALOOL, COUMARIN, CITRAL (apaÌ†, unt de shea, apaÌ† de musÌ¦etÌ¦el, ulei de cocos, glicerinaÌ†, ulei de caise, emulgatori aprobatÌ¦i COSMOS, conservant aprobat ECOCERT, vitamina E, uleiuri esentÌ¦iale de portocale, mentaÌ† sÌ¦i lavandaÌ†).', '\r\nAplicaÈ›i pe pielea curatÄƒ È™i uscatÄƒ de mai multe ori pe zi sau ori de cÃ¢te ori este nevoie. MasaÈ›i uÈ™or zona pe care aÈ›i aplicat produsul pÃ¢nÄƒ la absorbÈ›ia completÄƒ a acestuia. Nu folosiÈ›i produsul pe pielea iritatÄƒ sau rÄƒnitÄƒ. ÃŽn cazul apariÈ›iei unei iritaÈ›ii, Ã®ncetaÈ›i sÄƒ-l mai folosiÈ›i.', 16, 25, 100, '2021-06-20 13:14:42', NULL);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE IF NOT EXISTS `product_categories` (
  `category_id` int(8) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(250) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `product_categories`
--

INSERT INTO `product_categories` (`category_id`, `category_name`) VALUES
(16, 'ÃŽngrijire corp'),
(17, 'ÃŽngrijire ten'),
(18, 'DuÈ™ È™i baie'),
(19, 'ÃŽngrijire pÄƒr');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `product_types`
--

DROP TABLE IF EXISTS `product_types`;
CREATE TABLE IF NOT EXISTS `product_types` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(250) NOT NULL,
  `id_category` int(11) NOT NULL,
  PRIMARY KEY (`type_id`),
  KEY `category_id` (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `product_types`
--

INSERT INTO `product_types` (`type_id`, `type_name`, `id_category`) VALUES
(19, 'È˜ampoane naturale', 19),
(20, 'Tratamente pÄƒr', 19),
(21, 'SÄƒpunuri naturale', 18),
(22, 'Geluri de duÈ™ naturale', 18),
(23, 'Tratamente corp', 16),
(24, 'Creme mÃ¢ini', 16),
(25, 'Creme picioare', 16),
(26, 'Demachiante', 17),
(27, 'Balsam de buze', 17),
(28, 'Creme', 17),
(29, 'Tratament ten', 17);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `review_product_id` int(11) NOT NULL,
  `review_text` text CHARACTER SET utf8 NOT NULL,
  `review_date` timestamp NOT NULL,
  `review_update` timestamp NULL DEFAULT NULL,
  `user_fullname` varchar(250) CHARACTER SET utf8 NOT NULL,
  `subject_review` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`review_id`),
  KEY `review_product_id` (`review_product_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `reviews`
--

INSERT INTO `reviews` (`review_id`, `user_id`, `review_product_id`, `review_text`, `review_date`, `review_update`, `user_fullname`, `subject_review`) VALUES
(6, 22, 23, 'Imi place foarte mult acest produs! O sÄƒ mai cumpÄƒr!2', '2021-06-20 10:42:59', '2021-06-28 20:49:43', 'Alina', 'Foarte frumos'),
(10, 22, 21, 'Sunt mulÈ›umitÄƒ de el, se simte foarte plÄƒcut pe buze, nu e deloc lipicios, iar buzele nu mi se lipesc dupÄƒ ce Ã®l aplic, nici nu simt cÄƒ l-am aplicat, dar buzele sunt mereu hidratate.', '2021-06-20 13:24:19', NULL, 'Loredana Ninsu', 'MulÈ›umitÄƒ'),
(11, 22, 47, 'MÄƒ dau Ã®n fiecare searÄƒ, Ã®n timp ce mÄƒ demachiez, este mult mai plÄƒcut decÃ¢t orice alt demachiant folosit.', '2021-06-20 13:25:23', NULL, 'Georgeta Lacuna', 'Excelent'),
(12, 22, 22, 'Am achiziÈ›ionat acest produs acum 3 sÄƒptÄƒmÃ¢ni È™i sunt foarte mulÈ›umitÄƒ de el.', '2021-06-20 13:29:22', NULL, 'Loredana ', 'CremÄƒ foarte bunÄƒ'),
(14, 24, 23, 'Am achiziÈ›ionat acest produs acum 2 sÄƒptÄƒmÃ¢ni È™i sunt foarte mulÈ›umitÄƒ de el, Ã®l aplic Ã®n fiecare searÄƒ cÃ¢nd mÄƒ demachiez.', '2021-06-25 21:02:43', NULL, 'Lorena', 'Sunt mulÈ›umitÄƒ'),
(15, 22, 18, 'bine', '2021-06-29 08:38:45', NULL, 'Alexandra', 'ceva');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `usertype` varchar(200) DEFAULT NULL,
  `user_firstName` varchar(250) NOT NULL,
  `user_lastName` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `password` varchar(200) NOT NULL,
  `user_add_date` timestamp NOT NULL,
  `phone_number` varchar(250) DEFAULT NULL,
  `user_address` text,
  `user_city` varchar(250) DEFAULT NULL,
  `user_county` varchar(250) DEFAULT NULL,
  `user_postal` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `users`
--

INSERT INTO `users` (`user_id`, `usertype`, `user_firstName`, `user_lastName`, `user_email`, `password`, `user_add_date`, `phone_number`, `user_address`, `user_city`, `user_county`, `user_postal`) VALUES
(15, 'admin', 'admin', 'admin', 'admin@admin.com', '$2y$10$iuI1ORoPmRKTtq8YMUAQg..BHHwEuWMiM4D/EN44Xg6YBJRvoOm1.', '2021-05-08 07:29:29', NULL, NULL, NULL, NULL, NULL),
(22, NULL, 'Alexandra', 'Gabriela20', 'alexandra@alexandra.com', '$2y$10$Pnc/xUUXVo.c/05t5crYGO8VjEKbhToEY/bpTPnqlpPDnLIGAUajC', '2021-06-19 17:10:59', '0764325142', 'Strada Florilor, nr. 50', 'Cluj-Napoca2', 'Cluj', '564732'),
(23, NULL, 'Leona', 'Mihaelovici', 'leona@leona.com', '$2y$10$QkDaTV/4jGO9Z7y0LbDPb.kQj1fblkoc2nH7Pp/rSGHTPrJZJHydK', '2021-06-20 14:01:51', NULL, NULL, NULL, NULL, NULL),
(24, NULL, 'Mira', 'Lorena', 'lorena@mar.com', '$2y$10$/ZLGZwulRuXe8g4g7QYx1u3DCXO.NF.cQ0KXjF7eSMIjublohuM2C', '2021-06-25 09:18:34', '0754324543', '', 'Cluj-Napoca', '', ''),
(25, NULL, 'Cont', 'Testare', 'cont@testare.com', '$2y$10$viFslqzBAbMAfZGayYk5RedCSBGIVBtFqm.SJs1QnKjtS2c82dAFG', '2021-06-26 11:31:04', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `wishlist_products`
--

DROP TABLE IF EXISTS `wishlist_products`;
CREATE TABLE IF NOT EXISTS `wishlist_products` (
  `id_wishlist` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wishlist_date` timestamp NOT NULL,
  PRIMARY KEY (`id_wishlist`),
  KEY `product_id` (`id_product`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `wishlist_products`
--

INSERT INTO `wishlist_products` (`id_wishlist`, `id_product`, `user_id`, `wishlist_date`) VALUES
(36, 26, 22, '2021-06-20 13:15:11'),
(37, 31, 22, '2021-06-20 13:15:15'),
(38, 24, 22, '2021-06-20 13:15:30'),
(39, 40, 22, '2021-06-20 13:15:40'),
(40, 36, 22, '2021-06-20 13:15:49'),
(41, 38, 22, '2021-06-20 13:21:21'),
(42, 27, 22, '2021-06-20 13:21:29'),
(43, 22, 22, '2021-06-20 13:21:43'),
(45, 35, 22, '2021-06-20 13:22:08'),
(46, 19, 24, '2021-06-25 09:55:45'),
(47, 23, 22, '2021-06-25 15:40:19'),
(48, 32, 24, '2021-06-26 07:13:11'),
(49, 57, 24, '2021-06-26 07:17:47');

--
-- Constrângeri pentru tabele eliminate
--

--
-- Constrângeri pentru tabele `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`productCart_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`userCart_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constrângeri pentru tabele `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_order_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constrângeri pentru tabele `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_brand`) REFERENCES `brands` (`brand_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `product_categories` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_3` FOREIGN KEY (`id_type`) REFERENCES `product_types` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constrângeri pentru tabele `product_types`
--
ALTER TABLE `product_types`
  ADD CONSTRAINT `product_types_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `product_categories` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constrângeri pentru tabele `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`review_product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constrângeri pentru tabele `wishlist_products`
--
ALTER TABLE `wishlist_products`
  ADD CONSTRAINT `wishlist_products_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wishlist_products_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
