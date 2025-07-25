-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 21, 2023 at 11:30 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vendure`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `fullName` varchar(255) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL DEFAULT '',
  `streetLine1` varchar(255) NOT NULL,
  `streetLine2` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `province` varchar(255) NOT NULL DEFAULT '',
  `postalCode` varchar(255) NOT NULL DEFAULT '',
  `phoneNumber` varchar(255) NOT NULL DEFAULT '',
  `defaultShippingAddress` tinyint(4) NOT NULL DEFAULT 0,
  `defaultBillingAddress` tinyint(4) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL,
  `customerId` int(11) DEFAULT NULL,
  `countryId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`createdAt`, `updatedAt`, `fullName`, `company`, `streetLine1`, `streetLine2`, `city`, `province`, `postalCode`, `phoneNumber`, `defaultShippingAddress`, `defaultBillingAddress`, `id`, `customerId`, `countryId`) VALUES
('2023-03-17 11:19:03.137523', '2023-03-17 11:19:03.000000', 'fname lname', '', 'khekei', 'kododie', 'madurai', 'Maharashtra', '54245', '9876543213', 1, 1, 1, 3, 103);

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`createdAt`, `updatedAt`, `deletedAt`, `firstName`, `lastName`, `emailAddress`, `id`, `userId`) VALUES
('2022-12-27 19:46:05.344444', '2022-12-27 19:46:05.344444', NULL, 'Super', 'Admin', 'superadmin', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `asset`
--

CREATE TABLE `asset` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `mimeType` varchar(255) NOT NULL,
  `width` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0,
  `fileSize` int(11) NOT NULL,
  `source` varchar(255) NOT NULL,
  `preview` varchar(255) NOT NULL,
  `focalPoint` text DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `asset`
--

INSERT INTO `asset` (`createdAt`, `updatedAt`, `name`, `type`, `mimeType`, `width`, `height`, `fileSize`, `source`, `preview`, `focalPoint`, `id`) VALUES
('2022-12-27 19:46:10.383495', '2022-12-27 19:46:10.383495', 'derick-david-409858-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1200, 44525, 'source/b6/derick-david-409858-unsplash.jpg', 'preview/71/derick-david-409858-unsplash__preview.jpg', NULL, 1),
('2022-12-27 19:46:10.783656', '2022-12-27 19:46:10.783656', 'kelly-sikkema-685291-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 47714, 'source/5a/kelly-sikkema-685291-unsplash.jpg', 'preview/b8/kelly-sikkema-685291-unsplash__preview.jpg', NULL, 2),
('2022-12-27 19:46:11.016795', '2022-12-27 19:46:11.016795', 'oscar-ivan-esquivel-arteaga-687447-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1071, 76870, 'source/0b/oscar-ivan-esquivel-arteaga-687447-unsplash.jpg', 'preview/a1/oscar-ivan-esquivel-arteaga-687447-unsplash__preview.jpg', NULL, 3),
('2022-12-27 19:46:11.163302', '2022-12-27 19:46:11.163302', 'daniel-korpai-1302051-unsplash.jpg', 'IMAGE', 'image/jpeg', 1280, 1600, 201064, 'source/28/daniel-korpai-1302051-unsplash.jpg', 'preview/d2/daniel-korpai-1302051-unsplash__preview.jpg', NULL, 4),
('2022-12-27 19:46:11.301012', '2022-12-27 19:46:11.301012', 'alexandru-acea-686569-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 71196, 'source/e8/alexandru-acea-686569-unsplash.jpg', 'preview/9c/alexandru-acea-686569-unsplash__preview.jpg', NULL, 5),
('2022-12-27 19:46:11.535219', '2022-12-27 19:46:11.535219', 'liam-briese-1128307-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 120523, 'source/2e/liam-briese-1128307-unsplash.jpg', 'preview/58/liam-briese-1128307-unsplash__preview.jpg', NULL, 6),
('2022-12-27 19:46:11.760102', '2022-12-27 19:46:11.760102', 'florian-olivo-1166419-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 73904, 'source/63/florian-olivo-1166419-unsplash.jpg', 'preview/5a/florian-olivo-1166419-unsplash__preview.jpg', NULL, 7),
('2022-12-27 19:46:12.112085', '2022-12-27 19:46:12.112085', 'vincent-botta-736919-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1200, 87075, 'source/59/vincent-botta-736919-unsplash.jpg', 'preview/96/vincent-botta-736919-unsplash__preview.jpg', NULL, 8),
('2022-12-27 19:46:12.383750', '2022-12-27 19:46:12.383750', 'juan-gomez-674574-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1060, 60470, 'source/b8/juan-gomez-674574-unsplash.jpg', 'preview/09/juan-gomez-674574-unsplash__preview.jpg', NULL, 9),
('2022-12-27 19:46:12.467984', '2022-12-27 19:46:12.467984', 'thomas-q-1229169-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1600, 94113, 'source/86/thomas-q-1229169-unsplash.jpg', 'preview/7b/thomas-q-1229169-unsplash__preview.jpg', NULL, 10),
('2022-12-27 19:46:12.535370', '2022-12-27 19:46:12.535370', 'adam-birkett-239153-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 17676, 'source/3c/adam-birkett-239153-unsplash.jpg', 'preview/64/adam-birkett-239153-unsplash__preview.jpg', NULL, 11),
('2022-12-27 19:46:12.613090', '2022-12-27 19:46:12.613090', 'eniko-kis-663725-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 42943, 'source/1d/eniko-kis-663725-unsplash.jpg', 'preview/b5/eniko-kis-663725-unsplash__preview.jpg', NULL, 12),
('2022-12-27 19:46:12.716663', '2022-12-27 19:46:12.716663', 'brandi-redd-104140-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1110, 91458, 'source/21/brandi-redd-104140-unsplash.jpg', 'preview/9b/brandi-redd-104140-unsplash__preview.jpg', NULL, 13),
('2022-12-27 19:46:12.821670', '2022-12-27 19:46:12.821670', 'jonathan-talbert-697262-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 103011, 'source/69/jonathan-talbert-697262-unsplash.jpg', 'preview/3c/jonathan-talbert-697262-unsplash__preview.jpg', NULL, 14),
('2022-12-27 19:46:12.906948', '2022-12-27 19:46:12.906948', 'zoltan-tasi-423051-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 49099, 'source/92/zoltan-tasi-423051-unsplash.jpg', 'preview/21/zoltan-tasi-423051-unsplash__preview.jpg', NULL, 15),
('2022-12-27 19:46:13.010860', '2022-12-27 19:46:13.010860', 'jakob-owens-274337-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 213089, 'source/cf/jakob-owens-274337-unsplash.jpg', 'preview/5b/jakob-owens-274337-unsplash__preview.jpg', NULL, 16),
('2022-12-27 19:46:13.109127', '2022-12-27 19:46:13.109127', 'patrick-brinksma-663044-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 190811, 'source/0f/patrick-brinksma-663044-unsplash.jpg', 'preview/bc/patrick-brinksma-663044-unsplash__preview.jpg', NULL, 17),
('2022-12-27 19:46:13.196733', '2022-12-27 19:46:13.196733', 'chuttersnap-324234-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1068, 118442, 'source/df/chuttersnap-324234-unsplash.jpg', 'preview/95/chuttersnap-324234-unsplash__preview.jpg', NULL, 18),
('2022-12-27 19:46:13.267473', '2022-12-27 19:46:13.267473', 'robert-shunev-528016-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 36204, 'source/9e/robert-shunev-528016-unsplash.jpg', 'preview/9d/robert-shunev-528016-unsplash__preview.jpg', NULL, 19),
('2022-12-27 19:46:13.396867', '2022-12-27 19:46:13.396867', 'alexander-andrews-260988-unsplash.jpg', 'IMAGE', 'image/jpeg', 1050, 1600, 65460, 'source/f8/alexander-andrews-260988-unsplash.jpg', 'preview/ef/alexander-andrews-260988-unsplash__preview.jpg', NULL, 20),
('2022-12-27 19:46:13.558948', '2022-12-27 19:46:13.558948', 'mikkel-bech-748940-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1130, 62785, 'source/29/mikkel-bech-748940-unsplash.jpg', 'preview/2f/mikkel-bech-748940-unsplash__preview.jpg', NULL, 21),
('2022-12-27 19:46:13.832887', '2022-12-27 19:46:13.832887', 'stoica-ionela-530966-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1600, 50995, 'source/b1/stoica-ionela-530966-unsplash.jpg', 'preview/34/stoica-ionela-530966-unsplash__preview.jpg', NULL, 22),
('2022-12-27 19:46:13.941317', '2022-12-27 19:46:13.941317', 'neonbrand-428982-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1332, 169677, 'source/3c/neonbrand-428982-unsplash.jpg', 'preview/4f/neonbrand-428982-unsplash__preview.jpg', NULL, 23),
('2022-12-27 19:46:14.021916', '2022-12-27 19:46:14.021916', 'michael-guite-571169-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 240247, 'source/ab/michael-guite-571169-unsplash.jpg', 'preview/96/michael-guite-571169-unsplash__preview.jpg', NULL, 24),
('2022-12-27 19:46:14.108216', '2022-12-27 19:46:14.108216', 'max-tarkhov-737999-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1280, 192508, 'source/ed/max-tarkhov-737999-unsplash.jpg', 'preview/35/max-tarkhov-737999-unsplash__preview.jpg', NULL, 25),
('2022-12-27 19:46:14.193147', '2022-12-27 19:46:14.193147', 'nik-shuliahin-619349-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1020, 130437, 'source/87/nik-shuliahin-619349-unsplash.jpg', 'preview/d6/nik-shuliahin-619349-unsplash__preview.jpg', NULL, 26),
('2022-12-27 19:46:14.348240', '2022-12-27 19:46:14.348240', 'ben-hershey-574483-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1070, 77118, 'source/f3/ben-hershey-574483-unsplash.jpg', 'preview/30/ben-hershey-574483-unsplash__preview.jpg', NULL, 27),
('2022-12-27 19:46:14.449359', '2022-12-27 19:46:14.449359', 'tommy-bebo-600358-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 262335, 'source/ac/tommy-bebo-600358-unsplash.jpg', 'preview/0f/tommy-bebo-600358-unsplash__preview.jpg', NULL, 28),
('2022-12-27 19:46:14.576267', '2022-12-27 19:46:14.576267', 'chuttersnap-584518-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1068, 76330, 'source/20/chuttersnap-584518-unsplash.jpg', 'preview/ed/chuttersnap-584518-unsplash__preview.jpg', NULL, 29),
('2022-12-27 19:46:14.997550', '2022-12-27 19:46:14.997550', 'imani-clovis-234736-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1600, 99111, 'source/de/imani-clovis-234736-unsplash.jpg', 'preview/0f/imani-clovis-234736-unsplash__preview.jpg', NULL, 30),
('2022-12-27 19:46:15.219647', '2022-12-27 19:46:15.219647', 'xavier-teo-469050-unsplash.jpg', 'IMAGE', 'image/jpeg', 1200, 1600, 167599, 'source/5c/xavier-teo-469050-unsplash.jpg', 'preview/3c/xavier-teo-469050-unsplash__preview.jpg', NULL, 31),
('2022-12-27 19:46:15.432509', '2022-12-27 19:46:15.432509', 'thomas-serer-420833-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1223, 78999, 'source/55/thomas-serer-420833-unsplash.jpg', 'preview/a2/thomas-serer-420833-unsplash__preview.jpg', NULL, 32),
('2022-12-27 19:46:15.665229', '2022-12-27 19:46:15.665229', 'nikolai-chernichenko-1299748-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 56282, 'source/01/nikolai-chernichenko-1299748-unsplash.jpg', 'preview/00/nikolai-chernichenko-1299748-unsplash__preview.jpg', NULL, 33),
('2022-12-27 19:46:15.919521', '2022-12-27 19:46:15.919521', 'mitch-lensink-256007-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 154988, 'source/2b/mitch-lensink-256007-unsplash.jpg', 'preview/aa/mitch-lensink-256007-unsplash__preview.jpg', NULL, 34),
('2022-12-27 19:46:16.177541', '2022-12-27 19:46:16.177541', 'charles-deluvio-695736-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1600, 54419, 'source/92/charles-deluvio-695736-unsplash.jpg', 'preview/78/charles-deluvio-695736-unsplash__preview.jpg', NULL, 35),
('2022-12-27 19:46:16.310085', '2022-12-27 19:46:16.310085', 'natalia-y-345738-unsplash.jpg', 'IMAGE', 'image/jpeg', 900, 1600, 97819, 'source/17/natalia-y-345738-unsplash.jpg', 'preview/14/natalia-y-345738-unsplash__preview.jpg', NULL, 36),
('2022-12-27 19:46:16.392319', '2022-12-27 19:46:16.392319', 'alex-rodriguez-santibanez-200278-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 176280, 'source/ff/alex-rodriguez-santibanez-200278-unsplash.jpg', 'preview/5b/alex-rodriguez-santibanez-200278-unsplash__preview.jpg', NULL, 37),
('2022-12-27 19:46:16.465391', '2022-12-27 19:46:16.465391', 'silvia-agrasar-227575-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1063, 119654, 'source/d5/silvia-agrasar-227575-unsplash.jpg', 'preview/29/silvia-agrasar-227575-unsplash__preview.jpg', NULL, 38),
('2022-12-27 19:46:16.551168', '2022-12-27 19:46:16.551168', 'caleb-george-536388-unsplash.jpg', 'IMAGE', 'image/jpeg', 1200, 1600, 184968, 'source/f0/caleb-george-536388-unsplash.jpg', 'preview/6d/caleb-george-536388-unsplash__preview.jpg', NULL, 39),
('2022-12-27 19:46:16.729551', '2022-12-27 19:46:16.729551', 'annie-spratt-78044-unsplash.jpg', 'IMAGE', 'image/jpeg', 1115, 1600, 173536, 'source/f1/annie-spratt-78044-unsplash.jpg', 'preview/81/annie-spratt-78044-unsplash__preview.jpg', NULL, 40),
('2022-12-27 19:46:16.849830', '2022-12-27 19:46:16.849830', 'zoltan-kovacs-642412-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 72752, 'source/e3/zoltan-kovacs-642412-unsplash.jpg', 'preview/88/zoltan-kovacs-642412-unsplash__preview.jpg', NULL, 41),
('2022-12-27 19:46:16.944195', '2022-12-27 19:46:16.944195', 'mark-tegethoff-667351-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1200, 79857, 'source/e6/mark-tegethoff-667351-unsplash.jpg', 'preview/f3/mark-tegethoff-667351-unsplash__preview.jpg', NULL, 42),
('2022-12-27 19:46:17.033126', '2022-12-27 19:46:17.033126', 'vincent-liu-525429-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 77358, 'source/10/vincent-liu-525429-unsplash.jpg', 'preview/44/vincent-liu-525429-unsplash__preview.jpg', NULL, 43),
('2022-12-27 19:46:17.148549', '2022-12-27 19:46:17.148549', 'neslihan-gunaydin-3493-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 152486, 'source/01/neslihan-gunaydin-3493-unsplash.jpg', 'preview/7d/neslihan-gunaydin-3493-unsplash__preview.jpg', NULL, 44),
('2022-12-27 19:46:17.218921', '2022-12-27 19:46:17.218921', 'florian-klauer-14840-unsplash.jpg', 'IMAGE', 'image/jpeg', 800, 1200, 17149, 'source/a9/florian-klauer-14840-unsplash.jpg', 'preview/ef/florian-klauer-14840-unsplash__preview.jpg', NULL, 45),
('2022-12-27 19:46:17.299462', '2022-12-27 19:46:17.299462', 'nathan-fertig-249917-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 113855, 'source/68/nathan-fertig-249917-unsplash.jpg', 'preview/69/nathan-fertig-249917-unsplash__preview.jpg', NULL, 46),
('2022-12-27 19:46:17.361859', '2022-12-27 19:46:17.361859', 'paul-weaver-1120584-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 65612, 'source/14/paul-weaver-1120584-unsplash.jpg', 'preview/3e/paul-weaver-1120584-unsplash__preview.jpg', NULL, 47),
('2022-12-27 19:46:17.448646', '2022-12-27 19:46:17.448646', 'pierre-chatel-innocenti-483198-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 32036, 'source/39/pierre-chatel-innocenti-483198-unsplash.jpg', 'preview/5f/pierre-chatel-innocenti-483198-unsplash__preview.jpg', NULL, 48),
('2022-12-27 19:46:17.535245', '2022-12-27 19:46:17.535245', 'abel-y-costa-716024-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1067, 103392, 'source/46/abel-y-costa-716024-unsplash.jpg', 'preview/40/abel-y-costa-716024-unsplash__preview.jpg', NULL, 49),
('2022-12-27 19:46:17.625500', '2022-12-27 19:46:17.625500', 'kari-shea-398668-unsplash.jpg', 'IMAGE', 'image/jpeg', 1048, 1500, 181352, 'source/4f/kari-shea-398668-unsplash.jpg', 'preview/3b/kari-shea-398668-unsplash__preview.jpg', NULL, 50),
('2022-12-27 19:46:17.791346', '2022-12-27 19:46:17.791346', 'andres-jasso-220776-unsplash.jpg', 'IMAGE', 'image/jpeg', 1600, 1104, 100927, 'source/f1/andres-jasso-220776-unsplash.jpg', 'preview/09/andres-jasso-220776-unsplash__preview.jpg', NULL, 51),
('2022-12-27 19:46:17.864681', '2022-12-27 19:46:17.864681', 'ruslan-bardash-351288-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 47113, 'source/95/ruslan-bardash-351288-unsplash.jpg', 'preview/d0/ruslan-bardash-351288-unsplash__preview.jpg', NULL, 52),
('2022-12-27 19:46:17.943858', '2022-12-27 19:46:17.943858', 'benjamin-voros-310026-unsplash.jpg', 'IMAGE', 'image/jpeg', 1200, 1600, 218391, 'source/7a/benjamin-voros-310026-unsplash.jpg', 'preview/72/benjamin-voros-310026-unsplash__preview.jpg', NULL, 53),
('2022-12-27 19:46:18.020328', '2022-12-27 19:46:18.020328', 'jean-philippe-delberghe-1400011-unsplash.jpg', 'IMAGE', 'image/jpeg', 1067, 1600, 64529, 'source/94/jean-philippe-delberghe-1400011-unsplash.jpg', 'preview/b1/jean-philippe-delberghe-1400011-unsplash__preview.jpg', NULL, 54);

-- --------------------------------------------------------

--
-- Table structure for table `asset_channels_channel`
--

CREATE TABLE `asset_channels_channel` (
  `assetId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `asset_channels_channel`
--

INSERT INTO `asset_channels_channel` (`assetId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1);

-- --------------------------------------------------------

--
-- Table structure for table `asset_tags_tag`
--

CREATE TABLE `asset_tags_tag` (
  `assetId` int(11) NOT NULL,
  `tagId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `authentication_method`
--

CREATE TABLE `authentication_method` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `identifier` varchar(255) DEFAULT NULL,
  `passwordHash` varchar(255) DEFAULT NULL,
  `verificationToken` varchar(255) DEFAULT NULL,
  `passwordResetToken` varchar(255) DEFAULT NULL,
  `identifierChangeToken` varchar(255) DEFAULT NULL,
  `pendingIdentifier` varchar(255) DEFAULT NULL,
  `strategy` varchar(255) DEFAULT NULL,
  `externalIdentifier` varchar(255) DEFAULT NULL,
  `metadata` text DEFAULT NULL,
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authentication_method`
--

INSERT INTO `authentication_method` (`createdAt`, `updatedAt`, `identifier`, `passwordHash`, `verificationToken`, `passwordResetToken`, `identifierChangeToken`, `pendingIdentifier`, `strategy`, `externalIdentifier`, `metadata`, `id`, `type`, `userId`) VALUES
('2022-12-27 19:46:05.311275', '2022-12-27 19:46:05.000000', 'superadmin', '$2b$12$RxeXTY0PNegUTiMCylfEMOf8scJQVUnboIqVWsGGCBXfaEsCTclt.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'NativeAuthenticationMethod', 1),
('2022-12-27 20:06:12.917830', '2022-12-27 20:06:12.000000', 'u1@gmail.com', '$2b$12$vpSHLQwKdHwbM2xjxGl0pud8O53v2r9z7def4BYmz6iWVaZo7Fr4S', 'MjAyMi0xMi0yN1QxNDowNjoxMi45NDda_S4R2FLJ5RWZ5DPB3', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'NativeAuthenticationMethod', 2),
('2022-12-27 20:13:25.319972', '2022-12-27 20:13:25.000000', 'u2@gmail.com', '$2b$12$2ADZsj2uiiLCipTp7NA8iO/fcXQAGXbLVz27NTvwSglnarUtTr0UO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'NativeAuthenticationMethod', 3),
('2023-03-01 22:21:54.790401', '2023-03-01 22:21:54.000000', '9876543213@kaikani.com', '$2b$12$YaepL99G1xPJFBOkLT.RVeVaEEZk6oOmgtKNwkEKxmSZU5civ49RO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'NativeAuthenticationMethod', 4);

-- --------------------------------------------------------

--
-- Table structure for table `channel`
--

CREATE TABLE `channel` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `code` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `defaultLanguageCode` varchar(255) NOT NULL,
  `currencyCode` varchar(255) NOT NULL,
  `pricesIncludeTax` tinyint(4) NOT NULL,
  `id` int(11) NOT NULL,
  `defaultTaxZoneId` int(11) DEFAULT NULL,
  `defaultShippingZoneId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `channel`
--

INSERT INTO `channel` (`createdAt`, `updatedAt`, `code`, `token`, `defaultLanguageCode`, `currencyCode`, `pricesIncludeTax`, `id`, `defaultTaxZoneId`, `defaultShippingZoneId`) VALUES
('2022-12-27 19:46:04.949892', '2022-12-27 19:46:10.000000', '__default_channel__', 'c2d2ubuj7rtmop287x5p', 'en', 'USD', 0, 1, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `isRoot` tinyint(4) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL,
  `isPrivate` tinyint(4) NOT NULL DEFAULT 0,
  `filters` text NOT NULL,
  `id` int(11) NOT NULL,
  `featuredAssetId` int(11) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`createdAt`, `updatedAt`, `isRoot`, `position`, `isPrivate`, `filters`, `id`, `featuredAssetId`, `parentId`) VALUES
('2022-12-27 19:46:18.302175', '2022-12-27 19:46:18.302175', 1, 0, 0, '[]', 1, NULL, NULL),
('2022-12-27 19:46:18.314136', '2022-12-27 19:46:18.314136', 0, 1, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[1]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 2, 16, 1),
('2022-12-27 19:46:18.378974', '2022-12-27 19:46:18.378974', 0, 1, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[2]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 3, 5, 2),
('2022-12-27 19:46:18.442924', '2022-12-27 19:46:18.442924', 0, 2, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[9]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 4, 12, 2),
('2022-12-27 19:46:18.480751', '2022-12-27 19:46:18.480751', 0, 2, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[30]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 5, 47, 1),
('2022-12-27 19:46:18.518096', '2022-12-27 19:46:18.518096', 0, 1, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[34]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 6, 46, 5),
('2022-12-27 19:46:18.570231', '2022-12-27 19:46:18.570231', 0, 2, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[31]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 7, 37, 5),
('2022-12-27 19:46:18.612921', '2022-12-27 19:46:18.612921', 0, 3, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[17]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 8, 24, 1),
('2022-12-27 19:46:18.644597', '2022-12-27 19:46:18.644597', 0, 1, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[18]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 9, 23, 8),
('2022-12-27 19:46:18.746326', '2022-12-27 19:46:18.746326', 0, 2, 0, '[{\"code\":\"facet-value-filter\",\"args\":[{\"name\":\"facetValueIds\",\"value\":\"[23]\"},{\"name\":\"containsAny\",\"value\":\"false\"}]}]', 10, 32, 8);

-- --------------------------------------------------------

--
-- Table structure for table `collection_asset`
--

CREATE TABLE `collection_asset` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `assetId` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `collectionId` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `collection_asset`
--

INSERT INTO `collection_asset` (`createdAt`, `updatedAt`, `assetId`, `position`, `collectionId`, `id`) VALUES
('2022-12-27 19:46:18.328750', '2022-12-27 19:46:18.328750', 16, 0, 2, 1),
('2022-12-27 19:46:18.394732', '2022-12-27 19:46:18.394732', 5, 0, 3, 2),
('2022-12-27 19:46:18.449931', '2022-12-27 19:46:18.449931', 12, 0, 4, 3),
('2022-12-27 19:46:18.494178', '2022-12-27 19:46:18.494178', 47, 0, 5, 4),
('2022-12-27 19:46:18.546264', '2022-12-27 19:46:18.546264', 46, 0, 6, 5),
('2022-12-27 19:46:18.580982', '2022-12-27 19:46:18.580982', 37, 0, 7, 6),
('2022-12-27 19:46:18.621229', '2022-12-27 19:46:18.621229', 24, 0, 8, 7),
('2022-12-27 19:46:18.651410', '2022-12-27 19:46:18.651410', 23, 0, 9, 8),
('2022-12-27 19:46:18.763912', '2022-12-27 19:46:18.763912', 32, 0, 10, 9);

-- --------------------------------------------------------

--
-- Table structure for table `collection_channels_channel`
--

CREATE TABLE `collection_channels_channel` (
  `collectionId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `collection_channels_channel`
--

INSERT INTO `collection_channels_channel` (`collectionId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `collection_product_variants_product_variant`
--

CREATE TABLE `collection_product_variants_product_variant` (
  `collectionId` int(11) NOT NULL,
  `productVariantId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `collection_product_variants_product_variant`
--

INSERT INTO `collection_product_variants_product_variant` (`collectionId`, `productVariantId`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(3, 16),
(3, 17),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(3, 22),
(3, 23),
(3, 24),
(3, 25),
(4, 26),
(4, 27),
(4, 28),
(4, 29),
(4, 30),
(4, 31),
(4, 32),
(4, 33),
(4, 34),
(5, 67),
(5, 68),
(5, 69),
(5, 70),
(5, 71),
(5, 72),
(5, 73),
(5, 74),
(5, 75),
(5, 76),
(5, 77),
(5, 78),
(5, 79),
(5, 80),
(5, 81),
(5, 82),
(5, 83),
(5, 84),
(5, 85),
(5, 86),
(5, 87),
(5, 88),
(6, 75),
(6, 77),
(6, 78),
(6, 79),
(6, 80),
(6, 81),
(6, 82),
(6, 83),
(6, 84),
(6, 85),
(6, 86),
(6, 87),
(6, 88),
(7, 67),
(7, 68),
(7, 69),
(7, 70),
(7, 71),
(7, 72),
(7, 73),
(7, 74),
(7, 76),
(8, 35),
(8, 36),
(8, 37),
(8, 38),
(8, 39),
(8, 40),
(8, 41),
(8, 42),
(8, 43),
(8, 44),
(8, 45),
(8, 46),
(8, 47),
(8, 48),
(8, 49),
(8, 50),
(8, 51),
(8, 52),
(8, 53),
(8, 54),
(8, 55),
(8, 56),
(8, 57),
(8, 58),
(8, 59),
(8, 60),
(8, 61),
(8, 62),
(8, 63),
(8, 64),
(8, 65),
(8, 66),
(9, 35),
(9, 36),
(9, 37),
(9, 38),
(9, 39),
(9, 40),
(9, 41),
(9, 42),
(10, 43),
(10, 44),
(10, 45),
(10, 46),
(10, 47),
(10, 48),
(10, 49),
(10, 50),
(10, 51),
(10, 52),
(10, 53),
(10, 54),
(10, 55),
(10, 56),
(10, 57),
(10, 58),
(10, 59),
(10, 60),
(10, 61),
(10, 62),
(10, 63),
(10, 64),
(10, 65),
(10, 66);

-- --------------------------------------------------------

--
-- Table structure for table `collection_translation`
--

CREATE TABLE `collection_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `collection_translation`
--

INSERT INTO `collection_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `slug`, `description`, `id`, `baseId`) VALUES
('2022-12-27 19:46:18.290104', '2022-12-27 19:46:18.000000', 'en', 'Electronics', 'electronics', '', 1, 2),
('2022-12-27 19:46:18.296302', '2022-12-27 19:46:18.000000', 'en', '__root_collection__', '__root_collection__', 'The root of the Collection tree.', 2, 1),
('2022-12-27 19:46:18.356803', '2022-12-27 19:46:18.000000', 'en', 'Computers', 'computers', '', 3, 3),
('2022-12-27 19:46:18.432659', '2022-12-27 19:46:18.000000', 'en', 'Camera & Photo', 'camera-photo', '', 4, 4),
('2022-12-27 19:46:18.472741', '2022-12-27 19:46:18.000000', 'en', 'Home & Garden', 'home-garden', '', 5, 5),
('2022-12-27 19:46:18.508784', '2022-12-27 19:46:18.000000', 'en', 'Furniture', 'furniture', '', 6, 6),
('2022-12-27 19:46:18.563275', '2022-12-27 19:46:18.000000', 'en', 'Plants', 'plants', '', 7, 7),
('2022-12-27 19:46:18.599338', '2022-12-27 19:46:18.000000', 'en', 'Sports & Outdoor', 'sports-outdoor', '', 8, 8),
('2022-12-27 19:46:18.635071', '2022-12-27 19:46:18.000000', 'en', 'Equipment', 'equipment', '', 9, 9),
('2022-12-27 19:46:18.716940', '2022-12-27 19:46:18.000000', 'en', 'Footwear', 'footwear', '', 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `code` varchar(255) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`createdAt`, `updatedAt`, `code`, `enabled`, `id`) VALUES
('2022-12-27 19:46:05.436220', '2022-12-27 19:46:05.436220', 'AF', 1, 1),
('2022-12-27 19:46:05.464743', '2022-12-27 19:46:05.464743', 'AX', 1, 2),
('2022-12-27 19:46:05.494393', '2022-12-27 19:46:05.494393', 'AL', 1, 3),
('2022-12-27 19:46:05.508114', '2022-12-27 19:46:05.508114', 'DZ', 1, 4),
('2022-12-27 19:46:05.539152', '2022-12-27 19:46:05.539152', 'AS', 1, 5),
('2022-12-27 19:46:05.560920', '2022-12-27 19:46:05.560920', 'AD', 1, 6),
('2022-12-27 19:46:05.572604', '2022-12-27 19:46:05.572604', 'AO', 1, 7),
('2022-12-27 19:46:05.592459', '2022-12-27 19:46:05.592459', 'AI', 1, 8),
('2022-12-27 19:46:05.614779', '2022-12-27 19:46:05.614779', 'AG', 1, 9),
('2022-12-27 19:46:05.631723', '2022-12-27 19:46:05.631723', 'AR', 1, 10),
('2022-12-27 19:46:05.643803', '2022-12-27 19:46:05.643803', 'AM', 1, 11),
('2022-12-27 19:46:05.660331', '2022-12-27 19:46:05.660331', 'AW', 1, 12),
('2022-12-27 19:46:05.681073', '2022-12-27 19:46:05.681073', 'AU', 1, 13),
('2022-12-27 19:46:05.694484', '2022-12-27 19:46:05.694484', 'AT', 1, 14),
('2022-12-27 19:46:05.706313', '2022-12-27 19:46:05.706313', 'AZ', 1, 15),
('2022-12-27 19:46:05.716725', '2022-12-27 19:46:05.716725', 'BS', 1, 16),
('2022-12-27 19:46:05.730783', '2022-12-27 19:46:05.730783', 'BH', 1, 17),
('2022-12-27 19:46:05.743694', '2022-12-27 19:46:05.743694', 'BD', 1, 18),
('2022-12-27 19:46:05.758709', '2022-12-27 19:46:05.758709', 'BB', 1, 19),
('2022-12-27 19:46:05.800104', '2022-12-27 19:46:05.800104', 'BY', 1, 20),
('2022-12-27 19:46:05.815390', '2022-12-27 19:46:05.815390', 'BE', 1, 21),
('2022-12-27 19:46:05.826172', '2022-12-27 19:46:05.826172', 'BZ', 1, 22),
('2022-12-27 19:46:05.845502', '2022-12-27 19:46:05.845502', 'BJ', 1, 23),
('2022-12-27 19:46:05.856097', '2022-12-27 19:46:05.856097', 'BM', 1, 24),
('2022-12-27 19:46:05.866594', '2022-12-27 19:46:05.866594', 'BT', 1, 25),
('2022-12-27 19:46:05.886694', '2022-12-27 19:46:05.886694', 'BO', 1, 26),
('2022-12-27 19:46:05.902427', '2022-12-27 19:46:05.902427', 'BQ', 1, 27),
('2022-12-27 19:46:05.914457', '2022-12-27 19:46:05.914457', 'BA', 1, 28),
('2022-12-27 19:46:05.930215', '2022-12-27 19:46:05.930215', 'BW', 1, 29),
('2022-12-27 19:46:05.944241', '2022-12-27 19:46:05.944241', 'BV', 1, 30),
('2022-12-27 19:46:05.956802', '2022-12-27 19:46:05.956802', 'BR', 1, 31),
('2022-12-27 19:46:05.967208', '2022-12-27 19:46:05.967208', 'IO', 1, 32),
('2022-12-27 19:46:05.980245', '2022-12-27 19:46:05.980245', 'BN', 1, 33),
('2022-12-27 19:46:05.992915', '2022-12-27 19:46:05.992915', 'BG', 1, 34),
('2022-12-27 19:46:06.003611', '2022-12-27 19:46:06.003611', 'BF', 1, 35),
('2022-12-27 19:46:06.020008', '2022-12-27 19:46:06.020008', 'BI', 1, 36),
('2022-12-27 19:46:06.030840', '2022-12-27 19:46:06.030840', 'CV', 1, 37),
('2022-12-27 19:46:06.045910', '2022-12-27 19:46:06.045910', 'KH', 1, 38),
('2022-12-27 19:46:06.060286', '2022-12-27 19:46:06.060286', 'CM', 1, 39),
('2022-12-27 19:46:06.070341', '2022-12-27 19:46:06.070341', 'CA', 1, 40),
('2022-12-27 19:46:06.083536', '2022-12-27 19:46:06.083536', 'KY', 1, 41),
('2022-12-27 19:46:06.097647', '2022-12-27 19:46:06.097647', 'CF', 1, 42),
('2022-12-27 19:46:06.109324', '2022-12-27 19:46:06.109324', 'TD', 1, 43),
('2022-12-27 19:46:06.119207', '2022-12-27 19:46:06.119207', 'CL', 1, 44),
('2022-12-27 19:46:06.136462', '2022-12-27 19:46:06.136462', 'CN', 1, 45),
('2022-12-27 19:46:06.149681', '2022-12-27 19:46:06.149681', 'CX', 1, 46),
('2022-12-27 19:46:06.163708', '2022-12-27 19:46:06.163708', 'CC', 1, 47),
('2022-12-27 19:46:06.178109', '2022-12-27 19:46:06.178109', 'CO', 1, 48),
('2022-12-27 19:46:06.189221', '2022-12-27 19:46:06.189221', 'KM', 1, 49),
('2022-12-27 19:46:06.199699', '2022-12-27 19:46:06.199699', 'CG', 1, 50),
('2022-12-27 19:46:06.218190', '2022-12-27 19:46:06.218190', 'CD', 1, 51),
('2022-12-27 19:46:06.227599', '2022-12-27 19:46:06.227599', 'CK', 1, 52),
('2022-12-27 19:46:06.240141', '2022-12-27 19:46:06.240141', 'CR', 1, 53),
('2022-12-27 19:46:06.253599', '2022-12-27 19:46:06.253599', 'CI', 1, 54),
('2022-12-27 19:46:06.269831', '2022-12-27 19:46:06.269831', 'HR', 1, 55),
('2022-12-27 19:46:06.280567', '2022-12-27 19:46:06.280567', 'CU', 1, 56),
('2022-12-27 19:46:06.294347', '2022-12-27 19:46:06.294347', 'CW', 1, 57),
('2022-12-27 19:46:06.309567', '2022-12-27 19:46:06.309567', 'CY', 1, 58),
('2022-12-27 19:46:06.323005', '2022-12-27 19:46:06.323005', 'CZ', 1, 59),
('2022-12-27 19:46:06.340920', '2022-12-27 19:46:06.340920', 'DK', 1, 60),
('2022-12-27 19:46:06.351464', '2022-12-27 19:46:06.351464', 'DJ', 1, 61),
('2022-12-27 19:46:06.368624', '2022-12-27 19:46:06.368624', 'DM', 1, 62),
('2022-12-27 19:46:06.382761', '2022-12-27 19:46:06.382761', 'DO', 1, 63),
('2022-12-27 19:46:06.397136', '2022-12-27 19:46:06.397136', 'EC', 1, 64),
('2022-12-27 19:46:06.413721', '2022-12-27 19:46:06.413721', 'EG', 1, 65),
('2022-12-27 19:46:06.427012', '2022-12-27 19:46:06.427012', 'SV', 1, 66),
('2022-12-27 19:46:06.479244', '2022-12-27 19:46:06.479244', 'GQ', 1, 67),
('2022-12-27 19:46:06.501998', '2022-12-27 19:46:06.501998', 'ER', 1, 68),
('2022-12-27 19:46:06.525304', '2022-12-27 19:46:06.525304', 'EE', 1, 69),
('2022-12-27 19:46:06.548027', '2022-12-27 19:46:06.548027', 'SZ', 1, 70),
('2022-12-27 19:46:06.576878', '2022-12-27 19:46:06.576878', 'ET', 1, 71),
('2022-12-27 19:46:06.594240', '2022-12-27 19:46:06.594240', 'FK', 1, 72),
('2022-12-27 19:46:06.610798', '2022-12-27 19:46:06.610798', 'FO', 1, 73),
('2022-12-27 19:46:06.625672', '2022-12-27 19:46:06.625672', 'FJ', 1, 74),
('2022-12-27 19:46:06.640671', '2022-12-27 19:46:06.640671', 'FI', 1, 75),
('2022-12-27 19:46:06.653037', '2022-12-27 19:46:06.653037', 'FR', 1, 76),
('2022-12-27 19:46:06.677730', '2022-12-27 19:46:06.677730', 'GF', 1, 77),
('2022-12-27 19:46:06.695777', '2022-12-27 19:46:06.695777', 'PF', 1, 78),
('2022-12-27 19:46:06.711125', '2022-12-27 19:46:06.711125', 'TF', 1, 79),
('2022-12-27 19:46:06.728061', '2022-12-27 19:46:06.728061', 'GA', 1, 80),
('2022-12-27 19:46:06.741514', '2022-12-27 19:46:06.741514', 'GM', 1, 81),
('2022-12-27 19:46:06.753325', '2022-12-27 19:46:06.753325', 'GE', 1, 82),
('2022-12-27 19:46:06.768911', '2022-12-27 19:46:06.768911', 'DE', 1, 83),
('2022-12-27 19:46:06.786545', '2022-12-27 19:46:06.786545', 'GH', 1, 84),
('2022-12-27 19:46:06.800645', '2022-12-27 19:46:06.800645', 'GI', 1, 85),
('2022-12-27 19:46:06.829750', '2022-12-27 19:46:06.829750', 'GR', 1, 86),
('2022-12-27 19:46:06.844898', '2022-12-27 19:46:06.844898', 'GL', 1, 87),
('2022-12-27 19:46:06.865009', '2022-12-27 19:46:06.865009', 'GD', 1, 88),
('2022-12-27 19:46:06.900439', '2022-12-27 19:46:06.900439', 'GP', 1, 89),
('2022-12-27 19:46:06.913895', '2022-12-27 19:46:06.913895', 'GU', 1, 90),
('2022-12-27 19:46:06.928154', '2022-12-27 19:46:06.928154', 'GT', 1, 91),
('2022-12-27 19:46:06.948600', '2022-12-27 19:46:06.948600', 'GG', 1, 92),
('2022-12-27 19:46:06.966646', '2022-12-27 19:46:06.966646', 'GN', 1, 93),
('2022-12-27 19:46:06.987236', '2022-12-27 19:46:06.987236', 'GW', 1, 94),
('2022-12-27 19:46:07.008285', '2022-12-27 19:46:07.008285', 'GY', 1, 95),
('2022-12-27 19:46:07.025563', '2022-12-27 19:46:07.025563', 'HT', 1, 96),
('2022-12-27 19:46:07.043705', '2022-12-27 19:46:07.043705', 'HM', 1, 97),
('2022-12-27 19:46:07.061024', '2022-12-27 19:46:07.061024', 'VA', 1, 98),
('2022-12-27 19:46:07.077317', '2022-12-27 19:46:07.077317', 'HN', 1, 99),
('2022-12-27 19:46:07.097466', '2022-12-27 19:46:07.097466', 'HK', 1, 100),
('2022-12-27 19:46:07.114036', '2022-12-27 19:46:07.114036', 'HU', 1, 101),
('2022-12-27 19:46:07.136008', '2022-12-27 19:46:07.136008', 'IS', 1, 102),
('2022-12-27 19:46:07.152658', '2022-12-27 19:46:07.152658', 'IN', 1, 103),
('2022-12-27 19:46:07.167703', '2022-12-27 19:46:07.167703', 'ID', 1, 104),
('2022-12-27 19:46:07.185268', '2022-12-27 19:46:07.185268', 'IR', 1, 105),
('2022-12-27 19:46:07.201221', '2022-12-27 19:46:07.201221', 'IQ', 1, 106),
('2022-12-27 19:46:07.215130', '2022-12-27 19:46:07.215130', 'IE', 1, 107),
('2022-12-27 19:46:07.227736', '2022-12-27 19:46:07.227736', 'IM', 1, 108),
('2022-12-27 19:46:07.250467', '2022-12-27 19:46:07.250467', 'IL', 1, 109),
('2022-12-27 19:46:07.268679', '2022-12-27 19:46:07.268679', 'IT', 1, 110),
('2022-12-27 19:46:07.283744', '2022-12-27 19:46:07.283744', 'JM', 1, 111),
('2022-12-27 19:46:07.303257', '2022-12-27 19:46:07.303257', 'JP', 1, 112),
('2022-12-27 19:46:07.317207', '2022-12-27 19:46:07.317207', 'JE', 1, 113),
('2022-12-27 19:46:07.334104', '2022-12-27 19:46:07.334104', 'JO', 1, 114),
('2022-12-27 19:46:07.346894', '2022-12-27 19:46:07.346894', 'KZ', 1, 115),
('2022-12-27 19:46:07.365606', '2022-12-27 19:46:07.365606', 'KE', 1, 116),
('2022-12-27 19:46:07.384170', '2022-12-27 19:46:07.384170', 'KI', 1, 117),
('2022-12-27 19:46:07.409557', '2022-12-27 19:46:07.409557', 'KP', 1, 118),
('2022-12-27 19:46:07.428650', '2022-12-27 19:46:07.428650', 'KR', 1, 119),
('2022-12-27 19:46:07.488665', '2022-12-27 19:46:07.488665', 'KW', 1, 120),
('2022-12-27 19:46:07.522430', '2022-12-27 19:46:07.522430', 'KG', 1, 121),
('2022-12-27 19:46:07.536382', '2022-12-27 19:46:07.536382', 'LA', 1, 122),
('2022-12-27 19:46:07.551006', '2022-12-27 19:46:07.551006', 'LV', 1, 123),
('2022-12-27 19:46:07.561758', '2022-12-27 19:46:07.561758', 'LB', 1, 124),
('2022-12-27 19:46:07.577761', '2022-12-27 19:46:07.577761', 'LS', 1, 125),
('2022-12-27 19:46:07.587482', '2022-12-27 19:46:07.587482', 'LR', 1, 126),
('2022-12-27 19:46:07.599438', '2022-12-27 19:46:07.599438', 'LY', 1, 127),
('2022-12-27 19:46:07.615748', '2022-12-27 19:46:07.615748', 'LI', 1, 128),
('2022-12-27 19:46:07.630062', '2022-12-27 19:46:07.630062', 'LT', 1, 129),
('2022-12-27 19:46:07.643545', '2022-12-27 19:46:07.643545', 'LU', 1, 130),
('2022-12-27 19:46:07.655459', '2022-12-27 19:46:07.655459', 'MO', 1, 131),
('2022-12-27 19:46:07.666539', '2022-12-27 19:46:07.666539', 'MK', 1, 132),
('2022-12-27 19:46:07.679354', '2022-12-27 19:46:07.679354', 'MG', 1, 133),
('2022-12-27 19:46:07.693656', '2022-12-27 19:46:07.693656', 'MW', 1, 134),
('2022-12-27 19:46:07.704099', '2022-12-27 19:46:07.704099', 'MY', 1, 135),
('2022-12-27 19:46:07.715299', '2022-12-27 19:46:07.715299', 'MV', 1, 136),
('2022-12-27 19:46:07.729372', '2022-12-27 19:46:07.729372', 'ML', 1, 137),
('2022-12-27 19:46:07.739841', '2022-12-27 19:46:07.739841', 'MT', 1, 138),
('2022-12-27 19:46:07.749521', '2022-12-27 19:46:07.749521', 'MH', 1, 139),
('2022-12-27 19:46:07.760061', '2022-12-27 19:46:07.760061', 'MQ', 1, 140),
('2022-12-27 19:46:07.772134', '2022-12-27 19:46:07.772134', 'MR', 1, 141),
('2022-12-27 19:46:07.787470', '2022-12-27 19:46:07.787470', 'MU', 1, 142),
('2022-12-27 19:46:07.798997', '2022-12-27 19:46:07.798997', 'YT', 1, 143),
('2022-12-27 19:46:07.815546', '2022-12-27 19:46:07.815546', 'MX', 1, 144),
('2022-12-27 19:46:07.826239', '2022-12-27 19:46:07.826239', 'FM', 1, 145),
('2022-12-27 19:46:07.835510', '2022-12-27 19:46:07.835510', 'MD', 1, 146),
('2022-12-27 19:46:07.846399', '2022-12-27 19:46:07.846399', 'MC', 1, 147),
('2022-12-27 19:46:07.864003', '2022-12-27 19:46:07.864003', 'MN', 1, 148),
('2022-12-27 19:46:07.876611', '2022-12-27 19:46:07.876611', 'ME', 1, 149),
('2022-12-27 19:46:07.884966', '2022-12-27 19:46:07.884966', 'MS', 1, 150),
('2022-12-27 19:46:07.900107', '2022-12-27 19:46:07.900107', 'MA', 1, 151),
('2022-12-27 19:46:07.911977', '2022-12-27 19:46:07.911977', 'MZ', 1, 152),
('2022-12-27 19:46:07.923280', '2022-12-27 19:46:07.923280', 'MM', 1, 153),
('2022-12-27 19:46:07.933041', '2022-12-27 19:46:07.933041', 'NA', 1, 154),
('2022-12-27 19:46:07.942873', '2022-12-27 19:46:07.942873', 'NR', 1, 155),
('2022-12-27 19:46:07.952881', '2022-12-27 19:46:07.952881', 'NP', 1, 156),
('2022-12-27 19:46:07.962493', '2022-12-27 19:46:07.962493', 'NL', 1, 157),
('2022-12-27 19:46:07.990170', '2022-12-27 19:46:07.990170', 'NC', 1, 158),
('2022-12-27 19:46:08.018263', '2022-12-27 19:46:08.018263', 'NZ', 1, 159),
('2022-12-27 19:46:08.029170', '2022-12-27 19:46:08.029170', 'NI', 1, 160),
('2022-12-27 19:46:08.043756', '2022-12-27 19:46:08.043756', 'NE', 1, 161),
('2022-12-27 19:46:08.073327', '2022-12-27 19:46:08.073327', 'NG', 1, 162),
('2022-12-27 19:46:08.084995', '2022-12-27 19:46:08.084995', 'NU', 1, 163),
('2022-12-27 19:46:08.098279', '2022-12-27 19:46:08.098279', 'NF', 1, 164),
('2022-12-27 19:46:08.110375', '2022-12-27 19:46:08.110375', 'MP', 1, 165),
('2022-12-27 19:46:08.119527', '2022-12-27 19:46:08.119527', 'NO', 1, 166),
('2022-12-27 19:46:08.135606', '2022-12-27 19:46:08.135606', 'OM', 1, 167),
('2022-12-27 19:46:08.147373', '2022-12-27 19:46:08.147373', 'PK', 1, 168),
('2022-12-27 19:46:08.158711', '2022-12-27 19:46:08.158711', 'PW', 1, 169),
('2022-12-27 19:46:08.170105', '2022-12-27 19:46:08.170105', 'PS', 1, 170),
('2022-12-27 19:46:08.183403', '2022-12-27 19:46:08.183403', 'PA', 1, 171),
('2022-12-27 19:46:08.194649', '2022-12-27 19:46:08.194649', 'PG', 1, 172),
('2022-12-27 19:46:08.211432', '2022-12-27 19:46:08.211432', 'PY', 1, 173),
('2022-12-27 19:46:08.223173', '2022-12-27 19:46:08.223173', 'PE', 1, 174),
('2022-12-27 19:46:08.240695', '2022-12-27 19:46:08.240695', 'PH', 1, 175),
('2022-12-27 19:46:08.250406', '2022-12-27 19:46:08.250406', 'PN', 1, 176),
('2022-12-27 19:46:08.265530', '2022-12-27 19:46:08.265530', 'PL', 1, 177),
('2022-12-27 19:46:08.276098', '2022-12-27 19:46:08.276098', 'PT', 1, 178),
('2022-12-27 19:46:08.285163', '2022-12-27 19:46:08.285163', 'PR', 1, 179),
('2022-12-27 19:46:08.299920', '2022-12-27 19:46:08.299920', 'QA', 1, 180),
('2022-12-27 19:46:08.309674', '2022-12-27 19:46:08.309674', 'RE', 1, 181),
('2022-12-27 19:46:08.345787', '2022-12-27 19:46:08.345787', 'RO', 1, 182),
('2022-12-27 19:46:08.375053', '2022-12-27 19:46:08.375053', 'RU', 1, 183),
('2022-12-27 19:46:08.419020', '2022-12-27 19:46:08.419020', 'RW', 1, 184),
('2022-12-27 19:46:08.459635', '2022-12-27 19:46:08.459635', 'BL', 1, 185),
('2022-12-27 19:46:08.481265', '2022-12-27 19:46:08.481265', 'SH', 1, 186),
('2022-12-27 19:46:08.518908', '2022-12-27 19:46:08.518908', 'KN', 1, 187),
('2022-12-27 19:46:08.533572', '2022-12-27 19:46:08.533572', 'LC', 1, 188),
('2022-12-27 19:46:08.544538', '2022-12-27 19:46:08.544538', 'MF', 1, 189),
('2022-12-27 19:46:08.556037', '2022-12-27 19:46:08.556037', 'PM', 1, 190),
('2022-12-27 19:46:08.580033', '2022-12-27 19:46:08.580033', 'VC', 1, 191),
('2022-12-27 19:46:08.594514', '2022-12-27 19:46:08.594514', 'WS', 1, 192),
('2022-12-27 19:46:08.611569', '2022-12-27 19:46:08.611569', 'SM', 1, 193),
('2022-12-27 19:46:08.621722', '2022-12-27 19:46:08.621722', 'ST', 1, 194),
('2022-12-27 19:46:08.630649', '2022-12-27 19:46:08.630649', 'SA', 1, 195),
('2022-12-27 19:46:08.648212', '2022-12-27 19:46:08.648212', 'SN', 1, 196),
('2022-12-27 19:46:08.662187', '2022-12-27 19:46:08.662187', 'RS', 1, 197),
('2022-12-27 19:46:08.677084', '2022-12-27 19:46:08.677084', 'SC', 1, 198),
('2022-12-27 19:46:08.687951', '2022-12-27 19:46:08.687951', 'SL', 1, 199),
('2022-12-27 19:46:08.702743', '2022-12-27 19:46:08.702743', 'SG', 1, 200),
('2022-12-27 19:46:08.712796', '2022-12-27 19:46:08.712796', 'SX', 1, 201),
('2022-12-27 19:46:08.726108', '2022-12-27 19:46:08.726108', 'SK', 1, 202),
('2022-12-27 19:46:08.739842', '2022-12-27 19:46:08.739842', 'SI', 1, 203),
('2022-12-27 19:46:08.750668', '2022-12-27 19:46:08.750668', 'SB', 1, 204),
('2022-12-27 19:46:08.761715', '2022-12-27 19:46:08.761715', 'SO', 1, 205),
('2022-12-27 19:46:08.781346', '2022-12-27 19:46:08.781346', 'ZA', 1, 206),
('2022-12-27 19:46:08.793677', '2022-12-27 19:46:08.793677', 'GS', 1, 207),
('2022-12-27 19:46:08.803302', '2022-12-27 19:46:08.803302', 'SS', 1, 208),
('2022-12-27 19:46:08.816773', '2022-12-27 19:46:08.816773', 'ES', 1, 209),
('2022-12-27 19:46:08.826187', '2022-12-27 19:46:08.826187', 'LK', 1, 210),
('2022-12-27 19:46:08.834857', '2022-12-27 19:46:08.834857', 'SD', 1, 211),
('2022-12-27 19:46:08.846862', '2022-12-27 19:46:08.846862', 'SR', 1, 212),
('2022-12-27 19:46:08.891129', '2022-12-27 19:46:08.891129', 'SJ', 1, 213),
('2022-12-27 19:46:08.924451', '2022-12-27 19:46:08.924451', 'SE', 1, 214),
('2022-12-27 19:46:08.950745', '2022-12-27 19:46:08.950745', 'CH', 1, 215),
('2022-12-27 19:46:08.968088', '2022-12-27 19:46:08.968088', 'SY', 1, 216),
('2022-12-27 19:46:08.991520', '2022-12-27 19:46:08.991520', 'TW', 1, 217),
('2022-12-27 19:46:09.007214', '2022-12-27 19:46:09.007214', 'TJ', 1, 218),
('2022-12-27 19:46:09.028061', '2022-12-27 19:46:09.028061', 'TZ', 1, 219),
('2022-12-27 19:46:09.051024', '2022-12-27 19:46:09.051024', 'TH', 1, 220),
('2022-12-27 19:46:09.078508', '2022-12-27 19:46:09.078508', 'TL', 1, 221),
('2022-12-27 19:46:09.101272', '2022-12-27 19:46:09.101272', 'TG', 1, 222),
('2022-12-27 19:46:09.116913', '2022-12-27 19:46:09.116913', 'TK', 1, 223),
('2022-12-27 19:46:09.132041', '2022-12-27 19:46:09.132041', 'TO', 1, 224),
('2022-12-27 19:46:09.152361', '2022-12-27 19:46:09.152361', 'TT', 1, 225),
('2022-12-27 19:46:09.173956', '2022-12-27 19:46:09.173956', 'TN', 1, 226),
('2022-12-27 19:46:09.199206', '2022-12-27 19:46:09.199206', 'TR', 1, 227),
('2022-12-27 19:46:09.218283', '2022-12-27 19:46:09.218283', 'TM', 1, 228),
('2022-12-27 19:46:09.242744', '2022-12-27 19:46:09.242744', 'TC', 1, 229),
('2022-12-27 19:46:09.263828', '2022-12-27 19:46:09.263828', 'TV', 1, 230),
('2022-12-27 19:46:09.285027', '2022-12-27 19:46:09.285027', 'UG', 1, 231),
('2022-12-27 19:46:09.311560', '2022-12-27 19:46:09.311560', 'UA', 1, 232),
('2022-12-27 19:46:09.336541', '2022-12-27 19:46:09.336541', 'AE', 1, 233),
('2022-12-27 19:46:09.349695', '2022-12-27 19:46:09.349695', 'GB', 1, 234),
('2022-12-27 19:46:09.364629', '2022-12-27 19:46:09.364629', 'US', 1, 235),
('2022-12-27 19:46:09.384653', '2022-12-27 19:46:09.384653', 'UM', 1, 236),
('2022-12-27 19:46:09.403164', '2022-12-27 19:46:09.403164', 'UY', 1, 237),
('2022-12-27 19:46:09.430608', '2022-12-27 19:46:09.430608', 'UZ', 1, 238),
('2022-12-27 19:46:09.447311', '2022-12-27 19:46:09.447311', 'VU', 1, 239),
('2022-12-27 19:46:09.465743', '2022-12-27 19:46:09.465743', 'VE', 1, 240),
('2022-12-27 19:46:09.484204', '2022-12-27 19:46:09.484204', 'VN', 1, 241),
('2022-12-27 19:46:09.500156', '2022-12-27 19:46:09.500156', 'VG', 1, 242),
('2022-12-27 19:46:09.542650', '2022-12-27 19:46:09.542650', 'VI', 1, 243),
('2022-12-27 19:46:09.584135', '2022-12-27 19:46:09.584135', 'WF', 1, 244),
('2022-12-27 19:46:09.631129', '2022-12-27 19:46:09.631129', 'EH', 1, 245),
('2022-12-27 19:46:09.660649', '2022-12-27 19:46:09.660649', 'YE', 1, 246),
('2022-12-27 19:46:09.684056', '2022-12-27 19:46:09.684056', 'ZM', 1, 247),
('2022-12-27 19:46:09.696321', '2022-12-27 19:46:09.696321', 'ZW', 1, 248);

-- --------------------------------------------------------

--
-- Table structure for table `country_translation`
--

CREATE TABLE `country_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country_translation`
--

INSERT INTO `country_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2022-12-27 19:46:05.429736', '2022-12-27 19:46:05.000000', 'en', 'Afghanistan', 1, 1),
('2022-12-27 19:46:05.458342', '2022-12-27 19:46:05.000000', 'en', 'Åland Islands', 2, 2),
('2022-12-27 19:46:05.485483', '2022-12-27 19:46:05.000000', 'en', 'Albania', 3, 3),
('2022-12-27 19:46:05.502032', '2022-12-27 19:46:05.000000', 'en', 'Algeria', 4, 4),
('2022-12-27 19:46:05.534148', '2022-12-27 19:46:05.000000', 'en', 'American Samoa', 5, 5),
('2022-12-27 19:46:05.555400', '2022-12-27 19:46:05.000000', 'en', 'Andorra', 6, 6),
('2022-12-27 19:46:05.568015', '2022-12-27 19:46:05.000000', 'en', 'Angola', 7, 7),
('2022-12-27 19:46:05.587003', '2022-12-27 19:46:05.000000', 'en', 'Anguilla', 8, 8),
('2022-12-27 19:46:05.611213', '2022-12-27 19:46:05.000000', 'en', 'Antigua and Barbuda', 9, 9),
('2022-12-27 19:46:05.625797', '2022-12-27 19:46:05.000000', 'en', 'Argentina', 10, 10),
('2022-12-27 19:46:05.640029', '2022-12-27 19:46:05.000000', 'en', 'Armenia', 11, 11),
('2022-12-27 19:46:05.650602', '2022-12-27 19:46:05.000000', 'en', 'Aruba', 12, 12),
('2022-12-27 19:46:05.676869', '2022-12-27 19:46:05.000000', 'en', 'Australia', 13, 13),
('2022-12-27 19:46:05.690407', '2022-12-27 19:46:05.000000', 'en', 'Austria', 14, 14),
('2022-12-27 19:46:05.700921', '2022-12-27 19:46:05.000000', 'en', 'Azerbaijan', 15, 15),
('2022-12-27 19:46:05.712915', '2022-12-27 19:46:05.000000', 'en', 'Bahamas', 16, 16),
('2022-12-27 19:46:05.726883', '2022-12-27 19:46:05.000000', 'en', 'Bahrain', 17, 17),
('2022-12-27 19:46:05.740057', '2022-12-27 19:46:05.000000', 'en', 'Bangladesh', 18, 18),
('2022-12-27 19:46:05.750112', '2022-12-27 19:46:05.000000', 'en', 'Barbados', 19, 19),
('2022-12-27 19:46:05.770382', '2022-12-27 19:46:05.000000', 'en', 'Belarus', 20, 20),
('2022-12-27 19:46:05.811356', '2022-12-27 19:46:05.000000', 'en', 'Belgium', 21, 21),
('2022-12-27 19:46:05.822046', '2022-12-27 19:46:05.000000', 'en', 'Belize', 22, 22),
('2022-12-27 19:46:05.841534', '2022-12-27 19:46:05.000000', 'en', 'Benin', 23, 23),
('2022-12-27 19:46:05.852162', '2022-12-27 19:46:05.000000', 'en', 'Bermuda', 24, 24),
('2022-12-27 19:46:05.862442', '2022-12-27 19:46:05.000000', 'en', 'Bhutan', 25, 25),
('2022-12-27 19:46:05.879287', '2022-12-27 19:46:05.000000', 'en', 'Bolivia (Plurinational State of)', 26, 26),
('2022-12-27 19:46:05.898149', '2022-12-27 19:46:05.000000', 'en', 'Bonaire, Sint Eustatius and Saba', 27, 27),
('2022-12-27 19:46:05.910305', '2022-12-27 19:46:05.000000', 'en', 'Bosnia and Herzegovina', 28, 28),
('2022-12-27 19:46:05.925973', '2022-12-27 19:46:05.000000', 'en', 'Botswana', 29, 29),
('2022-12-27 19:46:05.940139', '2022-12-27 19:46:05.000000', 'en', 'Bouvet Island', 30, 30),
('2022-12-27 19:46:05.951477', '2022-12-27 19:46:05.000000', 'en', 'Brazil', 31, 31),
('2022-12-27 19:46:05.963692', '2022-12-27 19:46:05.000000', 'en', 'British Indian Ocean Territory', 32, 32),
('2022-12-27 19:46:05.976454', '2022-12-27 19:46:05.000000', 'en', 'Brunei Darussalam', 33, 33),
('2022-12-27 19:46:05.988942', '2022-12-27 19:46:05.000000', 'en', 'Bulgaria', 34, 34),
('2022-12-27 19:46:05.999496', '2022-12-27 19:46:06.000000', 'en', 'Burkina Faso', 35, 35),
('2022-12-27 19:46:06.015607', '2022-12-27 19:46:06.000000', 'en', 'Burundi', 36, 36),
('2022-12-27 19:46:06.026972', '2022-12-27 19:46:06.000000', 'en', 'Cabo Verde', 37, 37),
('2022-12-27 19:46:06.041853', '2022-12-27 19:46:06.000000', 'en', 'Cambodia', 38, 38),
('2022-12-27 19:46:06.052843', '2022-12-27 19:46:06.000000', 'en', 'Cameroon', 39, 39),
('2022-12-27 19:46:06.066285', '2022-12-27 19:46:06.000000', 'en', 'Canada', 40, 40),
('2022-12-27 19:46:06.080248', '2022-12-27 19:46:06.000000', 'en', 'Cayman Islands', 41, 41),
('2022-12-27 19:46:06.093563', '2022-12-27 19:46:06.000000', 'en', 'Central African Republic', 42, 42),
('2022-12-27 19:46:06.104358', '2022-12-27 19:46:06.000000', 'en', 'Chad', 43, 43),
('2022-12-27 19:46:06.115327', '2022-12-27 19:46:06.000000', 'en', 'Chile', 44, 44),
('2022-12-27 19:46:06.132627', '2022-12-27 19:46:06.000000', 'en', 'China', 45, 45),
('2022-12-27 19:46:06.145162', '2022-12-27 19:46:06.000000', 'en', 'Christmas Island', 46, 46),
('2022-12-27 19:46:06.157735', '2022-12-27 19:46:06.000000', 'en', 'Cocos (Keeling) Islands', 47, 47),
('2022-12-27 19:46:06.170119', '2022-12-27 19:46:06.000000', 'en', 'Colombia', 48, 48),
('2022-12-27 19:46:06.184086', '2022-12-27 19:46:06.000000', 'en', 'Comoros', 49, 49),
('2022-12-27 19:46:06.195934', '2022-12-27 19:46:06.000000', 'en', 'Congo', 50, 50),
('2022-12-27 19:46:06.213371', '2022-12-27 19:46:06.000000', 'en', 'Congo (Democratic Republic of the)', 51, 51),
('2022-12-27 19:46:06.223975', '2022-12-27 19:46:06.000000', 'en', 'Cook Islands', 52, 52),
('2022-12-27 19:46:06.234428', '2022-12-27 19:46:06.000000', 'en', 'Costa Rica', 53, 53),
('2022-12-27 19:46:06.250231', '2022-12-27 19:46:06.000000', 'en', 'Côte d\'Ivoire', 54, 54),
('2022-12-27 19:46:06.266023', '2022-12-27 19:46:06.000000', 'en', 'Croatia', 55, 55),
('2022-12-27 19:46:06.277458', '2022-12-27 19:46:06.000000', 'en', 'Cuba', 56, 56),
('2022-12-27 19:46:06.286750', '2022-12-27 19:46:06.000000', 'en', 'Curaçao', 57, 57),
('2022-12-27 19:46:06.301022', '2022-12-27 19:46:06.000000', 'en', 'Cyprus', 58, 58),
('2022-12-27 19:46:06.317278', '2022-12-27 19:46:06.000000', 'en', 'Czechia', 59, 59),
('2022-12-27 19:46:06.337306', '2022-12-27 19:46:06.000000', 'en', 'Denmark', 60, 60),
('2022-12-27 19:46:06.347096', '2022-12-27 19:46:06.000000', 'en', 'Djibouti', 61, 61),
('2022-12-27 19:46:06.364376', '2022-12-27 19:46:06.000000', 'en', 'Dominica', 62, 62),
('2022-12-27 19:46:06.378243', '2022-12-27 19:46:06.000000', 'en', 'Dominican Republic', 63, 63),
('2022-12-27 19:46:06.392443', '2022-12-27 19:46:06.000000', 'en', 'Ecuador', 64, 64),
('2022-12-27 19:46:06.408383', '2022-12-27 19:46:06.000000', 'en', 'Egypt', 65, 65),
('2022-12-27 19:46:06.420728', '2022-12-27 19:46:06.000000', 'en', 'El Salvador', 66, 66),
('2022-12-27 19:46:06.466961', '2022-12-27 19:46:06.000000', 'en', 'Equatorial Guinea', 67, 67),
('2022-12-27 19:46:06.493480', '2022-12-27 19:46:06.000000', 'en', 'Eritrea', 68, 68),
('2022-12-27 19:46:06.516815', '2022-12-27 19:46:06.000000', 'en', 'Estonia', 69, 69),
('2022-12-27 19:46:06.541801', '2022-12-27 19:46:06.000000', 'en', 'Eswatini', 70, 70),
('2022-12-27 19:46:06.566438', '2022-12-27 19:46:06.000000', 'en', 'Ethiopia', 71, 71),
('2022-12-27 19:46:06.587419', '2022-12-27 19:46:06.000000', 'en', 'Falkland Islands (Malvinas)', 72, 72),
('2022-12-27 19:46:06.601943', '2022-12-27 19:46:06.000000', 'en', 'Faroe Islands', 73, 73),
('2022-12-27 19:46:06.618869', '2022-12-27 19:46:06.000000', 'en', 'Fiji', 74, 74),
('2022-12-27 19:46:06.635081', '2022-12-27 19:46:06.000000', 'en', 'Finland', 75, 75),
('2022-12-27 19:46:06.647724', '2022-12-27 19:46:06.000000', 'en', 'France', 76, 76),
('2022-12-27 19:46:06.668412', '2022-12-27 19:46:06.000000', 'en', 'French Guiana', 77, 77),
('2022-12-27 19:46:06.686415', '2022-12-27 19:46:06.000000', 'en', 'French Polynesia', 78, 78),
('2022-12-27 19:46:06.703690', '2022-12-27 19:46:06.000000', 'en', 'French Southern Territories', 79, 79),
('2022-12-27 19:46:06.719387', '2022-12-27 19:46:06.000000', 'en', 'Gabon', 80, 80),
('2022-12-27 19:46:06.735821', '2022-12-27 19:46:06.000000', 'en', 'Gambia', 81, 81),
('2022-12-27 19:46:06.748831', '2022-12-27 19:46:06.000000', 'en', 'Georgia', 82, 82),
('2022-12-27 19:46:06.764008', '2022-12-27 19:46:06.000000', 'en', 'Germany', 83, 83),
('2022-12-27 19:46:06.781249', '2022-12-27 19:46:06.000000', 'en', 'Ghana', 84, 84),
('2022-12-27 19:46:06.795667', '2022-12-27 19:46:06.000000', 'en', 'Gibraltar', 85, 85),
('2022-12-27 19:46:06.825053', '2022-12-27 19:46:06.000000', 'en', 'Greece', 86, 86),
('2022-12-27 19:46:06.839702', '2022-12-27 19:46:06.000000', 'en', 'Greenland', 87, 87),
('2022-12-27 19:46:06.859042', '2022-12-27 19:46:06.000000', 'en', 'Grenada', 88, 88),
('2022-12-27 19:46:06.893450', '2022-12-27 19:46:06.000000', 'en', 'Guadeloupe', 89, 89),
('2022-12-27 19:46:06.909203', '2022-12-27 19:46:06.000000', 'en', 'Guam', 90, 90),
('2022-12-27 19:46:06.923547', '2022-12-27 19:46:06.000000', 'en', 'Guatemala', 91, 91),
('2022-12-27 19:46:06.943789', '2022-12-27 19:46:06.000000', 'en', 'Guernsey', 92, 92),
('2022-12-27 19:46:06.960632', '2022-12-27 19:46:06.000000', 'en', 'Guinea', 93, 93),
('2022-12-27 19:46:06.978515', '2022-12-27 19:46:06.000000', 'en', 'Guinea-Bissau', 94, 94),
('2022-12-27 19:46:06.998785', '2022-12-27 19:46:07.000000', 'en', 'Guyana', 95, 95),
('2022-12-27 19:46:07.017127', '2022-12-27 19:46:07.000000', 'en', 'Haiti', 96, 96),
('2022-12-27 19:46:07.036124', '2022-12-27 19:46:07.000000', 'en', 'Heard Island and McDonald Islands', 97, 97),
('2022-12-27 19:46:07.051727', '2022-12-27 19:46:07.000000', 'en', 'Holy See', 98, 98),
('2022-12-27 19:46:07.069813', '2022-12-27 19:46:07.000000', 'en', 'Honduras', 99, 99),
('2022-12-27 19:46:07.085346', '2022-12-27 19:46:07.000000', 'en', 'Hong Kong', 100, 100),
('2022-12-27 19:46:07.109346', '2022-12-27 19:46:07.000000', 'en', 'Hungary', 101, 101),
('2022-12-27 19:46:07.127693', '2022-12-27 19:46:07.000000', 'en', 'Iceland', 102, 102),
('2022-12-27 19:46:07.147680', '2022-12-27 19:46:07.000000', 'en', 'India', 103, 103),
('2022-12-27 19:46:07.162901', '2022-12-27 19:46:07.000000', 'en', 'Indonesia', 104, 104),
('2022-12-27 19:46:07.179961', '2022-12-27 19:46:07.000000', 'en', 'Iran (Islamic Republic of)', 105, 105),
('2022-12-27 19:46:07.194976', '2022-12-27 19:46:07.000000', 'en', 'Iraq', 106, 106),
('2022-12-27 19:46:07.209899', '2022-12-27 19:46:07.000000', 'en', 'Ireland', 107, 107),
('2022-12-27 19:46:07.223569', '2022-12-27 19:46:07.000000', 'en', 'Isle of Man', 108, 108),
('2022-12-27 19:46:07.245178', '2022-12-27 19:46:07.000000', 'en', 'Israel', 109, 109),
('2022-12-27 19:46:07.264323', '2022-12-27 19:46:07.000000', 'en', 'Italy', 110, 110),
('2022-12-27 19:46:07.278977', '2022-12-27 19:46:07.000000', 'en', 'Jamaica', 111, 111),
('2022-12-27 19:46:07.298752', '2022-12-27 19:46:07.000000', 'en', 'Japan', 112, 112),
('2022-12-27 19:46:07.312824', '2022-12-27 19:46:07.000000', 'en', 'Jersey', 113, 113),
('2022-12-27 19:46:07.329572', '2022-12-27 19:46:07.000000', 'en', 'Jordan', 114, 114),
('2022-12-27 19:46:07.342789', '2022-12-27 19:46:07.000000', 'en', 'Kazakhstan', 115, 115),
('2022-12-27 19:46:07.360331', '2022-12-27 19:46:07.000000', 'en', 'Kenya', 116, 116),
('2022-12-27 19:46:07.379679', '2022-12-27 19:46:07.000000', 'en', 'Kiribati', 117, 117),
('2022-12-27 19:46:07.396947', '2022-12-27 19:46:07.000000', 'en', 'Korea (Democratic People\'s Republic of)', 118, 118),
('2022-12-27 19:46:07.417410', '2022-12-27 19:46:07.000000', 'en', 'Korea (Republic of)', 119, 119),
('2022-12-27 19:46:07.462908', '2022-12-27 19:46:07.000000', 'en', 'Kuwait', 120, 120),
('2022-12-27 19:46:07.509439', '2022-12-27 19:46:07.000000', 'en', 'Kyrgyzstan', 121, 121),
('2022-12-27 19:46:07.532071', '2022-12-27 19:46:07.000000', 'en', 'Lao People\'s Democratic Republic', 122, 122),
('2022-12-27 19:46:07.544459', '2022-12-27 19:46:07.000000', 'en', 'Latvia', 123, 123),
('2022-12-27 19:46:07.557881', '2022-12-27 19:46:07.000000', 'en', 'Lebanon', 124, 124),
('2022-12-27 19:46:07.569050', '2022-12-27 19:46:07.000000', 'en', 'Lesotho', 125, 125),
('2022-12-27 19:46:07.583489', '2022-12-27 19:46:07.000000', 'en', 'Liberia', 126, 126),
('2022-12-27 19:46:07.595798', '2022-12-27 19:46:07.000000', 'en', 'Libya', 127, 127),
('2022-12-27 19:46:07.611663', '2022-12-27 19:46:07.000000', 'en', 'Liechtenstein', 128, 128),
('2022-12-27 19:46:07.626145', '2022-12-27 19:46:07.000000', 'en', 'Lithuania', 129, 129),
('2022-12-27 19:46:07.639438', '2022-12-27 19:46:07.000000', 'en', 'Luxembourg', 130, 130),
('2022-12-27 19:46:07.650272', '2022-12-27 19:46:07.000000', 'en', 'Macao', 131, 131),
('2022-12-27 19:46:07.662833', '2022-12-27 19:46:07.000000', 'en', 'Macedonia (the former Yugoslav Republic of)', 132, 132),
('2022-12-27 19:46:07.675664', '2022-12-27 19:46:07.000000', 'en', 'Madagascar', 133, 133),
('2022-12-27 19:46:07.685191', '2022-12-27 19:46:07.000000', 'en', 'Malawi', 134, 134),
('2022-12-27 19:46:07.699238', '2022-12-27 19:46:07.000000', 'en', 'Malaysia', 135, 135),
('2022-12-27 19:46:07.711576', '2022-12-27 19:46:07.000000', 'en', 'Maldives', 136, 136),
('2022-12-27 19:46:07.720988', '2022-12-27 19:46:07.000000', 'en', 'Mali', 137, 137),
('2022-12-27 19:46:07.735323', '2022-12-27 19:46:07.000000', 'en', 'Malta', 138, 138),
('2022-12-27 19:46:07.745730', '2022-12-27 19:46:07.000000', 'en', 'Marshall Islands', 139, 139),
('2022-12-27 19:46:07.756756', '2022-12-27 19:46:07.000000', 'en', 'Martinique', 140, 140),
('2022-12-27 19:46:07.765739', '2022-12-27 19:46:07.000000', 'en', 'Mauritania', 141, 141),
('2022-12-27 19:46:07.783369', '2022-12-27 19:46:07.000000', 'en', 'Mauritius', 142, 142),
('2022-12-27 19:46:07.795219', '2022-12-27 19:46:07.000000', 'en', 'Mayotte', 143, 143),
('2022-12-27 19:46:07.811774', '2022-12-27 19:46:07.000000', 'en', 'Mexico', 144, 144),
('2022-12-27 19:46:07.822435', '2022-12-27 19:46:07.000000', 'en', 'Micronesia (Federated States of)', 145, 145),
('2022-12-27 19:46:07.832163', '2022-12-27 19:46:07.000000', 'en', 'Moldova (Republic of)', 146, 146),
('2022-12-27 19:46:07.841996', '2022-12-27 19:46:07.000000', 'en', 'Monaco', 147, 147),
('2022-12-27 19:46:07.853992', '2022-12-27 19:46:07.000000', 'en', 'Mongolia', 148, 148),
('2022-12-27 19:46:07.870221', '2022-12-27 19:46:07.000000', 'en', 'Montenegro', 149, 149),
('2022-12-27 19:46:07.881930', '2022-12-27 19:46:07.000000', 'en', 'Montserrat', 150, 150),
('2022-12-27 19:46:07.896168', '2022-12-27 19:46:07.000000', 'en', 'Morocco', 151, 151),
('2022-12-27 19:46:07.907447', '2022-12-27 19:46:07.000000', 'en', 'Mozambique', 152, 152),
('2022-12-27 19:46:07.917948', '2022-12-27 19:46:07.000000', 'en', 'Myanmar', 153, 153),
('2022-12-27 19:46:07.929475', '2022-12-27 19:46:07.000000', 'en', 'Namibia', 154, 154),
('2022-12-27 19:46:07.939118', '2022-12-27 19:46:07.000000', 'en', 'Nauru', 155, 155),
('2022-12-27 19:46:07.948728', '2022-12-27 19:46:07.000000', 'en', 'Nepal', 156, 156),
('2022-12-27 19:46:07.959074', '2022-12-27 19:46:07.000000', 'en', 'Netherlands', 157, 157),
('2022-12-27 19:46:07.973456', '2022-12-27 19:46:07.000000', 'en', 'New Caledonia', 158, 158),
('2022-12-27 19:46:08.014165', '2022-12-27 19:46:08.000000', 'en', 'New Zealand', 159, 159),
('2022-12-27 19:46:08.025455', '2022-12-27 19:46:08.000000', 'en', 'Nicaragua', 160, 160),
('2022-12-27 19:46:08.035547', '2022-12-27 19:46:08.000000', 'en', 'Niger', 161, 161),
('2022-12-27 19:46:08.068668', '2022-12-27 19:46:08.000000', 'en', 'Nigeria', 162, 162),
('2022-12-27 19:46:08.081451', '2022-12-27 19:46:08.000000', 'en', 'Niue', 163, 163),
('2022-12-27 19:46:08.094456', '2022-12-27 19:46:08.000000', 'en', 'Norfolk Island', 164, 164),
('2022-12-27 19:46:08.106358', '2022-12-27 19:46:08.000000', 'en', 'Northern Mariana Islands', 165, 165),
('2022-12-27 19:46:08.115995', '2022-12-27 19:46:08.000000', 'en', 'Norway', 166, 166),
('2022-12-27 19:46:08.131990', '2022-12-27 19:46:08.000000', 'en', 'Oman', 167, 167),
('2022-12-27 19:46:08.141319', '2022-12-27 19:46:08.000000', 'en', 'Pakistan', 168, 168),
('2022-12-27 19:46:08.153583', '2022-12-27 19:46:08.000000', 'en', 'Palau', 169, 169),
('2022-12-27 19:46:08.164175', '2022-12-27 19:46:08.000000', 'en', 'Palestine, State of', 170, 170),
('2022-12-27 19:46:08.180121', '2022-12-27 19:46:08.000000', 'en', 'Panama', 171, 171),
('2022-12-27 19:46:08.191093', '2022-12-27 19:46:08.000000', 'en', 'Papua New Guinea', 172, 172),
('2022-12-27 19:46:08.201769', '2022-12-27 19:46:08.000000', 'en', 'Paraguay', 173, 173),
('2022-12-27 19:46:08.218708', '2022-12-27 19:46:08.000000', 'en', 'Peru', 174, 174),
('2022-12-27 19:46:08.231400', '2022-12-27 19:46:08.000000', 'en', 'Philippines', 175, 175),
('2022-12-27 19:46:08.246975', '2022-12-27 19:46:08.000000', 'en', 'Pitcairn', 176, 176),
('2022-12-27 19:46:08.260899', '2022-12-27 19:46:08.000000', 'en', 'Poland', 177, 177),
('2022-12-27 19:46:08.272406', '2022-12-27 19:46:08.000000', 'en', 'Portugal', 178, 178),
('2022-12-27 19:46:08.282116', '2022-12-27 19:46:08.000000', 'en', 'Puerto Rico', 179, 179),
('2022-12-27 19:46:08.296178', '2022-12-27 19:46:08.000000', 'en', 'Qatar', 180, 180),
('2022-12-27 19:46:08.306032', '2022-12-27 19:46:08.000000', 'en', 'Réunion', 181, 181),
('2022-12-27 19:46:08.334750', '2022-12-27 19:46:08.000000', 'en', 'Romania', 182, 182),
('2022-12-27 19:46:08.364965', '2022-12-27 19:46:08.000000', 'en', 'Russian Federation', 183, 183),
('2022-12-27 19:46:08.394006', '2022-12-27 19:46:08.000000', 'en', 'Rwanda', 184, 184),
('2022-12-27 19:46:08.441914', '2022-12-27 19:46:08.000000', 'en', 'Saint Barthélemy', 185, 185),
('2022-12-27 19:46:08.470575', '2022-12-27 19:46:08.000000', 'en', 'Saint Helena, Ascension and Tristan da Cunha', 186, 186),
('2022-12-27 19:46:08.513728', '2022-12-27 19:46:08.000000', 'en', 'Saint Kitts and Nevis', 187, 187),
('2022-12-27 19:46:08.529264', '2022-12-27 19:46:08.000000', 'en', 'Saint Lucia', 188, 188),
('2022-12-27 19:46:08.540427', '2022-12-27 19:46:08.000000', 'en', 'Saint Martin (French part)', 189, 189),
('2022-12-27 19:46:08.550884', '2022-12-27 19:46:08.000000', 'en', 'Saint Pierre and Miquelon', 190, 190),
('2022-12-27 19:46:08.569137', '2022-12-27 19:46:08.000000', 'en', 'Saint Vincent and the Grenadines', 191, 191),
('2022-12-27 19:46:08.589594', '2022-12-27 19:46:08.000000', 'en', 'Samoa', 192, 192),
('2022-12-27 19:46:08.600327', '2022-12-27 19:46:08.000000', 'en', 'San Marino', 193, 193),
('2022-12-27 19:46:08.617929', '2022-12-27 19:46:08.000000', 'en', 'Sao Tome and Principe', 194, 194),
('2022-12-27 19:46:08.627336', '2022-12-27 19:46:08.000000', 'en', 'Saudi Arabia', 195, 195),
('2022-12-27 19:46:08.636676', '2022-12-27 19:46:08.000000', 'en', 'Senegal', 196, 196),
('2022-12-27 19:46:08.656523', '2022-12-27 19:46:08.000000', 'en', 'Serbia', 197, 197),
('2022-12-27 19:46:08.669054', '2022-12-27 19:46:08.000000', 'en', 'Seychelles', 198, 198),
('2022-12-27 19:46:08.683347', '2022-12-27 19:46:08.000000', 'en', 'Sierra Leone', 199, 199),
('2022-12-27 19:46:08.699050', '2022-12-27 19:46:08.000000', 'en', 'Singapore', 200, 200),
('2022-12-27 19:46:08.709171', '2022-12-27 19:46:08.000000', 'en', 'Sint Maarten (Dutch part)', 201, 201),
('2022-12-27 19:46:08.718560', '2022-12-27 19:46:08.000000', 'en', 'Slovakia', 202, 202),
('2022-12-27 19:46:08.735855', '2022-12-27 19:46:08.000000', 'en', 'Slovenia', 203, 203),
('2022-12-27 19:46:08.746883', '2022-12-27 19:46:08.000000', 'en', 'Solomon Islands', 204, 204),
('2022-12-27 19:46:08.758284', '2022-12-27 19:46:08.000000', 'en', 'Somalia', 205, 205),
('2022-12-27 19:46:08.767841', '2022-12-27 19:46:08.000000', 'en', 'South Africa', 206, 206),
('2022-12-27 19:46:08.790228', '2022-12-27 19:46:08.000000', 'en', 'South Georgia and the South Sandwich Islands', 207, 207),
('2022-12-27 19:46:08.799152', '2022-12-27 19:46:08.000000', 'en', 'South Sudan', 208, 208),
('2022-12-27 19:46:08.813522', '2022-12-27 19:46:08.000000', 'en', 'Spain', 209, 209),
('2022-12-27 19:46:08.822551', '2022-12-27 19:46:08.000000', 'en', 'Sri Lanka', 210, 210),
('2022-12-27 19:46:08.831636', '2022-12-27 19:46:08.000000', 'en', 'Sudan', 211, 211),
('2022-12-27 19:46:08.841518', '2022-12-27 19:46:08.000000', 'en', 'Suriname', 212, 212),
('2022-12-27 19:46:08.880816', '2022-12-27 19:46:08.000000', 'en', 'Svalbard and Jan Mayen', 213, 213),
('2022-12-27 19:46:08.912651', '2022-12-27 19:46:08.000000', 'en', 'Sweden', 214, 214),
('2022-12-27 19:46:08.945419', '2022-12-27 19:46:08.000000', 'en', 'Switzerland', 215, 215),
('2022-12-27 19:46:08.963074', '2022-12-27 19:46:08.000000', 'en', 'Syrian Arab Republic', 216, 216),
('2022-12-27 19:46:08.983649', '2022-12-27 19:46:08.000000', 'en', 'Taiwan, Province of China', 217, 217),
('2022-12-27 19:46:08.999806', '2022-12-27 19:46:09.000000', 'en', 'Tajikistan', 218, 218),
('2022-12-27 19:46:09.022695', '2022-12-27 19:46:09.000000', 'en', 'Tanzania, United Republic of', 219, 219),
('2022-12-27 19:46:09.046245', '2022-12-27 19:46:09.000000', 'en', 'Thailand', 220, 220),
('2022-12-27 19:46:09.068926', '2022-12-27 19:46:09.000000', 'en', 'Timor-Leste', 221, 221),
('2022-12-27 19:46:09.093321', '2022-12-27 19:46:09.000000', 'en', 'Togo', 222, 222),
('2022-12-27 19:46:09.111480', '2022-12-27 19:46:09.000000', 'en', 'Tokelau', 223, 223),
('2022-12-27 19:46:09.126252', '2022-12-27 19:46:09.000000', 'en', 'Tonga', 224, 224),
('2022-12-27 19:46:09.143219', '2022-12-27 19:46:09.000000', 'en', 'Trinidad and Tobago', 225, 225),
('2022-12-27 19:46:09.167898', '2022-12-27 19:46:09.000000', 'en', 'Tunisia', 226, 226),
('2022-12-27 19:46:09.191360', '2022-12-27 19:46:09.000000', 'en', 'Turkey', 227, 227),
('2022-12-27 19:46:09.208219', '2022-12-27 19:46:09.000000', 'en', 'Turkmenistan', 228, 228),
('2022-12-27 19:46:09.228056', '2022-12-27 19:46:09.000000', 'en', 'Turks and Caicos Islands', 229, 229),
('2022-12-27 19:46:09.251005', '2022-12-27 19:46:09.000000', 'en', 'Tuvalu', 230, 230),
('2022-12-27 19:46:09.279574', '2022-12-27 19:46:09.000000', 'en', 'Uganda', 231, 231),
('2022-12-27 19:46:09.302873', '2022-12-27 19:46:09.000000', 'en', 'Ukraine', 232, 232),
('2022-12-27 19:46:09.319685', '2022-12-27 19:46:09.000000', 'en', 'United Arab Emirates', 233, 233),
('2022-12-27 19:46:09.344854', '2022-12-27 19:46:09.000000', 'en', 'United Kingdom', 234, 234),
('2022-12-27 19:46:09.360130', '2022-12-27 19:46:09.000000', 'en', 'United States of America', 235, 235),
('2022-12-27 19:46:09.379162', '2022-12-27 19:46:09.000000', 'en', 'United States Minor Outlying Islands', 236, 236),
('2022-12-27 19:46:09.397289', '2022-12-27 19:46:09.000000', 'en', 'Uruguay', 237, 237),
('2022-12-27 19:46:09.420591', '2022-12-27 19:46:09.000000', 'en', 'Uzbekistan', 238, 238),
('2022-12-27 19:46:09.442404', '2022-12-27 19:46:09.000000', 'en', 'Vanuatu', 239, 239),
('2022-12-27 19:46:09.459863', '2022-12-27 19:46:09.000000', 'en', 'Venezuela (Bolivarian Republic of)', 240, 240),
('2022-12-27 19:46:09.479485', '2022-12-27 19:46:09.000000', 'en', 'Viet Nam', 241, 241),
('2022-12-27 19:46:09.494007', '2022-12-27 19:46:09.000000', 'en', 'Virgin Islands (British)', 242, 242),
('2022-12-27 19:46:09.512260', '2022-12-27 19:46:09.000000', 'en', 'Virgin Islands (U.S.)', 243, 243),
('2022-12-27 19:46:09.574203', '2022-12-27 19:46:09.000000', 'en', 'Wallis and Futuna', 244, 244),
('2022-12-27 19:46:09.623496', '2022-12-27 19:46:09.000000', 'en', 'Western Sahara', 245, 245),
('2022-12-27 19:46:09.647711', '2022-12-27 19:46:09.000000', 'en', 'Yemen', 246, 246),
('2022-12-27 19:46:09.677812', '2022-12-27 19:46:09.000000', 'en', 'Zambia', 247, 247),
('2022-12-27 19:46:09.692555', '2022-12-27 19:46:09.000000', 'en', 'Zimbabwe', 248, 248);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`createdAt`, `updatedAt`, `deletedAt`, `title`, `firstName`, `lastName`, `phoneNumber`, `emailAddress`, `id`, `userId`) VALUES
('2022-12-27 20:06:12.376228', '2022-12-27 20:06:12.000000', NULL, '', 'fname', 'lname', '321542458', 'u1@gmail.com', 1, 2),
('2022-12-27 20:13:24.559204', '2022-12-27 20:13:25.000000', NULL, '', 'fname', 'lname', '321542458', 'u2@gmail.com', 2, 3),
('2023-03-01 22:21:52.767128', '2023-03-01 22:21:54.000000', NULL, '', '', '', '9876543213', '9876543213@kaikani.com', 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `customer_channels_channel`
--

CREATE TABLE `customer_channels_channel` (
  `customerId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_channels_channel`
--

INSERT INTO `customer_channels_channel` (`customerId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_group`
--

CREATE TABLE `customer_group` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups_customer_group`
--

CREATE TABLE `customer_groups_customer_group` (
  `customerId` int(11) NOT NULL,
  `customerGroupId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `facet`
--

CREATE TABLE `facet` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `isPrivate` tinyint(4) NOT NULL DEFAULT 0,
  `code` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facet`
--

INSERT INTO `facet` (`createdAt`, `updatedAt`, `isPrivate`, `code`, `id`) VALUES
('2022-12-27 19:46:10.410186', '2022-12-27 19:46:10.410186', 0, 'category', 1),
('2022-12-27 19:46:10.477442', '2022-12-27 19:46:10.477442', 0, 'brand', 2),
('2022-12-27 19:46:14.647442', '2022-12-27 19:46:14.647442', 0, 'color', 3),
('2022-12-27 19:46:16.221301', '2022-12-27 19:46:16.221301', 0, 'plant-type', 4);

-- --------------------------------------------------------

--
-- Table structure for table `facet_channels_channel`
--

CREATE TABLE `facet_channels_channel` (
  `facetId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facet_channels_channel`
--

INSERT INTO `facet_channels_channel` (`facetId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `facet_translation`
--

CREATE TABLE `facet_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facet_translation`
--

INSERT INTO `facet_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2022-12-27 19:46:10.397310', '2022-12-27 19:46:10.000000', 'en', 'category', 1, 1),
('2022-12-27 19:46:10.470600', '2022-12-27 19:46:10.000000', 'en', 'brand', 2, 2),
('2022-12-27 19:46:14.630999', '2022-12-27 19:46:14.000000', 'en', 'color', 3, 3),
('2022-12-27 19:46:16.215055', '2022-12-27 19:46:16.000000', 'en', 'plant type', 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `facet_value`
--

CREATE TABLE `facet_value` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `code` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `facetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facet_value`
--

INSERT INTO `facet_value` (`createdAt`, `updatedAt`, `code`, `id`, `facetId`) VALUES
('2022-12-27 19:46:10.428465', '2022-12-27 19:46:10.428465', 'electronics', 1, 1),
('2022-12-27 19:46:10.447720', '2022-12-27 19:46:10.447720', 'computers', 2, 1),
('2022-12-27 19:46:10.507310', '2022-12-27 19:46:10.507310', 'apple', 3, 2),
('2022-12-27 19:46:11.033326', '2022-12-27 19:46:11.033326', 'logitech', 4, 2),
('2022-12-27 19:46:11.189356', '2022-12-27 19:46:11.189356', 'samsung', 5, 2),
('2022-12-27 19:46:11.544210', '2022-12-27 19:46:11.544210', 'corsair', 6, 2),
('2022-12-27 19:46:11.768831', '2022-12-27 19:46:11.768831', 'admi', 7, 2),
('2022-12-27 19:46:12.123206', '2022-12-27 19:46:12.123206', 'seagate', 8, 2),
('2022-12-27 19:46:12.622027', '2022-12-27 19:46:12.622027', 'photo', 9, 1),
('2022-12-27 19:46:12.635913', '2022-12-27 19:46:12.635913', 'polaroid', 10, 2),
('2022-12-27 19:46:12.725750', '2022-12-27 19:46:12.725750', 'nikkon', 11, 2),
('2022-12-27 19:46:12.831860', '2022-12-27 19:46:12.831860', 'agfa', 12, 2),
('2022-12-27 19:46:12.914709', '2022-12-27 19:46:12.914709', 'manfrotto', 13, 2),
('2022-12-27 19:46:13.018876', '2022-12-27 19:46:13.018876', 'kodak', 14, 2),
('2022-12-27 19:46:13.116763', '2022-12-27 19:46:13.116763', 'sony', 15, 2),
('2022-12-27 19:46:13.410167', '2022-12-27 19:46:13.410167', 'rolleiflex', 16, 2),
('2022-12-27 19:46:13.569510', '2022-12-27 19:46:13.569510', 'sports-outdoor', 17, 1),
('2022-12-27 19:46:13.592282', '2022-12-27 19:46:13.592282', 'equipment', 18, 1),
('2022-12-27 19:46:13.602771', '2022-12-27 19:46:13.602771', 'pinarello', 19, 2),
('2022-12-27 19:46:13.842292', '2022-12-27 19:46:13.842292', 'everlast', 20, 2),
('2022-12-27 19:46:14.215647', '2022-12-27 19:46:14.215647', 'nike', 21, 2),
('2022-12-27 19:46:14.358381', '2022-12-27 19:46:14.358381', 'wilson', 22, 2),
('2022-12-27 19:46:14.588889', '2022-12-27 19:46:14.588889', 'footwear', 23, 1),
('2022-12-27 19:46:14.609024', '2022-12-27 19:46:14.609024', 'adidas', 24, 2),
('2022-12-27 19:46:14.677462', '2022-12-27 19:46:14.677462', 'blue', 25, 3),
('2022-12-27 19:46:14.694207', '2022-12-27 19:46:14.694207', 'pink', 26, 3),
('2022-12-27 19:46:15.011077', '2022-12-27 19:46:15.011077', 'black', 27, 3),
('2022-12-27 19:46:15.227364', '2022-12-27 19:46:15.227364', 'white', 28, 3),
('2022-12-27 19:46:15.930453', '2022-12-27 19:46:15.930453', 'converse', 29, 2),
('2022-12-27 19:46:16.186897', '2022-12-27 19:46:16.186897', 'home-garden', 30, 1),
('2022-12-27 19:46:16.201621', '2022-12-27 19:46:16.201621', 'plants', 31, 1),
('2022-12-27 19:46:16.236249', '2022-12-27 19:46:16.236249', 'indoor', 32, 4),
('2022-12-27 19:46:16.317174', '2022-12-27 19:46:16.317174', 'outdoor', 33, 4),
('2022-12-27 19:46:17.050649', '2022-12-27 19:46:17.050649', 'furniture', 34, 1),
('2022-12-27 19:46:17.065540', '2022-12-27 19:46:17.065540', 'gray', 35, 3),
('2022-12-27 19:46:17.373232', '2022-12-27 19:46:17.373232', 'brown', 36, 3),
('2022-12-27 19:46:17.545115', '2022-12-27 19:46:17.545115', 'wood', 37, 3),
('2022-12-27 19:46:18.150485', '2022-12-27 19:46:18.150485', 'yellow', 38, 3),
('2022-12-27 19:46:18.217758', '2022-12-27 19:46:18.217758', 'green', 39, 3);

-- --------------------------------------------------------

--
-- Table structure for table `facet_value_channels_channel`
--

CREATE TABLE `facet_value_channels_channel` (
  `facetValueId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facet_value_channels_channel`
--

INSERT INTO `facet_value_channels_channel` (`facetValueId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1);

-- --------------------------------------------------------

--
-- Table structure for table `facet_value_translation`
--

CREATE TABLE `facet_value_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facet_value_translation`
--

INSERT INTO `facet_value_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2022-12-27 19:46:10.422677', '2022-12-27 19:46:10.000000', 'en', 'Electronics', 1, 1),
('2022-12-27 19:46:10.443251', '2022-12-27 19:46:10.000000', 'en', 'Computers', 2, 2),
('2022-12-27 19:46:10.502982', '2022-12-27 19:46:10.000000', 'en', 'Apple', 3, 3),
('2022-12-27 19:46:11.026149', '2022-12-27 19:46:11.000000', 'en', 'Logitech', 4, 4),
('2022-12-27 19:46:11.182953', '2022-12-27 19:46:11.000000', 'en', 'Samsung', 5, 5),
('2022-12-27 19:46:11.540648', '2022-12-27 19:46:11.000000', 'en', 'Corsair', 6, 6),
('2022-12-27 19:46:11.765119', '2022-12-27 19:46:11.000000', 'en', 'ADMI', 7, 7),
('2022-12-27 19:46:12.118152', '2022-12-27 19:46:12.000000', 'en', 'Seagate', 8, 8),
('2022-12-27 19:46:12.617812', '2022-12-27 19:46:12.000000', 'en', 'Photo', 9, 9),
('2022-12-27 19:46:12.628700', '2022-12-27 19:46:12.000000', 'en', 'Polaroid', 10, 10),
('2022-12-27 19:46:12.722550', '2022-12-27 19:46:12.000000', 'en', 'Nikkon', 11, 11),
('2022-12-27 19:46:12.826387', '2022-12-27 19:46:12.000000', 'en', 'Agfa', 12, 12),
('2022-12-27 19:46:12.911094', '2022-12-27 19:46:12.000000', 'en', 'Manfrotto', 13, 13),
('2022-12-27 19:46:13.015033', '2022-12-27 19:46:13.000000', 'en', 'Kodak', 14, 14),
('2022-12-27 19:46:13.113540', '2022-12-27 19:46:13.000000', 'en', 'Sony', 15, 15),
('2022-12-27 19:46:13.402273', '2022-12-27 19:46:13.000000', 'en', 'Rolleiflex', 16, 16),
('2022-12-27 19:46:13.565573', '2022-12-27 19:46:13.000000', 'en', 'Sports & Outdoor', 17, 17),
('2022-12-27 19:46:13.586203', '2022-12-27 19:46:13.000000', 'en', 'Equipment', 18, 18),
('2022-12-27 19:46:13.599011', '2022-12-27 19:46:13.000000', 'en', 'Pinarello', 19, 19),
('2022-12-27 19:46:13.836837', '2022-12-27 19:46:13.000000', 'en', 'Everlast', 20, 20),
('2022-12-27 19:46:14.200092', '2022-12-27 19:46:14.000000', 'en', 'Nike', 21, 21),
('2022-12-27 19:46:14.352320', '2022-12-27 19:46:14.000000', 'en', 'Wilson', 22, 22),
('2022-12-27 19:46:14.583139', '2022-12-27 19:46:14.000000', 'en', 'Footwear', 23, 23),
('2022-12-27 19:46:14.603073', '2022-12-27 19:46:14.000000', 'en', 'Adidas', 24, 24),
('2022-12-27 19:46:14.664798', '2022-12-27 19:46:14.000000', 'en', 'blue', 25, 25),
('2022-12-27 19:46:14.691024', '2022-12-27 19:46:14.000000', 'en', 'pink', 26, 26),
('2022-12-27 19:46:15.001702', '2022-12-27 19:46:15.000000', 'en', 'black', 27, 27),
('2022-12-27 19:46:15.223682', '2022-12-27 19:46:15.000000', 'en', 'white', 28, 28),
('2022-12-27 19:46:15.927241', '2022-12-27 19:46:15.000000', 'en', 'Converse', 29, 29),
('2022-12-27 19:46:16.183435', '2022-12-27 19:46:16.000000', 'en', 'Home & Garden', 30, 30),
('2022-12-27 19:46:16.198192', '2022-12-27 19:46:16.000000', 'en', 'Plants', 31, 31),
('2022-12-27 19:46:16.232720', '2022-12-27 19:46:16.000000', 'en', 'Indoor', 32, 32),
('2022-12-27 19:46:16.314039', '2022-12-27 19:46:16.000000', 'en', 'Outdoor', 33, 33),
('2022-12-27 19:46:17.046670', '2022-12-27 19:46:17.000000', 'en', 'Furniture', 34, 34),
('2022-12-27 19:46:17.061497', '2022-12-27 19:46:17.000000', 'en', 'gray', 35, 35),
('2022-12-27 19:46:17.366480', '2022-12-27 19:46:17.000000', 'en', 'brown', 36, 36),
('2022-12-27 19:46:17.541119', '2022-12-27 19:46:17.000000', 'en', 'wood', 37, 37),
('2022-12-27 19:46:18.143908', '2022-12-27 19:46:18.000000', 'en', 'yellow', 38, 38),
('2022-12-27 19:46:18.210321', '2022-12-27 19:46:18.000000', 'en', 'green', 39, 39);

-- --------------------------------------------------------

--
-- Table structure for table `fulfillment`
--

CREATE TABLE `fulfillment` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `state` varchar(255) NOT NULL,
  `trackingCode` varchar(255) NOT NULL DEFAULT '',
  `method` varchar(255) NOT NULL,
  `handlerCode` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `global_settings`
--

CREATE TABLE `global_settings` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `availableLanguages` text NOT NULL,
  `trackInventory` tinyint(4) NOT NULL DEFAULT 1,
  `outOfStockThreshold` int(11) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `global_settings`
--

INSERT INTO `global_settings` (`createdAt`, `updatedAt`, `availableLanguages`, `trackInventory`, `outOfStockThreshold`, `id`) VALUES
('2022-12-27 19:46:04.940028', '2022-12-27 19:46:04.940028', 'en', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `history_entry`
--

CREATE TABLE `history_entry` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `type` varchar(255) NOT NULL,
  `isPublic` tinyint(4) NOT NULL,
  `data` text NOT NULL,
  `id` int(11) NOT NULL,
  `discriminator` varchar(255) NOT NULL,
  `administratorId` int(11) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history_entry`
--

INSERT INTO `history_entry` (`createdAt`, `updatedAt`, `type`, `isPublic`, `data`, `id`, `discriminator`, `administratorId`, `customerId`, `orderId`) VALUES
('2022-12-27 14:06:12.408000', '2022-12-27 20:06:12.410256', 'CUSTOMER_REGISTERED', 0, '{\"strategy\":\"native\"}', 1, 'CustomerHistoryEntry', NULL, 1, NULL),
('2022-12-27 14:13:24.597000', '2022-12-27 20:13:24.599285', 'CUSTOMER_REGISTERED', 0, '{\"strategy\":\"native\"}', 2, 'CustomerHistoryEntry', NULL, 2, NULL),
('2022-12-27 14:13:25.356000', '2022-12-27 20:13:25.357673', 'CUSTOMER_VERIFIED', 0, '{\"strategy\":\"native\"}', 3, 'CustomerHistoryEntry', NULL, 2, NULL),
('2023-03-01 16:21:52.810000', '2023-03-01 22:21:52.813622', 'CUSTOMER_REGISTERED', 0, '{\"strategy\":\"native\"}', 4, 'CustomerHistoryEntry', NULL, 3, NULL),
('2023-03-01 16:21:54.840000', '2023-03-01 22:21:54.844838', 'CUSTOMER_VERIFIED', 0, '{\"strategy\":\"native\"}', 5, 'CustomerHistoryEntry', NULL, 3, NULL),
('2023-03-17 09:48:12.015339', '2023-03-17 09:48:12.015339', 'ORDER_STATE_TRANSITION', 1, '{\"from\":\"Created\",\"to\":\"AddingItems\"}', 6, 'OrderHistoryEntry', NULL, NULL, 1),
('2023-03-17 11:19:00.068507', '2023-03-17 11:19:00.068507', 'ORDER_STATE_TRANSITION', 1, '{\"from\":\"AddingItems\",\"to\":\"ArrangingPayment\"}', 7, 'OrderHistoryEntry', NULL, NULL, 1),
('2023-03-17 11:19:03.063485', '2023-03-17 11:19:03.063485', 'ORDER_PAYMENT_TRANSITION', 1, '{\"paymentId\":1,\"from\":\"Created\",\"to\":\"Authorized\"}', 8, 'OrderHistoryEntry', NULL, NULL, 1),
('2023-03-17 11:19:03.121850', '2023-03-17 11:19:03.121850', 'ORDER_STATE_TRANSITION', 1, '{\"from\":\"ArrangingPayment\",\"to\":\"PaymentAuthorized\"}', 9, 'OrderHistoryEntry', NULL, NULL, 1),
('2023-03-17 05:19:03.148000', '2023-03-17 11:19:03.150117', 'CUSTOMER_ADDRESS_CREATED', 0, '{\"address\":\"khekei, 54245, India\"}', 10, 'CustomerHistoryEntry', NULL, 3, NULL),
('2023-03-17 11:19:18.796729', '2023-03-17 11:19:18.796729', 'ORDER_STATE_TRANSITION', 1, '{\"from\":\"Created\",\"to\":\"AddingItems\"}', 11, 'OrderHistoryEntry', NULL, NULL, 2),
('2023-03-17 11:52:23.289843', '2023-03-17 11:52:23.289843', 'ORDER_STATE_TRANSITION', 1, '{\"from\":\"Created\",\"to\":\"AddingItems\"}', 12, 'OrderHistoryEntry', NULL, NULL, 3),
('2023-03-17 11:52:37.560852', '2023-03-17 11:52:37.560852', 'ORDER_STATE_TRANSITION', 1, '{\"from\":\"Created\",\"to\":\"AddingItems\"}', 13, 'OrderHistoryEntry', NULL, NULL, 4),
('2023-03-17 12:29:24.417919', '2023-03-17 12:29:24.417919', 'ORDER_STATE_TRANSITION', 1, '{\"from\":\"Created\",\"to\":\"AddingItems\"}', 14, 'OrderHistoryEntry', NULL, NULL, 5),
('2023-03-17 12:41:58.913686', '2023-03-17 12:41:58.913686', 'ORDER_STATE_TRANSITION', 1, '{\"from\":\"Created\",\"to\":\"AddingItems\"}', 15, 'OrderHistoryEntry', NULL, NULL, 6),
('2023-03-17 12:42:00.298118', '2023-03-17 12:42:00.298118', 'ORDER_STATE_TRANSITION', 1, '{\"from\":\"Created\",\"to\":\"AddingItems\"}', 16, 'OrderHistoryEntry', NULL, NULL, 7),
('2023-03-17 12:44:18.554201', '2023-03-17 12:44:18.554201', 'ORDER_STATE_TRANSITION', 1, '{\"from\":\"Created\",\"to\":\"AddingItems\"}', 17, 'OrderHistoryEntry', NULL, NULL, 8),
('2023-03-17 12:44:22.068081', '2023-03-17 12:44:22.068081', 'ORDER_STATE_TRANSITION', 1, '{\"from\":\"Created\",\"to\":\"AddingItems\"}', 18, 'OrderHistoryEntry', NULL, NULL, 9),
('2023-03-17 12:48:13.442884', '2023-03-17 12:48:13.442884', 'ORDER_STATE_TRANSITION', 1, '{\"from\":\"Created\",\"to\":\"AddingItems\"}', 19, 'OrderHistoryEntry', NULL, NULL, 10),
('2023-03-17 13:01:41.892261', '2023-03-17 13:01:41.892261', 'ORDER_STATE_TRANSITION', 1, '{\"from\":\"Created\",\"to\":\"AddingItems\"}', 20, 'OrderHistoryEntry', NULL, NULL, 11),
('2023-06-13 12:17:55.292425', '2023-06-13 12:17:55.292425', 'ORDER_PAYMENT_TRANSITION', 1, '{\"paymentId\":1,\"from\":\"Authorized\",\"to\":\"Settled\"}', 21, 'OrderHistoryEntry', 1, NULL, 1),
('2023-06-13 12:17:55.550482', '2023-06-13 12:17:55.550482', 'ORDER_STATE_TRANSITION', 1, '{\"from\":\"PaymentAuthorized\",\"to\":\"PaymentSettled\"}', 22, 'OrderHistoryEntry', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `job_record`
--

CREATE TABLE `job_record` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `queueName` varchar(255) NOT NULL,
  `data` text DEFAULT NULL,
  `state` varchar(255) NOT NULL,
  `progress` int(11) NOT NULL,
  `result` text DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `startedAt` datetime(6) DEFAULT NULL,
  `settledAt` datetime(6) DEFAULT NULL,
  `isSettled` tinyint(4) NOT NULL,
  `retries` int(11) NOT NULL,
  `attempts` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_record`
--

INSERT INTO `job_record` (`createdAt`, `updatedAt`, `queueName`, `data`, `state`, `progress`, `result`, `error`, `startedAt`, `settledAt`, `isSettled`, `retries`, `attempts`, `id`) VALUES
('2022-12-27 19:46:18.334603', '2022-12-27 19:46:18.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2023-12-27T19:46:18.275Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[2]}', 'COMPLETED', 100, NULL, NULL, '2022-12-27 13:46:18.517000', '2022-12-27 13:46:18.550000', 1, 0, 1, 1),
('2022-12-27 19:46:18.416353', '2022-12-27 19:46:18.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2023-12-27T19:46:18.275Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[3]}', 'COMPLETED', 100, NULL, NULL, '2022-12-27 13:46:18.735000', '2022-12-27 13:46:18.796000', 1, 0, 1, 2),
('2022-12-27 19:46:18.455849', '2022-12-27 19:46:18.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2023-12-27T19:46:18.275Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[4]}', 'COMPLETED', 100, NULL, NULL, '2022-12-27 13:46:18.950000', '2022-12-27 13:46:18.982000', 1, 0, 1, 3),
('2022-12-27 19:46:18.497721', '2022-12-27 19:46:19.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2023-12-27T19:46:18.275Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[5]}', 'COMPLETED', 100, NULL, NULL, '2022-12-27 13:46:19.179000', '2022-12-27 13:46:19.205000', 1, 0, 1, 4),
('2022-12-27 19:46:18.552536', '2022-12-27 19:46:19.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2023-12-27T19:46:18.275Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[6]}', 'COMPLETED', 100, NULL, NULL, '2022-12-27 13:46:19.427000', '2022-12-27 13:46:19.458000', 1, 0, 1, 5),
('2022-12-27 19:46:18.585254', '2022-12-27 19:46:19.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2023-12-27T19:46:18.275Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[7]}', 'COMPLETED', 100, NULL, NULL, '2022-12-27 13:46:19.643000', '2022-12-27 13:46:19.704000', 1, 0, 1, 6),
('2022-12-27 19:46:18.602575', '2022-12-27 19:46:19.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2023-12-27T19:46:18.275Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":34,\"timeTaken\":386}', NULL, '2022-12-27 13:46:18.661000', '2022-12-27 13:46:19.060000', 1, 0, 1, 7),
('2022-12-27 19:46:18.624598', '2022-12-27 19:46:19.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2023-12-27T19:46:18.275Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[8]}', 'COMPLETED', 100, NULL, NULL, '2022-12-27 13:46:19.859000', '2022-12-27 13:46:19.898000', 1, 0, 1, 8),
('2022-12-27 19:46:18.659571', '2022-12-27 19:46:20.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2023-12-27T19:46:18.275Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[9]}', 'COMPLETED', 100, NULL, NULL, '2022-12-27 13:46:20.079000', '2022-12-27 13:46:20.106000', 1, 0, 1, 9),
('2022-12-27 19:46:18.777018', '2022-12-27 19:46:20.000000', 'apply-collection-filters', '{\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2023-12-27T19:46:18.275Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[10]}', 'COMPLETED', 100, NULL, NULL, '2022-12-27 13:46:20.289000', '2022-12-27 13:46:20.331000', 1, 0, 1, 10),
('2022-12-27 19:46:18.849252', '2022-12-27 19:46:19.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2023-12-27T19:46:18.275Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":25,\"timeTaken\":201}', NULL, '2022-12-27 13:46:19.091000', '2022-12-27 13:46:19.306000', 1, 0, 1, 11),
('2022-12-27 19:46:18.863391', '2022-12-27 19:46:20.000000', 'update-search-index', '{\"type\":\"reindex\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2023-12-27T19:46:18.275Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false}}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":88,\"timeTaken\":870}', NULL, '2022-12-27 13:46:19.325000', '2022-12-27 13:46:20.200000', 1, 0, 1, 12),
('2022-12-27 19:46:19.033492', '2022-12-27 19:46:20.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2023-12-27T19:46:18.275Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[26,27,28,29,30,31,32,33,34]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":9,\"timeTaken\":156}', NULL, '2022-12-27 13:46:20.348000', '2022-12-27 13:46:20.513000', 1, 0, 1, 13),
('2022-12-27 19:46:19.260196', '2022-12-27 19:46:20.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2023-12-27T19:46:18.275Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":22,\"timeTaken\":188}', NULL, '2022-12-27 13:46:20.567000', '2022-12-27 13:46:20.761000', 1, 0, 1, 14),
('2022-12-27 19:46:19.510050', '2022-12-27 19:56:11.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2023-12-27T19:46:18.275Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[75,77,78,79,80,81,82,83,84,85,86,87,88]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":13,\"timeTaken\":335}', NULL, '2022-12-27 13:56:10.693000', '2022-12-27 13:56:11.053000', 1, 0, 1, 15),
('2022-12-27 19:46:19.758541', '2022-12-27 19:56:11.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2023-12-27T19:46:18.275Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[67,68,69,70,71,72,73,74,76]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":9,\"timeTaken\":210}', NULL, '2022-12-27 13:56:11.145000', '2022-12-27 13:56:11.371000', 1, 0, 1, 16),
('2022-12-27 19:46:19.950397', '2022-12-27 19:56:11.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2023-12-27T19:46:18.275Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":32,\"timeTaken\":347}', NULL, '2022-12-27 13:56:11.566000', '2022-12-27 13:56:11.922000', 1, 0, 1, 17),
('2022-12-27 19:46:20.160140', '2022-12-27 19:56:12.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2023-12-27T19:46:18.275Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[35,36,37,38,39,40,41,42]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":8,\"timeTaken\":161}', NULL, '2022-12-27 13:56:11.991000', '2022-12-27 13:56:12.161000', 1, 0, 1, 18),
('2022-12-27 19:46:20.384808', '2022-12-27 19:56:12.000000', 'update-search-index', '{\"type\":\"update-variants-by-id\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2023-12-27T19:46:18.275Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"ids\":[43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66]}', 'COMPLETED', 100, '{\"success\":true,\"indexedItemCount\":24,\"timeTaken\":88}', NULL, '2022-12-27 13:56:12.219000', '2022-12-27 13:56:12.322000', 1, 0, 1, 19),
('2022-12-27 20:06:12.994824', '2022-12-27 20:06:13.000000', 'send-email', '{\"type\":\"email-verification\",\"recipient\":\"u1@gmail.com\",\"from\":\"{{ fromAddress }}\",\"templateVars\":{\"fromAddress\":\"\\\"example\\\" <noreply@example.com>\",\"verifyEmailAddressUrl\":\"http://localhost:8080/verify\",\"passwordResetUrl\":\"http://localhost:8080/password-reset\",\"changeEmailAddressUrl\":\"http://localhost:8080/verify-email-address-change\",\"verificationToken\":\"MjAyMi0xMi0yN1QxNDowNjoxMi45NDda_S4R2FLJ5RWZ5DPB3\"},\"subject\":\"Please verify your email address\",\"templateFile\":\"body.hbs\",\"attachments\":[]}', 'COMPLETED', 100, 'true', NULL, '2022-12-27 14:06:13.172000', '2022-12-27 14:06:13.290000', 1, 5, 1, 20),
('2022-12-28 10:08:21.147206', '2022-12-28 10:08:21.000000', 'update-search-index', '{\"type\":\"update-product\",\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":[],\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"errorEmitted\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"errored\":null,\"closed\":false,\"closeEmitted\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"dataEmitted\":true,\"decoder\":null,\"encoding\":null},\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_sockname\":null,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":4372,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":40042,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":550039,\"bytesWritten\":550039},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:3000\",\"connection\":\"keep-alive\",\"content-length\":\"161\",\"sec-ch-ua\":\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\":\"*/*\",\"content-type\":\"application/json\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\":\"\\\"Linux\\\"\",\"origin\":\"http://localhost:3000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:3000/admin-api\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"},\"rawHeaders\":[\"Host\",\"localhost:3000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"161\",\"sec-ch-ua\",\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\",\"*/*\",\"content-type\",\"application/json\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\",\"\\\"Linux\\\"\",\"Origin\",\"http://localhost:3000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:3000/admin-api\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"en-US,en;q=0.9\",\"Cookie\",\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":4372,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":40042,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":550039,\"bytesWritten\":550039},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/admin-api\",\"path\":\"/admin-api\",\"href\":\"/admin-api\",\"_raw\":\"/admin-api\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"destroyed\":false,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"_defaultKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":89,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":true,\"_headerSent\":true,\"socket\":null,\"_header\":\"HTTP/1.1 200 OK\\r\\nX-Powered-By: Express\\r\\nAccess-Control-Allow-Origin: http://localhost:3000\\r\\nVary: Origin\\r\\nAccess-Control-Allow-Credentials: true\\r\\nAccess-Control-Expose-Headers: vendure-auth-token\\r\\nContent-Language: en-US\\r\\nContent-Type: application/json; charset=utf-8\\r\\nContent-Length: 89\\r\\nETag: W/\\\"59-378Qfs7L/xzTuceCk/OO8Qs+H3k\\\"\\r\\nDate: Wed, 28 Dec 2022 04:08:21 GMT\\r\\nConnection: keep-alive\\r\\nKeep-Alive: timeout=5\\r\\n\\r\\n\",\"_keepAliveTimeout\":5000,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"statusMessage\":\"OK\",\"headersSent\":true},\"sessionOptions\":{\"secret\":\"ne2baczyggs\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\"},\"body\":{\"operationName\":null,\"query\":\"mutation {\\n  addRandomCat(id: \\\"1\\\") {\\n    id\\n    name\\n    customFields {\\n      catImageUrl\\n    }\\n  }\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"en-US\",\"locale\":\"en-US\",\"language\":\"en-US\",\"languages\":[\"en-US\",\"en\"],\"i18n\":{\"language\":\"en-US\",\"isInitialized\":true,\"languages\":[\"en-US\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"vendureRequestContextMap\":{},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1672200795,\"id\":2,\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\",\"expires\":\"2023-12-28T09:40:05.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"c2d2ubuj7rtmop287x5p\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"productId\":1}', 'COMPLETED', 100, 'true', NULL, '2022-12-28 04:08:21.290000', '2022-12-28 04:08:21.407000', 1, 0, 1, 21),
('2022-12-28 10:08:21.212847', '2022-12-28 10:08:21.000000', 'apply-collection-filters', '{\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":[],\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"errorEmitted\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"errored\":null,\"closed\":false,\"closeEmitted\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"dataEmitted\":true,\"decoder\":null,\"encoding\":null},\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":4372,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":40042,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":550039,\"bytesWritten\":550039},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:3000\",\"connection\":\"keep-alive\",\"content-length\":\"161\",\"sec-ch-ua\":\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\":\"*/*\",\"content-type\":\"application/json\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\":\"\\\"Linux\\\"\",\"origin\":\"http://localhost:3000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:3000/admin-api\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"},\"rawHeaders\":[\"Host\",\"localhost:3000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"161\",\"sec-ch-ua\",\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\",\"*/*\",\"content-type\",\"application/json\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\",\"\\\"Linux\\\"\",\"Origin\",\"http://localhost:3000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:3000/admin-api\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"en-US,en;q=0.9\",\"Cookie\",\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":4372,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":40042,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":550039,\"bytesWritten\":550039},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/\",\"path\":\"/\",\"href\":\"/\",\"_raw\":\"/\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"destroyed\":false,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"_defaultKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":89,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":true,\"_headerSent\":true,\"socket\":null,\"_header\":\"HTTP/1.1 200 OK\\r\\nX-Powered-By: Express\\r\\nAccess-Control-Allow-Origin: http://localhost:3000\\r\\nVary: Origin\\r\\nAccess-Control-Allow-Credentials: true\\r\\nAccess-Control-Expose-Headers: vendure-auth-token\\r\\nContent-Language: en-US\\r\\nContent-Type: application/json; charset=utf-8\\r\\nContent-Length: 89\\r\\nETag: W/\\\"59-378Qfs7L/xzTuceCk/OO8Qs+H3k\\\"\\r\\nDate: Wed, 28 Dec 2022 04:08:21 GMT\\r\\nConnection: keep-alive\\r\\nKeep-Alive: timeout=5\\r\\n\\r\\n\",\"_keepAliveTimeout\":5000,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"statusMessage\":\"OK\",\"headersSent\":true},\"sessionOptions\":{\"secret\":\"ne2baczyggs\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\"},\"body\":{\"operationName\":null,\"query\":\"mutation {\\n  addRandomCat(id: \\\"1\\\") {\\n    id\\n    name\\n    customFields {\\n      catImageUrl\\n    }\\n  }\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"en-US\",\"locale\":\"en-US\",\"language\":\"en-US\",\"languages\":[\"en-US\",\"en\"],\"i18n\":{\"language\":\"en-US\",\"isInitialized\":true,\"languages\":[\"en-US\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"vendureRequestContextMap\":{},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1672200795,\"id\":2,\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\",\"expires\":\"2023-12-28T09:40:05.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"c2d2ubuj7rtmop287x5p\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[1,3,4,2,9,8,10,7,6,5]}', 'COMPLETED', 100, NULL, NULL, '2022-12-28 04:08:21.302000', '2022-12-28 04:08:21.526000', 1, 0, 1, 22);
INSERT INTO `job_record` (`createdAt`, `updatedAt`, `queueName`, `data`, `state`, `progress`, `result`, `error`, `startedAt`, `settledAt`, `isSettled`, `retries`, `attempts`, `id`) VALUES
('2022-12-28 10:13:59.958308', '2022-12-28 10:14:00.000000', 'update-search-index', '{\"type\":\"update-product\",\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":[],\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"errorEmitted\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"errored\":null,\"closed\":false,\"closeEmitted\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"dataEmitted\":true,\"decoder\":null,\"encoding\":null},\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_sockname\":null,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":1504,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":56812,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":506,\"bytesWritten\":506},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:3000\",\"connection\":\"keep-alive\",\"content-length\":\"161\",\"sec-ch-ua\":\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\":\"*/*\",\"content-type\":\"application/json\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\":\"\\\"Linux\\\"\",\"origin\":\"http://localhost:3000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:3000/admin-api\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"},\"rawHeaders\":[\"Host\",\"localhost:3000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"161\",\"sec-ch-ua\",\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\",\"*/*\",\"content-type\",\"application/json\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\",\"\\\"Linux\\\"\",\"Origin\",\"http://localhost:3000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:3000/admin-api\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"en-US,en;q=0.9\",\"Cookie\",\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":1504,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":56812,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":506,\"bytesWritten\":506},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/admin-api\",\"path\":\"/admin-api\",\"href\":\"/admin-api\",\"_raw\":\"/admin-api\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"destroyed\":false,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"_defaultKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":89,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":true,\"_headerSent\":true,\"socket\":null,\"_header\":\"HTTP/1.1 200 OK\\r\\nX-Powered-By: Express\\r\\nAccess-Control-Allow-Origin: http://localhost:3000\\r\\nVary: Origin\\r\\nAccess-Control-Allow-Credentials: true\\r\\nAccess-Control-Expose-Headers: vendure-auth-token\\r\\nContent-Language: en-US\\r\\nContent-Type: application/json; charset=utf-8\\r\\nContent-Length: 89\\r\\nETag: W/\\\"59-378Qfs7L/xzTuceCk/OO8Qs+H3k\\\"\\r\\nDate: Wed, 28 Dec 2022 04:13:59 GMT\\r\\nConnection: keep-alive\\r\\nKeep-Alive: timeout=5\\r\\n\\r\\n\",\"_keepAliveTimeout\":5000,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"statusMessage\":\"OK\",\"headersSent\":true},\"sessionOptions\":{\"secret\":\"ne2baczyggs\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\"},\"body\":{\"operationName\":null,\"query\":\"mutation {\\n  addRandomCat(id: \\\"1\\\") {\\n    id\\n    name\\n    customFields {\\n      catImageUrl\\n    }\\n  }\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"en-US\",\"locale\":\"en-US\",\"language\":\"en-US\",\"languages\":[\"en-US\",\"en\"],\"i18n\":{\"language\":\"en-US\",\"isInitialized\":true,\"languages\":[\"en-US\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"vendureRequestContextMap\":{},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1672201139,\"id\":2,\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\",\"expires\":\"2023-12-28T09:40:05.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"c2d2ubuj7rtmop287x5p\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"productId\":1}', 'COMPLETED', 100, 'true', NULL, '2022-12-28 04:14:00.037000', '2022-12-28 04:14:00.163000', 1, 0, 1, 23),
('2022-12-28 10:14:00.003725', '2022-12-28 10:14:00.000000', 'apply-collection-filters', '{\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":[],\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"errorEmitted\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"errored\":null,\"closed\":false,\"closeEmitted\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"dataEmitted\":true,\"decoder\":null,\"encoding\":null},\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":1504,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":56812,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":506,\"bytesWritten\":506},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:3000\",\"connection\":\"keep-alive\",\"content-length\":\"161\",\"sec-ch-ua\":\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\":\"*/*\",\"content-type\":\"application/json\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\":\"\\\"Linux\\\"\",\"origin\":\"http://localhost:3000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:3000/admin-api\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"},\"rawHeaders\":[\"Host\",\"localhost:3000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"161\",\"sec-ch-ua\",\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\",\"*/*\",\"content-type\",\"application/json\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\",\"\\\"Linux\\\"\",\"Origin\",\"http://localhost:3000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:3000/admin-api\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"en-US,en;q=0.9\",\"Cookie\",\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":1504,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":56812,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":506,\"bytesWritten\":506},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/\",\"path\":\"/\",\"href\":\"/\",\"_raw\":\"/\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"destroyed\":false,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"_defaultKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":89,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":true,\"_headerSent\":true,\"socket\":null,\"_header\":\"HTTP/1.1 200 OK\\r\\nX-Powered-By: Express\\r\\nAccess-Control-Allow-Origin: http://localhost:3000\\r\\nVary: Origin\\r\\nAccess-Control-Allow-Credentials: true\\r\\nAccess-Control-Expose-Headers: vendure-auth-token\\r\\nContent-Language: en-US\\r\\nContent-Type: application/json; charset=utf-8\\r\\nContent-Length: 89\\r\\nETag: W/\\\"59-378Qfs7L/xzTuceCk/OO8Qs+H3k\\\"\\r\\nDate: Wed, 28 Dec 2022 04:13:59 GMT\\r\\nConnection: keep-alive\\r\\nKeep-Alive: timeout=5\\r\\n\\r\\n\",\"_keepAliveTimeout\":5000,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"statusMessage\":\"OK\",\"headersSent\":true},\"sessionOptions\":{\"secret\":\"ne2baczyggs\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\"},\"body\":{\"operationName\":null,\"query\":\"mutation {\\n  addRandomCat(id: \\\"1\\\") {\\n    id\\n    name\\n    customFields {\\n      catImageUrl\\n    }\\n  }\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"en-US\",\"locale\":\"en-US\",\"language\":\"en-US\",\"languages\":[\"en-US\",\"en\"],\"i18n\":{\"language\":\"en-US\",\"isInitialized\":true,\"languages\":[\"en-US\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"vendureRequestContextMap\":{},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1672201139,\"id\":2,\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\",\"expires\":\"2023-12-28T09:40:05.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"c2d2ubuj7rtmop287x5p\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[1,3,4,2,9,8,10,7,6,5]}', 'COMPLETED', 100, NULL, NULL, '2022-12-28 04:14:00.088000', '2022-12-28 04:14:00.370000', 1, 0, 1, 24),
('2022-12-28 10:17:37.104111', '2022-12-28 10:17:37.000000', 'update-search-index', '{\"type\":\"update-product\",\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":[],\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"errorEmitted\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"errored\":null,\"closed\":false,\"closeEmitted\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"dataEmitted\":true,\"decoder\":null,\"encoding\":null},\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_sockname\":null,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":15844,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":38656,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":2748171,\"bytesWritten\":2748171},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:3000\",\"connection\":\"keep-alive\",\"content-length\":\"161\",\"sec-ch-ua\":\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\":\"*/*\",\"content-type\":\"application/json\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\":\"\\\"Linux\\\"\",\"origin\":\"http://localhost:3000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:3000/admin-api\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"},\"rawHeaders\":[\"Host\",\"localhost:3000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"161\",\"sec-ch-ua\",\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\",\"*/*\",\"content-type\",\"application/json\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\",\"\\\"Linux\\\"\",\"Origin\",\"http://localhost:3000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:3000/admin-api\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"en-US,en;q=0.9\",\"Cookie\",\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":15844,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":38656,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":2748171,\"bytesWritten\":2748171},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/admin-api\",\"path\":\"/admin-api\",\"href\":\"/admin-api\",\"_raw\":\"/admin-api\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"destroyed\":false,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"_defaultKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":89,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":true,\"_headerSent\":true,\"socket\":null,\"_header\":\"HTTP/1.1 200 OK\\r\\nX-Powered-By: Express\\r\\nAccess-Control-Allow-Origin: http://localhost:3000\\r\\nVary: Origin\\r\\nAccess-Control-Allow-Credentials: true\\r\\nAccess-Control-Expose-Headers: vendure-auth-token\\r\\nContent-Language: en-US\\r\\nContent-Type: application/json; charset=utf-8\\r\\nContent-Length: 89\\r\\nETag: W/\\\"59-378Qfs7L/xzTuceCk/OO8Qs+H3k\\\"\\r\\nDate: Wed, 28 Dec 2022 04:17:36 GMT\\r\\nConnection: keep-alive\\r\\nKeep-Alive: timeout=5\\r\\n\\r\\n\",\"_keepAliveTimeout\":5000,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"statusMessage\":\"OK\",\"headersSent\":true},\"sessionOptions\":{\"secret\":\"ne2baczyggs\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\"},\"body\":{\"operationName\":null,\"query\":\"mutation {\\n  addRandomCat(id: \\\"1\\\") {\\n    id\\n    name\\n    customFields {\\n      catImageUrl\\n    }\\n  }\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"en-US\",\"locale\":\"en-US\",\"language\":\"en-US\",\"languages\":[\"en-US\",\"en\"],\"i18n\":{\"language\":\"en-US\",\"isInitialized\":true,\"languages\":[\"en-US\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"vendureRequestContextMap\":{},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1672201355,\"id\":2,\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\",\"expires\":\"2023-12-28T09:40:05.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"c2d2ubuj7rtmop287x5p\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"productId\":1}', 'COMPLETED', 100, 'true', NULL, '2022-12-28 04:17:37.113000', '2022-12-28 04:17:37.811000', 1, 0, 1, 25),
('2022-12-28 10:17:37.147691', '2022-12-28 10:17:39.000000', 'apply-collection-filters', '{\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":[],\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"errorEmitted\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"errored\":null,\"closed\":false,\"closeEmitted\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"dataEmitted\":true,\"decoder\":null,\"encoding\":null},\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":15844,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":38656,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":2748171,\"bytesWritten\":2748171},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:3000\",\"connection\":\"keep-alive\",\"content-length\":\"161\",\"sec-ch-ua\":\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\":\"*/*\",\"content-type\":\"application/json\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\":\"\\\"Linux\\\"\",\"origin\":\"http://localhost:3000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:3000/admin-api\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"},\"rawHeaders\":[\"Host\",\"localhost:3000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"161\",\"sec-ch-ua\",\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\",\"*/*\",\"content-type\",\"application/json\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\",\"\\\"Linux\\\"\",\"Origin\",\"http://localhost:3000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:3000/admin-api\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"en-US,en;q=0.9\",\"Cookie\",\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":15844,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":38656,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":2748171,\"bytesWritten\":2748171},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/\",\"path\":\"/\",\"href\":\"/\",\"_raw\":\"/\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"destroyed\":false,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"_defaultKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":89,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":true,\"_headerSent\":true,\"socket\":null,\"_header\":\"HTTP/1.1 200 OK\\r\\nX-Powered-By: Express\\r\\nAccess-Control-Allow-Origin: http://localhost:3000\\r\\nVary: Origin\\r\\nAccess-Control-Allow-Credentials: true\\r\\nAccess-Control-Expose-Headers: vendure-auth-token\\r\\nContent-Language: en-US\\r\\nContent-Type: application/json; charset=utf-8\\r\\nContent-Length: 89\\r\\nETag: W/\\\"59-378Qfs7L/xzTuceCk/OO8Qs+H3k\\\"\\r\\nDate: Wed, 28 Dec 2022 04:17:36 GMT\\r\\nConnection: keep-alive\\r\\nKeep-Alive: timeout=5\\r\\n\\r\\n\",\"_keepAliveTimeout\":5000,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"statusMessage\":\"OK\",\"headersSent\":true},\"sessionOptions\":{\"secret\":\"ne2baczyggs\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\"},\"body\":{\"operationName\":null,\"query\":\"mutation {\\n  addRandomCat(id: \\\"1\\\") {\\n    id\\n    name\\n    customFields {\\n      catImageUrl\\n    }\\n  }\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"en-US\",\"locale\":\"en-US\",\"language\":\"en-US\",\"languages\":[\"en-US\",\"en\"],\"i18n\":{\"language\":\"en-US\",\"isInitialized\":true,\"languages\":[\"en-US\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"vendureRequestContextMap\":{},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1672201355,\"id\":2,\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\",\"expires\":\"2023-12-28T09:40:05.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"c2d2ubuj7rtmop287x5p\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[1,3,4,2,9,8,10,7,6,5]}', 'COMPLETED', 100, NULL, NULL, '2022-12-28 04:17:37.747000', '2022-12-28 04:17:39.315000', 1, 0, 1, 26);
INSERT INTO `job_record` (`createdAt`, `updatedAt`, `queueName`, `data`, `state`, `progress`, `result`, `error`, `startedAt`, `settledAt`, `isSettled`, `retries`, `attempts`, `id`) VALUES
('2022-12-28 10:21:08.666656', '2022-12-28 10:21:08.000000', 'update-search-index', '{\"type\":\"update-product\",\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":[],\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"errorEmitted\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"errored\":null,\"closed\":false,\"closeEmitted\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"dataEmitted\":true,\"decoder\":null,\"encoding\":null},\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_sockname\":null,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":4372,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":37102,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":550039,\"bytesWritten\":550039},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:3000\",\"connection\":\"keep-alive\",\"content-length\":\"161\",\"sec-ch-ua\":\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\":\"*/*\",\"content-type\":\"application/json\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\":\"\\\"Linux\\\"\",\"origin\":\"http://localhost:3000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:3000/admin-api\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"},\"rawHeaders\":[\"Host\",\"localhost:3000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"161\",\"sec-ch-ua\",\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\",\"*/*\",\"content-type\",\"application/json\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\",\"\\\"Linux\\\"\",\"Origin\",\"http://localhost:3000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:3000/admin-api\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"en-US,en;q=0.9\",\"Cookie\",\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":4372,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":37102,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":550039,\"bytesWritten\":550039},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/admin-api\",\"path\":\"/admin-api\",\"href\":\"/admin-api\",\"_raw\":\"/admin-api\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"destroyed\":false,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"_defaultKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":89,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":true,\"_headerSent\":true,\"socket\":null,\"_header\":\"HTTP/1.1 200 OK\\r\\nX-Powered-By: Express\\r\\nAccess-Control-Allow-Origin: http://localhost:3000\\r\\nVary: Origin\\r\\nAccess-Control-Allow-Credentials: true\\r\\nAccess-Control-Expose-Headers: vendure-auth-token\\r\\nContent-Language: en-US\\r\\nContent-Type: application/json; charset=utf-8\\r\\nContent-Length: 89\\r\\nETag: W/\\\"59-378Qfs7L/xzTuceCk/OO8Qs+H3k\\\"\\r\\nDate: Wed, 28 Dec 2022 04:21:08 GMT\\r\\nConnection: keep-alive\\r\\nKeep-Alive: timeout=5\\r\\n\\r\\n\",\"_keepAliveTimeout\":5000,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"statusMessage\":\"OK\",\"headersSent\":true},\"sessionOptions\":{\"secret\":\"ne2baczyggs\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\"},\"body\":{\"operationName\":null,\"query\":\"mutation {\\n  addRandomCat(id: \\\"1\\\") {\\n    id\\n    name\\n    customFields {\\n      catImageUrl\\n    }\\n  }\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"en-US\",\"locale\":\"en-US\",\"language\":\"en-US\",\"languages\":[\"en-US\",\"en\"],\"i18n\":{\"language\":\"en-US\",\"isInitialized\":true,\"languages\":[\"en-US\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"vendureRequestContextMap\":{},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1672201567,\"id\":2,\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\",\"expires\":\"2023-12-28T09:40:05.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"c2d2ubuj7rtmop287x5p\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"productId\":1}', 'COMPLETED', 100, 'true', NULL, '2022-12-28 04:21:08.819000', '2022-12-28 04:21:08.989000', 1, 0, 1, 27),
('2022-12-28 10:21:08.699237', '2022-12-28 10:21:09.000000', 'apply-collection-filters', '{\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":[],\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"errorEmitted\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"errored\":null,\"closed\":false,\"closeEmitted\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"dataEmitted\":true,\"decoder\":null,\"encoding\":null},\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":4372,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":37102,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":550039,\"bytesWritten\":550039},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:3000\",\"connection\":\"keep-alive\",\"content-length\":\"161\",\"sec-ch-ua\":\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\":\"*/*\",\"content-type\":\"application/json\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\":\"\\\"Linux\\\"\",\"origin\":\"http://localhost:3000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:3000/admin-api\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"},\"rawHeaders\":[\"Host\",\"localhost:3000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"161\",\"sec-ch-ua\",\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\",\"*/*\",\"content-type\",\"application/json\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\",\"\\\"Linux\\\"\",\"Origin\",\"http://localhost:3000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:3000/admin-api\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"en-US,en;q=0.9\",\"Cookie\",\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":4372,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":37102,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":550039,\"bytesWritten\":550039},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/\",\"path\":\"/\",\"href\":\"/\",\"_raw\":\"/\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"destroyed\":false,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"_defaultKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":89,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":true,\"_headerSent\":true,\"socket\":null,\"_header\":\"HTTP/1.1 200 OK\\r\\nX-Powered-By: Express\\r\\nAccess-Control-Allow-Origin: http://localhost:3000\\r\\nVary: Origin\\r\\nAccess-Control-Allow-Credentials: true\\r\\nAccess-Control-Expose-Headers: vendure-auth-token\\r\\nContent-Language: en-US\\r\\nContent-Type: application/json; charset=utf-8\\r\\nContent-Length: 89\\r\\nETag: W/\\\"59-378Qfs7L/xzTuceCk/OO8Qs+H3k\\\"\\r\\nDate: Wed, 28 Dec 2022 04:21:08 GMT\\r\\nConnection: keep-alive\\r\\nKeep-Alive: timeout=5\\r\\n\\r\\n\",\"_keepAliveTimeout\":5000,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"statusMessage\":\"OK\",\"headersSent\":true},\"sessionOptions\":{\"secret\":\"ne2baczyggs\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\"},\"body\":{\"operationName\":null,\"query\":\"mutation {\\n  addRandomCat(id: \\\"1\\\") {\\n    id\\n    name\\n    customFields {\\n      catImageUrl\\n    }\\n  }\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"en-US\",\"locale\":\"en-US\",\"language\":\"en-US\",\"languages\":[\"en-US\",\"en\"],\"i18n\":{\"language\":\"en-US\",\"isInitialized\":true,\"languages\":[\"en-US\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"vendureRequestContextMap\":{},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1672201567,\"id\":2,\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\",\"expires\":\"2023-12-28T09:40:05.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"c2d2ubuj7rtmop287x5p\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[1,3,4,2,9,8,10,7,6,5]}', 'COMPLETED', 100, NULL, NULL, '2022-12-28 04:21:08.708000', '2022-12-28 04:21:09.062000', 1, 0, 1, 28),
('2022-12-28 10:25:27.043264', '2022-12-28 10:25:27.000000', 'update-search-index', '{\"type\":\"update-product\",\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":[],\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"errorEmitted\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"errored\":null,\"closed\":false,\"closeEmitted\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"dataEmitted\":true,\"decoder\":null,\"encoding\":null},\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_sockname\":null,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":4372,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":33860,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":550039,\"bytesWritten\":550039},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:3000\",\"connection\":\"keep-alive\",\"content-length\":\"161\",\"sec-ch-ua\":\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\":\"*/*\",\"content-type\":\"application/json\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\":\"\\\"Linux\\\"\",\"origin\":\"http://localhost:3000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:3000/admin-api\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"},\"rawHeaders\":[\"Host\",\"localhost:3000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"161\",\"sec-ch-ua\",\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\",\"*/*\",\"content-type\",\"application/json\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\",\"\\\"Linux\\\"\",\"Origin\",\"http://localhost:3000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:3000/admin-api\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"en-US,en;q=0.9\",\"Cookie\",\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":4372,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":33860,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":550039,\"bytesWritten\":550039},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/admin-api\",\"path\":\"/admin-api\",\"href\":\"/admin-api\",\"_raw\":\"/admin-api\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"destroyed\":false,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"_defaultKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":89,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":true,\"_headerSent\":true,\"socket\":null,\"_header\":\"HTTP/1.1 200 OK\\r\\nX-Powered-By: Express\\r\\nAccess-Control-Allow-Origin: http://localhost:3000\\r\\nVary: Origin\\r\\nAccess-Control-Allow-Credentials: true\\r\\nAccess-Control-Expose-Headers: vendure-auth-token\\r\\nContent-Language: en-US\\r\\nContent-Type: application/json; charset=utf-8\\r\\nContent-Length: 89\\r\\nETag: W/\\\"59-378Qfs7L/xzTuceCk/OO8Qs+H3k\\\"\\r\\nDate: Wed, 28 Dec 2022 04:25:27 GMT\\r\\nConnection: keep-alive\\r\\nKeep-Alive: timeout=5\\r\\n\\r\\n\",\"_keepAliveTimeout\":5000,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"statusMessage\":\"OK\",\"headersSent\":true},\"sessionOptions\":{\"secret\":\"ne2baczyggs\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\"},\"body\":{\"operationName\":null,\"query\":\"mutation {\\n  addRandomCat(id: \\\"1\\\") {\\n    id\\n    name\\n    customFields {\\n      catImageUrl\\n    }\\n  }\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"en-US\",\"locale\":\"en-US\",\"language\":\"en-US\",\"languages\":[\"en-US\",\"en\"],\"i18n\":{\"language\":\"en-US\",\"isInitialized\":true,\"languages\":[\"en-US\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"vendureRequestContextMap\":{},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1672201825,\"id\":2,\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\",\"expires\":\"2023-12-28T09:40:05.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"c2d2ubuj7rtmop287x5p\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"productId\":1}', 'COMPLETED', 100, 'true', NULL, '2022-12-28 04:25:27.407000', '2022-12-28 04:25:27.746000', 1, 0, 1, 29),
('2022-12-28 10:25:27.070651', '2022-12-28 10:25:28.000000', 'apply-collection-filters', '{\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":[],\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"errorEmitted\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"errored\":null,\"closed\":false,\"closeEmitted\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"dataEmitted\":true,\"decoder\":null,\"encoding\":null},\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":4372,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":33860,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":550039,\"bytesWritten\":550039},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:3000\",\"connection\":\"keep-alive\",\"content-length\":\"161\",\"sec-ch-ua\":\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\":\"*/*\",\"content-type\":\"application/json\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\":\"\\\"Linux\\\"\",\"origin\":\"http://localhost:3000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:3000/admin-api\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"},\"rawHeaders\":[\"Host\",\"localhost:3000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"161\",\"sec-ch-ua\",\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\",\"*/*\",\"content-type\",\"application/json\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\",\"\\\"Linux\\\"\",\"Origin\",\"http://localhost:3000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:3000/admin-api\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"en-US,en;q=0.9\",\"Cookie\",\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":4372,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":33860,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":550039,\"bytesWritten\":550039},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/\",\"path\":\"/\",\"href\":\"/\",\"_raw\":\"/\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"destroyed\":false,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"_defaultKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":89,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":true,\"_headerSent\":true,\"socket\":null,\"_header\":\"HTTP/1.1 200 OK\\r\\nX-Powered-By: Express\\r\\nAccess-Control-Allow-Origin: http://localhost:3000\\r\\nVary: Origin\\r\\nAccess-Control-Allow-Credentials: true\\r\\nAccess-Control-Expose-Headers: vendure-auth-token\\r\\nContent-Language: en-US\\r\\nContent-Type: application/json; charset=utf-8\\r\\nContent-Length: 89\\r\\nETag: W/\\\"59-378Qfs7L/xzTuceCk/OO8Qs+H3k\\\"\\r\\nDate: Wed, 28 Dec 2022 04:25:27 GMT\\r\\nConnection: keep-alive\\r\\nKeep-Alive: timeout=5\\r\\n\\r\\n\",\"_keepAliveTimeout\":5000,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"statusMessage\":\"OK\",\"headersSent\":true},\"sessionOptions\":{\"secret\":\"ne2baczyggs\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\"},\"body\":{\"operationName\":null,\"query\":\"mutation {\\n  addRandomCat(id: \\\"1\\\") {\\n    id\\n    name\\n    customFields {\\n      catImageUrl\\n    }\\n  }\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"en-US\",\"locale\":\"en-US\",\"language\":\"en-US\",\"languages\":[\"en-US\",\"en\"],\"i18n\":{\"language\":\"en-US\",\"isInitialized\":true,\"languages\":[\"en-US\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"vendureRequestContextMap\":{},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1672201825,\"id\":2,\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\",\"expires\":\"2023-12-28T09:40:05.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"c2d2ubuj7rtmop287x5p\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[1,3,4,2,9,8,10,7,6,5]}', 'COMPLETED', 100, NULL, NULL, '2022-12-28 04:25:27.142000', '2022-12-28 04:25:28.428000', 1, 0, 1, 30);
INSERT INTO `job_record` (`createdAt`, `updatedAt`, `queueName`, `data`, `state`, `progress`, `result`, `error`, `startedAt`, `settledAt`, `isSettled`, `retries`, `attempts`, `id`) VALUES
('2022-12-28 10:27:06.416574', '2022-12-28 10:27:06.000000', 'update-search-index', '{\"type\":\"update-product\",\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":[],\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"errorEmitted\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"errored\":null,\"closed\":false,\"closeEmitted\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"dataEmitted\":true,\"decoder\":null,\"encoding\":null},\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_sockname\":null,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":7240,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":58158,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":1099572,\"bytesWritten\":1099572},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:3000\",\"connection\":\"keep-alive\",\"content-length\":\"161\",\"sec-ch-ua\":\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\":\"*/*\",\"content-type\":\"application/json\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\":\"\\\"Linux\\\"\",\"origin\":\"http://localhost:3000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:3000/admin-api\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"},\"rawHeaders\":[\"Host\",\"localhost:3000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"161\",\"sec-ch-ua\",\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\",\"*/*\",\"content-type\",\"application/json\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\",\"\\\"Linux\\\"\",\"Origin\",\"http://localhost:3000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:3000/admin-api\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"en-US,en;q=0.9\",\"Cookie\",\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":7240,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":58158,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":1099572,\"bytesWritten\":1099572},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/admin-api\",\"path\":\"/admin-api\",\"href\":\"/admin-api\",\"_raw\":\"/admin-api\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"destroyed\":false,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"_defaultKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":89,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":true,\"_headerSent\":true,\"socket\":null,\"_header\":\"HTTP/1.1 200 OK\\r\\nX-Powered-By: Express\\r\\nAccess-Control-Allow-Origin: http://localhost:3000\\r\\nVary: Origin\\r\\nAccess-Control-Allow-Credentials: true\\r\\nAccess-Control-Expose-Headers: vendure-auth-token\\r\\nContent-Language: en-US\\r\\nContent-Type: application/json; charset=utf-8\\r\\nContent-Length: 89\\r\\nETag: W/\\\"59-378Qfs7L/xzTuceCk/OO8Qs+H3k\\\"\\r\\nDate: Wed, 28 Dec 2022 04:27:06 GMT\\r\\nConnection: keep-alive\\r\\nKeep-Alive: timeout=5\\r\\n\\r\\n\",\"_keepAliveTimeout\":5000,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"statusMessage\":\"OK\",\"headersSent\":true},\"sessionOptions\":{\"secret\":\"ne2baczyggs\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\"},\"body\":{\"operationName\":null,\"query\":\"mutation {\\n  addRandomCat(id: \\\"1\\\") {\\n    id\\n    name\\n    customFields {\\n      catImageUrl\\n    }\\n  }\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"en-US\",\"locale\":\"en-US\",\"language\":\"en-US\",\"languages\":[\"en-US\",\"en\"],\"i18n\":{\"language\":\"en-US\",\"isInitialized\":true,\"languages\":[\"en-US\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"vendureRequestContextMap\":{},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1672201925,\"id\":2,\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\",\"expires\":\"2023-12-28T09:40:05.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"c2d2ubuj7rtmop287x5p\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"productId\":1}', 'COMPLETED', 100, 'true', NULL, '2022-12-28 04:27:06.567000', '2022-12-28 04:27:06.688000', 1, 0, 1, 31),
('2022-12-28 10:27:06.444730', '2022-12-28 10:27:06.000000', 'apply-collection-filters', '{\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":[],\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"errorEmitted\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"errored\":null,\"closed\":false,\"closeEmitted\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"dataEmitted\":true,\"decoder\":null,\"encoding\":null},\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":7240,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":58158,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":1099572,\"bytesWritten\":1099572},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:3000\",\"connection\":\"keep-alive\",\"content-length\":\"161\",\"sec-ch-ua\":\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\":\"*/*\",\"content-type\":\"application/json\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\":\"\\\"Linux\\\"\",\"origin\":\"http://localhost:3000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:3000/admin-api\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"},\"rawHeaders\":[\"Host\",\"localhost:3000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"161\",\"sec-ch-ua\",\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\",\"*/*\",\"content-type\",\"application/json\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\",\"\\\"Linux\\\"\",\"Origin\",\"http://localhost:3000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:3000/admin-api\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"en-US,en;q=0.9\",\"Cookie\",\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":7240,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":58158,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":1099572,\"bytesWritten\":1099572},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/\",\"path\":\"/\",\"href\":\"/\",\"_raw\":\"/\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"destroyed\":false,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"_defaultKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":89,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":true,\"_headerSent\":true,\"socket\":null,\"_header\":\"HTTP/1.1 200 OK\\r\\nX-Powered-By: Express\\r\\nAccess-Control-Allow-Origin: http://localhost:3000\\r\\nVary: Origin\\r\\nAccess-Control-Allow-Credentials: true\\r\\nAccess-Control-Expose-Headers: vendure-auth-token\\r\\nContent-Language: en-US\\r\\nContent-Type: application/json; charset=utf-8\\r\\nContent-Length: 89\\r\\nETag: W/\\\"59-378Qfs7L/xzTuceCk/OO8Qs+H3k\\\"\\r\\nDate: Wed, 28 Dec 2022 04:27:06 GMT\\r\\nConnection: keep-alive\\r\\nKeep-Alive: timeout=5\\r\\n\\r\\n\",\"_keepAliveTimeout\":5000,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"statusMessage\":\"OK\",\"headersSent\":true},\"sessionOptions\":{\"secret\":\"ne2baczyggs\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\"},\"body\":{\"operationName\":null,\"query\":\"mutation {\\n  addRandomCat(id: \\\"1\\\") {\\n    id\\n    name\\n    customFields {\\n      catImageUrl\\n    }\\n  }\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"en-US\",\"locale\":\"en-US\",\"language\":\"en-US\",\"languages\":[\"en-US\",\"en\"],\"i18n\":{\"language\":\"en-US\",\"isInitialized\":true,\"languages\":[\"en-US\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"vendureRequestContextMap\":{},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1672201925,\"id\":2,\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\",\"expires\":\"2023-12-28T09:40:05.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"c2d2ubuj7rtmop287x5p\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[1,3,4,2,9,8,10,7,6,5]}', 'COMPLETED', 100, NULL, NULL, '2022-12-28 04:27:06.523000', '2022-12-28 04:27:06.887000', 1, 0, 1, 32),
('2022-12-28 10:31:08.787894', '2022-12-28 10:31:08.000000', 'update-search-index', '{\"type\":\"update-product\",\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":[],\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"errorEmitted\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"errored\":null,\"closed\":false,\"closeEmitted\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"dataEmitted\":true,\"decoder\":null,\"encoding\":null},\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_sockname\":null,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":27316,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":55124,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":4946303,\"bytesWritten\":4946303},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:3000\",\"connection\":\"keep-alive\",\"content-length\":\"161\",\"sec-ch-ua\":\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\":\"*/*\",\"content-type\":\"application/json\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\":\"\\\"Linux\\\"\",\"origin\":\"http://localhost:3000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:3000/admin-api\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"},\"rawHeaders\":[\"Host\",\"localhost:3000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"161\",\"sec-ch-ua\",\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\",\"*/*\",\"content-type\",\"application/json\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\",\"\\\"Linux\\\"\",\"Origin\",\"http://localhost:3000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:3000/admin-api\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"en-US,en;q=0.9\",\"Cookie\",\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":27316,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":55124,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":4946303,\"bytesWritten\":4946303},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/admin-api\",\"path\":\"/admin-api\",\"href\":\"/admin-api\",\"_raw\":\"/admin-api\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"destroyed\":false,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"_defaultKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":89,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":true,\"_headerSent\":true,\"socket\":null,\"_header\":\"HTTP/1.1 200 OK\\r\\nX-Powered-By: Express\\r\\nAccess-Control-Allow-Origin: http://localhost:3000\\r\\nVary: Origin\\r\\nAccess-Control-Allow-Credentials: true\\r\\nAccess-Control-Expose-Headers: vendure-auth-token\\r\\nContent-Language: en-US\\r\\nContent-Type: application/json; charset=utf-8\\r\\nContent-Length: 89\\r\\nETag: W/\\\"59-378Qfs7L/xzTuceCk/OO8Qs+H3k\\\"\\r\\nDate: Wed, 28 Dec 2022 04:31:08 GMT\\r\\nConnection: keep-alive\\r\\nKeep-Alive: timeout=5\\r\\n\\r\\n\",\"_keepAliveTimeout\":5000,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"statusMessage\":\"OK\",\"headersSent\":true},\"sessionOptions\":{\"secret\":\"ne2baczyggs\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\"},\"body\":{\"operationName\":null,\"query\":\"mutation {\\n  addRandomCat(id: \\\"1\\\") {\\n    id\\n    name\\n    customFields {\\n      catImageUrl\\n    }\\n  }\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"en-US\",\"locale\":\"en-US\",\"language\":\"en-US\",\"languages\":[\"en-US\",\"en\"],\"i18n\":{\"language\":\"en-US\",\"isInitialized\":true,\"languages\":[\"en-US\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"vendureRequestContextMap\":{},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1672202167,\"id\":2,\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\",\"expires\":\"2023-12-28T09:40:05.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"c2d2ubuj7rtmop287x5p\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"productId\":1}', 'COMPLETED', 100, 'true', NULL, '2022-12-28 04:31:08.848000', '2022-12-28 04:31:08.981000', 1, 0, 1, 33),
('2022-12-28 10:31:08.824127', '2022-12-28 10:31:09.000000', 'apply-collection-filters', '{\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":[],\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"errorEmitted\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"errored\":null,\"closed\":false,\"closeEmitted\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"dataEmitted\":true,\"decoder\":null,\"encoding\":null},\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":27316,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":55124,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":4946303,\"bytesWritten\":4946303},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:3000\",\"connection\":\"keep-alive\",\"content-length\":\"161\",\"sec-ch-ua\":\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\":\"*/*\",\"content-type\":\"application/json\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\":\"\\\"Linux\\\"\",\"origin\":\"http://localhost:3000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:3000/admin-api\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"},\"rawHeaders\":[\"Host\",\"localhost:3000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"161\",\"sec-ch-ua\",\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\",\"*/*\",\"content-type\",\"application/json\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\",\"\\\"Linux\\\"\",\"Origin\",\"http://localhost:3000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:3000/admin-api\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"en-US,en;q=0.9\",\"Cookie\",\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":27316,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":55124,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":4946303,\"bytesWritten\":4946303},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/\",\"path\":\"/\",\"href\":\"/\",\"_raw\":\"/\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"destroyed\":false,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"_defaultKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":89,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":true,\"_headerSent\":true,\"socket\":null,\"_header\":\"HTTP/1.1 200 OK\\r\\nX-Powered-By: Express\\r\\nAccess-Control-Allow-Origin: http://localhost:3000\\r\\nVary: Origin\\r\\nAccess-Control-Allow-Credentials: true\\r\\nAccess-Control-Expose-Headers: vendure-auth-token\\r\\nContent-Language: en-US\\r\\nContent-Type: application/json; charset=utf-8\\r\\nContent-Length: 89\\r\\nETag: W/\\\"59-378Qfs7L/xzTuceCk/OO8Qs+H3k\\\"\\r\\nDate: Wed, 28 Dec 2022 04:31:08 GMT\\r\\nConnection: keep-alive\\r\\nKeep-Alive: timeout=5\\r\\n\\r\\n\",\"_keepAliveTimeout\":5000,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"statusMessage\":\"OK\",\"headersSent\":true},\"sessionOptions\":{\"secret\":\"ne2baczyggs\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\"},\"body\":{\"operationName\":null,\"query\":\"mutation {\\n  addRandomCat(id: \\\"1\\\") {\\n    id\\n    name\\n    customFields {\\n      catImageUrl\\n    }\\n  }\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"en-US\",\"locale\":\"en-US\",\"language\":\"en-US\",\"languages\":[\"en-US\",\"en\"],\"i18n\":{\"language\":\"en-US\",\"isInitialized\":true,\"languages\":[\"en-US\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"vendureRequestContextMap\":{},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1672202167,\"id\":2,\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\",\"expires\":\"2023-12-28T09:40:05.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"c2d2ubuj7rtmop287x5p\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[1,3,4,2,9,8,10,7,6,5]}', 'COMPLETED', 100, NULL, NULL, '2022-12-28 04:31:09.015000', '2022-12-28 04:31:09.227000', 1, 0, 1, 34);
INSERT INTO `job_record` (`createdAt`, `updatedAt`, `queueName`, `data`, `state`, `progress`, `result`, `error`, `startedAt`, `settledAt`, `isSettled`, `retries`, `attempts`, `id`) VALUES
('2022-12-28 10:33:59.418352', '2022-12-28 10:33:59.000000', 'update-search-index', '{\"type\":\"update-product\",\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":[],\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"errorEmitted\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"errored\":null,\"closed\":false,\"closeEmitted\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"dataEmitted\":true,\"decoder\":null,\"encoding\":null},\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_sockname\":null,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":1504,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":41170,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":506,\"bytesWritten\":506},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:3000\",\"connection\":\"keep-alive\",\"content-length\":\"161\",\"sec-ch-ua\":\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\":\"*/*\",\"content-type\":\"application/json\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\":\"\\\"Linux\\\"\",\"origin\":\"http://localhost:3000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:3000/admin-api\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"},\"rawHeaders\":[\"Host\",\"localhost:3000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"161\",\"sec-ch-ua\",\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\",\"*/*\",\"content-type\",\"application/json\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\",\"\\\"Linux\\\"\",\"Origin\",\"http://localhost:3000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:3000/admin-api\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"en-US,en;q=0.9\",\"Cookie\",\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":1504,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":41170,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":506,\"bytesWritten\":506},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/admin-api\",\"path\":\"/admin-api\",\"href\":\"/admin-api\",\"_raw\":\"/admin-api\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"destroyed\":false,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"_defaultKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":89,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":true,\"_headerSent\":true,\"socket\":null,\"_header\":\"HTTP/1.1 200 OK\\r\\nX-Powered-By: Express\\r\\nAccess-Control-Allow-Origin: http://localhost:3000\\r\\nVary: Origin\\r\\nAccess-Control-Allow-Credentials: true\\r\\nAccess-Control-Expose-Headers: vendure-auth-token\\r\\nContent-Language: en-US\\r\\nContent-Type: application/json; charset=utf-8\\r\\nContent-Length: 89\\r\\nETag: W/\\\"59-378Qfs7L/xzTuceCk/OO8Qs+H3k\\\"\\r\\nDate: Wed, 28 Dec 2022 04:33:59 GMT\\r\\nConnection: keep-alive\\r\\nKeep-Alive: timeout=5\\r\\n\\r\\n\",\"_keepAliveTimeout\":5000,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"statusMessage\":\"OK\",\"headersSent\":true},\"sessionOptions\":{\"secret\":\"ne2baczyggs\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\"},\"body\":{\"operationName\":null,\"query\":\"mutation {\\n  addRandomCat(id: \\\"1\\\") {\\n    id\\n    name\\n    customFields {\\n      catImageUrl\\n    }\\n  }\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"en-US\",\"locale\":\"en-US\",\"language\":\"en-US\",\"languages\":[\"en-US\",\"en\"],\"i18n\":{\"language\":\"en-US\",\"isInitialized\":true,\"languages\":[\"en-US\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"vendureRequestContextMap\":{},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1672202338,\"id\":2,\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\",\"expires\":\"2023-12-28T09:40:05.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"c2d2ubuj7rtmop287x5p\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"productId\":1}', 'COMPLETED', 100, 'true', NULL, '2022-12-28 04:33:59.586000', '2022-12-28 04:33:59.762000', 1, 0, 1, 35),
('2022-12-28 10:33:59.463841', '2022-12-28 10:33:59.000000', 'apply-collection-filters', '{\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":[],\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"errorEmitted\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"errored\":null,\"closed\":false,\"closeEmitted\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"dataEmitted\":true,\"decoder\":null,\"encoding\":null},\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":1504,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":41170,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":506,\"bytesWritten\":506},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:3000\",\"connection\":\"keep-alive\",\"content-length\":\"161\",\"sec-ch-ua\":\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\":\"*/*\",\"content-type\":\"application/json\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\":\"\\\"Linux\\\"\",\"origin\":\"http://localhost:3000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:3000/admin-api\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"},\"rawHeaders\":[\"Host\",\"localhost:3000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"161\",\"sec-ch-ua\",\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\",\"*/*\",\"content-type\",\"application/json\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\",\"\\\"Linux\\\"\",\"Origin\",\"http://localhost:3000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:3000/admin-api\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"en-US,en;q=0.9\",\"Cookie\",\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":1504,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":41170,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":506,\"bytesWritten\":506},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/\",\"path\":\"/\",\"href\":\"/\",\"_raw\":\"/\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"destroyed\":false,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"_defaultKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":89,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":true,\"_headerSent\":true,\"socket\":null,\"_header\":\"HTTP/1.1 200 OK\\r\\nX-Powered-By: Express\\r\\nAccess-Control-Allow-Origin: http://localhost:3000\\r\\nVary: Origin\\r\\nAccess-Control-Allow-Credentials: true\\r\\nAccess-Control-Expose-Headers: vendure-auth-token\\r\\nContent-Language: en-US\\r\\nContent-Type: application/json; charset=utf-8\\r\\nContent-Length: 89\\r\\nETag: W/\\\"59-378Qfs7L/xzTuceCk/OO8Qs+H3k\\\"\\r\\nDate: Wed, 28 Dec 2022 04:33:59 GMT\\r\\nConnection: keep-alive\\r\\nKeep-Alive: timeout=5\\r\\n\\r\\n\",\"_keepAliveTimeout\":5000,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"statusMessage\":\"OK\",\"headersSent\":true},\"sessionOptions\":{\"secret\":\"ne2baczyggs\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\"},\"body\":{\"operationName\":null,\"query\":\"mutation {\\n  addRandomCat(id: \\\"1\\\") {\\n    id\\n    name\\n    customFields {\\n      catImageUrl\\n    }\\n  }\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"en-US\",\"locale\":\"en-US\",\"language\":\"en-US\",\"languages\":[\"en-US\",\"en\"],\"i18n\":{\"language\":\"en-US\",\"isInitialized\":true,\"languages\":[\"en-US\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"vendureRequestContextMap\":{},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1672202338,\"id\":2,\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\",\"expires\":\"2023-12-28T09:40:05.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"c2d2ubuj7rtmop287x5p\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[1,3,4,2,9,8,10,7,6,5]}', 'COMPLETED', 100, NULL, NULL, '2022-12-28 04:33:59.638000', '2022-12-28 04:33:59.890000', 1, 0, 1, 36),
('2022-12-28 10:35:12.850629', '2022-12-28 10:35:13.000000', 'update-search-index', '{\"type\":\"update-product\",\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":[],\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"errorEmitted\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"errored\":null,\"closed\":false,\"closeEmitted\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"dataEmitted\":true,\"decoder\":null,\"encoding\":null},\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_sockname\":null,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":1504,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54314,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":564,\"bytesWritten\":564},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:3000\",\"connection\":\"keep-alive\",\"content-length\":\"161\",\"sec-ch-ua\":\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\":\"*/*\",\"content-type\":\"application/json\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\":\"\\\"Linux\\\"\",\"origin\":\"http://localhost:3000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:3000/admin-api\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"},\"rawHeaders\":[\"Host\",\"localhost:3000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"161\",\"sec-ch-ua\",\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\",\"*/*\",\"content-type\",\"application/json\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\",\"\\\"Linux\\\"\",\"Origin\",\"http://localhost:3000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:3000/admin-api\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"en-US,en;q=0.9\",\"Cookie\",\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":1504,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54314,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":564,\"bytesWritten\":564},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/admin-api\",\"path\":\"/admin-api\",\"href\":\"/admin-api\",\"_raw\":\"/admin-api\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"destroyed\":false,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"_defaultKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":146,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":true,\"_headerSent\":true,\"socket\":null,\"_header\":\"HTTP/1.1 200 OK\\r\\nX-Powered-By: Express\\r\\nAccess-Control-Allow-Origin: http://localhost:3000\\r\\nVary: Origin\\r\\nAccess-Control-Allow-Credentials: true\\r\\nAccess-Control-Expose-Headers: vendure-auth-token\\r\\nContent-Language: en-US\\r\\nContent-Type: application/json; charset=utf-8\\r\\nContent-Length: 146\\r\\nETag: W/\\\"92-KWaIK2wkzWYpGUbguaCD5TLE8zM\\\"\\r\\nDate: Wed, 28 Dec 2022 04:35:12 GMT\\r\\nConnection: keep-alive\\r\\nKeep-Alive: timeout=5\\r\\n\\r\\n\",\"_keepAliveTimeout\":5000,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"statusMessage\":\"OK\",\"headersSent\":true},\"sessionOptions\":{\"secret\":\"ne2baczyggs\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\"},\"body\":{\"operationName\":null,\"query\":\"mutation {\\n  addRandomCat(id: \\\"1\\\") {\\n    id\\n    name\\n    customFields {\\n      catImageUrl\\n    }\\n  }\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"en-US\",\"locale\":\"en-US\",\"language\":\"en-US\",\"languages\":[\"en-US\",\"en\"],\"i18n\":{\"language\":\"en-US\",\"isInitialized\":true,\"languages\":[\"en-US\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"vendureRequestContextMap\":{},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1672202411,\"id\":2,\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\",\"expires\":\"2023-12-28T09:40:05.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"c2d2ubuj7rtmop287x5p\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"productId\":1}', 'COMPLETED', 100, 'true', NULL, '2022-12-28 04:35:12.959000', '2022-12-28 04:35:13.129000', 1, 0, 1, 37),
('2022-12-28 10:35:12.898698', '2022-12-28 10:35:13.000000', 'apply-collection-filters', '{\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":[],\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"errorEmitted\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"errored\":null,\"closed\":false,\"closeEmitted\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"dataEmitted\":true,\"decoder\":null,\"encoding\":null},\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":1504,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54314,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":564,\"bytesWritten\":564},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:3000\",\"connection\":\"keep-alive\",\"content-length\":\"161\",\"sec-ch-ua\":\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\":\"*/*\",\"content-type\":\"application/json\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\":\"\\\"Linux\\\"\",\"origin\":\"http://localhost:3000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:3000/admin-api\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"},\"rawHeaders\":[\"Host\",\"localhost:3000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"161\",\"sec-ch-ua\",\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\",\"*/*\",\"content-type\",\"application/json\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\",\"\\\"Linux\\\"\",\"Origin\",\"http://localhost:3000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:3000/admin-api\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"en-US,en;q=0.9\",\"Cookie\",\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":1504,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54314,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":564,\"bytesWritten\":564},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/\",\"path\":\"/\",\"href\":\"/\",\"_raw\":\"/\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"destroyed\":false,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"_defaultKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":146,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":true,\"_headerSent\":true,\"socket\":null,\"_header\":\"HTTP/1.1 200 OK\\r\\nX-Powered-By: Express\\r\\nAccess-Control-Allow-Origin: http://localhost:3000\\r\\nVary: Origin\\r\\nAccess-Control-Allow-Credentials: true\\r\\nAccess-Control-Expose-Headers: vendure-auth-token\\r\\nContent-Language: en-US\\r\\nContent-Type: application/json; charset=utf-8\\r\\nContent-Length: 146\\r\\nETag: W/\\\"92-KWaIK2wkzWYpGUbguaCD5TLE8zM\\\"\\r\\nDate: Wed, 28 Dec 2022 04:35:12 GMT\\r\\nConnection: keep-alive\\r\\nKeep-Alive: timeout=5\\r\\n\\r\\n\",\"_keepAliveTimeout\":5000,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"statusMessage\":\"OK\",\"headersSent\":true},\"sessionOptions\":{\"secret\":\"ne2baczyggs\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\"},\"body\":{\"operationName\":null,\"query\":\"mutation {\\n  addRandomCat(id: \\\"1\\\") {\\n    id\\n    name\\n    customFields {\\n      catImageUrl\\n    }\\n  }\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"en-US\",\"locale\":\"en-US\",\"language\":\"en-US\",\"languages\":[\"en-US\",\"en\"],\"i18n\":{\"language\":\"en-US\",\"isInitialized\":true,\"languages\":[\"en-US\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"vendureRequestContextMap\":{},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1672202411,\"id\":2,\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\",\"expires\":\"2023-12-28T09:40:05.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"c2d2ubuj7rtmop287x5p\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[1,3,4,2,9,8,10,7,6,5]}', 'COMPLETED', 100, NULL, NULL, '2022-12-28 04:35:13.013000', '2022-12-28 04:35:13.297000', 1, 0, 1, 38);
INSERT INTO `job_record` (`createdAt`, `updatedAt`, `queueName`, `data`, `state`, `progress`, `result`, `error`, `startedAt`, `settledAt`, `isSettled`, `retries`, `attempts`, `id`) VALUES
('2022-12-28 10:35:48.314404', '2022-12-28 10:35:48.000000', 'update-search-index', '{\"type\":\"update-product\",\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":[],\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"errorEmitted\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"errored\":null,\"closed\":false,\"closeEmitted\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"dataEmitted\":true,\"decoder\":null,\"encoding\":null},\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_sockname\":null,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":7240,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54378,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":1099641,\"bytesWritten\":1099641},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:3000\",\"connection\":\"keep-alive\",\"content-length\":\"161\",\"sec-ch-ua\":\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\":\"*/*\",\"content-type\":\"application/json\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\":\"\\\"Linux\\\"\",\"origin\":\"http://localhost:3000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:3000/admin-api\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"},\"rawHeaders\":[\"Host\",\"localhost:3000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"161\",\"sec-ch-ua\",\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\",\"*/*\",\"content-type\",\"application/json\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\",\"\\\"Linux\\\"\",\"Origin\",\"http://localhost:3000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:3000/admin-api\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"en-US,en;q=0.9\",\"Cookie\",\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":7240,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54378,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":1099641,\"bytesWritten\":1099641},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/admin-api\",\"path\":\"/admin-api\",\"href\":\"/admin-api\",\"_raw\":\"/admin-api\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"destroyed\":false,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"_defaultKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":157,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":true,\"_headerSent\":true,\"socket\":null,\"_header\":\"HTTP/1.1 200 OK\\r\\nX-Powered-By: Express\\r\\nAccess-Control-Allow-Origin: http://localhost:3000\\r\\nVary: Origin\\r\\nAccess-Control-Allow-Credentials: true\\r\\nAccess-Control-Expose-Headers: vendure-auth-token\\r\\nContent-Language: en-US\\r\\nContent-Type: application/json; charset=utf-8\\r\\nContent-Length: 157\\r\\nETag: W/\\\"9d-ef3QMKXJlkOW+hnH3RgnSV1yo60\\\"\\r\\nDate: Wed, 28 Dec 2022 04:35:48 GMT\\r\\nConnection: keep-alive\\r\\nKeep-Alive: timeout=5\\r\\n\\r\\n\",\"_keepAliveTimeout\":5000,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"statusMessage\":\"OK\",\"headersSent\":true},\"sessionOptions\":{\"secret\":\"ne2baczyggs\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\"},\"body\":{\"operationName\":null,\"query\":\"mutation {\\n  addRandomCat(id: \\\"4\\\") {\\n    id\\n    name\\n    customFields {\\n      catImageUrl\\n    }\\n  }\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"en-US\",\"locale\":\"en-US\",\"language\":\"en-US\",\"languages\":[\"en-US\",\"en\"],\"i18n\":{\"language\":\"en-US\",\"isInitialized\":true,\"languages\":[\"en-US\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"vendureRequestContextMap\":{},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1672202411,\"id\":2,\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\",\"expires\":\"2023-12-28T09:40:05.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"c2d2ubuj7rtmop287x5p\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"productId\":4}', 'COMPLETED', 100, 'true', NULL, '2022-12-28 04:35:48.445000', '2022-12-28 04:35:48.530000', 1, 0, 1, 39),
('2022-12-28 10:35:48.369202', '2022-12-28 10:35:48.000000', 'apply-collection-filters', '{\"ctx\":{\"_req\":{\"_readableState\":{\"objectMode\":false,\"highWaterMark\":16384,\"length\":0,\"pipes\":[],\"flowing\":true,\"ended\":true,\"endEmitted\":true,\"reading\":false,\"sync\":false,\"needReadable\":false,\"emittedReadable\":false,\"readableListening\":false,\"resumeScheduled\":false,\"errorEmitted\":false,\"emitClose\":true,\"autoDestroy\":false,\"destroyed\":false,\"errored\":null,\"closed\":false,\"closeEmitted\":false,\"defaultEncoding\":\"utf8\",\"awaitDrainWriters\":null,\"multiAwaitDrain\":false,\"readingMore\":false,\"dataEmitted\":true,\"decoder\":null,\"encoding\":null},\"_events\":{},\"_eventsCount\":1,\"socket\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":7240,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54378,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":1099641,\"bytesWritten\":1099641},\"httpVersionMajor\":1,\"httpVersionMinor\":1,\"httpVersion\":\"1.1\",\"complete\":true,\"headers\":{\"host\":\"localhost:3000\",\"connection\":\"keep-alive\",\"content-length\":\"161\",\"sec-ch-ua\":\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\":\"*/*\",\"content-type\":\"application/json\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\":\"\\\"Linux\\\"\",\"origin\":\"http://localhost:3000\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-dest\":\"empty\",\"referer\":\"http://localhost:3000/admin-api\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"},\"rawHeaders\":[\"Host\",\"localhost:3000\",\"Connection\",\"keep-alive\",\"Content-Length\",\"161\",\"sec-ch-ua\",\"\\\"Not?A_Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"108\\\", \\\"Google Chrome\\\";v=\\\"108\\\"\",\"accept\",\"*/*\",\"content-type\",\"application/json\",\"sec-ch-ua-mobile\",\"?0\",\"User-Agent\",\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\",\"sec-ch-ua-platform\",\"\\\"Linux\\\"\",\"Origin\",\"http://localhost:3000\",\"Sec-Fetch-Site\",\"same-origin\",\"Sec-Fetch-Mode\",\"cors\",\"Sec-Fetch-Dest\",\"empty\",\"Referer\",\"http://localhost:3000/admin-api\",\"Accept-Encoding\",\"gzip, deflate, br\",\"Accept-Language\",\"en-US,en;q=0.9\",\"Cookie\",\"theme=light; boons.io_cookie_notice=1; remember_web_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6IkpXOHdPclZhM2daRUwrU1o2eEt2eFE9PSIsInZhbHVlIjoiSHN0WmRySjZ6TkNSQVhRZWN6ZElKT1I4Sk0zbVhvR0VTQW5QTkIwTXVuOWdHdWZFbnBQTnJWT1RMN0dOWnhxS25pOW5HVk5CaWhwM0o4cnE3VEdEYnlPWko0ZDMvUzFPS05GOTNvVUluUEZzOVovTlRhUDBIeWRqUml6VnlPMzdkTGZUUEhtMGdoWFF4QjBTdGVjblh3SXZnTnBIV1FpeGpwZ1BrRzR5d1YwMTJ1RzRsRmpVZktWblducEdNL0V3V3lkYXp1WHQzR3JKZGhuOVdwdzdTTHYzUUFIMXRNdmZEUk1zR253OWRLaz0iLCJtYWMiOiI5NDVjYTNmOWQ4NzEyMDE5Y2Q1Mzk0MDM2Yzc1NmJhMGE0MTMyMTE0OTRkZGNjMGRhMGFiNWJhMmI1MDEzMTUzIiwidGFnIjoiIn0%3D; session=eyJ0b2tlbiI6IjdhZGQ0YTdiODViNGNmYmViYTcxZmUxZTQ0OGY5OWI0YjE1YzMwM2NjMGYyYjkxMTdjYzI3MjVkZWYxZmI5NzMifQ==; session.sig=yw92ZnSFz083WR13ah0hkg0vgSQ\"],\"trailers\":{},\"rawTrailers\":[],\"aborted\":false,\"upgrade\":false,\"url\":\"/\",\"method\":\"POST\",\"statusCode\":null,\"statusMessage\":null,\"client\":{\"connecting\":false,\"_hadError\":false,\"_parent\":null,\"_host\":null,\"_eventsCount\":8,\"allowHalfOpen\":true,\"_pendingData\":null,\"_pendingEncoding\":\"\",\"_paused\":false,\"_httpMessage\":null,\"timeout\":5000,\"bytesRead\":7240,\"remoteAddress\":\"::1\",\"remoteFamily\":\"IPv6\",\"remotePort\":54378,\"localAddress\":\"::1\",\"localPort\":3000,\"_bytesDispatched\":1099641,\"bytesWritten\":1099641},\"_consuming\":true,\"_dumped\":false,\"next\":{},\"baseUrl\":\"/admin-api\",\"originalUrl\":\"/admin-api\",\"_parsedUrl\":{\"protocol\":null,\"slashes\":null,\"auth\":null,\"host\":null,\"port\":null,\"hostname\":null,\"hash\":null,\"search\":null,\"query\":null,\"pathname\":\"/\",\"path\":\"/\",\"href\":\"/\",\"_raw\":\"/\"},\"params\":{},\"query\":{},\"res\":{\"_eventsCount\":1,\"outputData\":[],\"outputSize\":0,\"writable\":true,\"destroyed\":false,\"_last\":false,\"chunkedEncoding\":false,\"shouldKeepAlive\":true,\"_defaultKeepAlive\":true,\"useChunkedEncodingByDefault\":true,\"sendDate\":true,\"_removedConnection\":false,\"_removedContLen\":false,\"_removedTE\":false,\"_contentLength\":157,\"_hasBody\":true,\"_trailer\":\"\",\"finished\":true,\"_headerSent\":true,\"socket\":null,\"_header\":\"HTTP/1.1 200 OK\\r\\nX-Powered-By: Express\\r\\nAccess-Control-Allow-Origin: http://localhost:3000\\r\\nVary: Origin\\r\\nAccess-Control-Allow-Credentials: true\\r\\nAccess-Control-Expose-Headers: vendure-auth-token\\r\\nContent-Language: en-US\\r\\nContent-Type: application/json; charset=utf-8\\r\\nContent-Length: 157\\r\\nETag: W/\\\"9d-ef3QMKXJlkOW+hnH3RgnSV1yo60\\\"\\r\\nDate: Wed, 28 Dec 2022 04:35:48 GMT\\r\\nConnection: keep-alive\\r\\nKeep-Alive: timeout=5\\r\\n\\r\\n\",\"_keepAliveTimeout\":5000,\"_sent100\":false,\"_expect_continue\":false,\"statusCode\":200,\"statusMessage\":\"OK\",\"headersSent\":true},\"sessionOptions\":{\"secret\":\"ne2baczyggs\",\"httpOnly\":true,\"overwrite\":true,\"signed\":true},\"session\":{\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\"},\"body\":{\"operationName\":null,\"query\":\"mutation {\\n  addRandomCat(id: \\\"4\\\") {\\n    id\\n    name\\n    customFields {\\n      catImageUrl\\n    }\\n  }\\n}\\n\"},\"_body\":true,\"i18nextLookupName\":\"header\",\"lng\":\"en-US\",\"locale\":\"en-US\",\"language\":\"en-US\",\"languages\":[\"en-US\",\"en\"],\"i18n\":{\"language\":\"en-US\",\"isInitialized\":true,\"languages\":[\"en-US\",\"en\"]},\"t\":{},\"vendureRequestContext\":{\"_apiType\":\"admin\",\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"vendureRequestContextMap\":{},\"app\":{\"_eventsCount\":1,\"mountpath\":\"/\"},\"header\":{},\"get\":{},\"accepts\":{},\"acceptsEncodings\":{},\"acceptsEncoding\":{},\"acceptsCharsets\":{},\"acceptsCharset\":{},\"acceptsLanguages\":{},\"acceptsLanguage\":{},\"range\":{},\"param\":{},\"is\":{},\"protocol\":\"http\",\"secure\":false,\"ip\":\"::1\",\"ips\":[],\"subdomains\":[],\"path\":\"/\",\"hostname\":\"localhost\",\"fresh\":false,\"stale\":true,\"xhr\":false,\"setTimeout\":{},\"_read\":{},\"destroy\":{},\"_addHeaderLines\":{},\"_addHeaderLine\":{},\"_dump\":{},\"_undestroy\":{},\"_destroy\":{},\"push\":{},\"unshift\":{},\"isPaused\":{},\"setEncoding\":{},\"read\":{},\"pipe\":{},\"unpipe\":{},\"on\":{},\"addListener\":{},\"removeListener\":{},\"off\":{},\"removeAllListeners\":{},\"resume\":{},\"pause\":{},\"wrap\":{},\"setMaxListeners\":{},\"getMaxListeners\":{},\"emit\":{},\"prependListener\":{},\"once\":{},\"prependOnceListener\":{},\"listeners\":{},\"rawListeners\":{},\"listenerCount\":{},\"eventNames\":{}},\"_apiType\":\"admin\",\"_channel\":{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1,\"defaultShippingZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"cacheExpiry\":1672202411,\"id\":2,\"token\":\"7add4a7b85b4cfbeba71fe1e448f99b4b15c303cc0f2b9117cc2725def1fb973\",\"expires\":\"2023-12-28T09:40:05.000Z\",\"activeOrderId\":null,\"activeChannelId\":1,\"authenticationStrategy\":\"native\",\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[{\"id\":1,\"token\":\"c2d2ubuj7rtmop287x5p\",\"code\":\"__default_channel__\",\"permissions\":[\"Authenticated\",\"SuperAdmin\",\"UpdateGlobalSettings\",\"CreateCatalog\",\"ReadCatalog\",\"UpdateCatalog\",\"DeleteCatalog\",\"CreateSettings\",\"ReadSettings\",\"UpdateSettings\",\"DeleteSettings\",\"CreateAdministrator\",\"ReadAdministrator\",\"UpdateAdministrator\",\"DeleteAdministrator\",\"CreateAsset\",\"ReadAsset\",\"UpdateAsset\",\"DeleteAsset\",\"CreateChannel\",\"ReadChannel\",\"UpdateChannel\",\"DeleteChannel\",\"CreateCollection\",\"ReadCollection\",\"UpdateCollection\",\"DeleteCollection\",\"CreateCountry\",\"ReadCountry\",\"UpdateCountry\",\"DeleteCountry\",\"CreateCustomer\",\"ReadCustomer\",\"UpdateCustomer\",\"DeleteCustomer\",\"CreateCustomerGroup\",\"ReadCustomerGroup\",\"UpdateCustomerGroup\",\"DeleteCustomerGroup\",\"CreateFacet\",\"ReadFacet\",\"UpdateFacet\",\"DeleteFacet\",\"CreateOrder\",\"ReadOrder\",\"UpdateOrder\",\"DeleteOrder\",\"CreatePaymentMethod\",\"ReadPaymentMethod\",\"UpdatePaymentMethod\",\"DeletePaymentMethod\",\"CreateProduct\",\"ReadProduct\",\"UpdateProduct\",\"DeleteProduct\",\"CreatePromotion\",\"ReadPromotion\",\"UpdatePromotion\",\"DeletePromotion\",\"CreateShippingMethod\",\"ReadShippingMethod\",\"UpdateShippingMethod\",\"DeleteShippingMethod\",\"CreateTag\",\"ReadTag\",\"UpdateTag\",\"DeleteTag\",\"CreateTaxCategory\",\"ReadTaxCategory\",\"UpdateTaxCategory\",\"DeleteTaxCategory\",\"CreateTaxRate\",\"ReadTaxRate\",\"UpdateTaxRate\",\"DeleteTaxRate\",\"CreateSystem\",\"ReadSystem\",\"UpdateSystem\",\"DeleteSystem\",\"CreateZone\",\"ReadZone\",\"UpdateZone\",\"DeleteZone\"]}]}},\"_languageCode\":\"en\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false},\"collectionIds\":[1,3,4,2,9,8,10,7,6,5]}', 'COMPLETED', 100, NULL, NULL, '2022-12-28 04:35:48.481000', '2022-12-28 04:35:48.693000', 1, 0, 1, 40),
('2023-06-13 12:17:55.735909', '2023-06-13 12:17:56.000000', 'send-email', '{\"type\":\"order-confirmation\",\"recipient\":\"9876543213@kaikani.com\",\"from\":\"{{ fromAddress }}\",\"templateVars\":{\"fromAddress\":\"\\\"example\\\" <noreply@example.com>\",\"verifyEmailAddressUrl\":\"http://localhost:8080/verify\",\"passwordResetUrl\":\"http://localhost:8080/password-reset\",\"changeEmailAddressUrl\":\"http://localhost:8080/verify-email-address-change\",\"order\":{\"createdAt\":\"2023-03-17T09:48:11.970Z\",\"updatedAt\":\"2023-03-17T12:00:25.721Z\",\"code\":\"2MHM2MZMEPJRGQ18\",\"state\":\"PaymentSettled\",\"active\":false,\"orderPlacedAt\":\"2023-03-17T05:19:03.000Z\",\"couponCodes\":[],\"shippingAddress\":{\"fullName\":\"fname lname\",\"company\":null,\"streetLine1\":\"khekei\",\"streetLine2\":\"kododie\",\"city\":\"madurai\",\"province\":\"Maharashtra\",\"postalCode\":\"54245\",\"countryCode\":\"IN\",\"phoneNumber\":\"9876543213\",\"defaultShippingAddress\":null,\"defaultBillingAddress\":null,\"customFields\":null,\"country\":\"India\"},\"billingAddress\":{},\"currencyCode\":\"USD\",\"subTotal\":489700,\"subTotalWithTax\":587640,\"shipping\":500,\"shippingWithTax\":500,\"id\":1,\"taxZoneId\":2,\"customFields\":{\"clientRequestToCancel\":0},\"channels\":[{\"token\":\"c2d2ubuj7rtmop287x5p\",\"createdAt\":\"2022-12-27T19:46:04.949Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"code\":\"__default_channel__\",\"defaultLanguageCode\":\"en\",\"currencyCode\":\"USD\",\"pricesIncludeTax\":false,\"id\":1}],\"customer\":{\"createdAt\":\"2023-03-01T22:21:52.767Z\",\"updatedAt\":\"2023-03-01T22:21:54.000Z\",\"deletedAt\":null,\"title\":\"\",\"firstName\":\"\",\"lastName\":\"\",\"phoneNumber\":\"9876543213\",\"emailAddress\":\"9876543213@kaikani.com\",\"id\":3,\"user\":{\"createdAt\":\"2023-03-01T22:21:54.812Z\",\"updatedAt\":\"2023-03-20T12:43:03.000Z\",\"deletedAt\":null,\"identifier\":\"9876543213@kaikani.com\",\"verified\":true,\"lastLogin\":\"2023-03-20T06:43:03.000Z\",\"id\":4}},\"lines\":[{\"createdAt\":\"2023-03-17T09:48:12.079Z\",\"updatedAt\":\"2023-03-17T09:48:12.079Z\",\"id\":1,\"items\":[{\"createdAt\":\"2023-03-17T09:48:12.100Z\",\"updatedAt\":\"2023-03-17T09:48:12.127Z\",\"initialListPrice\":129900,\"listPrice\":129900,\"listPriceIncludesTax\":false,\"adjustments\":[],\"taxLines\":[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}],\"cancelled\":false,\"id\":1,\"lineId\":1,\"refundId\":null,\"fulfillments\":[],\"unitPrice\":129900,\"unitPriceWithTax\":155880,\"taxRate\":20,\"unitTax\":25980,\"discountedUnitPrice\":129900,\"discountedUnitPriceWithTax\":155880,\"proratedUnitPrice\":129900,\"proratedUnitPriceWithTax\":155880,\"proratedUnitTax\":25980}],\"productVariant\":{\"createdAt\":\"2022-12-27T19:46:10.640Z\",\"updatedAt\":\"2023-03-17T11:19:03.000Z\",\"deletedAt\":null,\"enabled\":true,\"sku\":\"L2201308\",\"stockOnHand\":100,\"stockAllocated\":1,\"outOfStockThreshold\":0,\"useGlobalOutOfStockThreshold\":true,\"trackInventory\":\"INHERIT\",\"id\":1,\"productId\":1,\"taxCategory\":{\"createdAt\":\"2022-12-27T19:46:09.919Z\",\"updatedAt\":\"2022-12-27T19:46:09.919Z\",\"name\":\"Standard Tax\",\"isDefault\":false,\"id\":1},\"productVariantPrices\":[{\"createdAt\":\"2022-12-27T19:46:10.656Z\",\"updatedAt\":\"2022-12-27T19:46:10.656Z\",\"price\":129900,\"id\":1,\"channelId\":1}],\"translations\":[{\"createdAt\":\"2022-12-27T19:46:10.634Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"languageCode\":\"en\",\"name\":\"Laptop 13 inch 8GB\",\"id\":1}],\"price\":129900,\"priceWithTax\":155880,\"listPrice\":129900,\"listPriceIncludesTax\":false,\"taxRateApplied\":{\"createdAt\":\"2022-12-27T19:46:09.944Z\",\"updatedAt\":\"2022-12-27T19:46:09.944Z\",\"name\":\"Standard Tax Europe\",\"enabled\":true,\"value\":20,\"id\":2,\"category\":{\"createdAt\":\"2022-12-27T19:46:09.919Z\",\"updatedAt\":\"2022-12-27T19:46:09.919Z\",\"name\":\"Standard Tax\",\"isDefault\":false,\"id\":1},\"zone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"customerGroup\":null},\"currencyCode\":\"USD\",\"languageCode\":\"en\",\"name\":\"Laptop 13 inch 8GB\"},\"featuredAsset\":{\"createdAt\":\"2022-12-27T19:46:10.383Z\",\"updatedAt\":\"2022-12-27T19:46:10.383Z\",\"name\":\"derick-david-409858-unsplash.jpg\",\"type\":\"IMAGE\",\"mimeType\":\"image/jpeg\",\"width\":1600,\"height\":1200,\"fileSize\":44525,\"source\":\"source/b6/derick-david-409858-unsplash.jpg\",\"preview\":\"http://localhost:3001/assets/preview/71/derick-david-409858-unsplash__preview.jpg\",\"focalPoint\":null,\"id\":1},\"taxCategory\":{\"createdAt\":\"2022-12-27T19:46:09.919Z\",\"updatedAt\":\"2022-12-27T19:46:09.919Z\",\"name\":\"Standard Tax\",\"isDefault\":false,\"id\":1},\"unitPrice\":129900,\"unitPriceWithTax\":155880,\"unitPriceChangeSinceAdded\":0,\"unitPriceWithTaxChangeSinceAdded\":0,\"discountedUnitPrice\":129900,\"discountedUnitPriceWithTax\":155880,\"proratedUnitPrice\":129900,\"proratedUnitPriceWithTax\":155880,\"quantity\":1,\"adjustments\":[],\"taxLines\":[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}],\"taxRate\":20,\"linePrice\":129900,\"linePriceWithTax\":155880,\"discountedLinePrice\":129900,\"discountedLinePriceWithTax\":155880,\"discounts\":[],\"lineTax\":25980,\"proratedLinePrice\":129900,\"proratedLinePriceWithTax\":155880,\"proratedLineTax\":25980,\"activeItems\":[{\"createdAt\":\"2023-03-17T09:48:12.100Z\",\"updatedAt\":\"2023-03-17T09:48:12.127Z\",\"initialListPrice\":129900,\"listPrice\":129900,\"listPriceIncludesTax\":false,\"adjustments\":[],\"taxLines\":[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}],\"cancelled\":false,\"id\":1,\"lineId\":1,\"refundId\":null,\"fulfillments\":[],\"unitPrice\":129900,\"unitPriceWithTax\":155880,\"taxRate\":20,\"unitTax\":25980,\"discountedUnitPrice\":129900,\"discountedUnitPriceWithTax\":155880,\"proratedUnitPrice\":129900,\"proratedUnitPriceWithTax\":155880,\"proratedUnitTax\":25980}],\"firstItem\":{\"createdAt\":\"2023-03-17T09:48:12.100Z\",\"updatedAt\":\"2023-03-17T09:48:12.127Z\",\"initialListPrice\":129900,\"listPrice\":129900,\"listPriceIncludesTax\":false,\"adjustments\":[],\"taxLines\":[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}],\"cancelled\":false,\"id\":1,\"lineId\":1,\"refundId\":null,\"fulfillments\":[],\"unitPrice\":129900,\"unitPriceWithTax\":155880,\"taxRate\":20,\"unitTax\":25980,\"discountedUnitPrice\":129900,\"discountedUnitPriceWithTax\":155880,\"proratedUnitPrice\":129900,\"proratedUnitPriceWithTax\":155880,\"proratedUnitTax\":25980}},{\"createdAt\":\"2023-03-17T09:48:14.642Z\",\"updatedAt\":\"2023-03-17T09:48:14.642Z\",\"id\":2,\"items\":[{\"createdAt\":\"2023-03-17T09:48:14.653Z\",\"updatedAt\":\"2023-03-17T09:48:14.675Z\",\"initialListPrice\":139900,\"listPrice\":139900,\"listPriceIncludesTax\":false,\"adjustments\":[],\"taxLines\":[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}],\"cancelled\":false,\"id\":2,\"lineId\":2,\"refundId\":null,\"fulfillments\":[],\"unitPrice\":139900,\"unitPriceWithTax\":167880,\"taxRate\":20,\"unitTax\":27980,\"discountedUnitPrice\":139900,\"discountedUnitPriceWithTax\":167880,\"proratedUnitPrice\":139900,\"proratedUnitPriceWithTax\":167880,\"proratedUnitTax\":27980}],\"productVariant\":{\"createdAt\":\"2022-12-27T19:46:10.675Z\",\"updatedAt\":\"2023-03-17T11:19:03.000Z\",\"deletedAt\":null,\"enabled\":true,\"sku\":\"L2201508\",\"stockOnHand\":100,\"stockAllocated\":1,\"outOfStockThreshold\":0,\"useGlobalOutOfStockThreshold\":true,\"trackInventory\":\"INHERIT\",\"id\":2,\"productId\":1,\"taxCategory\":{\"createdAt\":\"2022-12-27T19:46:09.919Z\",\"updatedAt\":\"2022-12-27T19:46:09.919Z\",\"name\":\"Standard Tax\",\"isDefault\":false,\"id\":1},\"productVariantPrices\":[{\"createdAt\":\"2022-12-27T19:46:10.693Z\",\"updatedAt\":\"2022-12-27T19:46:10.693Z\",\"price\":139900,\"id\":2,\"channelId\":1}],\"translations\":[{\"createdAt\":\"2022-12-27T19:46:10.667Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"languageCode\":\"en\",\"name\":\"Laptop 15 inch 8GB\",\"id\":2}],\"price\":139900,\"priceWithTax\":167880,\"listPrice\":139900,\"listPriceIncludesTax\":false,\"taxRateApplied\":{\"createdAt\":\"2022-12-27T19:46:09.944Z\",\"updatedAt\":\"2022-12-27T19:46:09.944Z\",\"name\":\"Standard Tax Europe\",\"enabled\":true,\"value\":20,\"id\":2,\"category\":{\"createdAt\":\"2022-12-27T19:46:09.919Z\",\"updatedAt\":\"2022-12-27T19:46:09.919Z\",\"name\":\"Standard Tax\",\"isDefault\":false,\"id\":1},\"zone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"customerGroup\":null},\"currencyCode\":\"USD\",\"languageCode\":\"en\",\"name\":\"Laptop 15 inch 8GB\"},\"featuredAsset\":{\"createdAt\":\"2022-12-27T19:46:10.383Z\",\"updatedAt\":\"2022-12-27T19:46:10.383Z\",\"name\":\"derick-david-409858-unsplash.jpg\",\"type\":\"IMAGE\",\"mimeType\":\"image/jpeg\",\"width\":1600,\"height\":1200,\"fileSize\":44525,\"source\":\"source/b6/derick-david-409858-unsplash.jpg\",\"preview\":\"http://localhost:3001/assets/preview/71/derick-david-409858-unsplash__preview.jpg\",\"focalPoint\":null,\"id\":1},\"taxCategory\":{\"createdAt\":\"2022-12-27T19:46:09.919Z\",\"updatedAt\":\"2022-12-27T19:46:09.919Z\",\"name\":\"Standard Tax\",\"isDefault\":false,\"id\":1},\"unitPrice\":139900,\"unitPriceWithTax\":167880,\"unitPriceChangeSinceAdded\":0,\"unitPriceWithTaxChangeSinceAdded\":0,\"discountedUnitPrice\":139900,\"discountedUnitPriceWithTax\":167880,\"proratedUnitPrice\":139900,\"proratedUnitPriceWithTax\":167880,\"quantity\":1,\"adjustments\":[],\"taxLines\":[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}],\"taxRate\":20,\"linePrice\":139900,\"linePriceWithTax\":167880,\"discountedLinePrice\":139900,\"discountedLinePriceWithTax\":167880,\"discounts\":[],\"lineTax\":27980,\"proratedLinePrice\":139900,\"proratedLinePriceWithTax\":167880,\"proratedLineTax\":27980,\"activeItems\":[{\"createdAt\":\"2023-03-17T09:48:14.653Z\",\"updatedAt\":\"2023-03-17T09:48:14.675Z\",\"initialListPrice\":139900,\"listPrice\":139900,\"listPriceIncludesTax\":false,\"adjustments\":[],\"taxLines\":[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}],\"cancelled\":false,\"id\":2,\"lineId\":2,\"refundId\":null,\"fulfillments\":[],\"unitPrice\":139900,\"unitPriceWithTax\":167880,\"taxRate\":20,\"unitTax\":27980,\"discountedUnitPrice\":139900,\"discountedUnitPriceWithTax\":167880,\"proratedUnitPrice\":139900,\"proratedUnitPriceWithTax\":167880,\"proratedUnitTax\":27980}],\"firstItem\":{\"createdAt\":\"2023-03-17T09:48:14.653Z\",\"updatedAt\":\"2023-03-17T09:48:14.675Z\",\"initialListPrice\":139900,\"listPrice\":139900,\"listPriceIncludesTax\":false,\"adjustments\":[],\"taxLines\":[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}],\"cancelled\":false,\"id\":2,\"lineId\":2,\"refundId\":null,\"fulfillments\":[],\"unitPrice\":139900,\"unitPriceWithTax\":167880,\"taxRate\":20,\"unitTax\":27980,\"discountedUnitPrice\":139900,\"discountedUnitPriceWithTax\":167880,\"proratedUnitPrice\":139900,\"proratedUnitPriceWithTax\":167880,\"proratedUnitTax\":27980}},{\"createdAt\":\"2023-03-17T09:48:17.586Z\",\"updatedAt\":\"2023-03-17T09:48:17.586Z\",\"id\":3,\"items\":[{\"createdAt\":\"2023-03-17T09:48:17.608Z\",\"updatedAt\":\"2023-03-17T09:48:17.633Z\",\"initialListPrice\":219900,\"listPrice\":219900,\"listPriceIncludesTax\":false,\"adjustments\":[],\"taxLines\":[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}],\"cancelled\":false,\"id\":3,\"lineId\":3,\"refundId\":null,\"fulfillments\":[],\"unitPrice\":219900,\"unitPriceWithTax\":263880,\"taxRate\":20,\"unitTax\":43980,\"discountedUnitPrice\":219900,\"discountedUnitPriceWithTax\":263880,\"proratedUnitPrice\":219900,\"proratedUnitPriceWithTax\":263880,\"proratedUnitTax\":43980}],\"productVariant\":{\"createdAt\":\"2022-12-27T19:46:10.702Z\",\"updatedAt\":\"2023-03-17T11:19:03.000Z\",\"deletedAt\":null,\"enabled\":true,\"sku\":\"L2201316\",\"stockOnHand\":100,\"stockAllocated\":1,\"outOfStockThreshold\":0,\"useGlobalOutOfStockThreshold\":true,\"trackInventory\":\"INHERIT\",\"id\":3,\"productId\":1,\"taxCategory\":{\"createdAt\":\"2022-12-27T19:46:09.919Z\",\"updatedAt\":\"2022-12-27T19:46:09.919Z\",\"name\":\"Standard Tax\",\"isDefault\":false,\"id\":1},\"productVariantPrices\":[{\"createdAt\":\"2022-12-27T19:46:10.714Z\",\"updatedAt\":\"2022-12-27T19:46:10.714Z\",\"price\":219900,\"id\":3,\"channelId\":1}],\"translations\":[{\"createdAt\":\"2022-12-27T19:46:10.699Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"languageCode\":\"en\",\"name\":\"Laptop 13 inch 16GB\",\"id\":3}],\"price\":219900,\"priceWithTax\":263880,\"listPrice\":219900,\"listPriceIncludesTax\":false,\"taxRateApplied\":{\"createdAt\":\"2022-12-27T19:46:09.944Z\",\"updatedAt\":\"2022-12-27T19:46:09.944Z\",\"name\":\"Standard Tax Europe\",\"enabled\":true,\"value\":20,\"id\":2,\"category\":{\"createdAt\":\"2022-12-27T19:46:09.919Z\",\"updatedAt\":\"2022-12-27T19:46:09.919Z\",\"name\":\"Standard Tax\",\"isDefault\":false,\"id\":1},\"zone\":{\"createdAt\":\"2022-12-27T19:46:05.475Z\",\"updatedAt\":\"2022-12-27T19:46:05.475Z\",\"name\":\"Europe\",\"id\":2},\"customerGroup\":null},\"currencyCode\":\"USD\",\"languageCode\":\"en\",\"name\":\"Laptop 13 inch 16GB\"},\"featuredAsset\":{\"createdAt\":\"2022-12-27T19:46:10.383Z\",\"updatedAt\":\"2022-12-27T19:46:10.383Z\",\"name\":\"derick-david-409858-unsplash.jpg\",\"type\":\"IMAGE\",\"mimeType\":\"image/jpeg\",\"width\":1600,\"height\":1200,\"fileSize\":44525,\"source\":\"source/b6/derick-david-409858-unsplash.jpg\",\"preview\":\"http://localhost:3001/assets/preview/71/derick-david-409858-unsplash__preview.jpg\",\"focalPoint\":null,\"id\":1},\"taxCategory\":{\"createdAt\":\"2022-12-27T19:46:09.919Z\",\"updatedAt\":\"2022-12-27T19:46:09.919Z\",\"name\":\"Standard Tax\",\"isDefault\":false,\"id\":1},\"unitPrice\":219900,\"unitPriceWithTax\":263880,\"unitPriceChangeSinceAdded\":0,\"unitPriceWithTaxChangeSinceAdded\":0,\"discountedUnitPrice\":219900,\"discountedUnitPriceWithTax\":263880,\"proratedUnitPrice\":219900,\"proratedUnitPriceWithTax\":263880,\"quantity\":1,\"adjustments\":[],\"taxLines\":[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}],\"taxRate\":20,\"linePrice\":219900,\"linePriceWithTax\":263880,\"discountedLinePrice\":219900,\"discountedLinePriceWithTax\":263880,\"discounts\":[],\"lineTax\":43980,\"proratedLinePrice\":219900,\"proratedLinePriceWithTax\":263880,\"proratedLineTax\":43980,\"activeItems\":[{\"createdAt\":\"2023-03-17T09:48:17.608Z\",\"updatedAt\":\"2023-03-17T09:48:17.633Z\",\"initialListPrice\":219900,\"listPrice\":219900,\"listPriceIncludesTax\":false,\"adjustments\":[],\"taxLines\":[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}],\"cancelled\":false,\"id\":3,\"lineId\":3,\"refundId\":null,\"fulfillments\":[],\"unitPrice\":219900,\"unitPriceWithTax\":263880,\"taxRate\":20,\"unitTax\":43980,\"discountedUnitPrice\":219900,\"discountedUnitPriceWithTax\":263880,\"proratedUnitPrice\":219900,\"proratedUnitPriceWithTax\":263880,\"proratedUnitTax\":43980}],\"firstItem\":{\"createdAt\":\"2023-03-17T09:48:17.608Z\",\"updatedAt\":\"2023-03-17T09:48:17.633Z\",\"initialListPrice\":219900,\"listPrice\":219900,\"listPriceIncludesTax\":false,\"adjustments\":[],\"taxLines\":[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}],\"cancelled\":false,\"id\":3,\"lineId\":3,\"refundId\":null,\"fulfillments\":[],\"unitPrice\":219900,\"unitPriceWithTax\":263880,\"taxRate\":20,\"unitTax\":43980,\"discountedUnitPrice\":219900,\"discountedUnitPriceWithTax\":263880,\"proratedUnitPrice\":219900,\"proratedUnitPriceWithTax\":263880,\"proratedUnitTax\":43980}}],\"shippingLines\":[{\"createdAt\":\"2023-03-17T11:18:11.587Z\",\"updatedAt\":\"2023-03-17T11:18:11.000Z\",\"listPrice\":500,\"listPriceIncludesTax\":false,\"adjustments\":[],\"taxLines\":[{\"description\":\"shipping tax\",\"taxRate\":0}],\"id\":1,\"shippingMethodId\":1,\"price\":500,\"priceWithTax\":500,\"discountedPrice\":500,\"discountedPriceWithTax\":500,\"taxRate\":0,\"discounts\":[],\"shippingMethod\":{\"allCheckers\":{\"default-shipping-eligibility-checker\":{\"options\":{\"code\":\"default-shipping-eligibility-checker\",\"description\":[{\"languageCode\":\"en\",\"value\":\"Default Shipping Eligibility Checker\"}],\"args\":{\"orderMinimum\":{\"type\":\"int\",\"defaultValue\":0,\"ui\":{\"component\":\"currency-form-input\"},\"label\":[{\"languageCode\":\"en\",\"value\":\"Minimum order value\"}],\"description\":[{\"languageCode\":\"en\",\"value\":\"Order is eligible only if its total is greater or equal to this value\"}]}}},\"shouldRunCheckCache\":{\"cache\":{\"size\":0},\"ttl\":18000000,\"cacheSize\":5000}}},\"allCalculators\":{\"default-shipping-calculator\":{\"options\":{\"code\":\"default-shipping-calculator\",\"description\":[{\"languageCode\":\"en\",\"value\":\"Default Flat-Rate Shipping Calculator\"}],\"args\":{\"rate\":{\"type\":\"int\",\"defaultValue\":0,\"ui\":{\"component\":\"currency-form-input\"},\"label\":[{\"languageCode\":\"en\",\"value\":\"Shipping price\"}]},\"includesTax\":{\"type\":\"string\",\"defaultValue\":\"auto\",\"ui\":{\"component\":\"select-form-input\",\"options\":[{\"label\":[{\"languageCode\":\"en\",\"value\":\"Includes tax\"}],\"value\":\"include\"},{\"label\":[{\"languageCode\":\"en\",\"value\":\"Excludes tax\"}],\"value\":\"exclude\"},{\"label\":[{\"languageCode\":\"en\",\"value\":\"Auto (based on Channel)\"}],\"value\":\"auto\"}]},\"label\":[{\"languageCode\":\"en\",\"value\":\"Price includes tax\"}]},\"taxRate\":{\"type\":\"int\",\"defaultValue\":0,\"ui\":{\"component\":\"number-form-input\",\"suffix\":\"%\"},\"label\":[{\"languageCode\":\"en\",\"value\":\"Tax rate\"}]}}}}},\"createdAt\":\"2022-12-27T19:46:10.166Z\",\"updatedAt\":\"2022-12-27T19:46:10.166Z\",\"deletedAt\":null,\"code\":\"standard-shipping\",\"checker\":{\"code\":\"default-shipping-eligibility-checker\",\"args\":[{\"name\":\"orderMinimum\",\"value\":\"0\"}]},\"calculator\":{\"code\":\"default-shipping-calculator\",\"args\":[{\"name\":\"rate\",\"value\":\"500\"},{\"name\":\"includesTax\",\"value\":\"auto\"},{\"name\":\"taxRate\",\"value\":\"0\"}]},\"fulfillmentHandlerCode\":\"manual-fulfillment\",\"id\":1,\"translations\":[{\"createdAt\":\"2022-12-27T19:46:10.161Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"languageCode\":\"en\",\"name\":\"Standard Shipping\",\"description\":\"\",\"id\":1}],\"languageCode\":\"en\",\"name\":\"Standard Shipping\",\"description\":\"\"}}],\"surcharges\":[],\"discounts\":[],\"total\":490200,\"totalWithTax\":588140,\"totalQuantity\":3,\"taxSummary\":[{\"taxRate\":20,\"description\":\"Standard Tax Europe\",\"taxBase\":489700,\"taxTotal\":97940},{\"taxRate\":0,\"description\":\"shipping tax\",\"taxBase\":500,\"taxTotal\":0}],\"payments\":[{\"createdAt\":\"2023-03-17T11:19:03.059Z\",\"updatedAt\":\"2023-06-13T12:17:55.000Z\",\"method\":\"standard-payment\",\"amount\":588140,\"state\":\"Settled\",\"errorMessage\":null,\"transactionId\":\"0p7kdxyyuj\",\"metadata\":\"{\\\"paymentId\\\":\\\"pay_LSTQR6FnlnobYH\\\",\\\"orderId\\\":\\\"order_LSTPuXhIuVBzvZ\\\",\\\"signature\\\":\\\"5f0be38b53c18ae41811a7165e8f11947b3e31207a0a47bc133361e61b32100e\\\"}\",\"id\":1,\"refunds\":[]}]},\"shippingLines\":[{\"createdAt\":\"2023-03-17T11:18:11.587Z\",\"updatedAt\":\"2023-03-17T11:18:11.000Z\",\"listPrice\":500,\"listPriceIncludesTax\":false,\"adjustments\":[],\"taxLines\":[{\"description\":\"shipping tax\",\"taxRate\":0}],\"id\":1,\"shippingMethodId\":1,\"price\":500,\"priceWithTax\":500,\"discountedPrice\":500,\"discountedPriceWithTax\":500,\"taxRate\":0,\"discounts\":[],\"shippingMethod\":{\"allCheckers\":{\"default-shipping-eligibility-checker\":{\"options\":{\"code\":\"default-shipping-eligibility-checker\",\"description\":[{\"languageCode\":\"en\",\"value\":\"Default Shipping Eligibility Checker\"}],\"args\":{\"orderMinimum\":{\"type\":\"int\",\"defaultValue\":0,\"ui\":{\"component\":\"currency-form-input\"},\"label\":[{\"languageCode\":\"en\",\"value\":\"Minimum order value\"}],\"description\":[{\"languageCode\":\"en\",\"value\":\"Order is eligible only if its total is greater or equal to this value\"}]}}},\"shouldRunCheckCache\":{\"cache\":{\"size\":0},\"ttl\":18000000,\"cacheSize\":5000}}},\"allCalculators\":{\"default-shipping-calculator\":{\"options\":{\"code\":\"default-shipping-calculator\",\"description\":[{\"languageCode\":\"en\",\"value\":\"Default Flat-Rate Shipping Calculator\"}],\"args\":{\"rate\":{\"type\":\"int\",\"defaultValue\":0,\"ui\":{\"component\":\"currency-form-input\"},\"label\":[{\"languageCode\":\"en\",\"value\":\"Shipping price\"}]},\"includesTax\":{\"type\":\"string\",\"defaultValue\":\"auto\",\"ui\":{\"component\":\"select-form-input\",\"options\":[{\"label\":[{\"languageCode\":\"en\",\"value\":\"Includes tax\"}],\"value\":\"include\"},{\"label\":[{\"languageCode\":\"en\",\"value\":\"Excludes tax\"}],\"value\":\"exclude\"},{\"label\":[{\"languageCode\":\"en\",\"value\":\"Auto (based on Channel)\"}],\"value\":\"auto\"}]},\"label\":[{\"languageCode\":\"en\",\"value\":\"Price includes tax\"}]},\"taxRate\":{\"type\":\"int\",\"defaultValue\":0,\"ui\":{\"component\":\"number-form-input\",\"suffix\":\"%\"},\"label\":[{\"languageCode\":\"en\",\"value\":\"Tax rate\"}]}}}}},\"createdAt\":\"2022-12-27T19:46:10.166Z\",\"updatedAt\":\"2022-12-27T19:46:10.166Z\",\"deletedAt\":null,\"code\":\"standard-shipping\",\"checker\":{\"code\":\"default-shipping-eligibility-checker\",\"args\":[{\"name\":\"orderMinimum\",\"value\":\"0\"}]},\"calculator\":{\"code\":\"default-shipping-calculator\",\"args\":[{\"name\":\"rate\",\"value\":\"500\"},{\"name\":\"includesTax\",\"value\":\"auto\"},{\"name\":\"taxRate\",\"value\":\"0\"}]},\"fulfillmentHandlerCode\":\"manual-fulfillment\",\"id\":1,\"translations\":[{\"createdAt\":\"2022-12-27T19:46:10.161Z\",\"updatedAt\":\"2022-12-27T19:46:10.000Z\",\"languageCode\":\"en\",\"name\":\"Standard Shipping\",\"description\":\"\",\"id\":1}],\"languageCode\":\"en\",\"name\":\"Standard Shipping\",\"description\":\"\"}}]},\"subject\":\"Order confirmation for #{{ order.code }}\",\"templateFile\":\"body.hbs\",\"attachments\":[]}', 'COMPLETED', 100, 'true', NULL, '2023-06-13 06:17:55.950000', '2023-06-13 06:17:56.479000', 1, 5, 1, 41);

-- --------------------------------------------------------

--
-- Table structure for table `job_record_buffer`
--

CREATE TABLE `job_record_buffer` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `bufferId` varchar(255) NOT NULL,
  `job` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `timestamp` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `timestamp`, `name`) VALUES
(1, 1683357392747, 'pages1683357392747');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `code` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `orderPlacedAt` datetime DEFAULT NULL,
  `couponCodes` text NOT NULL,
  `shippingAddress` text NOT NULL,
  `billingAddress` text NOT NULL,
  `currencyCode` varchar(255) NOT NULL,
  `subTotal` int(11) NOT NULL,
  `subTotalWithTax` int(11) NOT NULL,
  `shipping` int(11) NOT NULL DEFAULT 0,
  `shippingWithTax` int(11) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL,
  `taxZoneId` int(11) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  `customFieldsClientrequesttocancel` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`createdAt`, `updatedAt`, `code`, `state`, `active`, `orderPlacedAt`, `couponCodes`, `shippingAddress`, `billingAddress`, `currencyCode`, `subTotal`, `subTotalWithTax`, `shipping`, `shippingWithTax`, `id`, `taxZoneId`, `customerId`, `customFieldsClientrequesttocancel`) VALUES
('2023-03-17 09:48:11.970566', '2023-06-13 12:17:55.000000', '2MHM2MZMEPJRGQ18', 'PaymentSettled', 0, '2023-03-17 05:19:03', '', '{\"fullName\":\"fname lname\",\"company\":null,\"streetLine1\":\"khekei\",\"streetLine2\":\"kododie\",\"city\":\"madurai\",\"province\":\"Maharashtra\",\"postalCode\":\"54245\",\"countryCode\":\"IN\",\"phoneNumber\":\"9876543213\",\"defaultShippingAddress\":null,\"defaultBillingAddress\":null,\"customFields\":null,\"country\":\"India\"}', '{}', 'USD', 489700, 587640, 500, 500, 1, 2, 3, 0),
('2023-03-17 11:19:18.667189', '2023-03-20 14:18:56.000000', 'JX1JT7313HK1YCUN', 'AddingItems', 1, NULL, '', '{\"fullName\":\"fname laneme\",\"company\":null,\"streetLine1\":\"skeeidhk\",\"streetLine2\":\"eidhekei\",\"city\":\"madurai\",\"province\":\"Maharashtra\",\"postalCode\":\"5421\",\"countryCode\":\"IN\",\"phoneNumber\":\"9876543213\",\"defaultShippingAddress\":null,\"defaultBillingAddress\":null,\"customFields\":null,\"country\":\"India\"}', '{}', 'USD', 4059573, 4871488, 500, 500, 2, 2, 3, 1),
('2023-03-17 11:52:23.210259', '2023-03-17 11:52:23.000000', 'MVLA5CRABZPZL822', 'AddingItems', 1, NULL, '', '{}', '{}', 'USD', 129900, 155880, 0, 0, 3, 2, NULL, 0),
('2023-03-17 11:52:37.522427', '2023-03-17 11:52:37.000000', 'XSKUS47JEQ76945M', 'AddingItems', 1, NULL, '', '{}', '{}', 'USD', 139900, 167880, 0, 0, 4, 2, NULL, 0),
('2023-03-17 12:29:24.387316', '2023-03-17 12:29:24.000000', '5EKFUPQ6GHHCZGG9', 'AddingItems', 1, NULL, '', '{}', '{}', 'USD', 129900, 155880, 0, 0, 5, 2, NULL, 0),
('2023-03-17 12:41:58.872425', '2023-03-17 12:41:58.000000', '3LV46AHKKM2CTFQ1', 'AddingItems', 1, NULL, '', '{}', '{}', 'USD', 139900, 167880, 0, 0, 6, 2, NULL, 0),
('2023-03-17 12:42:00.279216', '2023-03-17 12:42:00.000000', 'TA4TJMHPZ5A3VZ3J', 'AddingItems', 1, NULL, '', '{}', '{}', 'USD', 129900, 155880, 0, 0, 7, 2, NULL, 0),
('2023-03-17 12:44:18.532752', '2023-03-17 12:44:18.000000', '1A1LMG6VNQQV3BCD', 'AddingItems', 1, NULL, '', '{}', '{}', 'USD', 139900, 167880, 0, 0, 8, 2, NULL, 0),
('2023-03-17 12:44:22.021536', '2023-03-17 12:44:22.000000', '1GSDFRDVGVQJX9TA', 'AddingItems', 1, NULL, '', '{}', '{}', 'USD', 129900, 155880, 0, 0, 9, 2, NULL, 0),
('2023-03-17 12:48:13.391953', '2023-03-17 12:48:13.000000', 'NDT12UMZB646RGUW', 'AddingItems', 1, NULL, '', '{}', '{}', 'USD', 129900, 155880, 0, 0, 10, 2, NULL, 0),
('2023-03-17 13:01:41.839411', '2023-03-17 13:01:41.000000', 'F2ZQ5B34DSMPZAS1', 'AddingItems', 1, NULL, '', '{}', '{}', 'USD', 139900, 167880, 0, 0, 11, 2, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_channels_channel`
--

CREATE TABLE `order_channels_channel` (
  `orderId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_channels_channel`
--

INSERT INTO `order_channels_channel` (`orderId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `initialListPrice` int(11) DEFAULT NULL,
  `listPrice` int(11) NOT NULL,
  `listPriceIncludesTax` tinyint(4) NOT NULL,
  `adjustments` text NOT NULL,
  `taxLines` text NOT NULL,
  `cancelled` tinyint(4) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL,
  `lineId` int(11) NOT NULL,
  `refundId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`createdAt`, `updatedAt`, `initialListPrice`, `listPrice`, `listPriceIncludesTax`, `adjustments`, `taxLines`, `cancelled`, `id`, `lineId`, `refundId`) VALUES
('2023-03-17 09:48:12.100738', '2023-03-17 09:48:12.127359', 129900, 129900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 1, 1, NULL),
('2023-03-17 09:48:14.653775', '2023-03-17 09:48:14.675816', 139900, 139900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 2, 2, NULL),
('2023-03-17 09:48:17.608150', '2023-03-17 09:48:17.633477', 219900, 219900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 3, 3, NULL),
('2023-03-17 11:52:23.399140', '2023-03-17 11:52:23.462679', 129900, 129900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 6, 6, NULL),
('2023-03-17 11:52:37.673039', '2023-03-17 11:52:37.691446', 139900, 139900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 7, 7, NULL),
('2023-03-17 12:29:24.556017', '2023-03-17 12:29:24.579110', 129900, 129900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 10, 10, NULL),
('2023-03-17 12:41:59.009701', '2023-03-17 12:41:59.027847', 139900, 139900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 13, 13, NULL),
('2023-03-17 12:42:00.354837', '2023-03-17 12:42:00.415778', 129900, 129900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 14, 14, NULL),
('2023-03-17 12:44:18.682615', '2023-03-17 12:44:18.704044', 139900, 139900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 15, 15, NULL),
('2023-03-17 12:44:22.134298', '2023-03-17 12:44:22.172805', 129900, 129900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 16, 16, NULL),
('2023-03-17 12:48:13.618905', '2023-03-17 12:48:13.659608', 129900, 129900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 17, 17, NULL),
('2023-03-17 13:01:42.059016', '2023-03-17 13:01:42.089274', 139900, 139900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 18, 18, NULL),
('2023-03-17 13:12:36.647563', '2023-03-17 13:12:36.673030', 129900, 129900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 19, 19, NULL),
('2023-03-17 13:13:09.716385', '2023-03-17 13:13:09.738824', 139900, 139900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 20, 20, NULL),
('2023-03-17 15:44:56.232548', '2023-03-17 15:44:56.264248', 129900, 129900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 21, 19, NULL),
('2023-03-17 15:46:23.238585', '2023-03-17 15:46:23.280734', 219900, 219900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 22, 21, NULL),
('2023-03-17 15:48:22.540459', '2023-03-17 15:48:22.563768', 32900, 32900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 23, 22, NULL),
('2023-03-18 09:57:47.559481', '2023-03-18 09:57:47.604150', 219900, 219900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 24, 21, NULL),
('2023-03-18 13:44:00.326123', '2023-03-18 13:44:00.353221', 32900, 32900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 25, 22, NULL),
('2023-03-18 13:45:20.873507', '2023-03-18 13:45:20.897717', 219900, 219900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 26, 21, NULL),
('2023-03-18 16:00:40.168531', '2023-03-18 16:00:40.196312', 129900, 129900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 27, 19, NULL),
('2023-03-18 16:01:47.351059', '2023-03-18 16:01:47.385297', 129900, 129900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 28, 19, NULL),
('2023-03-18 16:05:55.623038', '2023-03-18 16:05:55.659269', 129900, 129900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 29, 19, NULL),
('2023-03-18 16:48:12.600778', '2023-03-18 16:48:12.637366', 129900, 129900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 30, 19, NULL),
('2023-03-18 17:05:39.329900', '2023-03-18 17:05:39.365188', 219900, 219900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 31, 21, NULL),
('2023-03-18 21:00:57.144598', '2023-03-18 21:00:57.232512', 219900, 219900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 32, 21, NULL),
('2023-03-18 21:12:58.834811', '2023-03-18 21:12:58.852287', 139900, 139900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 33, 20, NULL),
('2023-03-18 21:15:14.692132', '2023-03-18 21:15:14.738598', 229900, 229900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 34, 23, NULL),
('2023-03-18 22:05:38.275798', '2023-03-18 22:05:38.304006', 32900, 32900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 35, 22, NULL),
('2023-03-18 22:56:58.916916', '2023-03-18 22:56:58.938341', 229900, 229900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 36, 23, NULL),
('2023-03-18 23:19:14.815747', '2023-03-18 23:19:14.846784', 32900, 32900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 37, 22, NULL),
('2023-03-18 23:20:05.672688', '2023-03-18 23:20:05.684957', 44500, 44500, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 38, 24, NULL),
('2023-03-20 11:16:53.134840', '2023-03-20 11:16:53.183080', 32900, 32900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 39, 22, NULL),
('2023-03-20 11:21:24.801032', '2023-03-20 11:21:24.824943', 44500, 44500, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 40, 24, NULL),
('2023-03-20 11:28:01.659291', '2023-03-20 11:28:01.676285', 229900, 229900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 41, 23, NULL),
('2023-03-20 11:28:15.277500', '2023-03-20 11:28:15.298136', 31000, 31000, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 42, 25, NULL),
('2023-03-20 11:31:55.500525', '2023-03-20 11:31:55.524953', 17499, 17499, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 43, 26, NULL),
('2023-03-20 11:32:05.812153', '2023-03-20 11:32:05.849221', 535000, 535000, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 44, 27, NULL),
('2023-03-20 12:21:12.778067', '2023-03-20 12:21:12.808340', 129900, 129900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 45, 19, NULL),
('2023-03-20 12:22:54.857794', '2023-03-20 12:22:54.870243', 229900, 229900, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 46, 23, NULL),
('2023-03-20 12:42:09.671188', '2023-03-20 12:42:09.699549', 14374, 14374, 0, '[]', '[{\"description\":\"Standard Tax Europe\",\"taxRate\":20}]', 0, 47, 28, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_item_fulfillments_fulfillment`
--

CREATE TABLE `order_item_fulfillments_fulfillment` (
  `orderItemId` int(11) NOT NULL,
  `fulfillmentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_line`
--

CREATE TABLE `order_line` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `id` int(11) NOT NULL,
  `productVariantId` int(11) DEFAULT NULL,
  `taxCategoryId` int(11) DEFAULT NULL,
  `featuredAssetId` int(11) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_line`
--

INSERT INTO `order_line` (`createdAt`, `updatedAt`, `id`, `productVariantId`, `taxCategoryId`, `featuredAssetId`, `orderId`) VALUES
('2023-03-17 09:48:12.079940', '2023-03-17 09:48:12.079000', 1, 1, 1, 1, 1),
('2023-03-17 09:48:14.642749', '2023-03-17 09:48:14.642000', 2, 2, 1, 1, 1),
('2023-03-17 09:48:17.586861', '2023-03-17 09:48:17.586000', 3, 3, 1, 1, 1),
('2023-03-17 11:52:23.359952', '2023-03-17 11:52:23.359000', 6, 1, 1, 1, 3),
('2023-03-17 11:52:37.633686', '2023-03-17 11:52:37.633000', 7, 2, 1, 1, 4),
('2023-03-17 12:29:24.538587', '2023-03-17 12:29:24.538000', 10, 1, 1, 1, 5),
('2023-03-17 12:41:58.989527', '2023-03-17 12:41:58.989000', 13, 2, 1, 1, 6),
('2023-03-17 12:42:00.341976', '2023-03-17 12:42:00.341000', 14, 1, 1, 1, 7),
('2023-03-17 12:44:18.653672', '2023-03-17 12:44:18.653000', 15, 2, 1, 1, 8),
('2023-03-17 12:44:22.122675', '2023-03-17 12:44:22.122000', 16, 1, 1, 1, 9),
('2023-03-17 12:48:13.594818', '2023-03-17 12:48:13.594000', 17, 1, 1, 1, 10),
('2023-03-17 13:01:42.037682', '2023-03-17 13:01:42.037000', 18, 2, 1, 1, 11),
('2023-03-17 13:12:36.619888', '2023-03-17 13:12:36.619000', 19, 1, 1, 1, 2),
('2023-03-17 13:13:09.696561', '2023-03-17 13:13:09.696000', 20, 2, 1, 1, 2),
('2023-03-17 15:46:23.196985', '2023-03-17 15:46:23.196000', 21, 3, 1, 1, 2),
('2023-03-17 15:48:22.515656', '2023-03-17 15:48:22.515000', 22, 5, 1, 2, 2),
('2023-03-18 21:15:14.650262', '2023-03-18 21:15:14.650000', 23, 4, 1, 1, 2),
('2023-03-18 23:20:05.653471', '2023-03-18 23:20:05.653000', 24, 6, 1, 2, 2),
('2023-03-20 11:28:15.249421', '2023-03-20 11:28:15.249000', 25, 8, 1, 4, 2),
('2023-03-20 11:31:55.485860', '2023-03-20 11:31:55.485000', 26, 26, 1, 12, 2),
('2023-03-20 11:32:05.792789', '2023-03-20 11:32:05.792000', 27, 28, 1, 14, 2),
('2023-03-20 12:42:09.646001', '2023-03-20 12:42:09.646000', 28, 9, 1, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `order_modification`
--

CREATE TABLE `order_modification` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `note` varchar(255) NOT NULL,
  `priceChange` int(11) NOT NULL,
  `shippingAddressChange` text DEFAULT NULL,
  `billingAddressChange` text DEFAULT NULL,
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `paymentId` int(11) DEFAULT NULL,
  `refundId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_modification_order_items_order_item`
--

CREATE TABLE `order_modification_order_items_order_item` (
  `orderModificationId` int(11) NOT NULL,
  `orderItemId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_promotions_promotion`
--

CREATE TABLE `order_promotions_promotion` (
  `orderId` int(11) NOT NULL,
  `promotionId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `position` int(11) NOT NULL DEFAULT 1,
  `enabled` tinyint(4) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`createdAt`, `updatedAt`, `position`, `enabled`, `id`) VALUES
('2023-05-06 13:26:29.051876', '2023-05-06 13:26:29.051876', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `page_section`
--

CREATE TABLE `page_section` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `value` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_sections_page_section`
--

CREATE TABLE `page_sections_page_section` (
  `pageId` int(11) NOT NULL,
  `pageSectionId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_translation`
--

CREATE TABLE `page_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `page_translation`
--

INSERT INTO `page_translation` (`createdAt`, `updatedAt`, `languageCode`, `title`, `slug`, `text`, `id`, `baseId`) VALUES
('2023-05-06 13:26:29.045662', '2023-05-06 13:26:29.000000', 'en', 'Home', 'home', '<p><strong>Home</strong></p><p><img src=\"https://www.google.com/url?sa=i&amp;url=https%3A%2F%2Fencrypted-tbn3.gstatic.com%2Flicensed-image%3Fq%3Dtbn%3AANd9GcRj8G7JTBwN_Z8I5-F38VdfaNlPp84xh7LdK8ZUFdEYXpcVhwPIyFmth2R2sXEV6qSb9hkQnIId0huwpnE&amp;psig=AOvVaw24ZiL7mcP6utWaLpTjj7UC&amp;ust=1683444452752000&amp;source=images&amp;cd=vfe&amp;ved=0CBEQjRxqFwoTCNDq1v6U4P4CFQAAAAAdAAAAABAE\" alt=\"test\" title=\"Promo\"></p><p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed porttitor lectus nibh. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Nulla porttitor accumsan tincidunt.</p><p></p><p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed porttitor lectus nibh. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Nulla porttitor accumsan tincidunt.</p>', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `method` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `state` varchar(255) NOT NULL,
  `errorMessage` varchar(255) DEFAULT NULL,
  `transactionId` varchar(255) DEFAULT NULL,
  `metadata` text NOT NULL,
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`createdAt`, `updatedAt`, `method`, `amount`, `state`, `errorMessage`, `transactionId`, `metadata`, `id`, `orderId`) VALUES
('2023-03-17 11:19:03.059987', '2023-06-13 12:17:55.000000', 'standard-payment', 588140, 'Settled', NULL, '0p7kdxyyuj', '\"{\\\"paymentId\\\":\\\"pay_LSTQR6FnlnobYH\\\",\\\"orderId\\\":\\\"order_LSTPuXhIuVBzvZ\\\",\\\"signature\\\":\\\"5f0be38b53c18ae41811a7165e8f11947b3e31207a0a47bc133361e61b32100e\\\"}\"', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `name` varchar(255) NOT NULL DEFAULT '',
  `code` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `enabled` tinyint(4) NOT NULL,
  `checker` text DEFAULT NULL,
  `handler` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`createdAt`, `updatedAt`, `name`, `code`, `description`, `enabled`, `checker`, `handler`, `id`) VALUES
('2022-12-27 19:46:10.225678', '2022-12-27 19:46:10.225678', 'Standard Payment', 'standard-payment', '', 1, NULL, '{\"code\":\"dummy-payment-handler\",\"args\":[{\"name\":\"automaticSettle\",\"value\":\"false\"}]}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_method_channels_channel`
--

CREATE TABLE `payment_method_channels_channel` (
  `paymentMethodId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_method_channels_channel`
--

INSERT INTO `payment_method_channels_channel` (`paymentMethodId`, `channelId`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  `id` int(11) NOT NULL,
  `featuredAssetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`createdAt`, `updatedAt`, `deletedAt`, `enabled`, `id`, `featuredAssetId`) VALUES
('2022-12-27 19:46:10.519121', '2022-12-28 10:35:12.000000', NULL, 1, 1, 1),
('2022-12-27 19:46:10.799636', '2022-12-27 19:46:10.799636', NULL, 1, 2, 2),
('2022-12-27 19:46:11.067002', '2022-12-27 19:46:11.067002', NULL, 1, 3, 3),
('2022-12-27 19:46:11.225675', '2022-12-28 10:35:48.000000', NULL, 1, 4, 4),
('2022-12-27 19:46:11.314231', '2022-12-27 19:46:11.314231', NULL, 1, 5, 5),
('2022-12-27 19:46:11.583376', '2022-12-27 19:46:11.583376', NULL, 1, 6, 6),
('2022-12-27 19:46:11.787632', '2022-12-27 19:46:11.787632', NULL, 1, 7, 7),
('2022-12-27 19:46:12.132560', '2022-12-27 19:46:12.132560', NULL, 1, 8, 8),
('2022-12-27 19:46:12.392057', '2022-12-27 19:46:12.392057', NULL, 1, 9, 9),
('2022-12-27 19:46:12.478121', '2022-12-27 19:46:12.478121', NULL, 1, 10, 10),
('2022-12-27 19:46:12.545169', '2022-12-27 19:46:12.545169', NULL, 1, 11, 11),
('2022-12-27 19:46:12.648621', '2022-12-27 19:46:12.648621', NULL, 1, 12, 12),
('2022-12-27 19:46:12.736315', '2022-12-27 19:46:12.736315', NULL, 1, 13, 13),
('2022-12-27 19:46:12.844564', '2022-12-27 19:46:12.844564', NULL, 1, 14, 14),
('2022-12-27 19:46:12.936663', '2022-12-27 19:46:12.936663', NULL, 1, 15, 15),
('2022-12-27 19:46:13.030487', '2022-12-27 19:46:13.030487', NULL, 1, 16, 16),
('2022-12-27 19:46:13.134569', '2022-12-27 19:46:13.134569', NULL, 1, 17, 17),
('2022-12-27 19:46:13.210123', '2022-12-27 19:46:13.210123', NULL, 1, 18, 18),
('2022-12-27 19:46:13.279559', '2022-12-27 19:46:13.279559', NULL, 1, 19, 19),
('2022-12-27 19:46:13.425420', '2022-12-27 19:46:13.425420', NULL, 1, 20, 20),
('2022-12-27 19:46:13.719596', '2022-12-27 19:46:13.719596', NULL, 1, 21, 21),
('2022-12-27 19:46:13.852827', '2022-12-27 19:46:13.852827', NULL, 1, 22, 22),
('2022-12-27 19:46:13.949113', '2022-12-27 19:46:13.949113', NULL, 1, 23, 23),
('2022-12-27 19:46:14.030149', '2022-12-27 19:46:14.030149', NULL, 1, 24, 24),
('2022-12-27 19:46:14.130297', '2022-12-27 19:46:14.130297', NULL, 1, 25, 25),
('2022-12-27 19:46:14.262754', '2022-12-27 19:46:14.262754', NULL, 1, 26, 26),
('2022-12-27 19:46:14.369318', '2022-12-27 19:46:14.369318', NULL, 1, 27, 27),
('2022-12-27 19:46:14.466274', '2022-12-27 19:46:14.466274', NULL, 1, 28, 28),
('2022-12-27 19:46:14.718562', '2022-12-27 19:46:14.718562', NULL, 1, 29, 29),
('2022-12-27 19:46:15.021545', '2022-12-27 19:46:15.021545', NULL, 1, 30, 30),
('2022-12-27 19:46:15.240452', '2022-12-27 19:46:15.240452', NULL, 1, 31, 31),
('2022-12-27 19:46:15.443692', '2022-12-27 19:46:15.443692', NULL, 1, 32, 32),
('2022-12-27 19:46:15.716392', '2022-12-27 19:46:15.716392', NULL, 1, 33, 33),
('2022-12-27 19:46:15.945364', '2022-12-27 19:46:15.945364', NULL, 1, 34, 34),
('2022-12-27 19:46:16.247726', '2022-12-27 19:46:16.247726', NULL, 1, 35, 35),
('2022-12-27 19:46:16.328453', '2022-12-27 19:46:16.328453', NULL, 1, 36, 36),
('2022-12-27 19:46:16.400219', '2022-12-27 19:46:16.400219', NULL, 1, 37, 37),
('2022-12-27 19:46:16.478703', '2022-12-27 19:46:16.478703', NULL, 1, 38, 38),
('2022-12-27 19:46:16.564895', '2022-12-27 19:46:16.564895', NULL, 1, 39, 39),
('2022-12-27 19:46:16.758673', '2022-12-27 19:46:16.758673', NULL, 1, 40, 40),
('2022-12-27 19:46:16.861840', '2022-12-27 19:46:16.861840', NULL, 1, 41, 41),
('2022-12-27 19:46:16.957140', '2022-12-27 19:46:16.957140', NULL, 1, 42, 42),
('2022-12-27 19:46:17.078269', '2022-12-27 19:46:17.078269', NULL, 1, 43, 43),
('2022-12-27 19:46:17.159288', '2022-12-27 19:46:17.159288', NULL, 1, 44, 44),
('2022-12-27 19:46:17.234432', '2022-12-27 19:46:17.234432', NULL, 1, 45, 45),
('2022-12-27 19:46:17.308677', '2022-12-27 19:46:17.308677', NULL, 1, 46, 46),
('2022-12-27 19:46:17.385413', '2022-12-27 19:46:17.385413', NULL, 1, 47, 47),
('2022-12-27 19:46:17.460910', '2022-12-27 19:46:17.460910', NULL, 1, 48, 48),
('2022-12-27 19:46:17.556745', '2022-12-27 19:46:17.556745', NULL, 1, 49, 49),
('2022-12-27 19:46:17.634882', '2022-12-27 19:46:17.634882', NULL, 1, 50, 50),
('2022-12-27 19:46:17.805963', '2022-12-27 19:46:17.805963', NULL, 1, 51, 51),
('2022-12-27 19:46:17.876306', '2022-12-27 19:46:17.876306', NULL, 1, 52, 52),
('2022-12-27 19:46:17.952848', '2022-12-27 19:46:17.952848', NULL, 1, 53, 53),
('2022-12-27 19:46:18.029002', '2022-12-27 19:46:18.029002', NULL, 1, 54, 54);

-- --------------------------------------------------------

--
-- Table structure for table `product_asset`
--

CREATE TABLE `product_asset` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `assetId` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_asset`
--

INSERT INTO `product_asset` (`createdAt`, `updatedAt`, `assetId`, `position`, `productId`, `id`) VALUES
('2022-12-27 19:46:10.541650', '2022-12-27 19:46:10.541650', 1, 0, 1, 1),
('2022-12-27 19:46:10.821141', '2022-12-27 19:46:10.821141', 2, 0, 2, 2),
('2022-12-27 19:46:11.073822', '2022-12-27 19:46:11.073822', 3, 0, 3, 3),
('2022-12-27 19:46:11.233597', '2022-12-27 19:46:11.233597', 4, 0, 4, 4),
('2022-12-27 19:46:11.319663', '2022-12-27 19:46:11.319663', 5, 0, 5, 5),
('2022-12-27 19:46:11.593818', '2022-12-27 19:46:11.593818', 6, 0, 6, 6),
('2022-12-27 19:46:11.795488', '2022-12-27 19:46:11.795488', 7, 0, 7, 7),
('2022-12-27 19:46:12.145009', '2022-12-27 19:46:12.145009', 8, 0, 8, 8),
('2022-12-27 19:46:12.398063', '2022-12-27 19:46:12.398063', 9, 0, 9, 9),
('2022-12-27 19:46:12.483703', '2022-12-27 19:46:12.483703', 10, 0, 10, 10),
('2022-12-27 19:46:12.551335', '2022-12-27 19:46:12.551335', 11, 0, 11, 11),
('2022-12-27 19:46:12.659814', '2022-12-27 19:46:12.659814', 12, 0, 12, 12),
('2022-12-27 19:46:12.743387', '2022-12-27 19:46:12.743387', 13, 0, 13, 13),
('2022-12-27 19:46:12.850236', '2022-12-27 19:46:12.850236', 14, 0, 14, 14),
('2022-12-27 19:46:12.942237', '2022-12-27 19:46:12.942237', 15, 0, 15, 15),
('2022-12-27 19:46:13.035792', '2022-12-27 19:46:13.035792', 16, 0, 16, 16),
('2022-12-27 19:46:13.140535', '2022-12-27 19:46:13.140535', 17, 0, 17, 17),
('2022-12-27 19:46:13.217221', '2022-12-27 19:46:13.217221', 18, 0, 18, 18),
('2022-12-27 19:46:13.285842', '2022-12-27 19:46:13.285842', 19, 0, 19, 19),
('2022-12-27 19:46:13.431360', '2022-12-27 19:46:13.431360', 20, 0, 20, 20),
('2022-12-27 19:46:13.745448', '2022-12-27 19:46:13.745448', 21, 0, 21, 21),
('2022-12-27 19:46:13.868695', '2022-12-27 19:46:13.868695', 22, 0, 22, 22),
('2022-12-27 19:46:13.956493', '2022-12-27 19:46:13.956493', 23, 0, 23, 23),
('2022-12-27 19:46:14.035750', '2022-12-27 19:46:14.035750', 24, 0, 24, 24),
('2022-12-27 19:46:14.136437', '2022-12-27 19:46:14.136437', 25, 0, 25, 25),
('2022-12-27 19:46:14.277392', '2022-12-27 19:46:14.277392', 26, 0, 26, 26),
('2022-12-27 19:46:14.378170', '2022-12-27 19:46:14.378170', 27, 0, 27, 27),
('2022-12-27 19:46:14.472421', '2022-12-27 19:46:14.472421', 28, 0, 28, 28),
('2022-12-27 19:46:14.740760', '2022-12-27 19:46:14.740760', 29, 0, 29, 29),
('2022-12-27 19:46:15.026913', '2022-12-27 19:46:15.026913', 30, 0, 30, 30),
('2022-12-27 19:46:15.245438', '2022-12-27 19:46:15.245438', 31, 0, 31, 31),
('2022-12-27 19:46:15.449910', '2022-12-27 19:46:15.449910', 32, 0, 32, 32),
('2022-12-27 19:46:15.730054', '2022-12-27 19:46:15.730054', 33, 0, 33, 33),
('2022-12-27 19:46:15.950680', '2022-12-27 19:46:15.950680', 34, 0, 34, 34),
('2022-12-27 19:46:16.254604', '2022-12-27 19:46:16.254604', 35, 0, 35, 35),
('2022-12-27 19:46:16.333537', '2022-12-27 19:46:16.333537', 36, 0, 36, 36),
('2022-12-27 19:46:16.410447', '2022-12-27 19:46:16.410447', 37, 0, 37, 37),
('2022-12-27 19:46:16.483335', '2022-12-27 19:46:16.483335', 38, 0, 38, 38),
('2022-12-27 19:46:16.600213', '2022-12-27 19:46:16.600213', 39, 0, 39, 39),
('2022-12-27 19:46:16.764780', '2022-12-27 19:46:16.764780', 40, 0, 40, 40),
('2022-12-27 19:46:16.867817', '2022-12-27 19:46:16.867817', 41, 0, 41, 41),
('2022-12-27 19:46:16.962790', '2022-12-27 19:46:16.962790', 42, 0, 42, 42),
('2022-12-27 19:46:17.084158', '2022-12-27 19:46:17.084158', 43, 0, 43, 43),
('2022-12-27 19:46:17.165430', '2022-12-27 19:46:17.165430', 44, 0, 44, 44),
('2022-12-27 19:46:17.243487', '2022-12-27 19:46:17.243487', 45, 0, 45, 45),
('2022-12-27 19:46:17.313938', '2022-12-27 19:46:17.313938', 46, 0, 46, 46),
('2022-12-27 19:46:17.400383', '2022-12-27 19:46:17.400383', 47, 0, 47, 47),
('2022-12-27 19:46:17.467096', '2022-12-27 19:46:17.467096', 48, 0, 48, 48),
('2022-12-27 19:46:17.561873', '2022-12-27 19:46:17.561873', 49, 0, 49, 49),
('2022-12-27 19:46:17.642845', '2022-12-27 19:46:17.642845', 50, 0, 50, 50),
('2022-12-27 19:46:17.817380', '2022-12-27 19:46:17.817380', 51, 0, 51, 51),
('2022-12-27 19:46:17.881700', '2022-12-27 19:46:17.881700', 52, 0, 52, 52),
('2022-12-27 19:46:17.965611', '2022-12-27 19:46:17.965611', 53, 0, 53, 53),
('2022-12-27 19:46:18.034603', '2022-12-27 19:46:18.034603', 54, 0, 54, 54);

-- --------------------------------------------------------

--
-- Table structure for table `product_channels_channel`
--

CREATE TABLE `product_channels_channel` (
  `productId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_channels_channel`
--

INSERT INTO `product_channels_channel` (`productId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_facet_values_facet_value`
--

CREATE TABLE `product_facet_values_facet_value` (
  `productId` int(11) NOT NULL,
  `facetValueId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_facet_values_facet_value`
--

INSERT INTO `product_facet_values_facet_value` (`productId`, `facetValueId`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 4),
(4, 1),
(4, 2),
(4, 5),
(5, 1),
(5, 2),
(5, 5),
(6, 1),
(6, 2),
(6, 6),
(7, 1),
(7, 2),
(7, 7),
(8, 1),
(8, 2),
(8, 8),
(9, 1),
(9, 2),
(9, 6),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 9),
(12, 10),
(13, 1),
(13, 9),
(13, 11),
(14, 1),
(14, 9),
(14, 12),
(15, 1),
(15, 9),
(15, 13),
(16, 1),
(16, 9),
(16, 14),
(17, 1),
(17, 9),
(17, 15),
(18, 1),
(18, 9),
(18, 11),
(19, 1),
(19, 9),
(20, 1),
(20, 9),
(20, 16),
(21, 17),
(21, 18),
(21, 19),
(22, 17),
(22, 18),
(22, 20),
(23, 17),
(23, 18),
(23, 20),
(24, 17),
(24, 18),
(25, 17),
(25, 18),
(26, 17),
(26, 18),
(26, 21),
(27, 17),
(27, 18),
(27, 22),
(28, 17),
(28, 18),
(28, 22),
(29, 17),
(29, 23),
(29, 24),
(29, 25),
(29, 26),
(30, 17),
(30, 21),
(30, 23),
(30, 27),
(31, 17),
(31, 21),
(31, 23),
(31, 28),
(32, 17),
(32, 23),
(32, 24),
(32, 27),
(32, 28),
(33, 17),
(33, 23),
(33, 24),
(33, 27),
(34, 17),
(34, 23),
(34, 27),
(34, 29),
(35, 30),
(35, 31),
(35, 32),
(36, 30),
(36, 31),
(36, 32),
(36, 33),
(37, 30),
(37, 31),
(37, 33),
(38, 30),
(38, 31),
(38, 32),
(39, 30),
(39, 31),
(39, 33),
(40, 30),
(40, 31),
(40, 32),
(41, 30),
(41, 31),
(42, 30),
(42, 31),
(43, 30),
(43, 34),
(43, 35),
(44, 30),
(44, 31),
(45, 30),
(45, 34),
(46, 30),
(46, 34),
(46, 35),
(47, 30),
(47, 34),
(47, 36),
(48, 30),
(48, 34),
(49, 30),
(49, 34),
(49, 37),
(50, 30),
(50, 34),
(50, 35),
(51, 27),
(51, 30),
(51, 34),
(52, 30),
(52, 34),
(52, 37),
(53, 28),
(53, 30),
(53, 34),
(54, 30),
(54, 34);

-- --------------------------------------------------------

--
-- Table structure for table `product_option`
--

CREATE TABLE `product_option` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_option`
--

INSERT INTO `product_option` (`createdAt`, `updatedAt`, `deletedAt`, `code`, `id`, `groupId`) VALUES
('2022-12-27 19:46:10.569958', '2022-12-27 19:46:10.569958', NULL, '13-inch', 1, 1),
('2022-12-27 19:46:10.588155', '2022-12-27 19:46:10.588155', NULL, '15-inch', 2, 1),
('2022-12-27 19:46:10.618939', '2022-12-27 19:46:10.618939', NULL, '8gb', 3, 2),
('2022-12-27 19:46:10.627164', '2022-12-27 19:46:10.627164', NULL, '16gb', 4, 2),
('2022-12-27 19:46:10.899468', '2022-12-27 19:46:10.899468', NULL, '32gb', 5, 3),
('2022-12-27 19:46:10.910467', '2022-12-27 19:46:10.910467', NULL, '128gb', 6, 3),
('2022-12-27 19:46:11.341608', '2022-12-27 19:46:11.341608', NULL, '24-inch', 7, 4),
('2022-12-27 19:46:11.352836', '2022-12-27 19:46:11.352836', NULL, '27-inch', 8, 4),
('2022-12-27 19:46:11.611958', '2022-12-27 19:46:11.611958', NULL, '4gb', 9, 5),
('2022-12-27 19:46:11.620393', '2022-12-27 19:46:11.620393', NULL, '8gb', 10, 5),
('2022-12-27 19:46:11.628767', '2022-12-27 19:46:11.628767', NULL, '16gb', 11, 5),
('2022-12-27 19:46:11.822158', '2022-12-27 19:46:11.822158', NULL, 'i7-8700', 12, 6),
('2022-12-27 19:46:11.831258', '2022-12-27 19:46:11.831258', NULL, 'r7-2700', 13, 6),
('2022-12-27 19:46:11.880857', '2022-12-27 19:46:11.880857', NULL, '240gb-ssd', 14, 7),
('2022-12-27 19:46:11.902301', '2022-12-27 19:46:11.902301', NULL, '120gb-ssd', 15, 7),
('2022-12-27 19:46:12.163386', '2022-12-27 19:46:12.163386', NULL, '1tb', 16, 8),
('2022-12-27 19:46:12.172137', '2022-12-27 19:46:12.172137', NULL, '2tb', 17, 8),
('2022-12-27 19:46:12.187002', '2022-12-27 19:46:12.187002', NULL, '3tb', 18, 8),
('2022-12-27 19:46:12.197171', '2022-12-27 19:46:12.197171', NULL, '4tb', 19, 8),
('2022-12-27 19:46:12.209345', '2022-12-27 19:46:12.209345', NULL, '6tb', 20, 8),
('2022-12-27 19:46:14.777784', '2022-12-27 19:46:14.777784', NULL, 'size-40', 21, 9),
('2022-12-27 19:46:14.796992', '2022-12-27 19:46:14.796992', NULL, 'size-42', 22, 9),
('2022-12-27 19:46:14.807737', '2022-12-27 19:46:14.807737', NULL, 'size-44', 23, 9),
('2022-12-27 19:46:14.815225', '2022-12-27 19:46:14.815225', NULL, 'size-46', 24, 9),
('2022-12-27 19:46:15.042228', '2022-12-27 19:46:15.042228', NULL, 'size-40', 25, 10),
('2022-12-27 19:46:15.060218', '2022-12-27 19:46:15.060218', NULL, 'size-42', 26, 10),
('2022-12-27 19:46:15.067582', '2022-12-27 19:46:15.067582', NULL, 'size-44', 27, 10),
('2022-12-27 19:46:15.076626', '2022-12-27 19:46:15.076626', NULL, 'size-46', 28, 10),
('2022-12-27 19:46:15.260713', '2022-12-27 19:46:15.260713', NULL, 'size-40', 29, 11),
('2022-12-27 19:46:15.268990', '2022-12-27 19:46:15.268990', NULL, 'size-42', 30, 11),
('2022-12-27 19:46:15.294016', '2022-12-27 19:46:15.294016', NULL, 'size-44', 31, 11),
('2022-12-27 19:46:15.300539', '2022-12-27 19:46:15.300539', NULL, 'size-46', 32, 11),
('2022-12-27 19:46:15.478549', '2022-12-27 19:46:15.478549', NULL, 'size-40', 33, 12),
('2022-12-27 19:46:15.486011', '2022-12-27 19:46:15.486011', NULL, 'size-42', 34, 12),
('2022-12-27 19:46:15.506794', '2022-12-27 19:46:15.506794', NULL, 'size-44', 35, 12),
('2022-12-27 19:46:15.518569', '2022-12-27 19:46:15.518569', NULL, 'size-46', 36, 12),
('2022-12-27 19:46:15.756766', '2022-12-27 19:46:15.756766', NULL, 'size-40', 37, 13),
('2022-12-27 19:46:15.772836', '2022-12-27 19:46:15.772836', NULL, 'size-42', 38, 13),
('2022-12-27 19:46:15.781227', '2022-12-27 19:46:15.781227', NULL, 'size-44', 39, 13),
('2022-12-27 19:46:15.795302', '2022-12-27 19:46:15.795302', NULL, 'size-46', 40, 13),
('2022-12-27 19:46:16.027616', '2022-12-27 19:46:16.027616', NULL, 'size-40', 41, 14),
('2022-12-27 19:46:16.034900', '2022-12-27 19:46:16.034900', NULL, 'size-42', 42, 14),
('2022-12-27 19:46:16.045828', '2022-12-27 19:46:16.045828', NULL, 'size-44', 43, 14),
('2022-12-27 19:46:16.053613', '2022-12-27 19:46:16.053613', NULL, 'size-46', 44, 14),
('2022-12-27 19:46:18.066191', '2022-12-27 19:46:18.066191', NULL, 'mustard', 45, 15),
('2022-12-27 19:46:18.093740', '2022-12-27 19:46:18.093740', NULL, 'mint', 46, 15),
('2022-12-27 19:46:18.130751', '2022-12-27 19:46:18.130751', NULL, 'pearl', 47, 15);

-- --------------------------------------------------------

--
-- Table structure for table `product_option_group`
--

CREATE TABLE `product_option_group` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_option_group`
--

INSERT INTO `product_option_group` (`createdAt`, `updatedAt`, `deletedAt`, `code`, `id`, `productId`) VALUES
('2022-12-27 19:46:10.560151', '2022-12-27 19:46:10.000000', NULL, 'laptop-screen-size', 1, 1),
('2022-12-27 19:46:10.601613', '2022-12-27 19:46:10.000000', NULL, 'laptop-ram', 2, 1),
('2022-12-27 19:46:10.835791', '2022-12-27 19:46:10.000000', NULL, 'tablet-storage', 3, 2),
('2022-12-27 19:46:11.329566', '2022-12-27 19:46:11.000000', NULL, 'curvy-monitor-monitor-size', 4, 5),
('2022-12-27 19:46:11.600155', '2022-12-27 19:46:11.000000', NULL, 'high-performance-ram-size', 5, 6),
('2022-12-27 19:46:11.804457', '2022-12-27 19:46:11.000000', NULL, 'gaming-pc-cpu', 6, 7),
('2022-12-27 19:46:11.846698', '2022-12-27 19:46:11.000000', NULL, 'gaming-pc-hdd', 7, 7),
('2022-12-27 19:46:12.150850', '2022-12-27 19:46:12.000000', NULL, 'hard-drive-hdd', 8, 8),
('2022-12-27 19:46:14.764003', '2022-12-27 19:46:14.000000', NULL, 'ultraboost-running-shoe-size', 9, 29),
('2022-12-27 19:46:15.032714', '2022-12-27 19:46:15.000000', NULL, 'freerun-running-shoe-size', 10, 30),
('2022-12-27 19:46:15.251946', '2022-12-27 19:46:15.000000', NULL, 'hi-top-basketball-shoe-size', 11, 31),
('2022-12-27 19:46:15.468273', '2022-12-27 19:46:15.000000', NULL, 'pureboost-running-shoe-size', 12, 32),
('2022-12-27 19:46:15.744270', '2022-12-27 19:46:15.000000', NULL, 'runx-running-shoe-size', 13, 33),
('2022-12-27 19:46:16.017415', '2022-12-27 19:46:16.000000', NULL, 'allstar-sneakers-size', 14, 34),
('2022-12-27 19:46:18.042763', '2022-12-27 19:46:18.000000', NULL, 'modern-cafe-chair-color', 15, 54);

-- --------------------------------------------------------

--
-- Table structure for table `product_option_group_translation`
--

CREATE TABLE `product_option_group_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_option_group_translation`
--

INSERT INTO `product_option_group_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2022-12-27 19:46:10.551056', '2022-12-27 19:46:10.000000', 'en', 'screen size', 1, 1),
('2022-12-27 19:46:10.597670', '2022-12-27 19:46:10.000000', 'en', 'RAM', 2, 2),
('2022-12-27 19:46:10.825229', '2022-12-27 19:46:10.000000', 'en', 'storage', 3, 3),
('2022-12-27 19:46:11.326401', '2022-12-27 19:46:11.000000', 'en', 'monitor size', 4, 4),
('2022-12-27 19:46:11.596498', '2022-12-27 19:46:11.000000', 'en', 'size', 5, 5),
('2022-12-27 19:46:11.798123', '2022-12-27 19:46:11.000000', 'en', 'cpu', 6, 6),
('2022-12-27 19:46:11.840303', '2022-12-27 19:46:11.000000', 'en', 'HDD', 7, 7),
('2022-12-27 19:46:12.147057', '2022-12-27 19:46:12.000000', 'en', 'HDD', 8, 8),
('2022-12-27 19:46:14.746242', '2022-12-27 19:46:14.000000', 'en', 'size', 9, 9),
('2022-12-27 19:46:15.029352', '2022-12-27 19:46:15.000000', 'en', 'size', 10, 10),
('2022-12-27 19:46:15.248370', '2022-12-27 19:46:15.000000', 'en', 'size', 11, 11),
('2022-12-27 19:46:15.462831', '2022-12-27 19:46:15.000000', 'en', 'size', 12, 12),
('2022-12-27 19:46:15.732726', '2022-12-27 19:46:15.000000', 'en', 'size', 13, 13),
('2022-12-27 19:46:15.957168', '2022-12-27 19:46:16.000000', 'en', 'size', 14, 14),
('2022-12-27 19:46:18.037042', '2022-12-27 19:46:18.000000', 'en', 'color', 15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `product_option_translation`
--

CREATE TABLE `product_option_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_option_translation`
--

INSERT INTO `product_option_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2022-12-27 19:46:10.565591', '2022-12-27 19:46:10.000000', 'en', '13 inch', 1, 1),
('2022-12-27 19:46:10.583432', '2022-12-27 19:46:10.000000', 'en', '15 inch', 2, 2),
('2022-12-27 19:46:10.613623', '2022-12-27 19:46:10.000000', 'en', '8GB', 3, 3),
('2022-12-27 19:46:10.623541', '2022-12-27 19:46:10.000000', 'en', '16GB', 4, 4),
('2022-12-27 19:46:10.895795', '2022-12-27 19:46:10.000000', 'en', '32GB', 5, 5),
('2022-12-27 19:46:10.906551', '2022-12-27 19:46:10.000000', 'en', '128GB', 6, 6),
('2022-12-27 19:46:11.337708', '2022-12-27 19:46:11.000000', 'en', '24 inch', 7, 7),
('2022-12-27 19:46:11.348812', '2022-12-27 19:46:11.000000', 'en', '27 inch', 8, 8),
('2022-12-27 19:46:11.607601', '2022-12-27 19:46:11.000000', 'en', '4GB', 9, 9),
('2022-12-27 19:46:11.616470', '2022-12-27 19:46:11.000000', 'en', '8GB', 10, 10),
('2022-12-27 19:46:11.625083', '2022-12-27 19:46:11.000000', 'en', '16GB', 11, 11),
('2022-12-27 19:46:11.818722', '2022-12-27 19:46:11.000000', 'en', 'i7-8700', 12, 12),
('2022-12-27 19:46:11.828033', '2022-12-27 19:46:11.000000', 'en', 'R7-2700', 13, 13),
('2022-12-27 19:46:11.851445', '2022-12-27 19:46:11.000000', 'en', '240GB SSD', 14, 14),
('2022-12-27 19:46:11.884870', '2022-12-27 19:46:11.000000', 'en', '120GB SSD', 15, 15),
('2022-12-27 19:46:12.157392', '2022-12-27 19:46:12.000000', 'en', '1TB', 16, 16),
('2022-12-27 19:46:12.168160', '2022-12-27 19:46:12.000000', 'en', '2TB', 17, 17),
('2022-12-27 19:46:12.182710', '2022-12-27 19:46:12.000000', 'en', '3TB', 18, 18),
('2022-12-27 19:46:12.193025', '2022-12-27 19:46:12.000000', 'en', '4TB', 19, 19),
('2022-12-27 19:46:12.201478', '2022-12-27 19:46:12.000000', 'en', '6TB', 20, 20),
('2022-12-27 19:46:14.769805', '2022-12-27 19:46:14.000000', 'en', 'Size 40', 21, 21),
('2022-12-27 19:46:14.793563', '2022-12-27 19:46:14.000000', 'en', 'Size 42', 22, 22),
('2022-12-27 19:46:14.803080', '2022-12-27 19:46:14.000000', 'en', 'Size 44', 23, 23),
('2022-12-27 19:46:14.811885', '2022-12-27 19:46:14.000000', 'en', 'Size 46', 24, 24),
('2022-12-27 19:46:15.036784', '2022-12-27 19:46:15.000000', 'en', 'Size 40', 25, 25),
('2022-12-27 19:46:15.056128', '2022-12-27 19:46:15.000000', 'en', 'Size 42', 26, 26),
('2022-12-27 19:46:15.064368', '2022-12-27 19:46:15.000000', 'en', 'Size 44', 27, 27),
('2022-12-27 19:46:15.073160', '2022-12-27 19:46:15.000000', 'en', 'Size 46', 28, 28),
('2022-12-27 19:46:15.257023', '2022-12-27 19:46:15.000000', 'en', 'Size 40', 29, 29),
('2022-12-27 19:46:15.265677', '2022-12-27 19:46:15.000000', 'en', 'Size 42', 30, 30),
('2022-12-27 19:46:15.285542', '2022-12-27 19:46:15.000000', 'en', 'Size 44', 31, 31),
('2022-12-27 19:46:15.297612', '2022-12-27 19:46:15.000000', 'en', 'Size 46', 32, 32),
('2022-12-27 19:46:15.474738', '2022-12-27 19:46:15.000000', 'en', 'Size 40', 33, 33),
('2022-12-27 19:46:15.482498', '2022-12-27 19:46:15.000000', 'en', 'Size 42', 34, 34),
('2022-12-27 19:46:15.493966', '2022-12-27 19:46:15.000000', 'en', 'Size 44', 35, 35),
('2022-12-27 19:46:15.511516', '2022-12-27 19:46:15.000000', 'en', 'Size 46', 36, 36),
('2022-12-27 19:46:15.752937', '2022-12-27 19:46:15.000000', 'en', 'Size 40', 37, 37),
('2022-12-27 19:46:15.768067', '2022-12-27 19:46:15.000000', 'en', 'Size 42', 38, 38),
('2022-12-27 19:46:15.777618', '2022-12-27 19:46:15.000000', 'en', 'Size 44', 39, 39),
('2022-12-27 19:46:15.786255', '2022-12-27 19:46:15.000000', 'en', 'Size 46', 40, 40),
('2022-12-27 19:46:16.023698', '2022-12-27 19:46:16.000000', 'en', 'Size 40', 41, 41),
('2022-12-27 19:46:16.031228', '2022-12-27 19:46:16.000000', 'en', 'Size 42', 42, 42),
('2022-12-27 19:46:16.042488', '2022-12-27 19:46:16.000000', 'en', 'Size 44', 43, 43),
('2022-12-27 19:46:16.050533', '2022-12-27 19:46:16.000000', 'en', 'Size 46', 44, 44),
('2022-12-27 19:46:18.051419', '2022-12-27 19:46:18.000000', 'en', 'mustard', 45, 45),
('2022-12-27 19:46:18.085005', '2022-12-27 19:46:18.000000', 'en', 'mint', 46, 46),
('2022-12-27 19:46:18.114650', '2022-12-27 19:46:18.000000', 'en', 'pearl', 47, 47);

-- --------------------------------------------------------

--
-- Table structure for table `product_translation`
--

CREATE TABLE `product_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_translation`
--

INSERT INTO `product_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `slug`, `description`, `id`, `baseId`) VALUES
('2022-12-27 19:46:10.514574', '2022-12-27 19:46:10.000000', 'en', 'Laptop', 'laptop', 'Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.', 1, 1),
('2022-12-27 19:46:10.792860', '2022-12-27 19:46:10.000000', 'en', 'Tablet', 'tablet', 'If the computer were invented today, what would it look like? It would be powerful enough for any task. So mobile you could take it everywhere. And so intuitive you could use it any way you wanted — with touch, a keyboard, or even a pencil. In other words, it wouldn’t really be a \"computer.\" It would be Tablet.', 2, 2),
('2022-12-27 19:46:11.053348', '2022-12-27 19:46:11.000000', 'en', 'Wireless Optical Mouse', 'cordless-mouse', 'The Logitech M185 Wireless Optical Mouse is a great device for any computer user, and as Logitech are the global market leaders for these devices, you are also guaranteed absolute reliability. A mouse to be reckoned with!', 3, 3),
('2022-12-27 19:46:11.222162', '2022-12-27 19:46:11.000000', 'en', '32-Inch Monitor', '32-inch-monitor', 'The UJ59 with Ultra HD resolution has 4x the pixels of Full HD, delivering more screen space and amazingly life-like images. That means you can view documents and webpages with less scrolling, work more comfortably with multiple windows and toolbars, and enjoy photos, videos and games in stunning 4K quality. Note: beverage not included.', 4, 4),
('2022-12-27 19:46:11.309846', '2022-12-27 19:46:11.000000', 'en', 'Curvy Monitor', 'curvy-monitor', 'Discover a truly immersive viewing experience with this monitor curved more deeply than any other. Wrapping around your field of vision the 1,800 R screencreates a wider field of view, enhances depth perception, and minimises peripheral distractions to draw you deeper in to your content.', 5, 5),
('2022-12-27 19:46:11.564366', '2022-12-27 19:46:11.000000', 'en', 'High Performance RAM', 'high-performance-ram', 'Each RAM module is built with a pure aluminium heat spreader for faster heat dissipation and cooler operation. Enhanced to XMP 2.0 profiles for better overclocking; Compatibility: Intel 100 Series, Intel 200 Series, Intel 300 Series, Intel X299, AMD 300 Series, AMD 400 Series.', 6, 6),
('2022-12-27 19:46:11.783086', '2022-12-27 19:46:11.000000', 'en', 'Gaming PC', 'gaming-pc', 'This pc is optimised for gaming, and is also VR ready. The Intel Core-i7 CPU and High Performance GPU give the computer the raw power it needs to function at a high level.', 7, 7),
('2022-12-27 19:46:12.129317', '2022-12-27 19:46:12.000000', 'en', 'Hard Drive', 'hard-drive', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 8, 8),
('2022-12-27 19:46:12.388821', '2022-12-27 19:46:12.000000', 'en', 'Clacky Keyboard', 'clacky-keyboard', 'Let all your colleagues know that you are typing on this exclusive, colorful klicky-klacky keyboard. Huge travel on each keypress ensures maximum klack on each and every keystroke.', 9, 9),
('2022-12-27 19:46:12.474233', '2022-12-27 19:46:12.000000', 'en', 'Ethernet Cable', 'ethernet-cable', '5m (metres) Cat.6 network cable (upwards/downwards compatible) | Patch cable | 2 RJ-45 plug | plug with bend protection mantle. High transmission speeds due to operating frequency with up to 250 MHz (in comparison to Cat.5/Cat.5e cable bandwidth of 100 MHz).', 10, 10),
('2022-12-27 19:46:12.540818', '2022-12-27 19:46:12.000000', 'en', 'USB Cable', 'usb-cable', 'Solid conductors eliminate strand-interaction distortion and reduce jitter. As the surface is made of high-purity silver, the performance is very close to that of a solid silver cable, but priced much closer to solid copper cable.', 11, 11),
('2022-12-27 19:46:12.645217', '2022-12-27 19:46:12.000000', 'en', 'Instant Camera', 'instant-camera', 'With its nostalgic design and simple point-and-shoot functionality, the Instant Camera is the perfect pick to get started with instant photography.', 12, 12),
('2022-12-27 19:46:12.732767', '2022-12-27 19:46:12.000000', 'en', 'Camera Lens', 'camera-lens', 'This lens is a Di type lens using an optical system with improved multi-coating designed to function with digital SLR cameras as well as film cameras.', 13, 13),
('2022-12-27 19:46:12.840627', '2022-12-27 19:46:12.000000', 'en', 'Vintage Folding Camera', 'vintage-folding-camera', 'This vintage folding camera is so antiquated that you cannot possibly hope to produce actual photographs with it. However, it makes a wonderful decorative piece for the home or office.', 14, 14),
('2022-12-27 19:46:12.928872', '2022-12-27 19:46:12.000000', 'en', 'Tripod', 'tripod', 'Capture vivid, professional-style photographs with help from this lightweight tripod. The adjustable-height tripod makes it easy to achieve reliable stability and score just the right angle when going after that award-winning shot.', 15, 15),
('2022-12-27 19:46:13.026560', '2022-12-27 19:46:13.000000', 'en', 'Instamatic Camera', 'instamatic-camera', 'This inexpensive point-and-shoot camera uses easy-to-load 126 film cartridges. A built-in flash unit ensure great results, no matter the lighting conditions.', 16, 16),
('2022-12-27 19:46:13.129940', '2022-12-27 19:46:13.000000', 'en', 'Compact Digital Camera', 'compact-digital-camera', 'Unleash your creative potential with high-level performance and advanced features such as AI-powered Real-time Eye AF; new, high-precision Real-time Tracking; high-speed continuous shooting and 4K HDR movie-shooting. The camera\'s innovative AF quickly and reliably detects the position of the subject and then tracks the subject\'s motion, keeping it in sharp focus.', 17, 17),
('2022-12-27 19:46:13.201340', '2022-12-27 19:46:13.000000', 'en', 'Nikkormat SLR Camera', 'nikkormat-slr-camera', 'The Nikkormat FS was brought to market by Nikon in 1965. The lens is a 50mm f1.4 Nikkor. Nice glass, smooth focus and a working diaphragm. A UV filter and a Nikon front lens cap are included with the lens.', 18, 18),
('2022-12-27 19:46:13.274637', '2022-12-27 19:46:13.000000', 'en', 'Compact SLR Camera', 'compact-slr-camera', 'Retro styled, portable in size and built around a powerful 24-megapixel APS-C CMOS sensor, this digital camera is the ideal companion for creative everyday photography. Packed full of high spec features such as an advanced hybrid autofocus system able to keep pace with even the most active subjects, a speedy 6fps continuous-shooting mode, high-resolution electronic viewfinder and intuitive swivelling touchscreen, it brings professional image making into everyone’s grasp.', 19, 19),
('2022-12-27 19:46:13.421827', '2022-12-27 19:46:13.000000', 'en', 'Twin Lens Camera', 'twin-lens-camera', 'What makes a Rolleiflex TLR so special? Many things. To start, TLR stands for twin lens reflex. “Twin” because there are two lenses. And reflex means that the photographer looks through the lens to view the reflected image of an object or scene on the focusing screen. ', 20, 20),
('2022-12-27 19:46:13.694622', '2022-12-27 19:46:13.000000', 'en', 'Road Bike', 'road-bike', 'Featuring a full carbon chassis - complete with cyclocross-specific carbon fork - and a component setup geared for hard use on the race circuit, it\'s got the low weight, exceptional efficiency and brilliant handling you\'ll need to stay at the front of the pack.', 21, 21),
('2022-12-27 19:46:13.849539', '2022-12-27 19:46:13.000000', 'en', 'Skipping Rope', 'skipping-rope', 'When you\'re working out you need a quality rope that doesn\'t tangle at every couple of jumps and with this skipping rope you won\'t have this problem. The fact that it looks like a pair of tasty frankfurters is merely a bonus.', 22, 22),
('2022-12-27 19:46:13.945785', '2022-12-27 19:46:13.000000', 'en', 'Boxing Gloves', 'boxing-gloves', 'Training gloves designed for optimum training. Our gloves promote proper punching technique because they are conformed to the natural shape of your fist. Dense, innovative two-layer foam provides better shock absorbency and full padding on the front, back and wrist to promote proper punching technique.', 23, 23),
('2022-12-27 19:46:14.026258', '2022-12-27 19:46:14.000000', 'en', 'Tent', 'tent', 'With tons of space inside (for max. 4 persons), full head height throughout the entire tent and an unusual and striking shape, this tent offers you everything you need.', 24, 24),
('2022-12-27 19:46:14.118946', '2022-12-27 19:46:14.000000', 'en', 'Cruiser Skateboard', 'cruiser-skateboard', 'Based on the 1970s iconic shape, but made to a larger 69cm size, with updated, quality component, these skateboards are great for beginners to learn the foot spacing required, and are perfect for all-day cruising.', 25, 25),
('2022-12-27 19:46:14.248490', '2022-12-27 19:46:14.000000', 'en', 'Football', 'football', 'This football features high-contrast graphics for high-visibility during play, while its machine-stitched tpu casing offers consistent performance.', 26, 26),
('2022-12-27 19:46:14.365162', '2022-12-27 19:46:14.000000', 'en', 'Tennis Ball', 'tennis-ball', 'Our dog loves these tennis balls and they last for some time before they eventually either get lost in some field or bush or the covering comes off due to it being used most of the day every day.', 27, 27),
('2022-12-27 19:46:14.453777', '2022-12-27 19:46:14.000000', 'en', 'Basketball', 'basketball', 'The Wilson MVP ball is perfect for playing basketball, and improving your skill for hours on end. Designed for new players, it is created with a high-quality rubber suitable for courts, allowing you to get full use during your practices.', 28, 28),
('2022-12-27 19:46:14.711119', '2022-12-27 19:46:14.000000', 'en', 'Ultraboost Running Shoe', 'ultraboost-running-shoe', 'With its ultra-light, uber-responsive magic foam and a carbon fiber plate that feels like it’s propelling you forward, the Running Shoe is ready to push you to victories both large and small', 29, 29),
('2022-12-27 19:46:15.017795', '2022-12-27 19:46:15.000000', 'en', 'Freerun Running Shoe', 'freerun-running-shoe', 'The Freerun Men\'s Running Shoe is built for record-breaking speed. The Flyknit upper delivers ultra-lightweight support that fits like a glove.', 30, 30),
('2022-12-27 19:46:15.233897', '2022-12-27 19:46:15.000000', 'en', 'Hi-Top Basketball Shoe', 'hi-top-basketball-shoe', 'Boasting legendary performance since 2008, the Hyperdunkz Basketball Shoe needs no gimmicks to stand out. Air units deliver best-in-class cushioning, while a dynamic lacing system keeps your foot snug and secure, so you can focus on your game and nothing else.', 31, 31),
('2022-12-27 19:46:15.439543', '2022-12-27 19:46:15.000000', 'en', 'Pureboost Running Shoe', 'pureboost-running-shoe', 'Built to handle curbs, corners and uneven sidewalks, these natural running shoes have an expanded landing zone and a heel plate for added stability. A lightweight and stretchy knit upper supports your native stride.', 32, 32),
('2022-12-27 19:46:15.685569', '2022-12-27 19:46:15.000000', 'en', 'RunX Running Shoe', 'runx-running-shoe', 'These running shoes are made with an airy, lightweight mesh upper. The durable rubber outsole grips the pavement for added stability. A cushioned midsole brings comfort to each step.', 33, 33),
('2022-12-27 19:46:15.940976', '2022-12-27 19:46:15.000000', 'en', 'Allstar Sneakers', 'allstar-sneakers', 'All Star is the most iconic sneaker in the world, recognised for its unmistakable silhouette, star-centred ankle patch and cultural authenticity. And like the best paradigms, it only gets better with time.', 34, 34),
('2022-12-27 19:46:16.243596', '2022-12-27 19:46:16.000000', 'en', 'Spiky Cactus', 'spiky-cactus', 'A spiky yet elegant house cactus - perfect for the home or office. Origin and habitat: Probably native only to the Andes of Peru', 35, 35),
('2022-12-27 19:46:16.325165', '2022-12-27 19:46:16.000000', 'en', 'Tulip Pot', 'tulip-pot', 'Bright crimson red species tulip with black centers, the poppy-like flowers will open up in full sun. Ideal for rock gardens, pots and border edging.', 36, 36),
('2022-12-27 19:46:16.396728', '2022-12-27 19:46:16.000000', 'en', 'Hanging Plant', 'hanging-plant', 'Can be found in tropical and sub-tropical America where it grows on the branches of trees, but also on telephone wires and electricity cables and poles that sometimes topple with the weight of these plants. This plant loves a moist and warm air.', 37, 37),
('2022-12-27 19:46:16.475033', '2022-12-27 19:46:16.000000', 'en', 'Aloe Vera', 'aloe-vera', 'Decorative Aloe vera makes a lovely house plant. A really trendy plant, Aloe vera is just so easy to care for. Aloe vera sap has been renowned for its remarkable medicinal and cosmetic properties for many centuries and has been used to treat grazes, insect bites and sunburn - it really works.', 38, 38),
('2022-12-27 19:46:16.558974', '2022-12-27 19:46:16.000000', 'en', 'Fern Blechnum Gibbum', 'fern-blechnum-gibbum', 'Create a tropical feel in your home with this lush green tree fern, it has decorative leaves and will develop a short slender trunk in time.', 39, 39),
('2022-12-27 19:46:16.749910', '2022-12-27 19:46:16.000000', 'en', 'Assorted Indoor Succulents', 'assorted-succulents', 'These assorted succulents come in a variety of different shapes and colours - each with their own unique personality. Succulents grow best in plenty of light: a sunny windowsill would be the ideal spot for them to thrive!', 40, 40),
('2022-12-27 19:46:16.855349', '2022-12-27 19:46:16.000000', 'en', 'Orchid', 'orchid', 'Gloriously elegant. It can go along with any interior as it is a neutral color and the most popular Phalaenopsis overall. 2 to 3 foot stems host large white flowers that can last for over 2 months.', 41, 41),
('2022-12-27 19:46:16.950250', '2022-12-27 19:46:16.000000', 'en', 'Bonsai Tree', 'bonsai-tree', 'Excellent semi-evergreen bonsai. Indoors or out but needs some winter protection. All trees sent will leave the nursery in excellent condition and will be of equal quality or better than the photograph shown.', 42, 42),
('2022-12-27 19:46:17.074900', '2022-12-27 19:46:17.000000', 'en', 'Guardian Lion Statue', 'guardian-lion-statue', 'Placing it at home or office can bring you fortune and prosperity, guard your house and ward off ill fortune.', 43, 43),
('2022-12-27 19:46:17.152967', '2022-12-27 19:46:17.000000', 'en', 'Hand Trowel', 'hand-trowel', 'Hand trowel for garden cultivating hammer finish epoxy-coated head for improved resistance to rust, scratches, humidity and alkalines in the soil.', 44, 44),
('2022-12-27 19:46:17.223452', '2022-12-27 19:46:17.000000', 'en', 'Balloon Chair', 'balloon-chair', 'A charming vintage white wooden chair featuring an extremely spherical pink balloon. The balloon may be detached and used for other purposes, for example as a party decoration.', 45, 45),
('2022-12-27 19:46:17.304475', '2022-12-27 19:46:17.000000', 'en', 'Grey Fabric Sofa', 'grey-fabric-sofa', 'Seat cushions filled with high resilience foam and polyester fibre wadding give comfortable support for your body, and easily regain their shape when you get up. The cover is easy to keep clean as it is removable and can be machine washed.', 46, 46),
('2022-12-27 19:46:17.381616', '2022-12-27 19:46:17.000000', 'en', 'Leather Sofa', 'leather-sofa', 'This premium, tan-brown bonded leather seat is part of the \'chill\' sofa range. The lever activated recline feature makes it easy to adjust to any position. This smart, bustle back design with rounded tight padded arms has been designed with your comfort in mind. This well-padded chair has foam pocket sprung seat cushions and fibre-filled back cushions.', 47, 47),
('2022-12-27 19:46:17.452878', '2022-12-27 19:46:17.000000', 'en', 'Light Shade', 'light-shade', 'Modern tapered white polycotton pendant shade with a metallic silver chrome interior finish for maximum light reflection. Reversible gimble so it can be used as a ceiling shade or as a lamp shade.', 48, 48),
('2022-12-27 19:46:17.552157', '2022-12-27 19:46:17.000000', 'en', 'Wooden Side Desk', 'wooden-side-desk', 'Drawer stops prevent the drawers from being pulled out too far. Built-in cable management for collecting cables and cords; out of sight but close at hand.', 49, 49),
('2022-12-27 19:46:17.630752', '2022-12-27 19:46:17.000000', 'en', 'Comfy Padded Chair', 'comfy-padded-chair', 'You sit comfortably thanks to the shaped back. The chair frame is made of solid wood, which is a durable natural material.', 50, 50),
('2022-12-27 19:46:17.799160', '2022-12-27 19:46:17.000000', 'en', 'Black Eaves Chair', 'black-eaves-chair', 'Comfortable to sit on thanks to the bowl-shaped seat and rounded shape of the backrest. No tools are required to assemble the chair, you just click it together with a simple mechanism under the seat.', 51, 51),
('2022-12-27 19:46:17.869193', '2022-12-27 19:46:17.000000', 'en', 'Wooden Stool', 'wooden-stool', 'Solid wood is a hardwearing natural material, which can be sanded and surface treated as required.', 52, 52),
('2022-12-27 19:46:17.947777', '2022-12-27 19:46:17.000000', 'en', 'Bedside Table', 'bedside-table', 'Every table is unique, with varying grain pattern and natural colour shifts that are part of the charm of wood.', 53, 53),
('2022-12-27 19:46:18.024924', '2022-12-27 19:46:18.000000', 'en', 'Modern Cafe Chair', 'modern-cafe-chair', 'You sit comfortably thanks to the restful flexibility of the seat. Lightweight and easy to move around, yet stable enough even for the liveliest, young family members.', 54, 54);

-- --------------------------------------------------------

--
-- Table structure for table `product_variant`
--

CREATE TABLE `product_variant` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  `sku` varchar(255) NOT NULL,
  `stockOnHand` int(11) NOT NULL DEFAULT 0,
  `stockAllocated` int(11) NOT NULL DEFAULT 0,
  `outOfStockThreshold` int(11) NOT NULL DEFAULT 0,
  `useGlobalOutOfStockThreshold` tinyint(4) NOT NULL DEFAULT 1,
  `trackInventory` varchar(255) NOT NULL DEFAULT 'INHERIT',
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `featuredAssetId` int(11) DEFAULT NULL,
  `taxCategoryId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_variant`
--

INSERT INTO `product_variant` (`createdAt`, `updatedAt`, `deletedAt`, `enabled`, `sku`, `stockOnHand`, `stockAllocated`, `outOfStockThreshold`, `useGlobalOutOfStockThreshold`, `trackInventory`, `id`, `productId`, `featuredAssetId`, `taxCategoryId`) VALUES
('2022-12-27 19:46:10.640474', '2023-03-17 11:19:03.000000', NULL, 1, 'L2201308', 100, 1, 0, 1, 'INHERIT', 1, 1, NULL, 1),
('2022-12-27 19:46:10.675973', '2023-03-17 11:19:03.000000', NULL, 1, 'L2201508', 100, 1, 0, 1, 'INHERIT', 2, 1, NULL, 1),
('2022-12-27 19:46:10.702824', '2023-03-17 11:19:03.000000', NULL, 1, 'L2201316', 100, 1, 0, 1, 'INHERIT', 3, 1, NULL, 1),
('2022-12-27 19:46:10.729361', '2022-12-27 19:46:10.729361', NULL, 1, 'L2201516', 100, 0, 0, 1, 'INHERIT', 4, 1, NULL, 1),
('2022-12-27 19:46:10.940902', '2022-12-27 19:46:10.940902', NULL, 1, 'TBL200032', 100, 0, 0, 1, 'INHERIT', 5, 2, NULL, 1),
('2022-12-27 19:46:10.960964', '2022-12-27 19:46:10.960964', NULL, 1, 'TBL200128', 100, 0, 0, 1, 'INHERIT', 6, 2, NULL, 1),
('2022-12-27 19:46:11.080686', '2022-12-27 19:46:11.080686', NULL, 1, '834444', 100, 0, 0, 1, 'INHERIT', 7, 3, NULL, 1),
('2022-12-27 19:46:11.242502', '2022-12-27 19:46:11.242502', NULL, 1, 'LU32J590UQUXEN', 100, 0, 0, 1, 'INHERIT', 8, 4, NULL, 1),
('2022-12-27 19:46:11.365958', '2022-12-27 19:46:11.365958', NULL, 1, 'C24F390', 100, 0, 0, 1, 'INHERIT', 9, 5, NULL, 1),
('2022-12-27 19:46:11.399001', '2022-12-27 19:46:11.399001', NULL, 1, 'C27F390', 100, 0, 0, 1, 'INHERIT', 10, 5, NULL, 1),
('2022-12-27 19:46:11.641168', '2022-12-27 19:46:11.641168', NULL, 1, 'CMK32GX4M2AC04', 100, 0, 0, 1, 'INHERIT', 11, 6, NULL, 1),
('2022-12-27 19:46:11.663398', '2022-12-27 19:46:11.663398', NULL, 1, 'CMK32GX4M2AC08', 100, 0, 0, 1, 'INHERIT', 12, 6, NULL, 1),
('2022-12-27 19:46:11.686342', '2022-12-27 19:46:11.686342', NULL, 1, 'CMK32GX4M2AC16', 100, 0, 0, 1, 'INHERIT', 13, 6, NULL, 1),
('2022-12-27 19:46:11.936286', '2022-12-27 19:46:11.936286', NULL, 1, 'CGS480VR1063', 100, 0, 0, 1, 'INHERIT', 14, 7, NULL, 1),
('2022-12-27 19:46:11.961774', '2022-12-27 19:46:11.961774', NULL, 1, 'CGS480VR1064', 100, 0, 0, 1, 'INHERIT', 15, 7, NULL, 1),
('2022-12-27 19:46:11.992355', '2022-12-27 19:46:11.992355', NULL, 1, 'CGS480VR1065', 100, 0, 0, 1, 'INHERIT', 16, 7, NULL, 1),
('2022-12-27 19:46:12.021488', '2022-12-27 19:46:12.021488', NULL, 1, 'CGS480VR1066', 100, 0, 0, 1, 'INHERIT', 17, 7, NULL, 1),
('2022-12-27 19:46:12.221566', '2022-12-27 19:46:12.221566', NULL, 1, 'IHD455T1', 100, 0, 0, 1, 'INHERIT', 18, 8, NULL, 1),
('2022-12-27 19:46:12.244468', '2022-12-27 19:46:12.244468', NULL, 1, 'IHD455T2', 100, 0, 0, 1, 'INHERIT', 19, 8, NULL, 1),
('2022-12-27 19:46:12.275874', '2022-12-27 19:46:12.275874', NULL, 1, 'IHD455T3', 100, 0, 0, 1, 'INHERIT', 20, 8, NULL, 1),
('2022-12-27 19:46:12.299217', '2022-12-27 19:46:12.299217', NULL, 1, 'IHD455T4', 100, 0, 0, 1, 'INHERIT', 21, 8, NULL, 1),
('2022-12-27 19:46:12.326659', '2022-12-27 19:46:12.326659', NULL, 1, 'IHD455T6', 100, 0, 0, 1, 'INHERIT', 22, 8, NULL, 1),
('2022-12-27 19:46:12.406064', '2022-12-27 19:46:12.406064', NULL, 1, 'A4TKLA45535', 100, 0, 0, 1, 'INHERIT', 23, 9, NULL, 1),
('2022-12-27 19:46:12.490665', '2022-12-27 19:46:12.490665', NULL, 1, 'A23334x30', 100, 0, 0, 1, 'INHERIT', 24, 10, NULL, 1),
('2022-12-27 19:46:12.560748', '2022-12-27 19:46:12.560748', NULL, 1, 'USBCIN01.5MI', 100, 0, 0, 1, 'INHERIT', 25, 11, NULL, 1),
('2022-12-27 19:46:12.666906', '2022-12-27 19:46:12.666906', NULL, 1, 'IC22MWDD', 100, 0, 0, 1, 'INHERIT', 26, 12, NULL, 1),
('2022-12-27 19:46:12.752092', '2022-12-27 19:46:12.752092', NULL, 1, 'B0012UUP02', 100, 0, 0, 1, 'INHERIT', 27, 13, NULL, 1),
('2022-12-27 19:46:12.861868', '2022-12-27 19:46:12.861868', NULL, 1, 'B00AFC9099', 100, 0, 0, 1, 'INHERIT', 28, 14, NULL, 1),
('2022-12-27 19:46:12.948722', '2022-12-27 19:46:12.948722', NULL, 1, 'B00XI87KV8', 100, 0, 0, 1, 'INHERIT', 29, 15, NULL, 1),
('2022-12-27 19:46:13.043632', '2022-12-27 19:46:13.043632', NULL, 1, 'B07K1330LL', 100, 0, 0, 1, 'INHERIT', 30, 16, NULL, 1),
('2022-12-27 19:46:13.147001', '2022-12-27 19:46:13.147001', NULL, 1, 'B07D990021', 100, 0, 0, 1, 'INHERIT', 31, 17, NULL, 1),
('2022-12-27 19:46:13.224361', '2022-12-27 19:46:13.224361', NULL, 1, 'B07D33B334', 100, 0, 0, 1, 'INHERIT', 32, 18, NULL, 1),
('2022-12-27 19:46:13.297151', '2022-12-27 19:46:13.297151', NULL, 1, 'B07D75V44S', 100, 0, 0, 1, 'INHERIT', 33, 19, NULL, 1),
('2022-12-27 19:46:13.451887', '2022-12-27 19:46:13.451887', NULL, 1, 'B07D78JTLR', 100, 0, 0, 1, 'INHERIT', 34, 20, NULL, 1),
('2022-12-27 19:46:13.763736', '2022-12-27 19:46:13.763736', NULL, 1, 'RB000844334', 100, 0, 0, 1, 'INHERIT', 35, 21, NULL, 1),
('2022-12-27 19:46:13.875255', '2022-12-27 19:46:13.875255', NULL, 1, 'B07CNGXVXT', 100, 0, 0, 1, 'INHERIT', 36, 22, NULL, 1),
('2022-12-27 19:46:13.963155', '2022-12-27 19:46:13.963155', NULL, 1, 'B000ZYLPPU', 100, 0, 0, 1, 'INHERIT', 37, 23, NULL, 1),
('2022-12-27 19:46:14.042858', '2022-12-27 19:46:14.042858', NULL, 1, '2000023510', 100, 0, 0, 1, 'INHERIT', 38, 24, NULL, 1),
('2022-12-27 19:46:14.144401', '2022-12-27 19:46:14.144401', NULL, 1, '799872520', 100, 0, 0, 1, 'INHERIT', 39, 25, NULL, 1),
('2022-12-27 19:46:14.291312', '2022-12-27 19:46:14.291312', NULL, 1, 'SC3137-056', 100, 0, 0, 1, 'INHERIT', 40, 26, NULL, 1),
('2022-12-27 19:46:14.384588', '2022-12-27 19:46:14.384588', NULL, 1, 'WRT11752P', 100, 0, 0, 1, 'INHERIT', 41, 27, NULL, 1),
('2022-12-27 19:46:14.479342', '2022-12-27 19:46:14.479342', NULL, 1, 'WTB1418XB06', 100, 0, 0, 1, 'INHERIT', 42, 28, NULL, 1),
('2022-12-27 19:46:14.827541', '2022-12-27 19:46:14.827541', NULL, 1, 'RS0040', 100, 0, 0, 1, 'INHERIT', 43, 29, NULL, 1),
('2022-12-27 19:46:14.857100', '2022-12-27 19:46:14.857100', NULL, 1, 'RS0042', 100, 0, 0, 1, 'INHERIT', 44, 29, NULL, 1),
('2022-12-27 19:46:14.881889', '2022-12-27 19:46:14.881889', NULL, 1, 'RS0044', 100, 0, 0, 1, 'INHERIT', 45, 29, NULL, 1),
('2022-12-27 19:46:14.904035', '2022-12-27 19:46:14.904035', NULL, 1, 'RS0046', 100, 0, 0, 1, 'INHERIT', 46, 29, NULL, 1),
('2022-12-27 19:46:15.094724', '2022-12-27 19:46:15.094724', NULL, 1, 'AR4561-40', 100, 0, 0, 1, 'INHERIT', 47, 30, NULL, 1),
('2022-12-27 19:46:15.111188', '2022-12-27 19:46:15.111188', NULL, 1, 'AR4561-42', 100, 0, 0, 1, 'INHERIT', 48, 30, NULL, 1),
('2022-12-27 19:46:15.135562', '2022-12-27 19:46:15.135562', NULL, 1, 'AR4561-44', 100, 0, 0, 1, 'INHERIT', 49, 30, NULL, 1),
('2022-12-27 19:46:15.165094', '2022-12-27 19:46:15.165094', NULL, 1, 'AR4561-46', 100, 0, 0, 1, 'INHERIT', 50, 30, NULL, 1),
('2022-12-27 19:46:15.312378', '2022-12-27 19:46:15.312378', NULL, 1, 'AO7893-40', 100, 0, 0, 1, 'INHERIT', 51, 31, NULL, 1),
('2022-12-27 19:46:15.330599', '2022-12-27 19:46:15.330599', NULL, 1, 'AO7893-42', 100, 0, 0, 1, 'INHERIT', 52, 31, NULL, 1),
('2022-12-27 19:46:15.352018', '2022-12-27 19:46:15.352018', NULL, 1, 'AO7893-44', 100, 0, 0, 1, 'INHERIT', 53, 31, NULL, 1),
('2022-12-27 19:46:15.376552', '2022-12-27 19:46:15.376552', NULL, 1, 'AO7893-46', 100, 0, 0, 1, 'INHERIT', 54, 31, NULL, 1),
('2022-12-27 19:46:15.533780', '2022-12-27 19:46:15.533780', NULL, 1, 'F3578640', 100, 0, 0, 1, 'INHERIT', 55, 32, NULL, 1),
('2022-12-27 19:46:15.557486', '2022-12-27 19:46:15.557486', NULL, 1, 'F3578642', 100, 0, 0, 1, 'INHERIT', 56, 32, NULL, 1),
('2022-12-27 19:46:15.576111', '2022-12-27 19:46:15.576111', NULL, 1, 'F3578644', 100, 0, 0, 1, 'INHERIT', 57, 32, NULL, 1),
('2022-12-27 19:46:15.609639', '2022-12-27 19:46:15.609639', NULL, 1, 'F3578646', 100, 0, 0, 1, 'INHERIT', 58, 32, NULL, 1),
('2022-12-27 19:46:15.810745', '2022-12-27 19:46:15.810745', NULL, 1, 'F3633340', 100, 0, 0, 1, 'INHERIT', 59, 33, NULL, 1),
('2022-12-27 19:46:15.826696', '2022-12-27 19:46:15.826696', NULL, 1, 'F3633342', 100, 0, 0, 1, 'INHERIT', 60, 33, NULL, 1),
('2022-12-27 19:46:15.842363', '2022-12-27 19:46:15.842363', NULL, 1, 'F3633344', 100, 0, 0, 1, 'INHERIT', 61, 33, NULL, 1),
('2022-12-27 19:46:15.869059', '2022-12-27 19:46:15.869059', NULL, 1, 'F3633346', 100, 0, 0, 1, 'INHERIT', 62, 33, NULL, 1),
('2022-12-27 19:46:16.066792', '2022-12-27 19:46:16.066792', NULL, 1, 'CAS23340', 100, 0, 0, 1, 'INHERIT', 63, 34, NULL, 1),
('2022-12-27 19:46:16.085024', '2022-12-27 19:46:16.085024', NULL, 1, 'CAS23342', 100, 0, 0, 1, 'INHERIT', 64, 34, NULL, 1),
('2022-12-27 19:46:16.104418', '2022-12-27 19:46:16.104418', NULL, 1, 'CAS23344', 100, 0, 0, 1, 'INHERIT', 65, 34, NULL, 1),
('2022-12-27 19:46:16.122453', '2022-12-27 19:46:16.122453', NULL, 1, 'CAS23346', 100, 0, 0, 1, 'INHERIT', 66, 34, NULL, 1),
('2022-12-27 19:46:16.264861', '2022-12-27 19:46:16.264861', NULL, 1, 'SC011001', 100, 0, 0, 1, 'INHERIT', 67, 35, NULL, 1),
('2022-12-27 19:46:16.340267', '2022-12-27 19:46:16.340267', NULL, 1, 'A58477', 100, 0, 0, 1, 'INHERIT', 68, 36, NULL, 1),
('2022-12-27 19:46:16.416279', '2022-12-27 19:46:16.416279', NULL, 1, 'A44223', 100, 0, 0, 1, 'INHERIT', 69, 37, NULL, 1),
('2022-12-27 19:46:16.495462', '2022-12-27 19:46:16.495462', NULL, 1, 'A44352', 100, 0, 0, 1, 'INHERIT', 70, 38, NULL, 1),
('2022-12-27 19:46:16.622867', '2022-12-27 19:46:16.622867', NULL, 1, 'A04851', 100, 0, 0, 1, 'INHERIT', 71, 39, NULL, 1),
('2022-12-27 19:46:16.777829', '2022-12-27 19:46:16.777829', NULL, 1, 'A08593', 100, 0, 0, 1, 'INHERIT', 72, 40, NULL, 1),
('2022-12-27 19:46:16.878291', '2022-12-27 19:46:16.878291', NULL, 1, 'ROR00221', 100, 0, 0, 1, 'INHERIT', 73, 41, NULL, 1),
('2022-12-27 19:46:16.971642', '2022-12-27 19:46:16.971642', NULL, 1, 'B01MXFLUSV', 100, 0, 0, 1, 'INHERIT', 74, 42, NULL, 1),
('2022-12-27 19:46:17.094855', '2022-12-27 19:46:17.094855', NULL, 1, 'GL34LLW11', 100, 0, 0, 1, 'INHERIT', 75, 43, NULL, 1),
('2022-12-27 19:46:17.177063', '2022-12-27 19:46:17.177063', NULL, 1, '4058NB/09', 100, 0, 0, 1, 'INHERIT', 76, 44, NULL, 1),
('2022-12-27 19:46:17.249387', '2022-12-27 19:46:17.249387', NULL, 1, '34-BC82444', 100, 0, 0, 1, 'INHERIT', 77, 45, NULL, 1),
('2022-12-27 19:46:17.320888', '2022-12-27 19:46:17.320888', NULL, 1, 'CH00001-12', 100, 0, 0, 1, 'INHERIT', 78, 46, NULL, 1),
('2022-12-27 19:46:17.410250', '2022-12-27 19:46:17.410250', NULL, 1, 'CH00001-02', 100, 0, 0, 1, 'INHERIT', 79, 47, NULL, 1),
('2022-12-27 19:46:17.475615', '2022-12-27 19:46:17.475615', NULL, 1, 'B45809LSW', 100, 0, 0, 1, 'INHERIT', 80, 48, NULL, 1),
('2022-12-27 19:46:17.567171', '2022-12-27 19:46:17.567171', NULL, 1, '304.096.29', 100, 0, 0, 1, 'INHERIT', 81, 49, NULL, 1),
('2022-12-27 19:46:17.650647', '2022-12-27 19:46:17.650647', NULL, 1, '404.068.14', 100, 0, 0, 1, 'INHERIT', 82, 50, NULL, 1),
('2022-12-27 19:46:17.823606', '2022-12-27 19:46:17.823606', NULL, 1, '003.600.02', 100, 0, 0, 1, 'INHERIT', 83, 51, NULL, 1),
('2022-12-27 19:46:17.889337', '2022-12-27 19:46:17.889337', NULL, 1, '202.493.30', 100, 0, 0, 1, 'INHERIT', 84, 52, NULL, 1),
('2022-12-27 19:46:17.975577', '2022-12-27 19:46:17.975577', NULL, 1, '404.290.14', 100, 0, 0, 1, 'INHERIT', 85, 53, NULL, 1),
('2022-12-27 19:46:18.175830', '2022-12-27 19:46:18.175830', NULL, 1, '404.038.96', 100, 0, 0, 1, 'INHERIT', 86, 54, NULL, 1),
('2022-12-27 19:46:18.229208', '2022-12-27 19:46:18.229208', NULL, 1, '404.038.96', 100, 0, 0, 1, 'INHERIT', 87, 54, NULL, 1),
('2022-12-27 19:46:18.249464', '2022-12-27 19:46:18.249464', NULL, 1, '404.038.96', 100, 0, 0, 1, 'INHERIT', 88, 54, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_asset`
--

CREATE TABLE `product_variant_asset` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `assetId` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `productVariantId` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_channels_channel`
--

CREATE TABLE `product_variant_channels_channel` (
  `productVariantId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_variant_channels_channel`
--

INSERT INTO `product_variant_channels_channel` (`productVariantId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_facet_values_facet_value`
--

CREATE TABLE `product_variant_facet_values_facet_value` (
  `productVariantId` int(11) NOT NULL,
  `facetValueId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_variant_facet_values_facet_value`
--

INSERT INTO `product_variant_facet_values_facet_value` (`productVariantId`, `facetValueId`) VALUES
(86, 38),
(87, 39),
(88, 28);

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_options_product_option`
--

CREATE TABLE `product_variant_options_product_option` (
  `productVariantId` int(11) NOT NULL,
  `productOptionId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_variant_options_product_option`
--

INSERT INTO `product_variant_options_product_option` (`productVariantId`, `productOptionId`) VALUES
(1, 1),
(1, 3),
(2, 2),
(2, 3),
(3, 1),
(3, 4),
(4, 2),
(4, 4),
(5, 5),
(6, 6),
(9, 7),
(10, 8),
(11, 9),
(12, 10),
(13, 11),
(14, 12),
(14, 14),
(15, 13),
(15, 14),
(16, 12),
(16, 15),
(17, 13),
(17, 15),
(18, 16),
(19, 17),
(20, 18),
(21, 19),
(22, 20),
(43, 21),
(44, 22),
(45, 23),
(46, 24),
(47, 25),
(48, 26),
(49, 27),
(50, 28),
(51, 29),
(52, 30),
(53, 31),
(54, 32),
(55, 33),
(56, 34),
(57, 35),
(58, 36),
(59, 37),
(60, 38),
(61, 39),
(62, 40),
(63, 41),
(64, 42),
(65, 43),
(66, 44),
(86, 45),
(87, 46),
(88, 47);

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_price`
--

CREATE TABLE `product_variant_price` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `price` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `channelId` int(11) NOT NULL,
  `variantId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_variant_price`
--

INSERT INTO `product_variant_price` (`createdAt`, `updatedAt`, `price`, `id`, `channelId`, `variantId`) VALUES
('2022-12-27 19:46:10.656020', '2022-12-27 19:46:10.656020', 129900, 1, 1, 1),
('2022-12-27 19:46:10.693449', '2022-12-27 19:46:10.693449', 139900, 2, 1, 2),
('2022-12-27 19:46:10.714362', '2022-12-27 19:46:10.714362', 219900, 3, 1, 3),
('2022-12-27 19:46:10.741664', '2022-12-27 19:46:10.741664', 229900, 4, 1, 4),
('2022-12-27 19:46:10.952504', '2022-12-27 19:46:10.952504', 32900, 5, 1, 5),
('2022-12-27 19:46:10.971072', '2022-12-27 19:46:10.971072', 44500, 6, 1, 6),
('2022-12-27 19:46:11.101588', '2022-12-27 19:46:11.101588', 1899, 7, 1, 7),
('2022-12-27 19:46:11.253662', '2022-12-27 19:46:11.253662', 31000, 8, 1, 8),
('2022-12-27 19:46:11.392517', '2022-12-27 19:46:11.392517', 14374, 9, 1, 9),
('2022-12-27 19:46:11.416119', '2022-12-27 19:46:11.416119', 16994, 10, 1, 10),
('2022-12-27 19:46:11.653811', '2022-12-27 19:46:11.653811', 13785, 11, 1, 11),
('2022-12-27 19:46:11.679529', '2022-12-27 19:46:11.679529', 14639, 12, 1, 12),
('2022-12-27 19:46:11.708645', '2022-12-27 19:46:11.708645', 28181, 13, 1, 13),
('2022-12-27 19:46:11.951853', '2022-12-27 19:46:11.951853', 108720, 14, 1, 14),
('2022-12-27 19:46:11.983554', '2022-12-27 19:46:11.983554', 109995, 15, 1, 15),
('2022-12-27 19:46:12.011533', '2022-12-27 19:46:12.011533', 93120, 16, 1, 16),
('2022-12-27 19:46:12.040397', '2022-12-27 19:46:12.040397', 94920, 17, 1, 17),
('2022-12-27 19:46:12.232330', '2022-12-27 19:46:12.232330', 3799, 18, 1, 18),
('2022-12-27 19:46:12.262627', '2022-12-27 19:46:12.262627', 5374, 19, 1, 19),
('2022-12-27 19:46:12.293278', '2022-12-27 19:46:12.293278', 7896, 20, 1, 20),
('2022-12-27 19:46:12.315759', '2022-12-27 19:46:12.315759', 9299, 21, 1, 21),
('2022-12-27 19:46:12.343320', '2022-12-27 19:46:12.343320', 13435, 22, 1, 22),
('2022-12-27 19:46:12.415256', '2022-12-27 19:46:12.415256', 7489, 23, 1, 23),
('2022-12-27 19:46:12.498905', '2022-12-27 19:46:12.498905', 597, 24, 1, 24),
('2022-12-27 19:46:12.569604', '2022-12-27 19:46:12.569604', 6900, 25, 1, 25),
('2022-12-27 19:46:12.678641', '2022-12-27 19:46:12.678641', 17499, 26, 1, 26),
('2022-12-27 19:46:12.765500', '2022-12-27 19:46:12.765500', 10400, 27, 1, 27),
('2022-12-27 19:46:12.870893', '2022-12-27 19:46:12.870893', 535000, 28, 1, 28),
('2022-12-27 19:46:12.958664', '2022-12-27 19:46:12.958664', 1498, 29, 1, 29),
('2022-12-27 19:46:13.060345', '2022-12-27 19:46:13.060345', 2000, 30, 1, 30),
('2022-12-27 19:46:13.158226', '2022-12-27 19:46:13.158226', 89999, 31, 1, 31),
('2022-12-27 19:46:13.233114', '2022-12-27 19:46:13.233114', 61500, 32, 1, 32),
('2022-12-27 19:46:13.309183', '2022-12-27 19:46:13.309183', 52100, 33, 1, 33),
('2022-12-27 19:46:13.501238', '2022-12-27 19:46:13.501238', 79900, 34, 1, 34),
('2022-12-27 19:46:13.781266', '2022-12-27 19:46:13.781266', 249900, 35, 1, 35),
('2022-12-27 19:46:13.889129', '2022-12-27 19:46:13.889129', 799, 36, 1, 36),
('2022-12-27 19:46:13.978489', '2022-12-27 19:46:13.978489', 3304, 37, 1, 37),
('2022-12-27 19:46:14.051653', '2022-12-27 19:46:14.051653', 21493, 38, 1, 38),
('2022-12-27 19:46:14.154101', '2022-12-27 19:46:14.154101', 2499, 39, 1, 39),
('2022-12-27 19:46:14.300525', '2022-12-27 19:46:14.300525', 5707, 40, 1, 40),
('2022-12-27 19:46:14.397191', '2022-12-27 19:46:14.397191', 1273, 41, 1, 41),
('2022-12-27 19:46:14.500402', '2022-12-27 19:46:14.500402', 3562, 42, 1, 42),
('2022-12-27 19:46:14.847307', '2022-12-27 19:46:14.847307', 9999, 43, 1, 43),
('2022-12-27 19:46:14.876283', '2022-12-27 19:46:14.876283', 9999, 44, 1, 44),
('2022-12-27 19:46:14.894042', '2022-12-27 19:46:14.894042', 9999, 45, 1, 45),
('2022-12-27 19:46:14.924175', '2022-12-27 19:46:14.924175', 9999, 46, 1, 46),
('2022-12-27 19:46:15.104513', '2022-12-27 19:46:15.104513', 16000, 47, 1, 47),
('2022-12-27 19:46:15.125864', '2022-12-27 19:46:15.125864', 16000, 48, 1, 48),
('2022-12-27 19:46:15.149611', '2022-12-27 19:46:15.149611', 16000, 49, 1, 49),
('2022-12-27 19:46:15.175697', '2022-12-27 19:46:15.175697', 16000, 50, 1, 50),
('2022-12-27 19:46:15.324669', '2022-12-27 19:46:15.324669', 14000, 51, 1, 51),
('2022-12-27 19:46:15.344421', '2022-12-27 19:46:15.344421', 14000, 52, 1, 52),
('2022-12-27 19:46:15.365251', '2022-12-27 19:46:15.365251', 14000, 53, 1, 53),
('2022-12-27 19:46:15.391694', '2022-12-27 19:46:15.391694', 14000, 54, 1, 54),
('2022-12-27 19:46:15.548740', '2022-12-27 19:46:15.548740', 9995, 55, 1, 55),
('2022-12-27 19:46:15.567422', '2022-12-27 19:46:15.567422', 9995, 56, 1, 56),
('2022-12-27 19:46:15.599377', '2022-12-27 19:46:15.599377', 9995, 57, 1, 57),
('2022-12-27 19:46:15.619739', '2022-12-27 19:46:15.619739', 9995, 58, 1, 58),
('2022-12-27 19:46:15.821538', '2022-12-27 19:46:15.821538', 4495, 59, 1, 59),
('2022-12-27 19:46:15.835463', '2022-12-27 19:46:15.835463', 4495, 60, 1, 60),
('2022-12-27 19:46:15.853034', '2022-12-27 19:46:15.853034', 4495, 61, 1, 61),
('2022-12-27 19:46:15.879708', '2022-12-27 19:46:15.879708', 4495, 62, 1, 62),
('2022-12-27 19:46:16.079270', '2022-12-27 19:46:16.079270', 6500, 63, 1, 63),
('2022-12-27 19:46:16.097590', '2022-12-27 19:46:16.097590', 6500, 64, 1, 64),
('2022-12-27 19:46:16.115389', '2022-12-27 19:46:16.115389', 6500, 65, 1, 65),
('2022-12-27 19:46:16.130490', '2022-12-27 19:46:16.130490', 6500, 66, 1, 66),
('2022-12-27 19:46:16.279971', '2022-12-27 19:46:16.279971', 1550, 67, 1, 67),
('2022-12-27 19:46:16.348933', '2022-12-27 19:46:16.348933', 675, 68, 1, 68),
('2022-12-27 19:46:16.427186', '2022-12-27 19:46:16.427186', 1995, 69, 1, 69),
('2022-12-27 19:46:16.505459', '2022-12-27 19:46:16.505459', 699, 70, 1, 70),
('2022-12-27 19:46:16.644838', '2022-12-27 19:46:16.644838', 895, 71, 1, 71),
('2022-12-27 19:46:16.789830', '2022-12-27 19:46:16.789830', 3250, 72, 1, 72),
('2022-12-27 19:46:16.889134', '2022-12-27 19:46:16.889134', 6500, 73, 1, 73),
('2022-12-27 19:46:16.987023', '2022-12-27 19:46:16.987023', 1999, 74, 1, 74),
('2022-12-27 19:46:17.103901', '2022-12-27 19:46:17.103901', 18853, 75, 1, 75),
('2022-12-27 19:46:17.192777', '2022-12-27 19:46:17.192777', 499, 76, 1, 76),
('2022-12-27 19:46:17.262037', '2022-12-27 19:46:17.262037', 6500, 77, 1, 77),
('2022-12-27 19:46:17.329964', '2022-12-27 19:46:17.329964', 29500, 78, 1, 78),
('2022-12-27 19:46:17.420233', '2022-12-27 19:46:17.420233', 124500, 79, 1, 79),
('2022-12-27 19:46:17.497721', '2022-12-27 19:46:17.497721', 2845, 80, 1, 80),
('2022-12-27 19:46:17.581129', '2022-12-27 19:46:17.581129', 12500, 81, 1, 81),
('2022-12-27 19:46:17.687762', '2022-12-27 19:46:17.687762', 13000, 82, 1, 82),
('2022-12-27 19:46:17.831942', '2022-12-27 19:46:17.831942', 7000, 83, 1, 83),
('2022-12-27 19:46:17.899785', '2022-12-27 19:46:17.899785', 1400, 84, 1, 84),
('2022-12-27 19:46:17.983921', '2022-12-27 19:46:17.983921', 13000, 85, 1, 85),
('2022-12-27 19:46:18.202936', '2022-12-27 19:46:18.202936', 10000, 86, 1, 86),
('2022-12-27 19:46:18.242965', '2022-12-27 19:46:18.242965', 10000, 87, 1, 87),
('2022-12-27 19:46:18.268558', '2022-12-27 19:46:18.268558', 10000, 88, 1, 88);

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_translation`
--

CREATE TABLE `product_variant_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_variant_translation`
--

INSERT INTO `product_variant_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `id`, `baseId`) VALUES
('2022-12-27 19:46:10.634642', '2022-12-27 19:46:10.000000', 'en', 'Laptop 13 inch 8GB', 1, 1),
('2022-12-27 19:46:10.667771', '2022-12-27 19:46:10.000000', 'en', 'Laptop 15 inch 8GB', 2, 2),
('2022-12-27 19:46:10.699041', '2022-12-27 19:46:10.000000', 'en', 'Laptop 13 inch 16GB', 3, 3),
('2022-12-27 19:46:10.718073', '2022-12-27 19:46:10.000000', 'en', 'Laptop 15 inch 16GB', 4, 4),
('2022-12-27 19:46:10.935824', '2022-12-27 19:46:10.000000', 'en', 'Tablet 32GB', 5, 5),
('2022-12-27 19:46:10.956908', '2022-12-27 19:46:10.000000', 'en', 'Tablet 128GB', 6, 6),
('2022-12-27 19:46:11.076500', '2022-12-27 19:46:11.000000', 'en', 'Wireless Optical Mouse', 7, 7),
('2022-12-27 19:46:11.236909', '2022-12-27 19:46:11.000000', 'en', '32-Inch Monitor', 8, 8),
('2022-12-27 19:46:11.362353', '2022-12-27 19:46:11.000000', 'en', 'Curvy Monitor 24 inch', 9, 9),
('2022-12-27 19:46:11.395168', '2022-12-27 19:46:11.000000', 'en', 'Curvy Monitor 27 inch', 10, 10),
('2022-12-27 19:46:11.635357', '2022-12-27 19:46:11.000000', 'en', 'High Performance RAM 4GB', 11, 11),
('2022-12-27 19:46:11.659098', '2022-12-27 19:46:11.000000', 'en', 'High Performance RAM 8GB', 12, 12),
('2022-12-27 19:46:11.682556', '2022-12-27 19:46:11.000000', 'en', 'High Performance RAM 16GB', 13, 13),
('2022-12-27 19:46:11.929693', '2022-12-27 19:46:11.000000', 'en', 'Gaming PC i7-8700 240GB SSD', 14, 14),
('2022-12-27 19:46:11.956811', '2022-12-27 19:46:11.000000', 'en', 'Gaming PC R7-2700 240GB SSD', 15, 15),
('2022-12-27 19:46:11.988517', '2022-12-27 19:46:11.000000', 'en', 'Gaming PC i7-8700 120GB SSD', 16, 16),
('2022-12-27 19:46:12.017145', '2022-12-27 19:46:12.000000', 'en', 'Gaming PC R7-2700 120GB SSD', 17, 17),
('2022-12-27 19:46:12.216348', '2022-12-27 19:46:12.000000', 'en', 'Hard Drive 1TB', 18, 18),
('2022-12-27 19:46:12.235196', '2022-12-27 19:46:12.000000', 'en', 'Hard Drive 2TB', 19, 19),
('2022-12-27 19:46:12.270035', '2022-12-27 19:46:12.000000', 'en', 'Hard Drive 3TB', 20, 20),
('2022-12-27 19:46:12.295860', '2022-12-27 19:46:12.000000', 'en', 'Hard Drive 4TB', 21, 21),
('2022-12-27 19:46:12.318325', '2022-12-27 19:46:12.000000', 'en', 'Hard Drive 6TB', 22, 22),
('2022-12-27 19:46:12.400820', '2022-12-27 19:46:12.000000', 'en', 'Clacky Keyboard', 23, 23),
('2022-12-27 19:46:12.486190', '2022-12-27 19:46:12.000000', 'en', 'Ethernet Cable', 24, 24),
('2022-12-27 19:46:12.556237', '2022-12-27 19:46:12.000000', 'en', 'USB Cable', 25, 25),
('2022-12-27 19:46:12.662679', '2022-12-27 19:46:12.000000', 'en', 'Instant Camera', 26, 26),
('2022-12-27 19:46:12.746362', '2022-12-27 19:46:12.000000', 'en', 'Camera Lens', 27, 27),
('2022-12-27 19:46:12.852939', '2022-12-27 19:46:12.000000', 'en', 'Vintage Folding Camera', 28, 28),
('2022-12-27 19:46:12.944780', '2022-12-27 19:46:12.000000', 'en', 'Tripod', 29, 29),
('2022-12-27 19:46:13.039686', '2022-12-27 19:46:13.000000', 'en', 'Instamatic Camera', 30, 30),
('2022-12-27 19:46:13.143239', '2022-12-27 19:46:13.000000', 'en', 'Compact Digital Camera', 31, 31),
('2022-12-27 19:46:13.220107', '2022-12-27 19:46:13.000000', 'en', 'Nikkormat SLR Camera', 32, 32),
('2022-12-27 19:46:13.293172', '2022-12-27 19:46:13.000000', 'en', 'Compact SLR Camera', 33, 33),
('2022-12-27 19:46:13.435829', '2022-12-27 19:46:13.000000', 'en', 'Twin Lens Camera', 34, 34),
('2022-12-27 19:46:13.757133', '2022-12-27 19:46:13.000000', 'en', 'Road Bike', 35, 35),
('2022-12-27 19:46:13.871157', '2022-12-27 19:46:13.000000', 'en', 'Skipping Rope', 36, 36),
('2022-12-27 19:46:13.959388', '2022-12-27 19:46:13.000000', 'en', 'Boxing Gloves', 37, 37),
('2022-12-27 19:46:14.038928', '2022-12-27 19:46:14.000000', 'en', 'Tent', 38, 38),
('2022-12-27 19:46:14.140920', '2022-12-27 19:46:14.000000', 'en', 'Cruiser Skateboard', 39, 39),
('2022-12-27 19:46:14.284009', '2022-12-27 19:46:14.000000', 'en', 'Football', 40, 40),
('2022-12-27 19:46:14.381306', '2022-12-27 19:46:14.000000', 'en', 'Tennis Ball', 41, 41),
('2022-12-27 19:46:14.475761', '2022-12-27 19:46:14.000000', 'en', 'Basketball', 42, 42),
('2022-12-27 19:46:14.823402', '2022-12-27 19:46:14.000000', 'en', 'Ultraboost Running Shoe Size 40', 43, 43),
('2022-12-27 19:46:14.851418', '2022-12-27 19:46:14.000000', 'en', 'Ultraboost Running Shoe Size 42', 44, 44),
('2022-12-27 19:46:14.878566', '2022-12-27 19:46:14.000000', 'en', 'Ultraboost Running Shoe Size 44', 45, 45),
('2022-12-27 19:46:14.897120', '2022-12-27 19:46:14.000000', 'en', 'Ultraboost Running Shoe Size 46', 46, 46),
('2022-12-27 19:46:15.085904', '2022-12-27 19:46:15.000000', 'en', 'Freerun Running Shoe Size 40', 47, 47),
('2022-12-27 19:46:15.107395', '2022-12-27 19:46:15.000000', 'en', 'Freerun Running Shoe Size 42', 48, 48),
('2022-12-27 19:46:15.130235', '2022-12-27 19:46:15.000000', 'en', 'Freerun Running Shoe Size 44', 49, 49),
('2022-12-27 19:46:15.152782', '2022-12-27 19:46:15.000000', 'en', 'Freerun Running Shoe Size 46', 50, 50),
('2022-12-27 19:46:15.306963', '2022-12-27 19:46:15.000000', 'en', 'Hi-Top Basketball Shoe Size 40', 51, 51),
('2022-12-27 19:46:15.327270', '2022-12-27 19:46:15.000000', 'en', 'Hi-Top Basketball Shoe Size 42', 52, 52),
('2022-12-27 19:46:15.347101', '2022-12-27 19:46:15.000000', 'en', 'Hi-Top Basketball Shoe Size 44', 53, 53),
('2022-12-27 19:46:15.367844', '2022-12-27 19:46:15.000000', 'en', 'Hi-Top Basketball Shoe Size 46', 54, 54),
('2022-12-27 19:46:15.530482', '2022-12-27 19:46:15.000000', 'en', 'Pureboost Running Shoe Size 40', 55, 55),
('2022-12-27 19:46:15.552208', '2022-12-27 19:46:15.000000', 'en', 'Pureboost Running Shoe Size 42', 56, 56),
('2022-12-27 19:46:15.569974', '2022-12-27 19:46:15.000000', 'en', 'Pureboost Running Shoe Size 44', 57, 57),
('2022-12-27 19:46:15.601768', '2022-12-27 19:46:15.000000', 'en', 'Pureboost Running Shoe Size 46', 58, 58),
('2022-12-27 19:46:15.802286', '2022-12-27 19:46:15.000000', 'en', 'RunX Running Shoe Size 40', 59, 59),
('2022-12-27 19:46:15.823234', '2022-12-27 19:46:15.000000', 'en', 'RunX Running Shoe Size 42', 60, 60),
('2022-12-27 19:46:15.838648', '2022-12-27 19:46:15.000000', 'en', 'RunX Running Shoe Size 44', 61, 61),
('2022-12-27 19:46:15.865358', '2022-12-27 19:46:15.000000', 'en', 'RunX Running Shoe Size 46', 62, 62),
('2022-12-27 19:46:16.063341', '2022-12-27 19:46:16.000000', 'en', 'Allstar Sneakers Size 40', 63, 63),
('2022-12-27 19:46:16.081803', '2022-12-27 19:46:16.000000', 'en', 'Allstar Sneakers Size 42', 64, 64),
('2022-12-27 19:46:16.099959', '2022-12-27 19:46:16.000000', 'en', 'Allstar Sneakers Size 44', 65, 65),
('2022-12-27 19:46:16.117984', '2022-12-27 19:46:16.000000', 'en', 'Allstar Sneakers Size 46', 66, 66),
('2022-12-27 19:46:16.261161', '2022-12-27 19:46:16.000000', 'en', 'Spiky Cactus', 67, 67),
('2022-12-27 19:46:16.335707', '2022-12-27 19:46:16.000000', 'en', 'Tulip Pot', 68, 68),
('2022-12-27 19:46:16.413339', '2022-12-27 19:46:16.000000', 'en', 'Hanging Plant', 69, 69),
('2022-12-27 19:46:16.485945', '2022-12-27 19:46:16.000000', 'en', 'Aloe Vera', 70, 70),
('2022-12-27 19:46:16.611709', '2022-12-27 19:46:16.000000', 'en', 'Fern Blechnum Gibbum', 71, 71),
('2022-12-27 19:46:16.768140', '2022-12-27 19:46:16.000000', 'en', 'Assorted Indoor Succulents', 72, 72),
('2022-12-27 19:46:16.870552', '2022-12-27 19:46:16.000000', 'en', 'Orchid', 73, 73),
('2022-12-27 19:46:16.965613', '2022-12-27 19:46:16.000000', 'en', 'Bonsai Tree', 74, 74),
('2022-12-27 19:46:17.087454', '2022-12-27 19:46:17.000000', 'en', 'Guardian Lion Statue', 75, 75),
('2022-12-27 19:46:17.168156', '2022-12-27 19:46:17.000000', 'en', 'Hand Trowel', 76, 76),
('2022-12-27 19:46:17.245908', '2022-12-27 19:46:17.000000', 'en', 'Balloon Chair', 77, 77),
('2022-12-27 19:46:17.316923', '2022-12-27 19:46:17.000000', 'en', 'Grey Fabric Sofa', 78, 78),
('2022-12-27 19:46:17.403151', '2022-12-27 19:46:17.000000', 'en', 'Leather Sofa', 79, 79),
('2022-12-27 19:46:17.469408', '2022-12-27 19:46:17.000000', 'en', 'Light Shade', 80, 80),
('2022-12-27 19:46:17.563931', '2022-12-27 19:46:17.000000', 'en', 'Wooden Side Desk', 81, 81),
('2022-12-27 19:46:17.645084', '2022-12-27 19:46:17.000000', 'en', 'Comfy Padded Chair', 82, 82),
('2022-12-27 19:46:17.820306', '2022-12-27 19:46:17.000000', 'en', 'Black Eaves Chair', 83, 83),
('2022-12-27 19:46:17.883481', '2022-12-27 19:46:17.000000', 'en', 'Wooden Stool', 84, 84),
('2022-12-27 19:46:17.968408', '2022-12-27 19:46:17.000000', 'en', 'Bedside Table', 85, 85),
('2022-12-27 19:46:18.164212', '2022-12-27 19:46:18.000000', 'en', 'Modern Cafe Chair mustard', 86, 86),
('2022-12-27 19:46:18.225409', '2022-12-27 19:46:18.000000', 'en', 'Modern Cafe Chair mint', 87, 87),
('2022-12-27 19:46:18.245636', '2022-12-27 19:46:18.000000', 'en', 'Modern Cafe Chair pearl', 88, 88);

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `startsAt` datetime DEFAULT NULL,
  `endsAt` datetime DEFAULT NULL,
  `couponCode` varchar(255) DEFAULT NULL,
  `perCustomerUsageLimit` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `conditions` text NOT NULL,
  `actions` text NOT NULL,
  `priorityScore` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotion_channels_channel`
--

CREATE TABLE `promotion_channels_channel` (
  `promotionId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refund`
--

CREATE TABLE `refund` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `items` int(11) NOT NULL,
  `shipping` int(11) NOT NULL,
  `adjustment` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `method` varchar(255) NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `state` varchar(255) NOT NULL,
  `transactionId` varchar(255) DEFAULT NULL,
  `metadata` text NOT NULL,
  `id` int(11) NOT NULL,
  `paymentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `permissions` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`createdAt`, `updatedAt`, `code`, `description`, `permissions`, `id`) VALUES
('2022-12-27 19:46:04.962833', '2023-05-06 13:00:53.000000', '__super_admin_role__', 'SuperAdmin', 'Authenticated,SuperAdmin,UpdateGlobalSettings,CreateCatalog,ReadCatalog,UpdateCatalog,DeleteCatalog,CreateSettings,ReadSettings,UpdateSettings,DeleteSettings,CreateAdministrator,ReadAdministrator,UpdateAdministrator,DeleteAdministrator,CreateAsset,ReadAsset,UpdateAsset,DeleteAsset,CreateChannel,ReadChannel,UpdateChannel,DeleteChannel,CreateCollection,ReadCollection,UpdateCollection,DeleteCollection,CreateCountry,ReadCountry,UpdateCountry,DeleteCountry,CreateCustomer,ReadCustomer,UpdateCustomer,DeleteCustomer,CreateCustomerGroup,ReadCustomerGroup,UpdateCustomerGroup,DeleteCustomerGroup,CreateFacet,ReadFacet,UpdateFacet,DeleteFacet,CreateOrder,ReadOrder,UpdateOrder,DeleteOrder,CreatePaymentMethod,ReadPaymentMethod,UpdatePaymentMethod,DeletePaymentMethod,CreateProduct,ReadProduct,UpdateProduct,DeleteProduct,CreatePromotion,ReadPromotion,UpdatePromotion,DeletePromotion,CreateShippingMethod,ReadShippingMethod,UpdateShippingMethod,DeleteShippingMethod,CreateTag,ReadTag,UpdateTag,DeleteTag,CreateTaxCategory,ReadTaxCategory,UpdateTaxCategory,DeleteTaxCategory,CreateTaxRate,ReadTaxRate,UpdateTaxRate,DeleteTaxRate,CreateSystem,ReadSystem,UpdateSystem,DeleteSystem,CreateZone,ReadZone,UpdateZone,DeleteZone,CreatePages,ReadPages,UpdatePages,DeletePages', 1),
('2022-12-27 19:46:04.973652', '2022-12-27 19:46:04.973652', '__customer_role__', 'Customer', 'Authenticated', 2),
('2022-12-27 19:46:10.249840', '2022-12-27 19:46:10.249840', 'administrator', 'Administrator', 'Authenticated,CreateCatalog,ReadCatalog,UpdateCatalog,DeleteCatalog,CreateSettings,ReadSettings,UpdateSettings,DeleteSettings,CreateCustomer,ReadCustomer,UpdateCustomer,DeleteCustomer,CreateCustomerGroup,ReadCustomerGroup,UpdateCustomerGroup,DeleteCustomerGroup,CreateOrder,ReadOrder,UpdateOrder,DeleteOrder,CreateSystem,ReadSystem,UpdateSystem,DeleteSystem', 3),
('2022-12-27 19:46:10.256655', '2022-12-27 19:46:10.256655', 'order-manager', 'Order manager', 'Authenticated,CreateOrder,ReadOrder,UpdateOrder,DeleteOrder,ReadCustomer,ReadPaymentMethod,ReadShippingMethod,ReadPromotion,ReadCountry,ReadZone', 4),
('2022-12-27 19:46:10.265762', '2022-12-27 19:46:10.265762', 'inventory-manager', 'Inventory manager', 'Authenticated,CreateCatalog,ReadCatalog,UpdateCatalog,DeleteCatalog,CreateTag,ReadTag,UpdateTag,DeleteTag,ReadCustomer', 5);

-- --------------------------------------------------------

--
-- Table structure for table `role_channels_channel`
--

CREATE TABLE `role_channels_channel` (
  `roleId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role_channels_channel`
--

INSERT INTO `role_channels_channel` (`roleId`, `channelId`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `search_index_item`
--

CREATE TABLE `search_index_item` (
  `languageCode` varchar(255) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productVariantName` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `priceWithTax` int(11) NOT NULL,
  `facetIds` text NOT NULL,
  `facetValueIds` text NOT NULL,
  `collectionIds` text NOT NULL,
  `collectionSlugs` text NOT NULL,
  `channelIds` text NOT NULL,
  `productPreview` varchar(255) NOT NULL,
  `productPreviewFocalPoint` text DEFAULT NULL,
  `productVariantPreview` varchar(255) NOT NULL,
  `productVariantPreviewFocalPoint` text DEFAULT NULL,
  `inStock` tinyint(4) NOT NULL DEFAULT 1,
  `productInStock` tinyint(4) NOT NULL DEFAULT 1,
  `productVariantId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productAssetId` int(11) DEFAULT NULL,
  `productVariantAssetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `search_index_item`
--

INSERT INTO `search_index_item` (`languageCode`, `enabled`, `productName`, `productVariantName`, `description`, `slug`, `sku`, `price`, `priceWithTax`, `facetIds`, `facetValueIds`, `collectionIds`, `collectionSlugs`, `channelIds`, `productPreview`, `productPreviewFocalPoint`, `productVariantPreview`, `productVariantPreviewFocalPoint`, `inStock`, `productInStock`, `productVariantId`, `channelId`, `productId`, `productAssetId`, `productVariantAssetId`) VALUES
('en', 1, 'Laptop', 'Laptop 13 inch 8GB', 'Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.', 'laptop', 'L2201308', 129900, 155880, '1,2', '1,2,3', '2,3', 'electronics,computers', '1', 'preview/71/derick-david-409858-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 1, 1, 1, 1, NULL),
('en', 1, 'Laptop', 'Laptop 15 inch 8GB', 'Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.', 'laptop', 'L2201508', 139900, 167880, '1,2', '1,2,3', '2,3', 'electronics,computers', '1', 'preview/71/derick-david-409858-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 2, 1, 1, 1, NULL),
('en', 1, 'Laptop', 'Laptop 13 inch 16GB', 'Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.', 'laptop', 'L2201316', 219900, 263880, '1,2', '1,2,3', '2,3', 'electronics,computers', '1', 'preview/71/derick-david-409858-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 3, 1, 1, 1, NULL),
('en', 1, 'Laptop', 'Laptop 15 inch 16GB', 'Now equipped with seventh-generation Intel Core processors, Laptop is snappier than ever. From daily tasks like launching apps and opening files to more advanced computing, you can power through your day thanks to faster SSDs and Turbo Boost processing up to 3.6GHz.', 'laptop', 'L2201516', 229900, 275880, '1,2', '1,2,3', '2,3', 'electronics,computers', '1', 'preview/71/derick-david-409858-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 4, 1, 1, 1, NULL),
('en', 1, 'Tablet', 'Tablet 32GB', 'If the computer were invented today, what would it look like? It would be powerful enough for any task. So mobile you could take it everywhere. And so intuitive you could use it any way you wanted — with touch, a keyboard, or even a pencil. In other words, it wouldn’t really be a \"computer.\" It would be Tablet.', 'tablet', 'TBL200032', 32900, 39480, '1,2', '1,2,3', '2,3', 'electronics,computers', '1', 'preview/b8/kelly-sikkema-685291-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 5, 1, 2, 2, NULL),
('en', 1, 'Tablet', 'Tablet 128GB', 'If the computer were invented today, what would it look like? It would be powerful enough for any task. So mobile you could take it everywhere. And so intuitive you could use it any way you wanted — with touch, a keyboard, or even a pencil. In other words, it wouldn’t really be a \"computer.\" It would be Tablet.', 'tablet', 'TBL200128', 44500, 53400, '1,2', '1,2,3', '2,3', 'electronics,computers', '1', 'preview/b8/kelly-sikkema-685291-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 6, 1, 2, 2, NULL),
('en', 1, 'Wireless Optical Mouse', 'Wireless Optical Mouse', 'The Logitech M185 Wireless Optical Mouse is a great device for any computer user, and as Logitech are the global market leaders for these devices, you are also guaranteed absolute reliability. A mouse to be reckoned with!', 'cordless-mouse', '834444', 1899, 2279, '1,2', '1,2,4', '2,3', 'electronics,computers', '1', 'preview/a1/oscar-ivan-esquivel-arteaga-687447-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 7, 1, 3, 3, NULL),
('en', 1, '32-Inch Monitor', '32-Inch Monitor', 'The UJ59 with Ultra HD resolution has 4x the pixels of Full HD, delivering more screen space and amazingly life-like images. That means you can view documents and webpages with less scrolling, work more comfortably with multiple windows and toolbars, and enjoy photos, videos and games in stunning 4K quality. Note: beverage not included.', '32-inch-monitor', 'LU32J590UQUXEN', 31000, 37200, '1,2', '1,2,5', '2,3', 'electronics,computers', '1', 'preview/d2/daniel-korpai-1302051-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 8, 1, 4, 4, NULL),
('en', 1, 'Curvy Monitor', 'Curvy Monitor 24 inch', 'Discover a truly immersive viewing experience with this monitor curved more deeply than any other. Wrapping around your field of vision the 1,800 R screencreates a wider field of view, enhances depth perception, and minimises peripheral distractions to draw you deeper in to your content.', 'curvy-monitor', 'C24F390', 14374, 17249, '1,2', '1,2,5', '2,3', 'electronics,computers', '1', 'preview/9c/alexandru-acea-686569-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 9, 1, 5, 5, NULL),
('en', 1, 'Curvy Monitor', 'Curvy Monitor 27 inch', 'Discover a truly immersive viewing experience with this monitor curved more deeply than any other. Wrapping around your field of vision the 1,800 R screencreates a wider field of view, enhances depth perception, and minimises peripheral distractions to draw you deeper in to your content.', 'curvy-monitor', 'C27F390', 16994, 20393, '1,2', '1,2,5', '2,3', 'electronics,computers', '1', 'preview/9c/alexandru-acea-686569-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 10, 1, 5, 5, NULL),
('en', 1, 'High Performance RAM', 'High Performance RAM 4GB', 'Each RAM module is built with a pure aluminium heat spreader for faster heat dissipation and cooler operation. Enhanced to XMP 2.0 profiles for better overclocking; Compatibility: Intel 100 Series, Intel 200 Series, Intel 300 Series, Intel X299, AMD 300 Series, AMD 400 Series.', 'high-performance-ram', 'CMK32GX4M2AC04', 13785, 16542, '1,2', '1,2,6', '2,3', 'electronics,computers', '1', 'preview/58/liam-briese-1128307-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 11, 1, 6, 6, NULL),
('en', 1, 'High Performance RAM', 'High Performance RAM 8GB', 'Each RAM module is built with a pure aluminium heat spreader for faster heat dissipation and cooler operation. Enhanced to XMP 2.0 profiles for better overclocking; Compatibility: Intel 100 Series, Intel 200 Series, Intel 300 Series, Intel X299, AMD 300 Series, AMD 400 Series.', 'high-performance-ram', 'CMK32GX4M2AC08', 14639, 17567, '1,2', '1,2,6', '2,3', 'electronics,computers', '1', 'preview/58/liam-briese-1128307-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 12, 1, 6, 6, NULL),
('en', 1, 'High Performance RAM', 'High Performance RAM 16GB', 'Each RAM module is built with a pure aluminium heat spreader for faster heat dissipation and cooler operation. Enhanced to XMP 2.0 profiles for better overclocking; Compatibility: Intel 100 Series, Intel 200 Series, Intel 300 Series, Intel X299, AMD 300 Series, AMD 400 Series.', 'high-performance-ram', 'CMK32GX4M2AC16', 28181, 33817, '1,2', '1,2,6', '2,3', 'electronics,computers', '1', 'preview/58/liam-briese-1128307-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 13, 1, 6, 6, NULL),
('en', 1, 'Gaming PC', 'Gaming PC i7-8700 240GB SSD', 'This pc is optimised for gaming, and is also VR ready. The Intel Core-i7 CPU and High Performance GPU give the computer the raw power it needs to function at a high level.', 'gaming-pc', 'CGS480VR1063', 108720, 130464, '1,2', '1,2,7', '2,3', 'electronics,computers', '1', 'preview/5a/florian-olivo-1166419-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 14, 1, 7, 7, NULL),
('en', 1, 'Gaming PC', 'Gaming PC R7-2700 240GB SSD', 'This pc is optimised for gaming, and is also VR ready. The Intel Core-i7 CPU and High Performance GPU give the computer the raw power it needs to function at a high level.', 'gaming-pc', 'CGS480VR1064', 109995, 131994, '1,2', '1,2,7', '2,3', 'electronics,computers', '1', 'preview/5a/florian-olivo-1166419-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 15, 1, 7, 7, NULL),
('en', 1, 'Gaming PC', 'Gaming PC i7-8700 120GB SSD', 'This pc is optimised for gaming, and is also VR ready. The Intel Core-i7 CPU and High Performance GPU give the computer the raw power it needs to function at a high level.', 'gaming-pc', 'CGS480VR1065', 93120, 111744, '1,2', '1,2,7', '2,3', 'electronics,computers', '1', 'preview/5a/florian-olivo-1166419-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 16, 1, 7, 7, NULL),
('en', 1, 'Gaming PC', 'Gaming PC R7-2700 120GB SSD', 'This pc is optimised for gaming, and is also VR ready. The Intel Core-i7 CPU and High Performance GPU give the computer the raw power it needs to function at a high level.', 'gaming-pc', 'CGS480VR1066', 94920, 113904, '1,2', '1,2,7', '2,3', 'electronics,computers', '1', 'preview/5a/florian-olivo-1166419-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 17, 1, 7, 7, NULL),
('en', 1, 'Hard Drive', 'Hard Drive 1TB', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 'hard-drive', 'IHD455T1', 3799, 4559, '1,2', '1,2,8', '2,3', 'electronics,computers', '1', 'preview/96/vincent-botta-736919-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 18, 1, 8, 8, NULL),
('en', 1, 'Hard Drive', 'Hard Drive 2TB', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 'hard-drive', 'IHD455T2', 5374, 6449, '1,2', '1,2,8', '2,3', 'electronics,computers', '1', 'preview/96/vincent-botta-736919-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 19, 1, 8, 8, NULL),
('en', 1, 'Hard Drive', 'Hard Drive 3TB', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 'hard-drive', 'IHD455T3', 7896, 9475, '1,2', '1,2,8', '2,3', 'electronics,computers', '1', 'preview/96/vincent-botta-736919-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 20, 1, 8, 8, NULL),
('en', 1, 'Hard Drive', 'Hard Drive 4TB', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 'hard-drive', 'IHD455T4', 9299, 11159, '1,2', '1,2,8', '2,3', 'electronics,computers', '1', 'preview/96/vincent-botta-736919-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 21, 1, 8, 8, NULL),
('en', 1, 'Hard Drive', 'Hard Drive 6TB', 'Boost your PC storage with this internal hard drive, designed just for desktop and all-in-one PCs.', 'hard-drive', 'IHD455T6', 13435, 16122, '1,2', '1,2,8', '2,3', 'electronics,computers', '1', 'preview/96/vincent-botta-736919-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 22, 1, 8, 8, NULL),
('en', 1, 'Clacky Keyboard', 'Clacky Keyboard', 'Let all your colleagues know that you are typing on this exclusive, colorful klicky-klacky keyboard. Huge travel on each keypress ensures maximum klack on each and every keystroke.', 'clacky-keyboard', 'A4TKLA45535', 7489, 8987, '1,2', '1,2,6', '2,3', 'electronics,computers', '1', 'preview/09/juan-gomez-674574-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 23, 1, 9, 9, NULL),
('en', 1, 'Ethernet Cable', 'Ethernet Cable', '5m (metres) Cat.6 network cable (upwards/downwards compatible) | Patch cable | 2 RJ-45 plug | plug with bend protection mantle. High transmission speeds due to operating frequency with up to 250 MHz (in comparison to Cat.5/Cat.5e cable bandwidth of 100 MHz).', 'ethernet-cable', 'A23334x30', 597, 716, '1', '1,2', '2,3', 'electronics,computers', '1', 'preview/7b/thomas-q-1229169-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 24, 1, 10, 10, NULL),
('en', 1, 'USB Cable', 'USB Cable', 'Solid conductors eliminate strand-interaction distortion and reduce jitter. As the surface is made of high-purity silver, the performance is very close to that of a solid silver cable, but priced much closer to solid copper cable.', 'usb-cable', 'USBCIN01.5MI', 6900, 8280, '1', '1,2', '2,3', 'electronics,computers', '1', 'preview/64/adam-birkett-239153-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 25, 1, 11, 11, NULL),
('en', 1, 'Instant Camera', 'Instant Camera', 'With its nostalgic design and simple point-and-shoot functionality, the Instant Camera is the perfect pick to get started with instant photography.', 'instant-camera', 'IC22MWDD', 17499, 20999, '1,2', '1,9,10', '2,4', 'electronics,camera-photo', '1', 'preview/b5/eniko-kis-663725-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 26, 1, 12, 12, NULL),
('en', 1, 'Camera Lens', 'Camera Lens', 'This lens is a Di type lens using an optical system with improved multi-coating designed to function with digital SLR cameras as well as film cameras.', 'camera-lens', 'B0012UUP02', 10400, 12480, '1,2', '1,9,11', '2,4', 'electronics,camera-photo', '1', 'preview/9b/brandi-redd-104140-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 27, 1, 13, 13, NULL),
('en', 1, 'Vintage Folding Camera', 'Vintage Folding Camera', 'This vintage folding camera is so antiquated that you cannot possibly hope to produce actual photographs with it. However, it makes a wonderful decorative piece for the home or office.', 'vintage-folding-camera', 'B00AFC9099', 535000, 642000, '1,2', '1,9,12', '2,4', 'electronics,camera-photo', '1', 'preview/3c/jonathan-talbert-697262-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 28, 1, 14, 14, NULL),
('en', 1, 'Tripod', 'Tripod', 'Capture vivid, professional-style photographs with help from this lightweight tripod. The adjustable-height tripod makes it easy to achieve reliable stability and score just the right angle when going after that award-winning shot.', 'tripod', 'B00XI87KV8', 1498, 1798, '1,2', '1,9,13', '2,4', 'electronics,camera-photo', '1', 'preview/21/zoltan-tasi-423051-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 29, 1, 15, 15, NULL),
('en', 1, 'Instamatic Camera', 'Instamatic Camera', 'This inexpensive point-and-shoot camera uses easy-to-load 126 film cartridges. A built-in flash unit ensure great results, no matter the lighting conditions.', 'instamatic-camera', 'B07K1330LL', 2000, 2400, '1,2', '1,9,14', '2,4', 'electronics,camera-photo', '1', 'preview/5b/jakob-owens-274337-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 30, 1, 16, 16, NULL),
('en', 1, 'Compact Digital Camera', 'Compact Digital Camera', 'Unleash your creative potential with high-level performance and advanced features such as AI-powered Real-time Eye AF; new, high-precision Real-time Tracking; high-speed continuous shooting and 4K HDR movie-shooting. The camera\'s innovative AF quickly and reliably detects the position of the subject and then tracks the subject\'s motion, keeping it in sharp focus.', 'compact-digital-camera', 'B07D990021', 89999, 107999, '1,2', '1,9,15', '2,4', 'electronics,camera-photo', '1', 'preview/bc/patrick-brinksma-663044-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 31, 1, 17, 17, NULL),
('en', 1, 'Nikkormat SLR Camera', 'Nikkormat SLR Camera', 'The Nikkormat FS was brought to market by Nikon in 1965. The lens is a 50mm f1.4 Nikkor. Nice glass, smooth focus and a working diaphragm. A UV filter and a Nikon front lens cap are included with the lens.', 'nikkormat-slr-camera', 'B07D33B334', 61500, 73800, '1,2', '1,9,11', '2,4', 'electronics,camera-photo', '1', 'preview/95/chuttersnap-324234-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 32, 1, 18, 18, NULL),
('en', 1, 'Compact SLR Camera', 'Compact SLR Camera', 'Retro styled, portable in size and built around a powerful 24-megapixel APS-C CMOS sensor, this digital camera is the ideal companion for creative everyday photography. Packed full of high spec features such as an advanced hybrid autofocus system able to keep pace with even the most active subjects, a speedy 6fps continuous-shooting mode, high-resolution electronic viewfinder and intuitive swivelling touchscreen, it brings professional image making into everyone’s grasp.', 'compact-slr-camera', 'B07D75V44S', 52100, 62520, '1', '1,9', '2,4', 'electronics,camera-photo', '1', 'preview/9d/robert-shunev-528016-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 33, 1, 19, 19, NULL),
('en', 1, 'Twin Lens Camera', 'Twin Lens Camera', 'What makes a Rolleiflex TLR so special? Many things. To start, TLR stands for twin lens reflex. “Twin” because there are two lenses. And reflex means that the photographer looks through the lens to view the reflected image of an object or scene on the focusing screen. ', 'twin-lens-camera', 'B07D78JTLR', 79900, 95880, '1,2', '1,9,16', '2,4', 'electronics,camera-photo', '1', 'preview/ef/alexander-andrews-260988-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 34, 1, 20, 20, NULL),
('en', 1, 'Road Bike', 'Road Bike', 'Featuring a full carbon chassis - complete with cyclocross-specific carbon fork - and a component setup geared for hard use on the race circuit, it\'s got the low weight, exceptional efficiency and brilliant handling you\'ll need to stay at the front of the pack.', 'road-bike', 'RB000844334', 249900, 299880, '1,2', '17,18,19', '8,9', 'sports-outdoor,equipment', '1', 'preview/2f/mikkel-bech-748940-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 35, 1, 21, 21, NULL),
('en', 1, 'Skipping Rope', 'Skipping Rope', 'When you\'re working out you need a quality rope that doesn\'t tangle at every couple of jumps and with this skipping rope you won\'t have this problem. The fact that it looks like a pair of tasty frankfurters is merely a bonus.', 'skipping-rope', 'B07CNGXVXT', 799, 959, '1,2', '17,18,20', '8,9', 'sports-outdoor,equipment', '1', 'preview/34/stoica-ionela-530966-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 36, 1, 22, 22, NULL),
('en', 1, 'Boxing Gloves', 'Boxing Gloves', 'Training gloves designed for optimum training. Our gloves promote proper punching technique because they are conformed to the natural shape of your fist. Dense, innovative two-layer foam provides better shock absorbency and full padding on the front, back and wrist to promote proper punching technique.', 'boxing-gloves', 'B000ZYLPPU', 3304, 3965, '1,2', '17,18,20', '8,9', 'sports-outdoor,equipment', '1', 'preview/4f/neonbrand-428982-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 37, 1, 23, 23, NULL),
('en', 1, 'Tent', 'Tent', 'With tons of space inside (for max. 4 persons), full head height throughout the entire tent and an unusual and striking shape, this tent offers you everything you need.', 'tent', '2000023510', 21493, 25792, '1', '17,18', '8,9', 'sports-outdoor,equipment', '1', 'preview/96/michael-guite-571169-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 38, 1, 24, 24, NULL),
('en', 1, 'Cruiser Skateboard', 'Cruiser Skateboard', 'Based on the 1970s iconic shape, but made to a larger 69cm size, with updated, quality component, these skateboards are great for beginners to learn the foot spacing required, and are perfect for all-day cruising.', 'cruiser-skateboard', '799872520', 2499, 2999, '1', '17,18', '8,9', 'sports-outdoor,equipment', '1', 'preview/35/max-tarkhov-737999-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 39, 1, 25, 25, NULL),
('en', 1, 'Football', 'Football', 'This football features high-contrast graphics for high-visibility during play, while its machine-stitched tpu casing offers consistent performance.', 'football', 'SC3137-056', 5707, 6848, '1,2', '17,18,21', '8,9', 'sports-outdoor,equipment', '1', 'preview/d6/nik-shuliahin-619349-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 40, 1, 26, 26, NULL),
('en', 1, 'Tennis Ball', 'Tennis Ball', 'Our dog loves these tennis balls and they last for some time before they eventually either get lost in some field or bush or the covering comes off due to it being used most of the day every day.', 'tennis-ball', 'WRT11752P', 1273, 1528, '1,2', '17,18,22', '8,9', 'sports-outdoor,equipment', '1', 'preview/30/ben-hershey-574483-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 41, 1, 27, 27, NULL),
('en', 1, 'Basketball', 'Basketball', 'The Wilson MVP ball is perfect for playing basketball, and improving your skill for hours on end. Designed for new players, it is created with a high-quality rubber suitable for courts, allowing you to get full use during your practices.', 'basketball', 'WTB1418XB06', 3562, 4274, '1,2', '17,18,22', '8,9', 'sports-outdoor,equipment', '1', 'preview/0f/tommy-bebo-600358-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 42, 1, 28, 28, NULL),
('en', 1, 'Ultraboost Running Shoe', 'Ultraboost Running Shoe Size 40', 'With its ultra-light, uber-responsive magic foam and a carbon fiber plate that feels like it’s propelling you forward, the Running Shoe is ready to push you to victories both large and small', 'ultraboost-running-shoe', 'RS0040', 9999, 11999, '1,2,3', '17,23,24,25,26', '8,10', 'sports-outdoor,footwear', '1', 'preview/ed/chuttersnap-584518-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 43, 1, 29, 29, NULL),
('en', 1, 'Ultraboost Running Shoe', 'Ultraboost Running Shoe Size 42', 'With its ultra-light, uber-responsive magic foam and a carbon fiber plate that feels like it’s propelling you forward, the Running Shoe is ready to push you to victories both large and small', 'ultraboost-running-shoe', 'RS0042', 9999, 11999, '1,2,3', '17,23,24,25,26', '8,10', 'sports-outdoor,footwear', '1', 'preview/ed/chuttersnap-584518-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 44, 1, 29, 29, NULL),
('en', 1, 'Ultraboost Running Shoe', 'Ultraboost Running Shoe Size 44', 'With its ultra-light, uber-responsive magic foam and a carbon fiber plate that feels like it’s propelling you forward, the Running Shoe is ready to push you to victories both large and small', 'ultraboost-running-shoe', 'RS0044', 9999, 11999, '1,2,3', '17,23,24,25,26', '8,10', 'sports-outdoor,footwear', '1', 'preview/ed/chuttersnap-584518-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 45, 1, 29, 29, NULL),
('en', 1, 'Ultraboost Running Shoe', 'Ultraboost Running Shoe Size 46', 'With its ultra-light, uber-responsive magic foam and a carbon fiber plate that feels like it’s propelling you forward, the Running Shoe is ready to push you to victories both large and small', 'ultraboost-running-shoe', 'RS0046', 9999, 11999, '1,2,3', '17,23,24,25,26', '8,10', 'sports-outdoor,footwear', '1', 'preview/ed/chuttersnap-584518-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 46, 1, 29, 29, NULL),
('en', 1, 'Freerun Running Shoe', 'Freerun Running Shoe Size 40', 'The Freerun Men\'s Running Shoe is built for record-breaking speed. The Flyknit upper delivers ultra-lightweight support that fits like a glove.', 'freerun-running-shoe', 'AR4561-40', 16000, 19200, '1,2,3', '17,23,21,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/0f/imani-clovis-234736-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 47, 1, 30, 30, NULL),
('en', 1, 'Freerun Running Shoe', 'Freerun Running Shoe Size 42', 'The Freerun Men\'s Running Shoe is built for record-breaking speed. The Flyknit upper delivers ultra-lightweight support that fits like a glove.', 'freerun-running-shoe', 'AR4561-42', 16000, 19200, '1,2,3', '17,23,21,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/0f/imani-clovis-234736-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 48, 1, 30, 30, NULL),
('en', 1, 'Freerun Running Shoe', 'Freerun Running Shoe Size 44', 'The Freerun Men\'s Running Shoe is built for record-breaking speed. The Flyknit upper delivers ultra-lightweight support that fits like a glove.', 'freerun-running-shoe', 'AR4561-44', 16000, 19200, '1,2,3', '17,23,21,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/0f/imani-clovis-234736-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 49, 1, 30, 30, NULL),
('en', 1, 'Freerun Running Shoe', 'Freerun Running Shoe Size 46', 'The Freerun Men\'s Running Shoe is built for record-breaking speed. The Flyknit upper delivers ultra-lightweight support that fits like a glove.', 'freerun-running-shoe', 'AR4561-46', 16000, 19200, '1,2,3', '17,23,21,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/0f/imani-clovis-234736-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 50, 1, 30, 30, NULL),
('en', 1, 'Hi-Top Basketball Shoe', 'Hi-Top Basketball Shoe Size 40', 'Boasting legendary performance since 2008, the Hyperdunkz Basketball Shoe needs no gimmicks to stand out. Air units deliver best-in-class cushioning, while a dynamic lacing system keeps your foot snug and secure, so you can focus on your game and nothing else.', 'hi-top-basketball-shoe', 'AO7893-40', 14000, 16800, '1,2,3', '17,23,21,28', '8,10', 'sports-outdoor,footwear', '1', 'preview/3c/xavier-teo-469050-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 51, 1, 31, 31, NULL),
('en', 1, 'Hi-Top Basketball Shoe', 'Hi-Top Basketball Shoe Size 42', 'Boasting legendary performance since 2008, the Hyperdunkz Basketball Shoe needs no gimmicks to stand out. Air units deliver best-in-class cushioning, while a dynamic lacing system keeps your foot snug and secure, so you can focus on your game and nothing else.', 'hi-top-basketball-shoe', 'AO7893-42', 14000, 16800, '1,2,3', '17,23,21,28', '8,10', 'sports-outdoor,footwear', '1', 'preview/3c/xavier-teo-469050-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 52, 1, 31, 31, NULL),
('en', 1, 'Hi-Top Basketball Shoe', 'Hi-Top Basketball Shoe Size 44', 'Boasting legendary performance since 2008, the Hyperdunkz Basketball Shoe needs no gimmicks to stand out. Air units deliver best-in-class cushioning, while a dynamic lacing system keeps your foot snug and secure, so you can focus on your game and nothing else.', 'hi-top-basketball-shoe', 'AO7893-44', 14000, 16800, '1,2,3', '17,23,21,28', '8,10', 'sports-outdoor,footwear', '1', 'preview/3c/xavier-teo-469050-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 53, 1, 31, 31, NULL),
('en', 1, 'Hi-Top Basketball Shoe', 'Hi-Top Basketball Shoe Size 46', 'Boasting legendary performance since 2008, the Hyperdunkz Basketball Shoe needs no gimmicks to stand out. Air units deliver best-in-class cushioning, while a dynamic lacing system keeps your foot snug and secure, so you can focus on your game and nothing else.', 'hi-top-basketball-shoe', 'AO7893-46', 14000, 16800, '1,2,3', '17,23,21,28', '8,10', 'sports-outdoor,footwear', '1', 'preview/3c/xavier-teo-469050-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 54, 1, 31, 31, NULL),
('en', 1, 'Pureboost Running Shoe', 'Pureboost Running Shoe Size 40', 'Built to handle curbs, corners and uneven sidewalks, these natural running shoes have an expanded landing zone and a heel plate for added stability. A lightweight and stretchy knit upper supports your native stride.', 'pureboost-running-shoe', 'F3578640', 9995, 11994, '1,2,3', '17,23,24,27,28', '8,10', 'sports-outdoor,footwear', '1', 'preview/a2/thomas-serer-420833-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 55, 1, 32, 32, NULL),
('en', 1, 'Pureboost Running Shoe', 'Pureboost Running Shoe Size 42', 'Built to handle curbs, corners and uneven sidewalks, these natural running shoes have an expanded landing zone and a heel plate for added stability. A lightweight and stretchy knit upper supports your native stride.', 'pureboost-running-shoe', 'F3578642', 9995, 11994, '1,2,3', '17,23,24,27,28', '8,10', 'sports-outdoor,footwear', '1', 'preview/a2/thomas-serer-420833-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 56, 1, 32, 32, NULL),
('en', 1, 'Pureboost Running Shoe', 'Pureboost Running Shoe Size 44', 'Built to handle curbs, corners and uneven sidewalks, these natural running shoes have an expanded landing zone and a heel plate for added stability. A lightweight and stretchy knit upper supports your native stride.', 'pureboost-running-shoe', 'F3578644', 9995, 11994, '1,2,3', '17,23,24,27,28', '8,10', 'sports-outdoor,footwear', '1', 'preview/a2/thomas-serer-420833-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 57, 1, 32, 32, NULL),
('en', 1, 'Pureboost Running Shoe', 'Pureboost Running Shoe Size 46', 'Built to handle curbs, corners and uneven sidewalks, these natural running shoes have an expanded landing zone and a heel plate for added stability. A lightweight and stretchy knit upper supports your native stride.', 'pureboost-running-shoe', 'F3578646', 9995, 11994, '1,2,3', '17,23,24,27,28', '8,10', 'sports-outdoor,footwear', '1', 'preview/a2/thomas-serer-420833-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 58, 1, 32, 32, NULL),
('en', 1, 'RunX Running Shoe', 'RunX Running Shoe Size 40', 'These running shoes are made with an airy, lightweight mesh upper. The durable rubber outsole grips the pavement for added stability. A cushioned midsole brings comfort to each step.', 'runx-running-shoe', 'F3633340', 4495, 5394, '1,2,3', '17,23,24,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/00/nikolai-chernichenko-1299748-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 59, 1, 33, 33, NULL),
('en', 1, 'RunX Running Shoe', 'RunX Running Shoe Size 42', 'These running shoes are made with an airy, lightweight mesh upper. The durable rubber outsole grips the pavement for added stability. A cushioned midsole brings comfort to each step.', 'runx-running-shoe', 'F3633342', 4495, 5394, '1,2,3', '17,23,24,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/00/nikolai-chernichenko-1299748-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 60, 1, 33, 33, NULL),
('en', 1, 'RunX Running Shoe', 'RunX Running Shoe Size 44', 'These running shoes are made with an airy, lightweight mesh upper. The durable rubber outsole grips the pavement for added stability. A cushioned midsole brings comfort to each step.', 'runx-running-shoe', 'F3633344', 4495, 5394, '1,2,3', '17,23,24,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/00/nikolai-chernichenko-1299748-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 61, 1, 33, 33, NULL),
('en', 1, 'RunX Running Shoe', 'RunX Running Shoe Size 46', 'These running shoes are made with an airy, lightweight mesh upper. The durable rubber outsole grips the pavement for added stability. A cushioned midsole brings comfort to each step.', 'runx-running-shoe', 'F3633346', 4495, 5394, '1,2,3', '17,23,24,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/00/nikolai-chernichenko-1299748-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 62, 1, 33, 33, NULL),
('en', 1, 'Allstar Sneakers', 'Allstar Sneakers Size 40', 'All Star is the most iconic sneaker in the world, recognised for its unmistakable silhouette, star-centred ankle patch and cultural authenticity. And like the best paradigms, it only gets better with time.', 'allstar-sneakers', 'CAS23340', 6500, 7800, '1,2,3', '17,23,29,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/aa/mitch-lensink-256007-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 63, 1, 34, 34, NULL),
('en', 1, 'Allstar Sneakers', 'Allstar Sneakers Size 42', 'All Star is the most iconic sneaker in the world, recognised for its unmistakable silhouette, star-centred ankle patch and cultural authenticity. And like the best paradigms, it only gets better with time.', 'allstar-sneakers', 'CAS23342', 6500, 7800, '1,2,3', '17,23,29,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/aa/mitch-lensink-256007-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 64, 1, 34, 34, NULL),
('en', 1, 'Allstar Sneakers', 'Allstar Sneakers Size 44', 'All Star is the most iconic sneaker in the world, recognised for its unmistakable silhouette, star-centred ankle patch and cultural authenticity. And like the best paradigms, it only gets better with time.', 'allstar-sneakers', 'CAS23344', 6500, 7800, '1,2,3', '17,23,29,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/aa/mitch-lensink-256007-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 65, 1, 34, 34, NULL),
('en', 1, 'Allstar Sneakers', 'Allstar Sneakers Size 46', 'All Star is the most iconic sneaker in the world, recognised for its unmistakable silhouette, star-centred ankle patch and cultural authenticity. And like the best paradigms, it only gets better with time.', 'allstar-sneakers', 'CAS23346', 6500, 7800, '1,2,3', '17,23,29,27', '8,10', 'sports-outdoor,footwear', '1', 'preview/aa/mitch-lensink-256007-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 66, 1, 34, 34, NULL),
('en', 1, 'Spiky Cactus', 'Spiky Cactus', 'A spiky yet elegant house cactus - perfect for the home or office. Origin and habitat: Probably native only to the Andes of Peru', 'spiky-cactus', 'SC011001', 1550, 1860, '1,4', '30,31,32', '5,7', 'home-garden,plants', '1', 'preview/78/charles-deluvio-695736-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 67, 1, 35, 35, NULL),
('en', 1, 'Tulip Pot', 'Tulip Pot', 'Bright crimson red species tulip with black centers, the poppy-like flowers will open up in full sun. Ideal for rock gardens, pots and border edging.', 'tulip-pot', 'A58477', 675, 810, '1,4', '30,31,32,33', '5,7', 'home-garden,plants', '1', 'preview/14/natalia-y-345738-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 68, 1, 36, 36, NULL),
('en', 1, 'Hanging Plant', 'Hanging Plant', 'Can be found in tropical and sub-tropical America where it grows on the branches of trees, but also on telephone wires and electricity cables and poles that sometimes topple with the weight of these plants. This plant loves a moist and warm air.', 'hanging-plant', 'A44223', 1995, 2394, '1,4', '30,31,33', '5,7', 'home-garden,plants', '1', 'preview/5b/alex-rodriguez-santibanez-200278-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 69, 1, 37, 37, NULL),
('en', 1, 'Aloe Vera', 'Aloe Vera', 'Decorative Aloe vera makes a lovely house plant. A really trendy plant, Aloe vera is just so easy to care for. Aloe vera sap has been renowned for its remarkable medicinal and cosmetic properties for many centuries and has been used to treat grazes, insect bites and sunburn - it really works.', 'aloe-vera', 'A44352', 699, 839, '1,4', '30,31,32', '5,7', 'home-garden,plants', '1', 'preview/29/silvia-agrasar-227575-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 70, 1, 38, 38, NULL),
('en', 1, 'Fern Blechnum Gibbum', 'Fern Blechnum Gibbum', 'Create a tropical feel in your home with this lush green tree fern, it has decorative leaves and will develop a short slender trunk in time.', 'fern-blechnum-gibbum', 'A04851', 895, 1074, '1,4', '30,31,33', '5,7', 'home-garden,plants', '1', 'preview/6d/caleb-george-536388-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 71, 1, 39, 39, NULL),
('en', 1, 'Assorted Indoor Succulents', 'Assorted Indoor Succulents', 'These assorted succulents come in a variety of different shapes and colours - each with their own unique personality. Succulents grow best in plenty of light: a sunny windowsill would be the ideal spot for them to thrive!', 'assorted-succulents', 'A08593', 3250, 3900, '1,4', '30,31,32', '5,7', 'home-garden,plants', '1', 'preview/81/annie-spratt-78044-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 72, 1, 40, 40, NULL),
('en', 1, 'Orchid', 'Orchid', 'Gloriously elegant. It can go along with any interior as it is a neutral color and the most popular Phalaenopsis overall. 2 to 3 foot stems host large white flowers that can last for over 2 months.', 'orchid', 'ROR00221', 6500, 7800, '1', '30,31', '5,7', 'home-garden,plants', '1', 'preview/88/zoltan-kovacs-642412-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 73, 1, 41, 41, NULL),
('en', 1, 'Bonsai Tree', 'Bonsai Tree', 'Excellent semi-evergreen bonsai. Indoors or out but needs some winter protection. All trees sent will leave the nursery in excellent condition and will be of equal quality or better than the photograph shown.', 'bonsai-tree', 'B01MXFLUSV', 1999, 2399, '1', '30,31', '5,7', 'home-garden,plants', '1', 'preview/f3/mark-tegethoff-667351-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 74, 1, 42, 42, NULL),
('en', 1, 'Guardian Lion Statue', 'Guardian Lion Statue', 'Placing it at home or office can bring you fortune and prosperity, guard your house and ward off ill fortune.', 'guardian-lion-statue', 'GL34LLW11', 18853, 22624, '1,3', '30,34,35', '5,6', 'home-garden,furniture', '1', 'preview/44/vincent-liu-525429-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 75, 1, 43, 43, NULL),
('en', 1, 'Hand Trowel', 'Hand Trowel', 'Hand trowel for garden cultivating hammer finish epoxy-coated head for improved resistance to rust, scratches, humidity and alkalines in the soil.', 'hand-trowel', '4058NB/09', 499, 599, '1', '30,31', '5,7', 'home-garden,plants', '1', 'preview/7d/neslihan-gunaydin-3493-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 76, 1, 44, 44, NULL),
('en', 1, 'Balloon Chair', 'Balloon Chair', 'A charming vintage white wooden chair featuring an extremely spherical pink balloon. The balloon may be detached and used for other purposes, for example as a party decoration.', 'balloon-chair', '34-BC82444', 6500, 7800, '1', '30,34', '5,6', 'home-garden,furniture', '1', 'preview/ef/florian-klauer-14840-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 77, 1, 45, 45, NULL),
('en', 1, 'Grey Fabric Sofa', 'Grey Fabric Sofa', 'Seat cushions filled with high resilience foam and polyester fibre wadding give comfortable support for your body, and easily regain their shape when you get up. The cover is easy to keep clean as it is removable and can be machine washed.', 'grey-fabric-sofa', 'CH00001-12', 29500, 35400, '1,3', '30,34,35', '5,6', 'home-garden,furniture', '1', 'preview/69/nathan-fertig-249917-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 78, 1, 46, 46, NULL),
('en', 1, 'Leather Sofa', 'Leather Sofa', 'This premium, tan-brown bonded leather seat is part of the \'chill\' sofa range. The lever activated recline feature makes it easy to adjust to any position. This smart, bustle back design with rounded tight padded arms has been designed with your comfort in mind. This well-padded chair has foam pocket sprung seat cushions and fibre-filled back cushions.', 'leather-sofa', 'CH00001-02', 124500, 149400, '1,3', '30,34,36', '5,6', 'home-garden,furniture', '1', 'preview/3e/paul-weaver-1120584-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 79, 1, 47, 47, NULL),
('en', 1, 'Light Shade', 'Light Shade', 'Modern tapered white polycotton pendant shade with a metallic silver chrome interior finish for maximum light reflection. Reversible gimble so it can be used as a ceiling shade or as a lamp shade.', 'light-shade', 'B45809LSW', 2845, 3414, '1', '30,34', '5,6', 'home-garden,furniture', '1', 'preview/5f/pierre-chatel-innocenti-483198-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 80, 1, 48, 48, NULL),
('en', 1, 'Wooden Side Desk', 'Wooden Side Desk', 'Drawer stops prevent the drawers from being pulled out too far. Built-in cable management for collecting cables and cords; out of sight but close at hand.', 'wooden-side-desk', '304.096.29', 12500, 15000, '1,3', '30,34,37', '5,6', 'home-garden,furniture', '1', 'preview/40/abel-y-costa-716024-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 81, 1, 49, 49, NULL),
('en', 1, 'Comfy Padded Chair', 'Comfy Padded Chair', 'You sit comfortably thanks to the shaped back. The chair frame is made of solid wood, which is a durable natural material.', 'comfy-padded-chair', '404.068.14', 13000, 15600, '1,3', '30,34,35', '5,6', 'home-garden,furniture', '1', 'preview/3b/kari-shea-398668-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 82, 1, 50, 50, NULL),
('en', 1, 'Black Eaves Chair', 'Black Eaves Chair', 'Comfortable to sit on thanks to the bowl-shaped seat and rounded shape of the backrest. No tools are required to assemble the chair, you just click it together with a simple mechanism under the seat.', 'black-eaves-chair', '003.600.02', 7000, 8400, '1,3', '30,34,27', '5,6', 'home-garden,furniture', '1', 'preview/09/andres-jasso-220776-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 83, 1, 51, 51, NULL),
('en', 1, 'Wooden Stool', 'Wooden Stool', 'Solid wood is a hardwearing natural material, which can be sanded and surface treated as required.', 'wooden-stool', '202.493.30', 1400, 1680, '1,3', '30,34,37', '5,6', 'home-garden,furniture', '1', 'preview/d0/ruslan-bardash-351288-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 84, 1, 52, 52, NULL),
('en', 1, 'Bedside Table', 'Bedside Table', 'Every table is unique, with varying grain pattern and natural colour shifts that are part of the charm of wood.', 'bedside-table', '404.290.14', 13000, 15600, '1,3', '30,34,28', '5,6', 'home-garden,furniture', '1', 'preview/72/benjamin-voros-310026-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 85, 1, 53, 53, NULL),
('en', 1, 'Modern Cafe Chair', 'Modern Cafe Chair mustard', 'You sit comfortably thanks to the restful flexibility of the seat. Lightweight and easy to move around, yet stable enough even for the liveliest, young family members.', 'modern-cafe-chair', '404.038.96', 10000, 12000, '3,1', '38,30,34', '5,6', 'home-garden,furniture', '1', 'preview/b1/jean-philippe-delberghe-1400011-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 86, 1, 54, 54, NULL),
('en', 1, 'Modern Cafe Chair', 'Modern Cafe Chair mint', 'You sit comfortably thanks to the restful flexibility of the seat. Lightweight and easy to move around, yet stable enough even for the liveliest, young family members.', 'modern-cafe-chair', '404.038.96', 10000, 12000, '3,1', '39,30,34', '5,6', 'home-garden,furniture', '1', 'preview/b1/jean-philippe-delberghe-1400011-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 87, 1, 54, 54, NULL),
('en', 1, 'Modern Cafe Chair', 'Modern Cafe Chair pearl', 'You sit comfortably thanks to the restful flexibility of the seat. Lightweight and easy to move around, yet stable enough even for the liveliest, young family members.', 'modern-cafe-chair', '404.038.96', 10000, 12000, '3,1', '28,30,34', '5,6', 'home-garden,furniture', '1', 'preview/b1/jean-philippe-delberghe-1400011-unsplash__preview.jpg', NULL, '', NULL, 1, 1, 88, 1, 54, 54, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `token` varchar(255) NOT NULL,
  `expires` datetime NOT NULL,
  `invalidated` tinyint(4) NOT NULL,
  `authenticationStrategy` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `activeOrderId` int(11) DEFAULT NULL,
  `activeChannelId` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`createdAt`, `updatedAt`, `token`, `expires`, `invalidated`, `authenticationStrategy`, `id`, `activeOrderId`, `activeChannelId`, `type`, `userId`) VALUES
('2022-12-27 20:13:33.991836', '2022-12-27 20:13:34.000000', 'a18b03e04d20311e68659b709f2cb241823db651a4af2c6bc7116d51e6fb8657', '2023-12-27 20:13:33', 0, 'native', 1, NULL, 1, 'AuthenticatedSession', 3),
('2022-12-28 11:42:13.581255', '2022-12-28 11:42:13.581255', 'b249a22607a1fc364d37f80a024edcf353c40474b3244523547d76c96f53b2d1', '2023-12-28 11:42:13', 0, 'native', 3, NULL, NULL, 'AuthenticatedSession', 2),
('2022-12-28 11:42:21.555907', '2022-12-28 11:42:21.555907', 'fd2f7478f9d96e61e4cf24d79316df91372e858c8e4b63eeebcf0c1ca6f0a8ef', '2023-12-28 11:42:21', 0, 'native', 4, NULL, NULL, 'AuthenticatedSession', 3),
('2022-12-28 11:42:30.751813', '2022-12-28 11:42:30.751813', 'fdfe7cc30d25d44af1381085dd6eeadae905025111a29f5e168148df0378972f', '2023-12-28 11:42:30', 0, 'native', 5, NULL, NULL, 'AuthenticatedSession', 3),
('2022-12-28 11:43:59.379438', '2022-12-28 11:43:59.379438', '2723a6a7b3e3baa5090326f31a0039bdf566147dfb051f589bbf5570c16a5d1a', '2023-12-28 11:43:59', 0, 'native', 6, NULL, NULL, 'AuthenticatedSession', 3),
('2022-12-28 11:45:47.248466', '2022-12-28 11:46:28.000000', '5c900a785d0fb8a39e5130fa9c668615b215c3b5366eb54434ad6a8e84ecb4e3', '2023-12-28 11:45:47', 0, 'native', 7, NULL, 1, 'AuthenticatedSession', 2),
('2022-12-28 13:40:38.727345', '2022-12-28 13:40:47.000000', 'd6760400fe5de71baf755d33ebaa03716d140432d7cd312bd7f8d67f00c405f0', '2023-12-28 13:40:38', 0, 'native', 8, NULL, 1, 'AuthenticatedSession', 2),
('2023-03-15 10:19:18.580761', '2023-03-15 10:19:18.000000', 'c07045128e78feb120366bb64d618e4322adcd0f958e99cf5d8ee9cc8e548de9', '2024-03-14 10:19:18', 0, NULL, 10, NULL, 1, 'AnonymousSession', NULL),
('2023-03-15 10:19:18.594252', '2023-03-15 10:19:18.000000', 'a2f9d03c63450471286226bbf45cf5d8a5af575a6a267585b27aaa75386779d1', '2024-03-14 10:19:18', 0, NULL, 11, NULL, 1, 'AnonymousSession', NULL),
('2023-03-15 10:19:18.598764', '2023-03-15 10:19:18.000000', '41e797bc1ec9fe3231e2d858fadf6f5f7dcb42da6f104e5c1b6509d2452ad431', '2024-03-14 10:19:18', 0, NULL, 12, NULL, 1, 'AnonymousSession', NULL),
('2023-03-15 10:19:40.254778', '2023-03-15 10:19:40.000000', 'e4a69b59e4749a04f95a2e7b9a8ce85f03a691ac092b78fd08063c49fb62f84e', '2024-03-14 10:19:40', 0, NULL, 14, NULL, 1, 'AnonymousSession', NULL),
('2023-03-15 10:26:54.892007', '2023-03-15 10:26:55.000000', 'bd03b6c39026c09c40663a38ec61b5fa08ed4b5606e98a8aecb0dbb1dbce8dbd', '2024-03-14 10:26:54', 0, NULL, 16, NULL, 1, 'AnonymousSession', NULL),
('2023-03-15 10:26:54.906550', '2023-03-15 10:26:55.000000', '130a336c5bb343bcd59dae9ccc821090a38cdd15bde11cefea4a846040d2bcce', '2024-03-14 10:26:54', 0, NULL, 17, NULL, 1, 'AnonymousSession', NULL),
('2023-03-15 10:27:53.570590', '2023-03-15 10:27:53.000000', '20a9020816386d0c59bbe923821637b8542553a0273e2065473fbb0c9dfd4813', '2024-03-14 10:27:53', 0, NULL, 18, NULL, 1, 'AnonymousSession', NULL),
('2023-03-15 10:27:53.571551', '2023-03-15 10:27:53.000000', 'd13b28b8a0f8a9c03d113159bf08be24b471c42aeb689b858fdbdab607bbfa70', '2024-03-14 10:27:53', 0, NULL, 19, NULL, 1, 'AnonymousSession', NULL),
('2023-03-15 10:27:54.364653', '2023-03-15 10:27:54.000000', '6b72d8c17127ef58843cbbff2d2d2a9f8d9c0b5c9b9ac90393b4352410cf88d8', '2024-03-14 10:27:54', 0, NULL, 20, NULL, 1, 'AnonymousSession', NULL),
('2023-03-15 10:28:14.585098', '2023-03-15 10:28:14.000000', 'd3b1f7017d4688b9e1975399e79753ba80d60fab23e7dd112e5244c54020cb4e', '2024-03-14 10:28:14', 0, NULL, 21, NULL, 1, 'AnonymousSession', NULL),
('2023-03-15 10:28:14.603623', '2023-03-15 10:28:14.000000', 'd5928a00546a0d719174acfa729cccad7db1c86470ed8a4bdb128ec107755ff2', '2024-03-14 10:28:14', 0, NULL, 22, NULL, 1, 'AnonymousSession', NULL),
('2023-03-15 10:28:14.604380', '2023-03-15 10:28:14.000000', 'fc8ca5cddaee88f20d8fbd90e7b3241ee25e638a76bdca6b569c96ff811c06a0', '2024-03-14 10:28:14', 0, NULL, 23, NULL, 1, 'AnonymousSession', NULL),
('2023-03-15 10:28:15.478761', '2023-03-15 10:28:15.000000', '26b4af570a7fc04896b83baff197f6f46192037aac565397ea344a8e9772086c', '2024-03-14 10:28:15', 0, NULL, 24, NULL, 1, 'AnonymousSession', NULL),
('2023-03-15 10:28:15.498382', '2023-03-15 10:28:15.000000', '04f5291f7de79aa77e34d65e7d28dc17a97ad8532df6b6f2da4cedfe3f0ef4ac', '2024-03-14 10:28:15', 0, NULL, 25, NULL, 1, 'AnonymousSession', NULL),
('2023-03-15 10:32:03.839828', '2023-03-15 10:32:03.000000', 'df745dadb158833d9d8098e110ea59a2764a3617e65a61217d685e4c7bb63831', '2024-03-14 10:32:03', 0, NULL, 27, NULL, 1, 'AnonymousSession', NULL),
('2023-03-15 10:32:14.481388', '2023-03-15 10:32:14.000000', '663afa947fa772599a6cb6d4e030bd69981b7996c7b62047480145827a1d1e95', '2024-03-14 10:32:14', 0, 'native', 28, NULL, 1, 'AuthenticatedSession', 1),
('2023-03-17 10:04:56.472441', '2023-03-17 10:04:56.000000', '1e886f5a64a614191eea27c30befbdc9a3b6ceff71c432e70c547c5ff9353b14', '2024-03-16 10:04:56', 0, NULL, 32, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 10:04:56.473041', '2023-03-17 10:04:56.000000', '5869081adb56a45b450d014df9f69d5ea14a85e1d096269e7ab7ba9cda776900', '2024-03-16 10:04:56', 0, NULL, 33, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 10:04:57.951871', '2023-03-17 10:04:57.000000', '596708067b2b6a7cfbca54ee2f3ee053a6bacd966323c11a8bac303982ee6007', '2024-03-16 10:04:57', 0, NULL, 34, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 10:05:27.858494', '2023-03-17 10:05:27.000000', '1b9d9123bd4b2965f2882666b9d23f8eb36ad8608b216477a64c6f49ea872a5a', '2024-03-16 10:05:27', 0, NULL, 35, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 10:05:34.503403', '2023-03-17 10:05:34.000000', 'af0e9f025955d3a111e2d0860ed6c9e38ca37807b7fce4793d7c816f3a509224', '2024-03-16 10:05:34', 0, NULL, 36, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 10:05:34.541958', '2023-03-17 10:05:35.000000', '2065855f8655cc020c85e38bc8d1673695afea5e9dfde9ce400bec7780228656', '2024-03-16 10:05:34', 0, NULL, 37, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 10:05:34.551055', '2023-03-17 10:05:35.000000', '49c59f5add8dfbe05b8b49b4ff39d5e0f119b605ef3f53964eaebb2263e53055', '2024-03-16 10:05:34', 0, NULL, 38, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 10:05:35.785201', '2023-03-17 10:05:35.000000', 'a4a6a72d2751b148f77896b9e364170e780dd9ab534c00da55f9c0d40cea5eb2', '2024-03-16 10:05:35', 0, NULL, 39, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 11:52:09.307925', '2023-03-17 11:52:09.000000', '1ceb908bad22aeae879db2abd7baf49ab847c3787536ba92f1035860f4e82427', '2024-03-16 11:52:09', 0, NULL, 41, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 11:52:09.316618', '2023-03-17 11:52:09.000000', 'ad2d4aa12361cb3a2db737dd4cb8afb0240eb447b2864e29e99d9e056f23026a', '2024-03-16 11:52:09', 0, NULL, 42, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 11:52:10.322300', '2023-03-17 11:52:10.000000', '94dbe2d4346c200f2bcf6a9ed1fb95561123d04df3c250c4e42a419f858d76d7', '2024-03-16 11:52:10', 0, NULL, 43, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 11:52:23.183792', '2023-03-17 11:52:23.000000', 'dbf403546c53aa1348faad98b083f7e66b968772590501931021450439cf5a1d', '2024-03-16 11:52:23', 0, NULL, 44, 3, 1, 'AnonymousSession', NULL),
('2023-03-17 11:52:23.576782', '2023-03-17 11:52:23.000000', 'a36065a8b6371266f34580738d7fea6441867c87a661e33541add4811a02067d', '2024-03-16 11:52:23', 0, NULL, 45, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 11:52:37.499555', '2023-03-17 11:52:37.000000', '04d04dcb2acb24100c74342340ba5ce44e5c40d95f1a531055854c5df89ce4e9', '2024-03-16 11:52:37', 0, NULL, 46, 4, 1, 'AnonymousSession', NULL),
('2023-03-17 11:52:37.752656', '2023-03-17 11:52:37.000000', '32692161fdec6bca67f56cfaa3929ad8893c8db4e9c501c1cdadda0728bd4b46', '2024-03-16 11:52:37', 0, NULL, 47, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 11:52:59.445065', '2023-03-17 11:52:59.000000', '9f1f2f56d3f24bc6c7b19774b261b17ebdafe89aa0621f02bcd0af0cadff258f', '2024-03-16 11:52:59', 0, NULL, 48, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 11:52:59.549621', '2023-03-17 11:52:59.000000', 'eec4989099c7233ff9fe4403fb047ab7ff8f29dbab3e420213874a3b4234db54', '2024-03-16 11:52:59', 0, NULL, 49, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 11:52:59.553983', '2023-03-17 11:52:59.000000', '684fd5944304754ab7b651688b3f957a1fdcb583a2238cc41c1b823648163dec', '2024-03-16 11:52:59', 0, NULL, 50, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 12:28:51.140901', '2023-03-17 12:28:51.000000', 'b5b23328f352c59b2a9a73a8b20ff14a79748fd65d6398a550e44871962fea9a', '2024-03-16 12:28:51', 0, NULL, 52, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 12:28:51.152062', '2023-03-17 12:28:51.000000', 'c0be251134d8303530e9734542f780a7076e2ae8c0f5f5804fc4e56eb445b248', '2024-03-16 12:28:51', 0, NULL, 53, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 12:28:53.309466', '2023-03-17 12:28:53.000000', '0e6b1332e2a53f19bd44f8874b8ed93086c7f996987ff2842ed83d89385f4b1a', '2024-03-16 12:28:53', 0, NULL, 54, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 12:29:24.368287', '2023-03-17 12:29:24.000000', 'b86d24de55804a3d67e9b68008e1dacd739c448a111e2c8edc77098cd2f2a0a0', '2024-03-16 12:29:24', 0, NULL, 55, 5, 1, 'AnonymousSession', NULL),
('2023-03-17 12:29:24.655190', '2023-03-17 12:29:24.000000', '808e62b798d307d8175aa27326b38ec0fc4ff37bcd760f5e3667e0e7af13241a', '2024-03-16 12:29:24', 0, NULL, 56, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 12:30:00.923902', '2023-03-17 12:30:00.000000', '4b8fa1d43020f0a4db12d5579171877e64598fab851f719c6bbf9a7db1e971ae', '2024-03-16 12:30:00', 0, NULL, 57, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 12:30:00.948988', '2023-03-17 12:30:00.000000', 'ece75e268312360627d8c0c9f1589d0670aa3ae459be96048e93346bc74e06f0', '2024-03-16 12:30:00', 0, NULL, 58, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 12:30:00.976377', '2023-03-17 12:30:00.000000', '812e0c270111d6f0311da1daad59499fd53e987e5fa58a7946778b8d70c78dab', '2024-03-16 12:30:00', 0, NULL, 59, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 12:41:46.489654', '2023-03-17 12:41:46.000000', '0ec21f57de2a66954540b766a4f0190fc489c94d97aacd6e8d0ac773f65219fc', '2024-03-16 12:41:46', 0, NULL, 61, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 12:41:46.496436', '2023-03-17 12:41:46.000000', 'a7f9fea2b05d7d5c5a0897b23e7d1b95ac96c77ada01a88dec3903c4d5e91462', '2024-03-16 12:41:46', 0, NULL, 62, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 12:41:53.687776', '2023-03-17 12:41:53.000000', '559a8711a0752d5db1ccd7c10c7ee933e4f0e423870b255fea2e7b1fca96f026', '2024-03-16 12:41:53', 0, NULL, 63, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 12:41:53.978038', '2023-03-17 12:41:54.000000', '427c6236cb6ba18740f59a50c80fcaaa666e95faac209a9c1ecb18f74fff4e70', '2024-03-16 12:41:53', 0, NULL, 64, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 12:41:54.869019', '2023-03-17 12:41:54.000000', 'ff164cae77918167550965493efdc89e3b462275ed1fb4ecb421607d08a4a5fa', '2024-03-16 12:41:54', 0, NULL, 65, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 12:41:54.870229', '2023-03-17 12:41:54.000000', '4527c81ffb9dd30292555913609ed606cd2cdbb5a5dfc0e0d6be46af0118645e', '2024-03-16 12:41:54', 0, NULL, 66, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 12:41:58.852637', '2023-03-17 12:41:58.000000', '8e4ff8ac2b3998606a23c2d9090bd7ba671783bca7f12960d501484ef71c3d5d', '2024-03-16 12:41:58', 0, NULL, 67, 6, 1, 'AnonymousSession', NULL),
('2023-03-17 12:41:59.102792', '2023-03-17 12:41:59.000000', '85b070d497c938c8698dbf82158bfc6c687093e6aaadc50fecb2c369114c08ef', '2024-03-16 12:41:59', 0, NULL, 68, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 12:42:00.257968', '2023-03-17 12:42:00.000000', 'd55a79c8b35a63af9e1c666b0922502a990eb95034bf817fad2a48adc474e2d5', '2024-03-16 12:42:00', 0, NULL, 69, 7, 1, 'AnonymousSession', NULL),
('2023-03-17 12:42:00.482877', '2023-03-17 12:42:00.000000', '1dab2cdcd48ca4be30a90e7735e544587b82fbcbae8d931bbfb06e432b6ef7ae', '2024-03-16 12:42:00', 0, NULL, 70, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 12:43:30.984476', '2023-03-17 12:43:31.000000', '9fd88ed503c45a68724151b5a242e3a6527752070ca69f0169f3967aa52de36f', '2024-03-16 12:43:30', 0, NULL, 71, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 12:43:30.986949', '2023-03-17 12:43:31.000000', '979807a27823c90789efb375806faabbae18586d1b856ec7eb8427eef45b7f3c', '2024-03-16 12:43:30', 0, NULL, 72, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 12:43:32.564919', '2023-03-17 12:43:32.000000', 'b1d1de8df7cf0ee36e21c59fbf65e34b1b1084f9cb3894c33381a12e801c5416', '2024-03-16 12:43:32', 0, NULL, 73, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 12:44:18.510563', '2023-03-17 12:44:18.000000', '96605f60a49bff893ed1bf8df185025c845ce6b27dcf1f010542e62775f7c0c2', '2024-03-16 12:44:18', 0, NULL, 74, 8, 1, 'AnonymousSession', NULL),
('2023-03-17 12:44:18.854456', '2023-03-17 12:44:18.000000', '2748b52b589979a730c1eaec1d02132190ffa14413a41bf8df5ee433305b6180', '2024-03-16 12:44:18', 0, NULL, 75, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 12:44:21.989159', '2023-03-17 12:44:22.000000', '554df14b383acae33cce6daf4795added660925a077543d2f2999ab0de5399fc', '2024-03-16 12:44:21', 0, NULL, 76, 9, 1, 'AnonymousSession', NULL),
('2023-03-17 12:44:22.234668', '2023-03-17 12:44:22.000000', '347f240f5a890f396d3f85f7bc578346e2bf492489e542c519e0a31131378b80', '2024-03-16 12:44:22', 0, NULL, 77, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 12:44:24.532917', '2023-03-17 12:44:24.000000', '112982f4f71e7721673daac258da4441fbc62a36d7a75a138807c7ba0ea56951', '2024-03-16 12:44:24', 0, NULL, 78, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 12:44:24.572949', '2023-03-17 12:44:24.000000', '553fdd635949b71ce39a5a464b5381466d4f636cfdd68e2c22546907818a384d', '2024-03-16 12:44:24', 0, NULL, 79, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 12:44:24.592135', '2023-03-17 12:44:24.000000', 'b456c84d598c92ab79172256e4e513542b005e7c9ade0e449f15b1cefd5df1d1', '2024-03-16 12:44:24', 0, NULL, 80, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 12:46:42.103845', '2023-03-17 12:46:42.000000', 'e795a82677dd1b4c238af90b6429e930547d4ff6104a80ced2cd6b1d0308362a', '2024-03-16 12:46:42', 0, NULL, 81, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 12:46:42.104377', '2023-03-17 12:46:42.000000', '996c39457cf54d76fd9ef0804e7ab3d8465bfb1e514e8d0751faf62cd7d0b414', '2024-03-16 12:46:42', 0, NULL, 82, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 12:46:42.806036', '2023-03-17 12:46:42.000000', '6155ba03059c80b4d26df0f387d303c17a3a36c3fb2508de4726ea3178147e54', '2024-03-16 12:46:42', 0, NULL, 83, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 12:48:13.361086', '2023-03-17 12:48:13.000000', '38bc933ef605abef215d86f76dc131d42f53cc0ebed34baa52489193da3fb01a', '2024-03-16 12:48:13', 0, NULL, 84, 10, 1, 'AnonymousSession', NULL),
('2023-03-17 12:48:13.852525', '2023-03-17 12:48:13.000000', '920676c2c79ea58c3ecd3f5d496786ed3af7a1aaa2ce1e9beb24e356585ad403', '2024-03-16 12:48:13', 0, NULL, 85, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 12:52:18.950732', '2023-03-17 12:52:19.000000', '7e9fe62b263e9440f93bd68b1a8a23ead89bb4f0414e94e80e5310fcf8bbc4aa', '2024-03-16 12:52:18', 0, NULL, 86, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 12:52:18.951404', '2023-03-17 12:52:19.000000', '58c6dbb984a8ffc0df9d0253d860aef5b039e9951c7e49b3e4c165f3ac41ff34', '2024-03-16 12:52:18', 0, NULL, 87, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 12:52:20.151375', '2023-03-17 12:52:20.000000', 'ea114c96d1eba6157bd4970732bfe18bd37060aea0755c534401ec6a63d3352f', '2024-03-16 12:52:20', 0, NULL, 88, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 13:01:41.801423', '2023-03-17 13:01:41.000000', 'e71273a7e759fe02e3ebd79d9c18f5faa3b397f16a110ed2d0e79c7c98b9ef8d', '2024-03-16 13:01:41', 0, NULL, 89, 11, 1, 'AnonymousSession', NULL),
('2023-03-17 13:01:42.280932', '2023-03-17 13:01:42.000000', '2cd610fccdb23a75c58c91363e5f14d05557fbd1293ce9acd303ce40bb95b566', '2024-03-16 13:01:42', 0, NULL, 90, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 13:13:56.677534', '2023-03-17 13:13:56.000000', '6d31aff6fb98c0863ac6d74ca05cc3b72c08cba4a8f8d5b0ab6527871540a4b0', '2024-03-16 13:13:56', 0, NULL, 93, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 13:13:56.698685', '2023-03-17 13:13:56.000000', '93e6711d54119b2d9d401bd2617bdaa350b7e09cf8f9c9fc9c6a35a2ac822b64', '2024-03-16 13:13:56', 0, NULL, 94, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 13:15:07.655276', '2023-03-17 13:15:07.000000', 'f43a7cf0f5c8c2329f5a291900b23e783c2e579ddab141b4b97279356b3862e3', '2024-03-16 13:15:07', 0, NULL, 95, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 13:15:07.656888', '2023-03-17 13:15:07.000000', '98e1542ee08ca539a05fb66746c4d8dcb7930f2ed6fdda6fc5cdf77037b1f22c', '2024-03-16 13:15:07', 0, NULL, 96, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 13:15:08.958977', '2023-03-17 13:15:08.000000', '6b25860115dcab53f561b02310e5c40d82f1b97545f232d1e9a69557d3181729', '2024-03-16 13:15:08', 0, NULL, 97, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 13:15:57.854661', '2023-03-17 13:15:57.000000', 'fa6b4b4df7e6a3e6680adb161ca3d281f81ee8c4d7b1f49ef7218be306a04960', '2024-03-16 13:15:57', 0, NULL, 98, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 13:16:00.309136', '2023-03-17 13:16:00.000000', 'c13e14823ae47610a93294149f733e063fb71e7c413777575f946717ddb0ea34', '2024-03-16 13:16:00', 0, NULL, 99, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 13:16:00.754557', '2023-03-17 13:16:00.000000', '77028c1149f6682e901b3be6a3ee3dde817b68e3a7bc08e2a4a8cbeec359a8ed', '2024-03-16 13:16:00', 0, NULL, 100, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 13:16:00.755706', '2023-03-17 13:16:00.000000', '2094f47e248c3c53da4d6b049bf932b45ff7c6cac681f947d753646bac2bedf4', '2024-03-16 13:16:00', 0, NULL, 101, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 13:31:09.407483', '2023-03-17 13:31:09.000000', 'c2e70a55d924ac0a277a508e361098ac1439458828da9a3e0dafcef2f7c693ab', '2024-03-16 13:31:09', 0, NULL, 102, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 13:31:09.415186', '2023-03-17 13:31:09.000000', '9614a50f98ea27c98cb3db90f1d4cc50002cbed1f19f910e8ea8791a8cb1a8c8', '2024-03-16 13:31:09', 0, NULL, 103, NULL, 1, 'AnonymousSession', NULL),
('2023-03-17 13:31:10.240630', '2023-03-17 13:31:10.000000', '8a389272a1e686a7a5accaeb4026736c0660ab99879751c37824a0dfd569d56b', '2024-03-16 13:31:10', 0, NULL, 104, NULL, 1, 'AnonymousSession', NULL),
('2023-03-20 12:43:03.644208', '2023-03-20 12:43:03.000000', '0fd295e4f2bf65573a1f936031ffd56be46f9e0bda8a49299f13c63246731b01', '2024-03-19 12:43:03', 0, 'native', 108, 2, 1, 'AuthenticatedSession', 4),
('2023-05-06 13:22:30.075885', '2023-05-06 13:22:30.000000', '76ed94e2b1600973e3b6bc565a3c96e2701d9a4e301440dcc6eab3dbddca0a46', '2024-05-05 13:22:30', 0, NULL, 109, NULL, 1, 'AnonymousSession', NULL),
('2023-05-06 13:23:12.633885', '2023-05-06 13:23:12.000000', 'dc480f2252131142068340513f96bbb71ccf42e950c9acb05d414beadbed07a5', '2024-05-05 13:23:12', 0, 'native', 110, NULL, 1, 'AuthenticatedSession', 1),
('2023-06-13 11:54:10.532318', '2023-06-13 11:54:10.000000', '60f2656b3a6a03c125dd95f7d6a47905758c5a49f81ac3a75d50748240501089', '2024-06-12 11:54:10', 0, NULL, 111, NULL, 1, 'AnonymousSession', NULL),
('2023-06-13 11:54:22.605158', '2023-06-13 11:54:22.000000', 'c62590e0709d13d484b0e11574eabe852b024f15e3e3bfbf75d7e0a109ec5fdb', '2024-06-12 11:54:22', 0, 'native', 112, NULL, 1, 'AuthenticatedSession', 1),
('2023-06-17 15:14:51.629717', '2023-06-17 15:14:51.000000', '40b88f81ea77c2dcce1fd9f5a11c1b23d930ece2fe8e954e482269d5adb4a43e', '2024-06-16 15:14:51', 0, NULL, 113, NULL, 1, 'AnonymousSession', NULL),
('2023-06-17 15:15:02.191111', '2023-06-17 15:15:02.000000', '294b827851d75d100454fa03cf269ddd73f8e2944ba83c54e207be2e85b2e463', '2024-06-16 15:15:02', 0, 'native', 114, NULL, 1, 'AuthenticatedSession', 1),
('2023-06-21 14:10:43.898880', '2023-06-21 14:10:44.000000', '0f869396d4b89cb8c10cd1ea0b1a9ef0ee386461fe1024dd8166985e4bdf2e3d', '2024-06-20 14:10:43', 0, 'native', 115, 2, 1, 'AuthenticatedSession', 4);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_line`
--

CREATE TABLE `shipping_line` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `listPrice` int(11) NOT NULL,
  `listPriceIncludesTax` tinyint(4) NOT NULL,
  `adjustments` text NOT NULL,
  `taxLines` text NOT NULL,
  `id` int(11) NOT NULL,
  `shippingMethodId` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping_line`
--

INSERT INTO `shipping_line` (`createdAt`, `updatedAt`, `listPrice`, `listPriceIncludesTax`, `adjustments`, `taxLines`, `id`, `shippingMethodId`, `orderId`) VALUES
('2023-03-17 11:18:11.587907', '2023-03-17 11:18:11.000000', 500, 0, '[]', '[{\"description\":\"shipping tax\",\"taxRate\":0}]', 1, 1, 1),
('2023-03-20 14:18:56.034948', '2023-03-20 14:18:56.000000', 500, 0, '[]', '[{\"description\":\"shipping tax\",\"taxRate\":0}]', 2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_method`
--

CREATE TABLE `shipping_method` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `checker` text NOT NULL,
  `calculator` text NOT NULL,
  `fulfillmentHandlerCode` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping_method`
--

INSERT INTO `shipping_method` (`createdAt`, `updatedAt`, `deletedAt`, `code`, `checker`, `calculator`, `fulfillmentHandlerCode`, `id`) VALUES
('2022-12-27 19:46:10.166136', '2022-12-27 19:46:10.166136', NULL, 'standard-shipping', '{\"code\":\"default-shipping-eligibility-checker\",\"args\":[{\"name\":\"orderMinimum\",\"value\":\"0\"}]}', '{\"code\":\"default-shipping-calculator\",\"args\":[{\"name\":\"rate\",\"value\":\"500\"},{\"name\":\"includesTax\",\"value\":\"auto\"},{\"name\":\"taxRate\",\"value\":\"0\"}]}', 'manual-fulfillment', 1),
('2022-12-27 19:46:10.202480', '2022-12-27 19:46:10.202480', NULL, 'express-shipping', '{\"code\":\"default-shipping-eligibility-checker\",\"args\":[{\"name\":\"orderMinimum\",\"value\":\"0\"}]}', '{\"code\":\"default-shipping-calculator\",\"args\":[{\"name\":\"rate\",\"value\":\"1000\"},{\"name\":\"includesTax\",\"value\":\"auto\"},{\"name\":\"taxRate\",\"value\":\"0\"}]}', 'manual-fulfillment', 2);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_method_channels_channel`
--

CREATE TABLE `shipping_method_channels_channel` (
  `shippingMethodId` int(11) NOT NULL,
  `channelId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping_method_channels_channel`
--

INSERT INTO `shipping_method_channels_channel` (`shippingMethodId`, `channelId`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_method_translation`
--

CREATE TABLE `shipping_method_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `baseId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping_method_translation`
--

INSERT INTO `shipping_method_translation` (`createdAt`, `updatedAt`, `languageCode`, `name`, `description`, `id`, `baseId`) VALUES
('2022-12-27 19:46:10.161934', '2022-12-27 19:46:10.000000', 'en', 'Standard Shipping', '', 1, 1),
('2022-12-27 19:46:10.199306', '2022-12-27 19:46:10.000000', 'en', 'Express Shipping', '', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `stock_movement`
--

CREATE TABLE `stock_movement` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `type` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `discriminator` varchar(255) NOT NULL,
  `productVariantId` int(11) DEFAULT NULL,
  `orderItemId` int(11) DEFAULT NULL,
  `orderLineId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_movement`
--

INSERT INTO `stock_movement` (`createdAt`, `updatedAt`, `type`, `quantity`, `id`, `discriminator`, `productVariantId`, `orderItemId`, `orderLineId`) VALUES
('2022-12-27 19:46:10.650686', '2022-12-27 19:46:10.650686', 'ADJUSTMENT', 100, 1, 'StockAdjustment', 1, NULL, NULL),
('2022-12-27 19:46:10.683764', '2022-12-27 19:46:10.683764', 'ADJUSTMENT', 100, 2, 'StockAdjustment', 2, NULL, NULL),
('2022-12-27 19:46:10.710137', '2022-12-27 19:46:10.710137', 'ADJUSTMENT', 100, 3, 'StockAdjustment', 3, NULL, NULL),
('2022-12-27 19:46:10.736563', '2022-12-27 19:46:10.736563', 'ADJUSTMENT', 100, 4, 'StockAdjustment', 4, NULL, NULL),
('2022-12-27 19:46:10.947586', '2022-12-27 19:46:10.947586', 'ADJUSTMENT', 100, 5, 'StockAdjustment', 5, NULL, NULL),
('2022-12-27 19:46:10.966948', '2022-12-27 19:46:10.966948', 'ADJUSTMENT', 100, 6, 'StockAdjustment', 6, NULL, NULL),
('2022-12-27 19:46:11.086872', '2022-12-27 19:46:11.086872', 'ADJUSTMENT', 100, 7, 'StockAdjustment', 7, NULL, NULL),
('2022-12-27 19:46:11.248217', '2022-12-27 19:46:11.248217', 'ADJUSTMENT', 100, 8, 'StockAdjustment', 8, NULL, NULL),
('2022-12-27 19:46:11.386357', '2022-12-27 19:46:11.386357', 'ADJUSTMENT', 100, 9, 'StockAdjustment', 9, NULL, NULL),
('2022-12-27 19:46:11.406338', '2022-12-27 19:46:11.406338', 'ADJUSTMENT', 100, 10, 'StockAdjustment', 10, NULL, NULL),
('2022-12-27 19:46:11.646895', '2022-12-27 19:46:11.646895', 'ADJUSTMENT', 100, 11, 'StockAdjustment', 11, NULL, NULL),
('2022-12-27 19:46:11.675037', '2022-12-27 19:46:11.675037', 'ADJUSTMENT', 100, 12, 'StockAdjustment', 12, NULL, NULL),
('2022-12-27 19:46:11.702665', '2022-12-27 19:46:11.702665', 'ADJUSTMENT', 100, 13, 'StockAdjustment', 13, NULL, NULL),
('2022-12-27 19:46:11.947926', '2022-12-27 19:46:11.947926', 'ADJUSTMENT', 100, 14, 'StockAdjustment', 14, NULL, NULL),
('2022-12-27 19:46:11.969336', '2022-12-27 19:46:11.969336', 'ADJUSTMENT', 100, 15, 'StockAdjustment', 15, NULL, NULL),
('2022-12-27 19:46:11.998527', '2022-12-27 19:46:11.998527', 'ADJUSTMENT', 100, 16, 'StockAdjustment', 16, NULL, NULL),
('2022-12-27 19:46:12.035431', '2022-12-27 19:46:12.035431', 'ADJUSTMENT', 100, 17, 'StockAdjustment', 17, NULL, NULL),
('2022-12-27 19:46:12.228028', '2022-12-27 19:46:12.228028', 'ADJUSTMENT', 100, 18, 'StockAdjustment', 18, NULL, NULL),
('2022-12-27 19:46:12.249763', '2022-12-27 19:46:12.249763', 'ADJUSTMENT', 100, 19, 'StockAdjustment', 19, NULL, NULL),
('2022-12-27 19:46:12.281631', '2022-12-27 19:46:12.281631', 'ADJUSTMENT', 100, 20, 'StockAdjustment', 20, NULL, NULL),
('2022-12-27 19:46:12.311589', '2022-12-27 19:46:12.311589', 'ADJUSTMENT', 100, 21, 'StockAdjustment', 21, NULL, NULL),
('2022-12-27 19:46:12.339020', '2022-12-27 19:46:12.339020', 'ADJUSTMENT', 100, 22, 'StockAdjustment', 22, NULL, NULL),
('2022-12-27 19:46:12.410802', '2022-12-27 19:46:12.410802', 'ADJUSTMENT', 100, 23, 'StockAdjustment', 23, NULL, NULL),
('2022-12-27 19:46:12.495250', '2022-12-27 19:46:12.495250', 'ADJUSTMENT', 100, 24, 'StockAdjustment', 24, NULL, NULL),
('2022-12-27 19:46:12.565703', '2022-12-27 19:46:12.565703', 'ADJUSTMENT', 100, 25, 'StockAdjustment', 25, NULL, NULL),
('2022-12-27 19:46:12.674025', '2022-12-27 19:46:12.674025', 'ADJUSTMENT', 100, 26, 'StockAdjustment', 26, NULL, NULL),
('2022-12-27 19:46:12.760883', '2022-12-27 19:46:12.760883', 'ADJUSTMENT', 100, 27, 'StockAdjustment', 27, NULL, NULL),
('2022-12-27 19:46:12.867059', '2022-12-27 19:46:12.867059', 'ADJUSTMENT', 100, 28, 'StockAdjustment', 28, NULL, NULL),
('2022-12-27 19:46:12.954011', '2022-12-27 19:46:12.954011', 'ADJUSTMENT', 100, 29, 'StockAdjustment', 29, NULL, NULL),
('2022-12-27 19:46:13.051246', '2022-12-27 19:46:13.051246', 'ADJUSTMENT', 100, 30, 'StockAdjustment', 30, NULL, NULL),
('2022-12-27 19:46:13.152392', '2022-12-27 19:46:13.152392', 'ADJUSTMENT', 100, 31, 'StockAdjustment', 31, NULL, NULL),
('2022-12-27 19:46:13.229810', '2022-12-27 19:46:13.229810', 'ADJUSTMENT', 100, 32, 'StockAdjustment', 32, NULL, NULL),
('2022-12-27 19:46:13.302874', '2022-12-27 19:46:13.302874', 'ADJUSTMENT', 100, 33, 'StockAdjustment', 33, NULL, NULL),
('2022-12-27 19:46:13.490102', '2022-12-27 19:46:13.490102', 'ADJUSTMENT', 100, 34, 'StockAdjustment', 34, NULL, NULL),
('2022-12-27 19:46:13.777079', '2022-12-27 19:46:13.777079', 'ADJUSTMENT', 100, 35, 'StockAdjustment', 35, NULL, NULL),
('2022-12-27 19:46:13.882720', '2022-12-27 19:46:13.882720', 'ADJUSTMENT', 100, 36, 'StockAdjustment', 36, NULL, NULL),
('2022-12-27 19:46:13.969553', '2022-12-27 19:46:13.969553', 'ADJUSTMENT', 100, 37, 'StockAdjustment', 37, NULL, NULL),
('2022-12-27 19:46:14.047698', '2022-12-27 19:46:14.047698', 'ADJUSTMENT', 100, 38, 'StockAdjustment', 38, NULL, NULL),
('2022-12-27 19:46:14.149478', '2022-12-27 19:46:14.149478', 'ADJUSTMENT', 100, 39, 'StockAdjustment', 39, NULL, NULL),
('2022-12-27 19:46:14.296920', '2022-12-27 19:46:14.296920', 'ADJUSTMENT', 100, 40, 'StockAdjustment', 40, NULL, NULL),
('2022-12-27 19:46:14.393719', '2022-12-27 19:46:14.393719', 'ADJUSTMENT', 100, 41, 'StockAdjustment', 41, NULL, NULL),
('2022-12-27 19:46:14.489216', '2022-12-27 19:46:14.489216', 'ADJUSTMENT', 100, 42, 'StockAdjustment', 42, NULL, NULL),
('2022-12-27 19:46:14.836315', '2022-12-27 19:46:14.836315', 'ADJUSTMENT', 100, 43, 'StockAdjustment', 43, NULL, NULL),
('2022-12-27 19:46:14.871796', '2022-12-27 19:46:14.871796', 'ADJUSTMENT', 100, 44, 'StockAdjustment', 44, NULL, NULL),
('2022-12-27 19:46:14.890461', '2022-12-27 19:46:14.890461', 'ADJUSTMENT', 100, 45, 'StockAdjustment', 45, NULL, NULL),
('2022-12-27 19:46:14.918335', '2022-12-27 19:46:14.918335', 'ADJUSTMENT', 100, 46, 'StockAdjustment', 46, NULL, NULL),
('2022-12-27 19:46:15.100211', '2022-12-27 19:46:15.100211', 'ADJUSTMENT', 100, 47, 'StockAdjustment', 47, NULL, NULL),
('2022-12-27 19:46:15.122576', '2022-12-27 19:46:15.122576', 'ADJUSTMENT', 100, 48, 'StockAdjustment', 48, NULL, NULL),
('2022-12-27 19:46:15.145983', '2022-12-27 19:46:15.145983', 'ADJUSTMENT', 100, 49, 'StockAdjustment', 49, NULL, NULL),
('2022-12-27 19:46:15.171577', '2022-12-27 19:46:15.171577', 'ADJUSTMENT', 100, 50, 'StockAdjustment', 50, NULL, NULL),
('2022-12-27 19:46:15.317533', '2022-12-27 19:46:15.317533', 'ADJUSTMENT', 100, 51, 'StockAdjustment', 51, NULL, NULL),
('2022-12-27 19:46:15.336247', '2022-12-27 19:46:15.336247', 'ADJUSTMENT', 100, 52, 'StockAdjustment', 52, NULL, NULL),
('2022-12-27 19:46:15.360114', '2022-12-27 19:46:15.360114', 'ADJUSTMENT', 100, 53, 'StockAdjustment', 53, NULL, NULL),
('2022-12-27 19:46:15.383347', '2022-12-27 19:46:15.383347', 'ADJUSTMENT', 100, 54, 'StockAdjustment', 54, NULL, NULL),
('2022-12-27 19:46:15.541467', '2022-12-27 19:46:15.541467', 'ADJUSTMENT', 100, 55, 'StockAdjustment', 55, NULL, NULL),
('2022-12-27 19:46:15.564581', '2022-12-27 19:46:15.564581', 'ADJUSTMENT', 100, 56, 'StockAdjustment', 56, NULL, NULL),
('2022-12-27 19:46:15.588713', '2022-12-27 19:46:15.588713', 'ADJUSTMENT', 100, 57, 'StockAdjustment', 57, NULL, NULL),
('2022-12-27 19:46:15.615902', '2022-12-27 19:46:15.615902', 'ADJUSTMENT', 100, 58, 'StockAdjustment', 58, NULL, NULL),
('2022-12-27 19:46:15.818024', '2022-12-27 19:46:15.818024', 'ADJUSTMENT', 100, 59, 'StockAdjustment', 59, NULL, NULL),
('2022-12-27 19:46:15.831672', '2022-12-27 19:46:15.831672', 'ADJUSTMENT', 100, 60, 'StockAdjustment', 60, NULL, NULL),
('2022-12-27 19:46:15.849748', '2022-12-27 19:46:15.849748', 'ADJUSTMENT', 100, 61, 'StockAdjustment', 61, NULL, NULL),
('2022-12-27 19:46:15.876410', '2022-12-27 19:46:15.876410', 'ADJUSTMENT', 100, 62, 'StockAdjustment', 62, NULL, NULL),
('2022-12-27 19:46:16.075204', '2022-12-27 19:46:16.075204', 'ADJUSTMENT', 100, 63, 'StockAdjustment', 63, NULL, NULL),
('2022-12-27 19:46:16.093847', '2022-12-27 19:46:16.093847', 'ADJUSTMENT', 100, 64, 'StockAdjustment', 64, NULL, NULL),
('2022-12-27 19:46:16.111647', '2022-12-27 19:46:16.111647', 'ADJUSTMENT', 100, 65, 'StockAdjustment', 65, NULL, NULL),
('2022-12-27 19:46:16.127361', '2022-12-27 19:46:16.127361', 'ADJUSTMENT', 100, 66, 'StockAdjustment', 66, NULL, NULL),
('2022-12-27 19:46:16.270107', '2022-12-27 19:46:16.270107', 'ADJUSTMENT', 100, 67, 'StockAdjustment', 67, NULL, NULL),
('2022-12-27 19:46:16.345508', '2022-12-27 19:46:16.345508', 'ADJUSTMENT', 100, 68, 'StockAdjustment', 68, NULL, NULL),
('2022-12-27 19:46:16.421846', '2022-12-27 19:46:16.421846', 'ADJUSTMENT', 100, 69, 'StockAdjustment', 69, NULL, NULL),
('2022-12-27 19:46:16.501647', '2022-12-27 19:46:16.501647', 'ADJUSTMENT', 100, 70, 'StockAdjustment', 70, NULL, NULL),
('2022-12-27 19:46:16.633034', '2022-12-27 19:46:16.633034', 'ADJUSTMENT', 100, 71, 'StockAdjustment', 71, NULL, NULL),
('2022-12-27 19:46:16.784315', '2022-12-27 19:46:16.784315', 'ADJUSTMENT', 100, 72, 'StockAdjustment', 72, NULL, NULL),
('2022-12-27 19:46:16.884574', '2022-12-27 19:46:16.884574', 'ADJUSTMENT', 100, 73, 'StockAdjustment', 73, NULL, NULL),
('2022-12-27 19:46:16.981024', '2022-12-27 19:46:16.981024', 'ADJUSTMENT', 100, 74, 'StockAdjustment', 74, NULL, NULL),
('2022-12-27 19:46:17.100080', '2022-12-27 19:46:17.100080', 'ADJUSTMENT', 100, 75, 'StockAdjustment', 75, NULL, NULL),
('2022-12-27 19:46:17.182474', '2022-12-27 19:46:17.182474', 'ADJUSTMENT', 100, 76, 'StockAdjustment', 76, NULL, NULL),
('2022-12-27 19:46:17.254741', '2022-12-27 19:46:17.254741', 'ADJUSTMENT', 100, 77, 'StockAdjustment', 77, NULL, NULL),
('2022-12-27 19:46:17.326373', '2022-12-27 19:46:17.326373', 'ADJUSTMENT', 100, 78, 'StockAdjustment', 78, NULL, NULL),
('2022-12-27 19:46:17.415974', '2022-12-27 19:46:17.415974', 'ADJUSTMENT', 100, 79, 'StockAdjustment', 79, NULL, NULL),
('2022-12-27 19:46:17.484797', '2022-12-27 19:46:17.484797', 'ADJUSTMENT', 100, 80, 'StockAdjustment', 80, NULL, NULL),
('2022-12-27 19:46:17.576740', '2022-12-27 19:46:17.576740', 'ADJUSTMENT', 100, 81, 'StockAdjustment', 81, NULL, NULL),
('2022-12-27 19:46:17.671967', '2022-12-27 19:46:17.671967', 'ADJUSTMENT', 100, 82, 'StockAdjustment', 82, NULL, NULL),
('2022-12-27 19:46:17.828347', '2022-12-27 19:46:17.828347', 'ADJUSTMENT', 100, 83, 'StockAdjustment', 83, NULL, NULL),
('2022-12-27 19:46:17.895612', '2022-12-27 19:46:17.895612', 'ADJUSTMENT', 100, 84, 'StockAdjustment', 84, NULL, NULL),
('2022-12-27 19:46:17.980694', '2022-12-27 19:46:17.980694', 'ADJUSTMENT', 100, 85, 'StockAdjustment', 85, NULL, NULL),
('2022-12-27 19:46:18.195543', '2022-12-27 19:46:18.195543', 'ADJUSTMENT', 100, 86, 'StockAdjustment', 86, NULL, NULL),
('2022-12-27 19:46:18.236410', '2022-12-27 19:46:18.236410', 'ADJUSTMENT', 100, 87, 'StockAdjustment', 87, NULL, NULL),
('2022-12-27 19:46:18.263838', '2022-12-27 19:46:18.263838', 'ADJUSTMENT', 100, 88, 'StockAdjustment', 88, NULL, NULL),
('2023-03-17 11:19:03.113781', '2023-03-17 11:19:03.113781', 'ALLOCATION', 1, 89, 'Allocation', 1, NULL, 1),
('2023-03-17 11:19:03.117265', '2023-03-17 11:19:03.117265', 'ALLOCATION', 1, 90, 'Allocation', 2, NULL, 2),
('2023-03-17 11:19:03.118882', '2023-03-17 11:19:03.118882', 'ALLOCATION', 1, 91, 'Allocation', 3, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `surcharge`
--

CREATE TABLE `surcharge` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `description` varchar(255) NOT NULL,
  `listPrice` int(11) NOT NULL,
  `listPriceIncludesTax` tinyint(4) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `taxLines` text NOT NULL,
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `orderModificationId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `value` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_category`
--

CREATE TABLE `tax_category` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `name` varchar(255) NOT NULL,
  `isDefault` tinyint(4) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tax_category`
--

INSERT INTO `tax_category` (`createdAt`, `updatedAt`, `name`, `isDefault`, `id`) VALUES
('2022-12-27 19:46:09.919330', '2022-12-27 19:46:09.919330', 'Standard Tax', 0, 1),
('2022-12-27 19:46:09.995309', '2022-12-27 19:46:09.995309', 'Reduced Tax', 0, 2),
('2022-12-27 19:46:10.065341', '2022-12-27 19:46:10.065341', 'Zero Tax', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tax_rate`
--

CREATE TABLE `tax_rate` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `name` varchar(255) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `value` decimal(5,2) NOT NULL,
  `id` int(11) NOT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `zoneId` int(11) DEFAULT NULL,
  `customerGroupId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tax_rate`
--

INSERT INTO `tax_rate` (`createdAt`, `updatedAt`, `name`, `enabled`, `value`, `id`, `categoryId`, `zoneId`, `customerGroupId`) VALUES
('2022-12-27 19:46:09.933333', '2022-12-27 19:46:09.933333', 'Standard Tax Asia', 1, '20.00', 1, 1, 1, NULL),
('2022-12-27 19:46:09.944719', '2022-12-27 19:46:09.944719', 'Standard Tax Europe', 1, '20.00', 2, 1, 2, NULL),
('2022-12-27 19:46:09.954230', '2022-12-27 19:46:09.954230', 'Standard Tax Africa', 1, '20.00', 3, 1, 3, NULL),
('2022-12-27 19:46:09.968657', '2022-12-27 19:46:09.968657', 'Standard Tax Oceania', 1, '20.00', 4, 1, 4, NULL),
('2022-12-27 19:46:09.981353', '2022-12-27 19:46:09.981353', 'Standard Tax Americas', 1, '20.00', 5, 1, 5, NULL),
('2022-12-27 19:46:10.002295', '2022-12-27 19:46:10.002295', 'Reduced Tax Asia', 1, '10.00', 6, 2, 1, NULL),
('2022-12-27 19:46:10.017964', '2022-12-27 19:46:10.017964', 'Reduced Tax Europe', 1, '10.00', 7, 2, 2, NULL),
('2022-12-27 19:46:10.027414', '2022-12-27 19:46:10.027414', 'Reduced Tax Africa', 1, '10.00', 8, 2, 3, NULL),
('2022-12-27 19:46:10.037488', '2022-12-27 19:46:10.037488', 'Reduced Tax Oceania', 1, '10.00', 9, 2, 4, NULL),
('2022-12-27 19:46:10.051838', '2022-12-27 19:46:10.051838', 'Reduced Tax Americas', 1, '10.00', 10, 2, 5, NULL),
('2022-12-27 19:46:10.081358', '2022-12-27 19:46:10.081358', 'Zero Tax Asia', 1, '0.00', 11, 3, 1, NULL),
('2022-12-27 19:46:10.105835', '2022-12-27 19:46:10.105835', 'Zero Tax Europe', 1, '0.00', 12, 3, 2, NULL),
('2022-12-27 19:46:10.129296', '2022-12-27 19:46:10.129296', 'Zero Tax Africa', 1, '0.00', 13, 3, 3, NULL),
('2022-12-27 19:46:10.139949', '2022-12-27 19:46:10.139949', 'Zero Tax Oceania', 1, '0.00', 14, 3, 4, NULL),
('2022-12-27 19:46:10.152648', '2022-12-27 19:46:10.152648', 'Zero Tax Americas', 1, '0.00', 15, 3, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `deletedAt` datetime DEFAULT NULL,
  `identifier` varchar(255) NOT NULL,
  `verified` tinyint(4) NOT NULL DEFAULT 0,
  `lastLogin` datetime DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`createdAt`, `updatedAt`, `deletedAt`, `identifier`, `verified`, `lastLogin`, `id`) VALUES
('2022-12-27 19:46:05.321612', '2023-06-17 15:15:02.000000', NULL, 'superadmin', 1, '2023-06-17 09:15:02', 1),
('2022-12-27 20:06:12.930845', '2022-12-28 13:40:38.000000', NULL, 'u1@gmail.com', 0, '2022-12-28 07:40:38', 2),
('2022-12-27 20:13:25.330799', '2022-12-28 11:43:59.000000', NULL, 'u2@gmail.com', 1, '2022-12-28 05:43:59', 3),
('2023-03-01 22:21:54.812020', '2023-06-21 14:10:43.000000', NULL, '9876543213@kaikani.com', 1, '2023-06-21 08:10:43', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles_role`
--

CREATE TABLE `user_roles_role` (
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_roles_role`
--

INSERT INTO `user_roles_role` (`userId`, `roleId`) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `zone`
--

CREATE TABLE `zone` (
  `createdAt` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zone`
--

INSERT INTO `zone` (`createdAt`, `updatedAt`, `name`, `id`) VALUES
('2022-12-27 19:46:05.447061', '2022-12-27 19:46:05.447061', 'Asia', 1),
('2022-12-27 19:46:05.475500', '2022-12-27 19:46:05.475500', 'Europe', 2),
('2022-12-27 19:46:05.519322', '2022-12-27 19:46:05.519322', 'Africa', 3),
('2022-12-27 19:46:05.545713', '2022-12-27 19:46:05.545713', 'Oceania', 4),
('2022-12-27 19:46:05.599053', '2022-12-27 19:46:05.599053', 'Americas', 5);

-- --------------------------------------------------------

--
-- Table structure for table `zone_members_country`
--

CREATE TABLE `zone_members_country` (
  `zoneId` int(11) NOT NULL,
  `countryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zone_members_country`
--

INSERT INTO `zone_members_country` (`zoneId`, `countryId`) VALUES
(1, 1),
(1, 11),
(1, 15),
(1, 17),
(1, 18),
(1, 25),
(1, 33),
(1, 38),
(1, 45),
(1, 58),
(1, 82),
(1, 100),
(1, 103),
(1, 104),
(1, 105),
(1, 106),
(1, 109),
(1, 112),
(1, 114),
(1, 115),
(1, 118),
(1, 119),
(1, 120),
(1, 121),
(1, 122),
(1, 124),
(1, 131),
(1, 135),
(1, 136),
(1, 148),
(1, 153),
(1, 156),
(1, 167),
(1, 168),
(1, 170),
(1, 175),
(1, 180),
(1, 195),
(1, 200),
(1, 210),
(1, 216),
(1, 217),
(1, 218),
(1, 220),
(1, 221),
(1, 227),
(1, 228),
(1, 233),
(1, 238),
(1, 241),
(1, 246),
(2, 2),
(2, 3),
(2, 6),
(2, 14),
(2, 20),
(2, 21),
(2, 28),
(2, 34),
(2, 55),
(2, 59),
(2, 60),
(2, 69),
(2, 73),
(2, 75),
(2, 76),
(2, 83),
(2, 85),
(2, 86),
(2, 92),
(2, 98),
(2, 101),
(2, 102),
(2, 107),
(2, 108),
(2, 110),
(2, 113),
(2, 123),
(2, 128),
(2, 129),
(2, 130),
(2, 132),
(2, 138),
(2, 146),
(2, 147),
(2, 149),
(2, 157),
(2, 166),
(2, 177),
(2, 178),
(2, 182),
(2, 183),
(2, 193),
(2, 197),
(2, 202),
(2, 203),
(2, 209),
(2, 213),
(2, 214),
(2, 215),
(2, 232),
(2, 234),
(3, 4),
(3, 7),
(3, 23),
(3, 29),
(3, 32),
(3, 35),
(3, 36),
(3, 37),
(3, 39),
(3, 42),
(3, 43),
(3, 49),
(3, 50),
(3, 51),
(3, 54),
(3, 61),
(3, 65),
(3, 67),
(3, 68),
(3, 70),
(3, 71),
(3, 79),
(3, 80),
(3, 81),
(3, 84),
(3, 93),
(3, 94),
(3, 116),
(3, 125),
(3, 126),
(3, 127),
(3, 133),
(3, 134),
(3, 137),
(3, 141),
(3, 142),
(3, 143),
(3, 151),
(3, 152),
(3, 154),
(3, 161),
(3, 162),
(3, 181),
(3, 184),
(3, 186),
(3, 194),
(3, 196),
(3, 198),
(3, 199),
(3, 205),
(3, 206),
(3, 208),
(3, 211),
(3, 219),
(3, 222),
(3, 226),
(3, 231),
(3, 245),
(3, 247),
(3, 248),
(4, 5),
(4, 13),
(4, 46),
(4, 47),
(4, 52),
(4, 74),
(4, 78),
(4, 90),
(4, 97),
(4, 117),
(4, 139),
(4, 145),
(4, 155),
(4, 158),
(4, 159),
(4, 163),
(4, 164),
(4, 165),
(4, 169),
(4, 172),
(4, 176),
(4, 192),
(4, 204),
(4, 223),
(4, 224),
(4, 230),
(4, 236),
(4, 239),
(4, 244),
(5, 8),
(5, 9),
(5, 10),
(5, 12),
(5, 16),
(5, 19),
(5, 22),
(5, 24),
(5, 26),
(5, 27),
(5, 30),
(5, 31),
(5, 40),
(5, 41),
(5, 44),
(5, 48),
(5, 53),
(5, 56),
(5, 57),
(5, 62),
(5, 63),
(5, 64),
(5, 66),
(5, 72),
(5, 77),
(5, 87),
(5, 88),
(5, 89),
(5, 91),
(5, 95),
(5, 96),
(5, 99),
(5, 111),
(5, 140),
(5, 144),
(5, 150),
(5, 160),
(5, 171),
(5, 173),
(5, 174),
(5, 179),
(5, 185),
(5, 187),
(5, 188),
(5, 189),
(5, 190),
(5, 191),
(5, 201),
(5, 207),
(5, 212),
(5, 225),
(5, 229),
(5, 235),
(5, 237),
(5, 240),
(5, 242),
(5, 243);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_dc34d382b493ade1f70e834c4d3` (`customerId`),
  ADD KEY `FK_d87215343c3a3a67e6a0b7f3ea9` (`countryId`);

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_154f5c538b1576ccc277b1ed63` (`emailAddress`),
  ADD UNIQUE KEY `REL_1966e18ce6a39a82b19204704d` (`userId`);

--
-- Indexes for table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_channels_channel`
--
ALTER TABLE `asset_channels_channel`
  ADD PRIMARY KEY (`assetId`,`channelId`),
  ADD KEY `IDX_dc4e7435f9f5e9e6436bebd33b` (`assetId`),
  ADD KEY `IDX_16ca9151a5153f1169da5b7b7e` (`channelId`);

--
-- Indexes for table `asset_tags_tag`
--
ALTER TABLE `asset_tags_tag`
  ADD PRIMARY KEY (`assetId`,`tagId`),
  ADD KEY `IDX_9e412b00d4c6cee1a4b3d92071` (`assetId`),
  ADD KEY `IDX_fb5e800171ffbe9823f2cc727f` (`tagId`);

--
-- Indexes for table `authentication_method`
--
ALTER TABLE `authentication_method`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_a23445b2c942d8dfcae15b8de2` (`type`),
  ADD KEY `FK_00cbe87bc0d4e36758d61bd31d6` (`userId`);

--
-- Indexes for table `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_06127ac6c6d913f4320759971d` (`code`),
  ADD UNIQUE KEY `IDX_842699fce4f3470a7d06d89de8` (`token`),
  ADD KEY `FK_afe9f917a1c82b9e9e69f7c6129` (`defaultTaxZoneId`),
  ADD KEY `FK_c9ca2f58d4517460435cbd8b4c9` (`defaultShippingZoneId`);

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_7256fef1bb42f1b38156b7449f5` (`featuredAssetId`),
  ADD KEY `FK_4257b61275144db89fa0f5dc059` (`parentId`);

--
-- Indexes for table `collection_asset`
--
ALTER TABLE `collection_asset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_51da53b26522dc0525762d2de8e` (`assetId`),
  ADD KEY `FK_1ed9e48dfbf74b5fcbb35d3d686` (`collectionId`);

--
-- Indexes for table `collection_channels_channel`
--
ALTER TABLE `collection_channels_channel`
  ADD PRIMARY KEY (`collectionId`,`channelId`),
  ADD KEY `IDX_cdbf33ffb5d451916125152008` (`collectionId`),
  ADD KEY `IDX_7216ab24077cf5cbece7857dbb` (`channelId`);

--
-- Indexes for table `collection_product_variants_product_variant`
--
ALTER TABLE `collection_product_variants_product_variant`
  ADD PRIMARY KEY (`collectionId`,`productVariantId`),
  ADD KEY `IDX_6faa7b72422d9c4679e2f186ad` (`collectionId`),
  ADD KEY `IDX_fb05887e2867365f236d7dd95e` (`productVariantId`);

--
-- Indexes for table `collection_translation`
--
ALTER TABLE `collection_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_e329f9036210d75caa1d8f2154a` (`baseId`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_translation`
--
ALTER TABLE `country_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_20958e5bdb4c996c18ca63d18e4` (`baseId`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REL_3f62b42ed23958b120c235f74d` (`userId`);

--
-- Indexes for table `customer_channels_channel`
--
ALTER TABLE `customer_channels_channel`
  ADD PRIMARY KEY (`customerId`,`channelId`),
  ADD KEY `IDX_a842c9fe8cd4c8ff31402d172d` (`customerId`),
  ADD KEY `IDX_dc9f69207a8867f83b0fd257e3` (`channelId`);

--
-- Indexes for table `customer_group`
--
ALTER TABLE `customer_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_groups_customer_group`
--
ALTER TABLE `customer_groups_customer_group`
  ADD PRIMARY KEY (`customerId`,`customerGroupId`),
  ADD KEY `IDX_b823a3c8bf3b78d3ed68736485` (`customerId`),
  ADD KEY `IDX_85feea3f0e5e82133605f78db0` (`customerGroupId`);

--
-- Indexes for table `facet`
--
ALTER TABLE `facet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_0c9a5d053fdf4ebb5f0490b40f` (`code`);

--
-- Indexes for table `facet_channels_channel`
--
ALTER TABLE `facet_channels_channel`
  ADD PRIMARY KEY (`facetId`,`channelId`),
  ADD KEY `IDX_ca796020c6d097e251e5d6d2b0` (`facetId`),
  ADD KEY `IDX_2a8ea404d05bf682516184db7d` (`channelId`);

--
-- Indexes for table `facet_translation`
--
ALTER TABLE `facet_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_eaea53f44bf9e97790d38a3d68f` (`baseId`);

--
-- Indexes for table `facet_value`
--
ALTER TABLE `facet_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_d101dc2265a7341be3d94968c5b` (`facetId`);

--
-- Indexes for table `facet_value_channels_channel`
--
ALTER TABLE `facet_value_channels_channel`
  ADD PRIMARY KEY (`facetValueId`,`channelId`),
  ADD KEY `IDX_ad690c1b05596d7f52e52ffeed` (`facetValueId`),
  ADD KEY `IDX_e1d54c0b9db3e2eb17faaf5919` (`channelId`);

--
-- Indexes for table `facet_value_translation`
--
ALTER TABLE `facet_value_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_3d6e45823b65de808a66cb1423b` (`baseId`);

--
-- Indexes for table `fulfillment`
--
ALTER TABLE `fulfillment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `global_settings`
--
ALTER TABLE `global_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_entry`
--
ALTER TABLE `history_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_f3a761f6bcfabb474b11e1e51f` (`discriminator`),
  ADD KEY `FK_92f8c334ef06275f9586fd01832` (`administratorId`),
  ADD KEY `FK_43ac602f839847fdb91101f30ec` (`customerId`),
  ADD KEY `FK_3a05127e67435b4d2332ded7c9e` (`orderId`);

--
-- Indexes for table `job_record`
--
ALTER TABLE `job_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_record_buffer`
--
ALTER TABLE `job_record_buffer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_124456e637cca7a415897dce659` (`customerId`);

--
-- Indexes for table `order_channels_channel`
--
ALTER TABLE `order_channels_channel`
  ADD PRIMARY KEY (`orderId`,`channelId`),
  ADD KEY `IDX_0d8e5c204480204a60e151e485` (`orderId`),
  ADD KEY `IDX_d0d16db872499e83b15999f8c7` (`channelId`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_69384323444206753f0cdeb64e0` (`lineId`),
  ADD KEY `FK_3e5161133689fba526377cbccd3` (`refundId`);

--
-- Indexes for table `order_item_fulfillments_fulfillment`
--
ALTER TABLE `order_item_fulfillments_fulfillment`
  ADD PRIMARY KEY (`orderItemId`,`fulfillmentId`),
  ADD KEY `IDX_a568a3d5aa7f237edab624960b` (`orderItemId`),
  ADD KEY `IDX_8132041a647c28eb27ecc1691f` (`fulfillmentId`);

--
-- Indexes for table `order_line`
--
ALTER TABLE `order_line`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_cbcd22193eda94668e84d33f185` (`productVariantId`),
  ADD KEY `FK_77be94ce9ec6504466179462275` (`taxCategoryId`),
  ADD KEY `FK_9f065453910ea77d4be8e92618f` (`featuredAssetId`),
  ADD KEY `FK_239cfca2a55b98b90b6bef2e44f` (`orderId`);

--
-- Indexes for table `order_modification`
--
ALTER TABLE `order_modification`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REL_ad2991fa2933ed8b7f86a71633` (`paymentId`),
  ADD UNIQUE KEY `REL_cb66b63b6e97613013795eadbd` (`refundId`),
  ADD KEY `FK_1df5bc14a47ef24d2e681f45598` (`orderId`);

--
-- Indexes for table `order_modification_order_items_order_item`
--
ALTER TABLE `order_modification_order_items_order_item`
  ADD PRIMARY KEY (`orderModificationId`,`orderItemId`),
  ADD KEY `IDX_a48502a38aded69d087a8ec08a` (`orderModificationId`),
  ADD KEY `IDX_9d631d7bd3d44af50eca535d72` (`orderItemId`);

--
-- Indexes for table `order_promotions_promotion`
--
ALTER TABLE `order_promotions_promotion`
  ADD PRIMARY KEY (`orderId`,`promotionId`),
  ADD KEY `IDX_67be0e40122ab30a62a9817efe` (`orderId`),
  ADD KEY `IDX_2c26b988769c0e3b0120bdef31` (`promotionId`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_section`
--
ALTER TABLE `page_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_sections_page_section`
--
ALTER TABLE `page_sections_page_section`
  ADD PRIMARY KEY (`pageId`,`pageSectionId`),
  ADD KEY `IDX_c452996b7e124a1e6b385de45d` (`pageId`),
  ADD KEY `IDX_9f6ce9074572dc38d77d708bd4` (`pageSectionId`);

--
-- Indexes for table `page_translation`
--
ALTER TABLE `page_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug_language` (`languageCode`,`slug`),
  ADD KEY `FK_f504584d4dd2807ad249c033058` (`baseId`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_d09d285fe1645cd2f0db811e293` (`orderId`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_method_channels_channel`
--
ALTER TABLE `payment_method_channels_channel`
  ADD PRIMARY KEY (`paymentMethodId`,`channelId`),
  ADD KEY `IDX_5bcb569635ce5407eb3f264487` (`paymentMethodId`),
  ADD KEY `IDX_c00e36f667d35031087b382e61` (`channelId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_91a19e6613534949a4ce6e76ff8` (`featuredAssetId`);

--
-- Indexes for table `product_asset`
--
ALTER TABLE `product_asset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_5888ac17b317b93378494a10620` (`assetId`),
  ADD KEY `FK_0d1294f5c22a56da7845ebab72c` (`productId`);

--
-- Indexes for table `product_channels_channel`
--
ALTER TABLE `product_channels_channel`
  ADD PRIMARY KEY (`productId`,`channelId`),
  ADD KEY `IDX_26d12be3b5fec6c4adb1d79284` (`productId`),
  ADD KEY `IDX_a51dfbd87c330c075c39832b6e` (`channelId`);

--
-- Indexes for table `product_facet_values_facet_value`
--
ALTER TABLE `product_facet_values_facet_value`
  ADD PRIMARY KEY (`productId`,`facetValueId`),
  ADD KEY `IDX_6a0558e650d75ae639ff38e413` (`productId`),
  ADD KEY `IDX_06e7d73673ee630e8ec50d0b29` (`facetValueId`);

--
-- Indexes for table `product_option`
--
ALTER TABLE `product_option`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_a6debf9198e2fbfa006aa10d710` (`groupId`);

--
-- Indexes for table `product_option_group`
--
ALTER TABLE `product_option_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_a6e91739227bf4d442f23c52c75` (`productId`);

--
-- Indexes for table `product_option_group_translation`
--
ALTER TABLE `product_option_group_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_93751abc1451972c02e033b766c` (`baseId`);

--
-- Indexes for table `product_option_translation`
--
ALTER TABLE `product_option_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_a79a443c1f7841f3851767faa6d` (`baseId`);

--
-- Indexes for table `product_translation`
--
ALTER TABLE `product_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_7dbc75cb4e8b002620c4dbfdac5` (`baseId`);

--
-- Indexes for table `product_variant`
--
ALTER TABLE `product_variant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_0e6f516053cf982b537836e21cf` (`featuredAssetId`),
  ADD KEY `FK_e38dca0d82fd64c7cf8aac8b8ef` (`taxCategoryId`),
  ADD KEY `FK_6e420052844edf3a5506d863ce6` (`productId`);

--
-- Indexes for table `product_variant_asset`
--
ALTER TABLE `product_variant_asset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_10b5a2e3dee0e30b1e26c32f5c7` (`assetId`),
  ADD KEY `FK_fa21412afac15a2304f3eb35feb` (`productVariantId`);

--
-- Indexes for table `product_variant_channels_channel`
--
ALTER TABLE `product_variant_channels_channel`
  ADD PRIMARY KEY (`productVariantId`,`channelId`),
  ADD KEY `IDX_beeb2b3cd800e589f2213ae99d` (`productVariantId`),
  ADD KEY `IDX_d194bff171b62357688a5d0f55` (`channelId`);

--
-- Indexes for table `product_variant_facet_values_facet_value`
--
ALTER TABLE `product_variant_facet_values_facet_value`
  ADD PRIMARY KEY (`productVariantId`,`facetValueId`),
  ADD KEY `IDX_69567bc225b6bbbd732d6c5455` (`productVariantId`),
  ADD KEY `IDX_0d641b761ed1dce4ef3cd33d55` (`facetValueId`);

--
-- Indexes for table `product_variant_options_product_option`
--
ALTER TABLE `product_variant_options_product_option`
  ADD PRIMARY KEY (`productVariantId`,`productOptionId`),
  ADD KEY `IDX_526f0131260eec308a3bd2b61b` (`productVariantId`),
  ADD KEY `IDX_e96a71affe63c97f7fa2f076da` (`productOptionId`);

--
-- Indexes for table `product_variant_price`
--
ALTER TABLE `product_variant_price`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_e6126cd268aea6e9b31d89af9ab` (`variantId`);

--
-- Indexes for table `product_variant_translation`
--
ALTER TABLE `product_variant_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_420f4d6fb75d38b9dca79bc43b4` (`baseId`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotion_channels_channel`
--
ALTER TABLE `promotion_channels_channel`
  ADD PRIMARY KEY (`promotionId`,`channelId`),
  ADD KEY `IDX_6d9e2c39ab12391aaa374bcdaa` (`promotionId`),
  ADD KEY `IDX_0eaaf0f4b6c69afde1e88ffb52` (`channelId`);

--
-- Indexes for table `refund`
--
ALTER TABLE `refund`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_1c6932a756108788a361e7d4404` (`paymentId`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_channels_channel`
--
ALTER TABLE `role_channels_channel`
  ADD PRIMARY KEY (`roleId`,`channelId`),
  ADD KEY `IDX_bfd2a03e9988eda6a9d1176011` (`roleId`),
  ADD KEY `IDX_e09dfee62b158307404202b43a` (`channelId`);

--
-- Indexes for table `search_index_item`
--
ALTER TABLE `search_index_item`
  ADD PRIMARY KEY (`languageCode`,`productVariantId`,`channelId`);
ALTER TABLE `search_index_item` ADD FULLTEXT KEY `IDX_6fb55742e13e8082954d0436dc` (`productName`);
ALTER TABLE `search_index_item` ADD FULLTEXT KEY `IDX_d8791f444a8bf23fe4c1bc020c` (`productVariantName`);
ALTER TABLE `search_index_item` ADD FULLTEXT KEY `IDX_9a5a6a556f75c4ac7bfdd03410` (`description`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_232f8e85d7633bd6ddfad42169` (`token`),
  ADD KEY `IDX_e5598363000cab9d9116bd5835` (`type`),
  ADD KEY `FK_7a75399a4f4ffa48ee02e98c059` (`activeOrderId`),
  ADD KEY `FK_eb87ef1e234444728138302263b` (`activeChannelId`),
  ADD KEY `FK_3d2f174ef04fb312fdebd0ddc53` (`userId`);

--
-- Indexes for table `shipping_line`
--
ALTER TABLE `shipping_line`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_e2e7642e1e88167c1dfc827fdf3` (`shippingMethodId`),
  ADD KEY `FK_c9f34a440d490d1b66f6829b86c` (`orderId`);

--
-- Indexes for table `shipping_method`
--
ALTER TABLE `shipping_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_method_channels_channel`
--
ALTER TABLE `shipping_method_channels_channel`
  ADD PRIMARY KEY (`shippingMethodId`,`channelId`),
  ADD KEY `IDX_f0a17b94aa5a162f0d422920eb` (`shippingMethodId`),
  ADD KEY `IDX_f2b98dfb56685147bed509acc3` (`channelId`);

--
-- Indexes for table `shipping_method_translation`
--
ALTER TABLE `shipping_method_translation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_85ec26c71067ebc84adcd98d1a5` (`baseId`);

--
-- Indexes for table `stock_movement`
--
ALTER TABLE `stock_movement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_94e15d5f12d355d117390131ac` (`discriminator`),
  ADD KEY `FK_e65ba3882557cab4febb54809bb` (`productVariantId`),
  ADD KEY `FK_cbb0990e398bf7713aebdd38482` (`orderItemId`),
  ADD KEY `FK_d2c8d5fca981cc820131f81aa83` (`orderLineId`);

--
-- Indexes for table `surcharge`
--
ALTER TABLE `surcharge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_154eb685f9b629033bd266df7fa` (`orderId`),
  ADD KEY `FK_a49c5271c39cc8174a0535c8088` (`orderModificationId`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_category`
--
ALTER TABLE `tax_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_rate`
--
ALTER TABLE `tax_rate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_7ee3306d7638aa85ca90d672198` (`categoryId`),
  ADD KEY `FK_9872fc7de2f4e532fd3230d1915` (`zoneId`),
  ADD KEY `FK_8b5ab52fc8887c1a769b9276caf` (`customerGroupId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles_role`
--
ALTER TABLE `user_roles_role`
  ADD PRIMARY KEY (`userId`,`roleId`),
  ADD KEY `IDX_5f9286e6c25594c6b88c108db7` (`userId`),
  ADD KEY `IDX_4be2f7adf862634f5f803d246b` (`roleId`);

--
-- Indexes for table `zone`
--
ALTER TABLE `zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zone_members_country`
--
ALTER TABLE `zone_members_country`
  ADD PRIMARY KEY (`zoneId`,`countryId`),
  ADD KEY `IDX_7350d77b6474313fbbaf4b094c` (`zoneId`),
  ADD KEY `IDX_7baeecaf955e54bec73f998b0d` (`countryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `asset`
--
ALTER TABLE `asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `authentication_method`
--
ALTER TABLE `authentication_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `channel`
--
ALTER TABLE `channel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `collection_asset`
--
ALTER TABLE `collection_asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `collection_translation`
--
ALTER TABLE `collection_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `country_translation`
--
ALTER TABLE `country_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer_group`
--
ALTER TABLE `customer_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `facet`
--
ALTER TABLE `facet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `facet_translation`
--
ALTER TABLE `facet_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `facet_value`
--
ALTER TABLE `facet_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `facet_value_translation`
--
ALTER TABLE `facet_value_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `fulfillment`
--
ALTER TABLE `fulfillment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `global_settings`
--
ALTER TABLE `global_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `history_entry`
--
ALTER TABLE `history_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `job_record`
--
ALTER TABLE `job_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `job_record_buffer`
--
ALTER TABLE `job_record_buffer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `order_line`
--
ALTER TABLE `order_line`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `order_modification`
--
ALTER TABLE `order_modification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_section`
--
ALTER TABLE `page_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page_translation`
--
ALTER TABLE `page_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `product_asset`
--
ALTER TABLE `product_asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `product_option`
--
ALTER TABLE `product_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `product_option_group`
--
ALTER TABLE `product_option_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_option_group_translation`
--
ALTER TABLE `product_option_group_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_option_translation`
--
ALTER TABLE `product_option_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `product_translation`
--
ALTER TABLE `product_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `product_variant`
--
ALTER TABLE `product_variant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `product_variant_asset`
--
ALTER TABLE `product_variant_asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_variant_price`
--
ALTER TABLE `product_variant_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `product_variant_translation`
--
ALTER TABLE `product_variant_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund`
--
ALTER TABLE `refund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `shipping_line`
--
ALTER TABLE `shipping_line`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shipping_method`
--
ALTER TABLE `shipping_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shipping_method_translation`
--
ALTER TABLE `shipping_method_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stock_movement`
--
ALTER TABLE `stock_movement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `surcharge`
--
ALTER TABLE `surcharge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_category`
--
ALTER TABLE `tax_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tax_rate`
--
ALTER TABLE `tax_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `zone`
--
ALTER TABLE `zone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK_d87215343c3a3a67e6a0b7f3ea9` FOREIGN KEY (`countryId`) REFERENCES `country` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_dc34d382b493ade1f70e834c4d3` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `administrator`
--
ALTER TABLE `administrator`
  ADD CONSTRAINT `FK_1966e18ce6a39a82b19204704d7` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `asset_channels_channel`
--
ALTER TABLE `asset_channels_channel`
  ADD CONSTRAINT `FK_16ca9151a5153f1169da5b7b7e3` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_dc4e7435f9f5e9e6436bebd33bb` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `asset_tags_tag`
--
ALTER TABLE `asset_tags_tag`
  ADD CONSTRAINT `FK_9e412b00d4c6cee1a4b3d920716` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_fb5e800171ffbe9823f2cc727fd` FOREIGN KEY (`tagId`) REFERENCES `tag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `authentication_method`
--
ALTER TABLE `authentication_method`
  ADD CONSTRAINT `FK_00cbe87bc0d4e36758d61bd31d6` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `channel`
--
ALTER TABLE `channel`
  ADD CONSTRAINT `FK_afe9f917a1c82b9e9e69f7c6129` FOREIGN KEY (`defaultTaxZoneId`) REFERENCES `zone` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_c9ca2f58d4517460435cbd8b4c9` FOREIGN KEY (`defaultShippingZoneId`) REFERENCES `zone` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `collection`
--
ALTER TABLE `collection`
  ADD CONSTRAINT `FK_4257b61275144db89fa0f5dc059` FOREIGN KEY (`parentId`) REFERENCES `collection` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_7256fef1bb42f1b38156b7449f5` FOREIGN KEY (`featuredAssetId`) REFERENCES `asset` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `collection_asset`
--
ALTER TABLE `collection_asset`
  ADD CONSTRAINT `FK_1ed9e48dfbf74b5fcbb35d3d686` FOREIGN KEY (`collectionId`) REFERENCES `collection` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_51da53b26522dc0525762d2de8e` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `collection_channels_channel`
--
ALTER TABLE `collection_channels_channel`
  ADD CONSTRAINT `FK_7216ab24077cf5cbece7857dbbd` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_cdbf33ffb5d4519161251520083` FOREIGN KEY (`collectionId`) REFERENCES `collection` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `collection_product_variants_product_variant`
--
ALTER TABLE `collection_product_variants_product_variant`
  ADD CONSTRAINT `FK_6faa7b72422d9c4679e2f186ad1` FOREIGN KEY (`collectionId`) REFERENCES `collection` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_fb05887e2867365f236d7dd95ee` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `collection_translation`
--
ALTER TABLE `collection_translation`
  ADD CONSTRAINT `FK_e329f9036210d75caa1d8f2154a` FOREIGN KEY (`baseId`) REFERENCES `collection` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `country_translation`
--
ALTER TABLE `country_translation`
  ADD CONSTRAINT `FK_20958e5bdb4c996c18ca63d18e4` FOREIGN KEY (`baseId`) REFERENCES `country` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `FK_3f62b42ed23958b120c235f74df` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `customer_channels_channel`
--
ALTER TABLE `customer_channels_channel`
  ADD CONSTRAINT `FK_a842c9fe8cd4c8ff31402d172d7` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_dc9f69207a8867f83b0fd257e30` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_groups_customer_group`
--
ALTER TABLE `customer_groups_customer_group`
  ADD CONSTRAINT `FK_85feea3f0e5e82133605f78db02` FOREIGN KEY (`customerGroupId`) REFERENCES `customer_group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_b823a3c8bf3b78d3ed68736485c` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `facet_channels_channel`
--
ALTER TABLE `facet_channels_channel`
  ADD CONSTRAINT `FK_2a8ea404d05bf682516184db7d3` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ca796020c6d097e251e5d6d2b02` FOREIGN KEY (`facetId`) REFERENCES `facet` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `facet_translation`
--
ALTER TABLE `facet_translation`
  ADD CONSTRAINT `FK_eaea53f44bf9e97790d38a3d68f` FOREIGN KEY (`baseId`) REFERENCES `facet` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `facet_value`
--
ALTER TABLE `facet_value`
  ADD CONSTRAINT `FK_d101dc2265a7341be3d94968c5b` FOREIGN KEY (`facetId`) REFERENCES `facet` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `facet_value_channels_channel`
--
ALTER TABLE `facet_value_channels_channel`
  ADD CONSTRAINT `FK_ad690c1b05596d7f52e52ffeedd` FOREIGN KEY (`facetValueId`) REFERENCES `facet_value` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_e1d54c0b9db3e2eb17faaf5919c` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `facet_value_translation`
--
ALTER TABLE `facet_value_translation`
  ADD CONSTRAINT `FK_3d6e45823b65de808a66cb1423b` FOREIGN KEY (`baseId`) REFERENCES `facet_value` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `history_entry`
--
ALTER TABLE `history_entry`
  ADD CONSTRAINT `FK_3a05127e67435b4d2332ded7c9e` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_43ac602f839847fdb91101f30ec` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_92f8c334ef06275f9586fd01832` FOREIGN KEY (`administratorId`) REFERENCES `administrator` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FK_124456e637cca7a415897dce659` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order_channels_channel`
--
ALTER TABLE `order_channels_channel`
  ADD CONSTRAINT `FK_0d8e5c204480204a60e151e4853` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_d0d16db872499e83b15999f8c7a` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `FK_3e5161133689fba526377cbccd3` FOREIGN KEY (`refundId`) REFERENCES `refund` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_69384323444206753f0cdeb64e0` FOREIGN KEY (`lineId`) REFERENCES `order_line` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `order_item_fulfillments_fulfillment`
--
ALTER TABLE `order_item_fulfillments_fulfillment`
  ADD CONSTRAINT `FK_8132041a647c28eb27ecc1691fa` FOREIGN KEY (`fulfillmentId`) REFERENCES `fulfillment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_a568a3d5aa7f237edab624960b9` FOREIGN KEY (`orderItemId`) REFERENCES `order_item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_line`
--
ALTER TABLE `order_line`
  ADD CONSTRAINT `FK_239cfca2a55b98b90b6bef2e44f` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_77be94ce9ec6504466179462275` FOREIGN KEY (`taxCategoryId`) REFERENCES `tax_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_9f065453910ea77d4be8e92618f` FOREIGN KEY (`featuredAssetId`) REFERENCES `asset` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_cbcd22193eda94668e84d33f185` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order_modification`
--
ALTER TABLE `order_modification`
  ADD CONSTRAINT `FK_1df5bc14a47ef24d2e681f45598` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ad2991fa2933ed8b7f86a716338` FOREIGN KEY (`paymentId`) REFERENCES `payment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_cb66b63b6e97613013795eadbd5` FOREIGN KEY (`refundId`) REFERENCES `refund` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order_modification_order_items_order_item`
--
ALTER TABLE `order_modification_order_items_order_item`
  ADD CONSTRAINT `FK_9d631d7bd3d44af50eca535d728` FOREIGN KEY (`orderItemId`) REFERENCES `order_item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_a48502a38aded69d087a8ec08ad` FOREIGN KEY (`orderModificationId`) REFERENCES `order_modification` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_promotions_promotion`
--
ALTER TABLE `order_promotions_promotion`
  ADD CONSTRAINT `FK_2c26b988769c0e3b0120bdef31b` FOREIGN KEY (`promotionId`) REFERENCES `promotion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_67be0e40122ab30a62a9817efe0` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `page_sections_page_section`
--
ALTER TABLE `page_sections_page_section`
  ADD CONSTRAINT `FK_9f6ce9074572dc38d77d708bd4f` FOREIGN KEY (`pageSectionId`) REFERENCES `page_section` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_c452996b7e124a1e6b385de45dd` FOREIGN KEY (`pageId`) REFERENCES `page` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `page_translation`
--
ALTER TABLE `page_translation`
  ADD CONSTRAINT `FK_f504584d4dd2807ad249c033058` FOREIGN KEY (`baseId`) REFERENCES `page` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `FK_d09d285fe1645cd2f0db811e293` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `payment_method_channels_channel`
--
ALTER TABLE `payment_method_channels_channel`
  ADD CONSTRAINT `FK_5bcb569635ce5407eb3f264487d` FOREIGN KEY (`paymentMethodId`) REFERENCES `payment_method` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_c00e36f667d35031087b382e61b` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_91a19e6613534949a4ce6e76ff8` FOREIGN KEY (`featuredAssetId`) REFERENCES `asset` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `product_asset`
--
ALTER TABLE `product_asset`
  ADD CONSTRAINT `FK_0d1294f5c22a56da7845ebab72c` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_5888ac17b317b93378494a10620` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_channels_channel`
--
ALTER TABLE `product_channels_channel`
  ADD CONSTRAINT `FK_26d12be3b5fec6c4adb1d792844` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_a51dfbd87c330c075c39832b6e7` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_facet_values_facet_value`
--
ALTER TABLE `product_facet_values_facet_value`
  ADD CONSTRAINT `FK_06e7d73673ee630e8ec50d0b29f` FOREIGN KEY (`facetValueId`) REFERENCES `facet_value` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_6a0558e650d75ae639ff38e413a` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_option`
--
ALTER TABLE `product_option`
  ADD CONSTRAINT `FK_a6debf9198e2fbfa006aa10d710` FOREIGN KEY (`groupId`) REFERENCES `product_option_group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_option_group`
--
ALTER TABLE `product_option_group`
  ADD CONSTRAINT `FK_a6e91739227bf4d442f23c52c75` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_option_group_translation`
--
ALTER TABLE `product_option_group_translation`
  ADD CONSTRAINT `FK_93751abc1451972c02e033b766c` FOREIGN KEY (`baseId`) REFERENCES `product_option_group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_option_translation`
--
ALTER TABLE `product_option_translation`
  ADD CONSTRAINT `FK_a79a443c1f7841f3851767faa6d` FOREIGN KEY (`baseId`) REFERENCES `product_option` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_translation`
--
ALTER TABLE `product_translation`
  ADD CONSTRAINT `FK_7dbc75cb4e8b002620c4dbfdac5` FOREIGN KEY (`baseId`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_variant`
--
ALTER TABLE `product_variant`
  ADD CONSTRAINT `FK_0e6f516053cf982b537836e21cf` FOREIGN KEY (`featuredAssetId`) REFERENCES `asset` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_6e420052844edf3a5506d863ce6` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_e38dca0d82fd64c7cf8aac8b8ef` FOREIGN KEY (`taxCategoryId`) REFERENCES `tax_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_variant_asset`
--
ALTER TABLE `product_variant_asset`
  ADD CONSTRAINT `FK_10b5a2e3dee0e30b1e26c32f5c7` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_fa21412afac15a2304f3eb35feb` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_variant_channels_channel`
--
ALTER TABLE `product_variant_channels_channel`
  ADD CONSTRAINT `FK_beeb2b3cd800e589f2213ae99d6` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_d194bff171b62357688a5d0f559` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_variant_facet_values_facet_value`
--
ALTER TABLE `product_variant_facet_values_facet_value`
  ADD CONSTRAINT `FK_0d641b761ed1dce4ef3cd33d559` FOREIGN KEY (`facetValueId`) REFERENCES `facet_value` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_69567bc225b6bbbd732d6c5455b` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_variant_options_product_option`
--
ALTER TABLE `product_variant_options_product_option`
  ADD CONSTRAINT `FK_526f0131260eec308a3bd2b61b6` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_e96a71affe63c97f7fa2f076dac` FOREIGN KEY (`productOptionId`) REFERENCES `product_option` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_variant_price`
--
ALTER TABLE `product_variant_price`
  ADD CONSTRAINT `FK_e6126cd268aea6e9b31d89af9ab` FOREIGN KEY (`variantId`) REFERENCES `product_variant` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_variant_translation`
--
ALTER TABLE `product_variant_translation`
  ADD CONSTRAINT `FK_420f4d6fb75d38b9dca79bc43b4` FOREIGN KEY (`baseId`) REFERENCES `product_variant` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `promotion_channels_channel`
--
ALTER TABLE `promotion_channels_channel`
  ADD CONSTRAINT `FK_0eaaf0f4b6c69afde1e88ffb52d` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_6d9e2c39ab12391aaa374bcdaa4` FOREIGN KEY (`promotionId`) REFERENCES `promotion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `refund`
--
ALTER TABLE `refund`
  ADD CONSTRAINT `FK_1c6932a756108788a361e7d4404` FOREIGN KEY (`paymentId`) REFERENCES `payment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `role_channels_channel`
--
ALTER TABLE `role_channels_channel`
  ADD CONSTRAINT `FK_bfd2a03e9988eda6a9d11760119` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_e09dfee62b158307404202b43a5` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `FK_3d2f174ef04fb312fdebd0ddc53` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_7a75399a4f4ffa48ee02e98c059` FOREIGN KEY (`activeOrderId`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_eb87ef1e234444728138302263b` FOREIGN KEY (`activeChannelId`) REFERENCES `channel` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `shipping_line`
--
ALTER TABLE `shipping_line`
  ADD CONSTRAINT `FK_c9f34a440d490d1b66f6829b86c` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_e2e7642e1e88167c1dfc827fdf3` FOREIGN KEY (`shippingMethodId`) REFERENCES `shipping_method` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `shipping_method_channels_channel`
--
ALTER TABLE `shipping_method_channels_channel`
  ADD CONSTRAINT `FK_f0a17b94aa5a162f0d422920eb2` FOREIGN KEY (`shippingMethodId`) REFERENCES `shipping_method` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_f2b98dfb56685147bed509acc3d` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shipping_method_translation`
--
ALTER TABLE `shipping_method_translation`
  ADD CONSTRAINT `FK_85ec26c71067ebc84adcd98d1a5` FOREIGN KEY (`baseId`) REFERENCES `shipping_method` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `stock_movement`
--
ALTER TABLE `stock_movement`
  ADD CONSTRAINT `FK_cbb0990e398bf7713aebdd38482` FOREIGN KEY (`orderItemId`) REFERENCES `order_item` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_d2c8d5fca981cc820131f81aa83` FOREIGN KEY (`orderLineId`) REFERENCES `order_line` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_e65ba3882557cab4febb54809bb` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `surcharge`
--
ALTER TABLE `surcharge`
  ADD CONSTRAINT `FK_154eb685f9b629033bd266df7fa` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_a49c5271c39cc8174a0535c8088` FOREIGN KEY (`orderModificationId`) REFERENCES `order_modification` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tax_rate`
--
ALTER TABLE `tax_rate`
  ADD CONSTRAINT `FK_7ee3306d7638aa85ca90d672198` FOREIGN KEY (`categoryId`) REFERENCES `tax_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_8b5ab52fc8887c1a769b9276caf` FOREIGN KEY (`customerGroupId`) REFERENCES `customer_group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_9872fc7de2f4e532fd3230d1915` FOREIGN KEY (`zoneId`) REFERENCES `zone` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_roles_role`
--
ALTER TABLE `user_roles_role`
  ADD CONSTRAINT `FK_4be2f7adf862634f5f803d246b8` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_5f9286e6c25594c6b88c108db77` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `zone_members_country`
--
ALTER TABLE `zone_members_country`
  ADD CONSTRAINT `FK_7350d77b6474313fbbaf4b094c1` FOREIGN KEY (`zoneId`) REFERENCES `zone` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_7baeecaf955e54bec73f998b0d5` FOREIGN KEY (`countryId`) REFERENCES `country` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
