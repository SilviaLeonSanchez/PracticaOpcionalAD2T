-- MySQL dump 10.13  Distrib 8.0.15, for Linux (x86_64)
--
-- Host: localhost    Database: artbot
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- -----------------------------------------------------
-- Schema artbot
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `artbot` ;

-- -----------------------------------------------------
-- Schema artbot
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `artbot` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `artbot` ;

--
-- Table structure for table `artwork_kinds`
--

DROP TABLE IF EXISTS `artbot`.`artwork_kinds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `artbot`.`artwork_kinds` (
  `artwork_kind_id` varchar(45) NOT NULL,
  `artwork_kind_name` varchar(45) NOT NULL,
  `artwork_kind_description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`artwork_kind_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artwork_kinds`
--

LOCK TABLES `artbot`.`artwork_kinds` WRITE;
/*!40000 ALTER TABLE `artwork_kinds` DISABLE KEYS */;
INSERT INTO `artbot`.`artwork_kinds` VALUES ('K001','Sculpture',NULL),('K002','Painting',NULL),('K003','Drawing',NULL),('K004','Furniture',NULL),('K005','Photography',NULL);
/*!40000 ALTER TABLE `artwork_kinds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artworks`
--

DROP TABLE IF EXISTS `artbot`.`artworks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `artbot`.`artworks` (
  `artwork_id` varchar(45) NOT NULL,
  `artwork_name` varchar(45) NOT NULL,
  `artwork_year` varchar(45) DEFAULT NULL,
  `author_id` varchar(45) NOT NULL,
  `technique_id` varchar(45) DEFAULT NULL,
  `material_id` varchar(45) DEFAULT NULL,
  `artwork_kind_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`artwork_id`),
  KEY `fk_artworks_1_idx` (`author_id`),
  KEY `fk_artworks_2_idx` (`technique_id`),
  KEY `fk_artworks_3_idx` (`material_id`),
  KEY `fk_artworks_4_idx` (`artwork_kind_id`),
  CONSTRAINT `fk_artworks_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`),
  CONSTRAINT `fk_artworks_2` FOREIGN KEY (`technique_id`) REFERENCES `techniques` (`technique_id`),
  CONSTRAINT `fk_artworks_3` FOREIGN KEY (`material_id`) REFERENCES `materials` (`material_id`),
  CONSTRAINT `fk_artworks_4` FOREIGN KEY (`artwork_kind_id`) REFERENCES `artwork_kinds` (`artwork_kind_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artworks`
--

LOCK TABLES `artbot`.`artworks` WRITE;
/*!40000 ALTER TABLE `artworks` DISABLE KEYS */;
INSERT INTO `artbot`.`artworks` VALUES ('F001','Candás',NULL,'A001',NULL,NULL,NULL),('F002','Fábrica Albo',NULL,'A001',NULL,NULL,NULL),('F003','Fábrica Albo',NULL,'A001',NULL,NULL,NULL),('F004','Paisaje de pueblo',NULL,'A001',NULL,NULL,NULL),('F005','Puerto de Candás',NULL,'A001',NULL,NULL,NULL),('F006','Villa Angelina',NULL,'A001',NULL,NULL,NULL),('F010','Anuncio para conservas Albo',NULL,'A001',NULL,NULL,NULL),('F031','Iglesia de Albandi',NULL,'A001',NULL,NULL,NULL),('F033','Paisaje de Candás',NULL,'A001',NULL,NULL,NULL),('F034','Paisaje con hórreo',NULL,'A001',NULL,NULL,NULL),('F035','Santolaya (Candás)',NULL,'A001',NULL,NULL,NULL),('F036','Paisaje de pueblo',NULL,'A001',NULL,NULL,NULL),('F037','Iglesia de Logrezana',NULL,'A001',NULL,NULL,NULL),('F038','Iglesia de Albandi',NULL,'A001',NULL,NULL,NULL),('F039','Paisaje del Regueral',NULL,'A001',NULL,NULL,NULL),('F040','Ermita de San Antonio (Candás)',NULL,'A001',NULL,NULL,NULL),('F041','Capilla del Carmen (Luanco)',NULL,'A001',NULL,NULL,NULL),('F042','Paseo marítimo Candás','1936','A001','T003','M003','K002'),('F043','Candás','1928','A001','T004','M004','K002'),('F044','Ermita de San Roque (Candás)',NULL,'A001',NULL,NULL,NULL),('F045','Muro',NULL,'A002',NULL,NULL,NULL),('F046','Hacia el mar',NULL,'A003',NULL,NULL,NULL),('F058','Candás',NULL,'A001',NULL,NULL,NULL),('F060','Muelle de Candás','1935','A001','T002','M003','K002'),('F061','Iglesia de Piedeloro',NULL,'A001',NULL,NULL,NULL),('F062','Iglesia',NULL,'A001',NULL,NULL,NULL),('F066','Ascensión',NULL,'A001',NULL,NULL,NULL),('F072','Niño en una silla',NULL,'A001',NULL,NULL,NULL),('F073','Santolaya (Candás)',NULL,'A001',NULL,NULL,NULL),('F074','Abside',NULL,'A001',NULL,NULL,NULL),('F075','Candás',NULL,'A001',NULL,NULL,NULL),('F076','Perán',NULL,'A001',NULL,NULL,NULL),('F078','Retrato de Lola',NULL,'A001',NULL,NULL,NULL),('F079','Ermita de San Roque',NULL,'A001',NULL,NULL,NULL),('F080','Niña leyendo',NULL,'A001',NULL,NULL,NULL),('F081','Retrato de Quirina',NULL,'A001',NULL,NULL,NULL),('F082','Pintor sobre rocas',NULL,'A001',NULL,NULL,NULL),('F083','Hórreo y casa de Fuxa (Candás)',NULL,'A001',NULL,NULL,NULL),('F084','Paisaje de pueblo',NULL,'A001',NULL,NULL,NULL),('F086','Maternidad y aldeana',NULL,'A001',NULL,NULL,NULL),('F089','Vendedor de periódicos',NULL,'A001',NULL,NULL,NULL),('F096','Retrato de Concha',NULL,'A001',NULL,NULL,NULL),('F099','Retrato de María Prendes',NULL,'A001',NULL,NULL,NULL),('F100','Iglesia',NULL,'A001',NULL,NULL,NULL),('F141','Paisaje',NULL,'A001',NULL,NULL,NULL),('F145','Retrato de Evaristo Rodriguez',NULL,'A001',NULL,NULL,NULL),('F146','Retrato de Puro',NULL,'A001',NULL,NULL,NULL),('F147','Retrato de Juaco Tasita',NULL,'A001',NULL,NULL,NULL),('F148','Retrato de El Chinto',NULL,'A001',NULL,NULL,NULL),('F149','Retrato de Segismundo Garcia',NULL,'A001',NULL,NULL,NULL),('F150','Retrato de Jesús García',NULL,'A001',NULL,NULL,NULL),('F151','Retrato de Carlos Prendes',NULL,'A001',NULL,NULL,NULL),('F152','Retrato de Ramón Castro',NULL,'A001',NULL,NULL,NULL),('F153','Retrato de Constante Gonzalez',NULL,'A001',NULL,NULL,NULL),('F154','Retrato de Jesús García Prendes',NULL,'A001',NULL,NULL,NULL),('F155','Retrato de Raimundo González',NULL,'A001',NULL,NULL,NULL),('F156','Retrato de Braulio Braña',NULL,'A001',NULL,NULL,NULL),('F157','Retrato de Jesús Aja',NULL,'A001',NULL,NULL,NULL),('F158','Retrato de Alvaro Rodriguez',NULL,'A001',NULL,NULL,NULL),('F159','Retrato de José Gonzalez',NULL,'A001',NULL,NULL,NULL),('F160','Retrato de Victorio Rodriguez Garcia',NULL,'A001',NULL,NULL,NULL),('F165','Retrato de Padre Domitilio',NULL,'A001',NULL,NULL,NULL),('F169','Paisaje de Candás',NULL,'A001',NULL,NULL,NULL),('F170','Eugenia de Montijo','1936','A001','T006','M004','K003'),('F171','Retrato de Príncipe Luis Napoleón','1936','A001','T006','M004','K003'),('F172','Caricatura de José Francés',NULL,'A001',NULL,NULL,NULL),('F173','Retrato de Concha',NULL,'A001',NULL,NULL,NULL),('F174','Retrato de la madre del artista',NULL,'A001',NULL,NULL,NULL),('F175','Retrato de Benita',NULL,'A001',NULL,NULL,NULL),('F176','Retrato de Josefa',NULL,'A001',NULL,NULL,NULL),('F200','Boceto monumento Hombre Bueno',NULL,'A001',NULL,NULL,NULL),('F204','Niña cosiendo',NULL,'A001',NULL,NULL,NULL),('F246','Retrato de hombre',NULL,'A001',NULL,NULL,NULL),('F248','Barcas pesqueras',NULL,'A001',NULL,NULL,NULL),('F249','Capilla de San Roque',NULL,'A001',NULL,NULL,NULL),('F250','Panera de Carretilla',NULL,'A001',NULL,NULL,NULL),('F251','Candás','1928','A001','T001','M003',NULL),('F252','Retrato de Goya',NULL,'A001',NULL,NULL,NULL),('F253','La promesa','1928','A001','T001','M005','K002'),('F254','Ruta pintoresca La Formiga','1928','A001','T001','M009','K002'),('F255','Gallega',NULL,'A001',NULL,NULL,NULL),('F256','Mi hermana Concha',NULL,'A001',NULL,NULL,NULL),('F257','Luanco',NULL,'A001',NULL,NULL,NULL),('F258','Alfonso Albo','1930','A001','T001','M005','K002'),('F259','Torrexón de Illavio (Carreño)',NULL,'A001',NULL,NULL,NULL),('F260','Graciela con mantilla',NULL,'A001',NULL,NULL,NULL),('F264','Retrato de Concha',NULL,'A001',NULL,NULL,NULL),('F265','Playa de la Arena',NULL,'A001',NULL,NULL,NULL),('F266','Vistas de San Antonio',NULL,'A001',NULL,NULL,'K002'),('F276','Colegiala',NULL,'A001',NULL,NULL,NULL),('F277','Al Hombre Bueno',NULL,'A001',NULL,NULL,NULL),('F278','Marinera','1933','A001',NULL,'M006','K001'),('F279','Maruja','1934','A001',NULL,'M010','K001'),('F280','Mi Güela','1932','A001',NULL,'M006','K001'),('F281','Rapacina','1932','A001',NULL,'M006','K001'),('F302','Retrato de mujer',NULL,'A001',NULL,NULL,NULL),('F306','Cabeza',NULL,'A001',NULL,NULL,NULL),('F309','Concha pensando',NULL,'A001',NULL,NULL,NULL),('F311','Maruxa','1932','A001',NULL,'M010','K001'),('F312','Jesús Aja',NULL,'A001',NULL,NULL,NULL),('F313','Maria Jesús Aja',NULL,'A001',NULL,NULL,NULL),('F315','Maruja','1936','A001',NULL,'M002','K001'),('F316','La Señá Isabel','1932','A001',NULL,'M002','K001'),('F317','Fin de la romería','1932','A001',NULL,'M002','K001'),('F318','Arrapiezo dormido','1930','A001',NULL,'M002','K001'),('F319','Oscarín','1929','A001',NULL,'M002','K001'),('F320','Isidorina','1930','A001',NULL,'M002','K001'),('F322','Diana Cazadora','1930','A001',NULL,'M002',NULL),('F323','Cuca Aja','1935','A001',NULL,'M002','K001'),('F325','Lola','1930','A001',NULL,'M002','K001'),('F326','Primavera','1930','A001',NULL,'M002','K001'),('F327','Asturiana','1932','A001',NULL,'M002','K001'),('F328','Niña del gato','1931','A001',NULL,'M002','K001'),('F329','Pensativa','1930','A001',NULL,'M002','K001'),('F330','Mari','1930','A001',NULL,'M002','K001'),('F331','Retrato de Goya',NULL,'A001',NULL,NULL,NULL),('F332','La milagrosa','1935','A001',NULL,'M002','K001'),('F333','Retrato de Alfonso Albo','1930','A001',NULL,'M002','K001'),('F336','Evaristo Valle','1930','A001',NULL,'M002','K001'),('F337','Oscar desnudo','1929','A001',NULL,'M002','K001'),('F338','Retrato de Carlos Albo',NULL,'A001',NULL,NULL,NULL),('F340','Retrato de José Gonzalez Longoria',NULL,'A001',NULL,NULL,NULL),('F342','Manolo','1930','A001',NULL,'M002','K001'),('F343','Emilia de Miguel','1930','A001','T007','M011','K001'),('F346','Trilobite','2001','A004 - A030',NULL,'M015','K001'),('F347','Árbol','1999','A005',NULL,'M021','K001'),('F348','Lluvia','1999','A005',NULL,'M021','K001'),('F349','Montaña','1999','A005',NULL,'M021','K001'),('F350','Viento','1999','A005',NULL,'M021','K001'),('F351','Mar','1999','A005',NULL,'M021','K001'),('F352','Al Hombre Bueno','1932','A001',NULL,'M002','K001'),('F356','Sin título','1994','A006','T010','M002','K001'),('F357','Little Box','1991','A007','T009','M012','K001'),('F360','Blacanal Serviados',NULL,'A008',NULL,NULL,NULL),('F362','El Chato','1997','A009',NULL,'M001','K001'),('F363','Cubo vacío','1994','A010',NULL,'M013','K001'),('F399','Arca','1928-1930','A001',NULL,'M006','K004'),('F402','Arqueta','1928-1930','A001',NULL,'M006','K004'),('F404','Arqueta',NULL,'A001',NULL,NULL,NULL),('F407','Músico',NULL,'A012',NULL,NULL,NULL),('F408','Sin título',NULL,'A008',NULL,NULL,NULL),('F409','Sin título',NULL,'A008',NULL,NULL,NULL),('F410','Sin título','2002','A013',NULL,'M010','K001'),('F411','Hacia-aicah',NULL,'A014',NULL,NULL,NULL),('F422','Sin título',NULL,'A015',NULL,NULL,NULL),('F423','Arquitectura roja',NULL,'A016',NULL,NULL,NULL),('F443','Oda a los marineros','2005','A017',NULL,'M015','K001'),('F444','Muro','2006','A018',NULL,'M012','K001'),('F445','El hombre del siglo XXI',NULL,'A019',NULL,NULL,NULL),('F446','Paisaje nocturno',NULL,'A020',NULL,NULL,NULL),('F447','Obelisco','2006','A021',NULL,'M014','K001'),('F448','Madre jugando con niño',NULL,'A022',NULL,NULL,NULL),('F449','Del limo','2008','A023',NULL,'M019','K001'),('F450','El cabañu','2009','A024',NULL,'M006','K001'),('F451','Naturalezas construidas','2009','A025',NULL,'M015','K001'),('F454','La serenissima en verde',NULL,'A026',NULL,NULL,NULL),('F455','Mujer con pez','1996-1997','A009',NULL,'M001','K001'),('F456','Benavente','1930','A001',NULL,'M002','K001'),('F457','Pasando hojas','1934-1935','A001',NULL,'M002','K001'),('F458','Grupa valenciana','1933','A001','T001','M007','K002'),('F459','Trinidad Cortina Caballero','1932','A001','T001','M008','K002'),('F460','Cómoda','1928-1930','A001',NULL,'M006','K004'),('F461','José Fernandez','1932','A001',NULL,'M002','K001'),('F462','Rapacina','1932','A001',NULL,'M011','K001'),('F463','Antroxu','1936','A001',NULL,'M002','K001'),('F464','La guaxa','1933','A001',NULL,'M002','K001'),('F465','Fin de la romería','1929','A001','T008',NULL,'K003'),('F466','Antón en su estudio','1932','A001',NULL,NULL,'K005'),('F467','Construcción ','1990','A027','T009','M012','K001'),('F468','Estructura extensible','1997','A028',NULL,'M014','K001'),('F469','Encuentro en tres','1985','A027','T009','M012','K001'),('F470','Damocles','1990','A029','T009','M012','K001'),('F471','Explosión de vacío','2010','A031',NULL,'M020','K001');
/*!40000 ALTER TABLE `artworks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `artbot`.`authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `artbot`.`authors` (
  `author_id` varchar(45) NOT NULL,
  `author_name` varchar(45) NOT NULL,
  `author_birth_year` varchar(45) DEFAULT NULL,
  `author_death_year` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `artbot`.`authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `artbot`.`authors` VALUES ('A001','Antonio Rodriguez Garcia','1911','1937'),('A002','Antonio Soriano',NULL,NULL),('A003','Covadonga Valdés Moré',NULL,NULL),('A004','Antonio Sobrino','1970',NULL),('A005','Tadanori Yamaguchi','1970',NULL),('A006','Amancio Gonzalez','1965',NULL),('A007','Bodo Rau','1956',NULL),('A008','Pablo Maojo','1961',NULL),('A009','Javier del Rio','1952','2004'),('A010','Amador Rodriguez','1926','2001'),('A012','Carlos Eliseo',NULL,NULL),('A013','Sylvain Marc','1948',NULL),('A014','Adolfo Pico',NULL,NULL),('A015','Xana Kahle',NULL,NULL),('A016','Jesús Castañón',NULL,NULL),('A017','Enrique Tirador','1973',NULL),('A018','José de la Riera','1946',NULL),('A019','Avelino Sala',NULL,NULL),('A020','Josefina Junco',NULL,NULL),('A021','Cesar Ripoll Dono','1976',NULL),('A022','Juan Cristóbal',NULL,NULL),('A023','Alicia Jiménez','1977',NULL),('A024','Pablo Armesto','1970',NULL),('A025','Teresa Monforte','1941',NULL),('A026','Carlota Álvarez Bernardo',NULL,NULL),('A027','Joaquín Rubio Camín','1929','2007'),('A028','Alejandro Corominas',NULL,NULL),('A029','Jose Luis Sánchez','1926',NULL),('A030','Mercedes Cano','1971',NULL),('A031','Jose Ángel Merino','1951',NULL);
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materials`
--

DROP TABLE IF EXISTS `artbot`.`materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `artbot`.`materials` (
  `material_id` varchar(45) NOT NULL,
  `material_name` varchar(45) NOT NULL,
  `material_description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`material_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materials`
--

LOCK TABLES `artbot`.`materials` WRITE;
/*!40000 ALTER TABLE `materials` DISABLE KEYS */;
INSERT INTO `artbot`.`materials` VALUES ('M001','Sandstone stone',NULL),('M002','Bronze',NULL),('M003','Cardboard',NULL),('M004','Paper',NULL),('M005','Canvas',NULL),('M006','Wood',NULL),('M007','Cloth',NULL),('M008','Table',NULL),('M009','Brass',NULL),('M010','Marble',NULL),('M011','Plaster',NULL),('M012','Steel',NULL),('M013','Concrete',NULL),('M014','Stainless steel',NULL),('M015','Iron',NULL),('M016','Copper',NULL),('M017','Fiberglass',NULL),('M018','Resin',NULL),('M019','Copper, fiberglass, resin',NULL),('M020','Aluminum',NULL),('M021','Granite',NULL);
/*!40000 ALTER TABLE `materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `techniques`
--

DROP TABLE IF EXISTS `artbot`.`techniques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `artbot`.`techniques` (
  `technique_id` varchar(45) NOT NULL,
  `technique_name` varchar(45) NOT NULL,
  `technique_description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`technique_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `techniques`
--

LOCK TABLES `artbot`.`techniques` WRITE;
/*!40000 ALTER TABLE `techniques` DISABLE KEYS */;
INSERT INTO `artbot`.`techniques` VALUES ('T001','Oil',NULL),('T002','Watercolor',NULL),('T003','Gouache',NULL),('T004','Gouache and pencil',NULL),('T005','Sculpture',NULL),('T006','Pencil',NULL),('T007','Patinated',NULL),('T008','Watercolor and pencil',NULL),('T009','Rolled',NULL),('T010','Molten',NULL);
/*!40000 ALTER TABLE `techniques` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-21 11:45:17
