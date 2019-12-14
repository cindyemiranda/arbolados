CREATE DATABASE  IF NOT EXISTS `mi_arbol` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mi_arbol`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: mi_arbol
-- ------------------------------------------------------
-- Server version	5.6.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_anuncios`
--

DROP TABLE IF EXISTS `tb_anuncios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_anuncios` (
  `id_anuncio` int(11) NOT NULL,
  `id_organizacion` int(11) DEFAULT NULL,
  `id_pais` int(11) DEFAULT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  `id_municipio` int(11) DEFAULT NULL,
  `tipo_anuncio` varchar(45) DEFAULT NULL,
  `texto` varchar(201) DEFAULT NULL,
  `vigencia_desde` datetime DEFAULT NULL,
  `vigencia_hasta` datetime DEFAULT NULL,
  `str_vigencia_desde` varchar(50) DEFAULT NULL,
  `str_vigencia_hasta` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_anuncio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla que contiene los anuncios generados por los administradores en la aplicación';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_anuncios`
--

LOCK TABLES `tb_anuncios` WRITE;
/*!40000 ALTER TABLE `tb_anuncios` DISABLE KEYS */;
INSERT INTO `tb_anuncios` VALUES (0,0,0,0,0,'0','prueba','2019-10-10 08:00:00','2019-10-10 08:00:00',NULL,NULL),(2,1,1,11,498,'warning','hdsjhdjhsdhjhshd','2019-01-01 01:00:00','2020-01-01 01:00:00','2019-01-01T01:00','2020-01-01T01:00'),(4,1,1,11,498,'info','Texto de información de prueba para medir el numero de caracteres  que se nuestra en un anuncio de información, todavia no se acaban los caracteres de la caja de información, añadir más caracteres :) ','2019-01-02 01:00:00','2020-01-01 01:00:00','2019-01-02T01:00','2020-01-01T01:00'),(5,1,1,11,498,'danger','Creo que es importante permitir que el anuncio se elimine, o que por lo menos muestre la fecha de vigencia de los mismos.','2020-01-01 00:00:00','2021-01-01 01:00:00','2020-01-01T13:00','2021-01-01T01:00'),(6,1,1,11,498,'success','Anuncio de procedimiento exitoso corregido','2019-01-01 01:00:00','2021-01-01 01:00:00','2019-01-01T01:00','2021-01-01T01:00'),(7,2,1,11,499,'success','Corrijo el anuncio de éxito para la plataforma juvenil facatativeña desde el modulo de administrador','2020-01-01 01:00:00','2020-01-01 01:01:00','2020-01-01T01:00','2020-01-01T01:01'),(8,2,1,11,499,'info','Aviso de prueba','2019-12-01 01:00:00','2019-12-31 01:00:00','2019-12-01T01:00','2019-12-31T01:00');
/*!40000 ALTER TABLE `tb_anuncios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_arbol`
--

DROP TABLE IF EXISTS `tb_arbol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_arbol` (
  `id_arbol` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `nombre` varchar(500) DEFAULT NULL,
  `nombre_cientifico` varchar(500) DEFAULT NULL,
  `latitud` varchar(100) DEFAULT NULL,
  `longitud` varchar(100) DEFAULT NULL,
  `fecha_sembrado` date DEFAULT NULL,
  `vigente` varchar(45) DEFAULT NULL,
  `motivo_baja` varchar(500) DEFAULT NULL,
  `fecha_baja` date DEFAULT NULL,
  PRIMARY KEY (`id_arbol`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='Tabla que contiene la ubicación de los árboles por usuario.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_arbol`
--

LOCK TABLES `tb_arbol` WRITE;
/*!40000 ALTER TABLE `tb_arbol` DISABLE KEYS */;
INSERT INTO `tb_arbol` VALUES (1,9,'caucho',NULL,'4.849170559281652','-74.2677927017212','2019-08-03','verdadero',NULL,NULL),(2,9,'',NULL,'4.867574862399695','-74.24334950643119','2019-08-07','falso','Se cayó por vientos','2019-09-01'),(3,9,'Caucho',NULL,'4.852551400611945','-74.26058426499368','2019-08-08','falso','El lugar en el que se sembró el árbol no era el adecuado','2019-09-07'),(4,9,'Caucho',NULL,'4.849065793149535','-74.27492821284542','2019-08-27','verdadero',NULL,NULL),(5,9,'Cedro',NULL,'4.850068555151754','-74.26483154296876','2019-08-08','verdadero',NULL,NULL),(6,9,'Eucalipto',NULL,'4.8509252','-74.2616589','2019-08-09','verdadero',NULL,NULL),(7,9,'Sauce',NULL,'4.8521264578493835','-74.2591828107834','2019-08-09','verdadero',NULL,NULL),(8,10,'Cedro','Cedro','4.851597283469157','-74.26425755023958','2019-08-18','verdadero',NULL,NULL),(9,9,'araucaria','Araucaria heterophylla','4.854002618217709','-74.2594692743586','2019-08-20','verdadero',NULL,NULL),(10,9,'Acacia','Acacia Dealbata','4.85339961496448','-74.25915230065586','2019-08-20','verdadero',NULL,NULL),(11,9,'Aguacatillo','Persea ruizii','4.851511760298059','-74.26429510116579','2019-08-21','verdadero',NULL,NULL),(12,10,'Arrayán','Myrcianthes leucoxyla','4.848113875856286','-74.25905607640745','2019-08-20','verdadero',NULL,NULL),(13,9,'Cletra','Clethra fimbriata','4.858268057415856','-74.25929814577104','2019-08-20','verdadero',NULL,NULL),(14,9,'Cajeto de páramo','Citharexylum sulcatum','4.848700180016027','-74.25940275192262','2019-08-20','falso','El arroyo creció y lo arrancó del suelo','2019-09-14'),(15,9,'prueba','prueba','4.84921332101684','-74.25694584846498','2019-08-20','verdadero',NULL,NULL),(16,9,'Naranjo',NULL,'4.851378130321531','-74.26886022090913','2019-08-22','verdadero',NULL,NULL),(17,9,'Acacia',NULL,'4.852570108777718','-74.26228880882265','2019-08-23','verdadero',NULL,NULL),(18,9,'Sauce',NULL,'4.851148286700009','-74.25872683525087','2019-08-23','verdadero',NULL,NULL),(19,9,'Sauce',NULL,'4.849694390350992','-74.25910234451295','2019-08-23','falso','Una vaca se rascó con el tronco y lo rompió.','2019-09-14'),(20,9,'Manzano',NULL,'4.85187523370039','-74.25740718841554','2019-08-23','verdadero',NULL,NULL),(21,9,NULL,'durazno','4.8536517799230365','-74.26607636992438','2019-08-23','falso','Este árbol se murió por falta de nutrientes del suelo y posterior uso del suelo en ganadería y construcción de urbanizaciones de interés social..','2019-09-01'),(22,9,'Araucaria','Araucaria','4.853147389067119','-74.26584005355836','2019-08-28','verdadero',NULL,NULL),(23,9,'Aguacatillo','Aguacatillo','4.8528694393598','-74.27221298217775','2019-08-30','verdadero',NULL,NULL),(24,11,'Aguacatillo',NULL,'4.849461721518292','-74.25919190798197','2019-09-09','verdadero',NULL,NULL),(25,1,'Sauco',NULL,'4.851689898134194','-74.27154491428429','2019-09-02','falso','Una vaca lo tumbó','2019-09-16'),(26,1,'Nogal',NULL,'4.849726461627756','-74.2643165588379','2019-11-22','verdadero',NULL,NULL),(27,1,'Pino',NULL,'4.853639145961166','-74.25905942916872','2019-11-22','verdadero',NULL,NULL);
/*!40000 ALTER TABLE `tb_arbol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_departamentos`
--

DROP TABLE IF EXISTS `tb_departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_departamentos` (
  `id_departamento` int(11) NOT NULL,
  `id_pais` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `codigo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_departamento`),
  KEY `id_departamento_pais_idx` (`id_pais`),
  CONSTRAINT `id_departamento_pais` FOREIGN KEY (`id_pais`) REFERENCES `tb_pais` (`id_pais`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla de los departamentos o estados de un país determinado';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_departamentos`
--

LOCK TABLES `tb_departamentos` WRITE;
/*!40000 ALTER TABLE `tb_departamentos` DISABLE KEYS */;
INSERT INTO `tb_departamentos` VALUES (1,1,'Antioquia',5),(2,1,'Atlantico',8),(3,1,'D. C. Santa Fe de Bogotá',11),(4,1,'Bolivar',13),(5,1,'Boyaca',15),(6,1,'Caldas',17),(7,1,'Caqueta',18),(8,1,'Cauca',19),(9,1,'Cesar',20),(10,1,'Cordova',23),(11,1,'Cundinamarca',25),(12,1,'Choco',27),(13,1,'Huila',41),(14,1,'La Guajira',44),(15,1,'Magdalena',47),(16,1,'Meta',50),(17,1,'Nariño',52),(18,1,'Norte de Santander',54),(19,1,'Quindio',63),(20,1,'Risaralda',66),(21,1,'Santander',68),(22,1,'Sucre',70),(23,1,'Tolima',73),(24,1,'Valle',76),(25,1,'Arauca',81),(26,1,'Casanare',85),(27,1,'Putumayo',86),(28,1,'San Andres',88),(29,1,'Amazonas',91),(30,1,'Guainia',94),(31,1,'Guaviare',95),(32,1,'Vaupes',97),(33,1,'Vichada',99);
/*!40000 ALTER TABLE `tb_departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_energia`
--

DROP TABLE IF EXISTS `tb_energia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_energia` (
  `id_etiqueta_energia` int(11) NOT NULL,
  `id_energia` int(11) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `idioma` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_etiqueta_energia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla que contiene los tipos de energía que se utilizan para calcular las emisiones de carbono en la aplicacion';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_energia`
--

LOCK TABLES `tb_energia` WRITE;
/*!40000 ALTER TABLE `tb_energia` DISABLE KEYS */;
INSERT INTO `tb_energia` VALUES (1,1,'Electricidad','español'),(2,1,'Electricity','english'),(3,2,'Gas natural','español'),(4,2,'Natural gas ','english'),(5,3,'Gas licuado del petroleo','español'),(6,3,'Liquified petrol gas','english'),(7,4,'Gasolina','español'),(8,4,'Gasoline','english'),(9,5,'Keroseno','español'),(10,5,'Kerosene','english'),(11,6,'Carbón','español'),(12,6,'Charcoal','english'),(13,7,'Leña','español'),(14,7,'Firewood','english'),(15,8,'Madera','español'),(16,8,'Wood','english'),(17,9,'Petrodiesel','español'),(18,9,'Petrodiesel','english'),(19,10,'Gasoleo','español'),(20,10,'Gasoil','english'),(21,11,'Gas natural vehicular','español'),(22,11,'Natural Gas Vehicular','english'),(35,18,'Total','español'),(36,18,'Total','english'),(37,12,'Meat consumption','english'),(38,12,'Consumo de carne','español'),(39,13,'Total','english'),(40,13,'Total ','español');
/*!40000 ALTER TABLE `tb_energia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_factor_emision`
--

DROP TABLE IF EXISTS `tb_factor_emision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_factor_emision` (
  `id_factor_emision` int(11) NOT NULL,
  `id_pais` int(11) DEFAULT NULL,
  `id_energia` int(11) DEFAULT NULL COMMENT 'id_energia contiene el id de energia que se emplea para usar en la calculadora',
  `factor_emision` decimal(8,5) DEFAULT NULL,
  `referencia` varchar(500) DEFAULT NULL,
  `anio_referencia` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_factor_emision`),
  KEY `id_f_emision_pais_idx` (`id_pais`),
  CONSTRAINT `id_f_emision_pais` FOREIGN KEY (`id_pais`) REFERENCES `tb_pais` (`id_pais`) ON DELETE NO ACTION ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla que almacena el factor de emisión de cada energía o combustible ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_factor_emision`
--

LOCK TABLES `tb_factor_emision` WRITE;
/*!40000 ALTER TABLE `tb_factor_emision` DISABLE KEYS */;
INSERT INTO `tb_factor_emision` VALUES (1,1,1,0.19900,'www.upme.gov.co/Calculadora_Emisiones/aplicacion/calculadora.html',2015),(2,1,2,1.86000,'Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4',2015),(3,1,3,7.11000,'Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4',2015),(4,1,4,2.34840,'Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4',2015),(5,1,5,2.64170,'Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4',2015),(6,1,6,2.45000,'Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4',2015),(7,1,7,1.84000,'Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4',2015),(8,1,8,1.15000,'Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4',2015),(9,1,9,2.76060,'Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4;;',2015),(10,1,10,2.74475,'Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4',2015),(11,1,11,2.09000,'Corpoica',2018),(12,1,12,7.19000,'https://www.nationalgeographic.com.es/ciencia/consumo-de-carne-y-huella-ecologica_8975',2018),(13,1,13,5.63000,'https://www.nationalgeographic.com.es/ciencia/consumo-de-carne-y-huella-ecologica_8975',2018),(14,1,14,4.67000,'https://www.nationalgeographic.com.es/ciencia/consumo-de-carne-y-huella-ecologica_8975',2018),(15,1,15,3.91000,'https://www.nationalgeographic.com.es/ciencia/consumo-de-carne-y-huella-ecologica_8975',2018),(16,1,16,3.81000,'https://www.nationalgeographic.com.es/ciencia/consumo-de-carne-y-huella-ecologica_8975',2018),(17,1,17,2.89000,'https://www.nationalgeographic.com.es/ciencia/consumo-de-carne-y-huella-ecologica_8975',2018);
/*!40000 ALTER TABLE `tb_factor_emision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_lengua`
--

DROP TABLE IF EXISTS `tb_lengua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_lengua` (
  `id_etiqueta` int(11) NOT NULL,
  `id_componente` varchar(200) DEFAULT NULL,
  `valor` text,
  `id_pagina` varchar(200) DEFAULT NULL,
  `idioma` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_etiqueta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla que contiene las etiquetas en ingles y español de los elementos presentes en las páginas de la aplicacion';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_lengua`
--

LOCK TABLES `tb_lengua` WRITE;
/*!40000 ALTER TABLE `tb_lengua` DISABLE KEYS */;
INSERT INTO `tb_lengua` VALUES (1,'l_username','Username','index.zul','english'),(2,'l_password','Password','index.zul','english'),(3,'b_login','Log In','index.zul','english'),(4,'l_username','Nombre de Usuario','index.zul','español'),(5,'l_password','Contraseña','index.zul','español'),(6,'b_login','Ingresar','index.zul','español'),(7,'win_log_in','Ingresar','index.zul','español'),(8,'win_log_in','Log in','index.zul','english'),(9,'b_registrarse','Registrate','index.zul','español'),(10,'b_registrarse','Sign in','index.zul','english'),(11,'l_email','Correo Electronico','registrate.zul','español'),(12,'l_username','Nombre de usuario','registrate.zul','español'),(13,'l_password','Contraseña','registrate.zul','español'),(14,'l_repeat_password','Repetir contraseña','registrate.zul','español'),(15,'l_sexo','Sexo','registrate.zul','español'),(16,'ci_hombre','Hombre','registrate.zul','español'),(17,'ci_mujer','Mujer','registrate.zul','español'),(18,'l_nivel_escolar','Nivel escolar','registrate.zul','español'),(19,'ci_bachillerato','Bachillerato','registrate.zul','español'),(20,'ci_tecnico','Tecnico, tecnologo','registrate.zul','español'),(21,'ci_profesional','Profesional','registrate.zul','español'),(22,'ci_master','Master','registrate.zul','español'),(23,'ci_doctorado','Doctorado','registrate.zul','español'),(24,'l_fecha_nacimiento','Fecha de Nacimiento','registrate.zul','español'),(25,'b_registrarse','Registrarse','registrate.zul','español'),(26,'win_register','Registrarse','registrate.zul','español'),(27,'win_register','Sign in','registrate.zul','english'),(28,'l_email','Email','registrate.zul','english'),(29,'l_username','Username','registrate.zul','english'),(30,'l_password','Password','registrate.zul','english'),(31,'l_repeat_password','Repeat password','registrate.zul','english'),(32,'l_sexo','Sex','registrate.zul','english'),(33,'ci_hombre','Male','registrate.zul','english'),(34,'ci_mujer','Female','registrate.zul','english'),(35,'l_nivel_escolar','Schooling level','registrate.zul','english'),(36,'ci_bachillerato','High school','registrate.zul','english'),(37,'ci_tecnico','Technical, Technological','registrate.zul','english'),(38,'ci_profesional','Bachelor','registrate.zul','english'),(39,'ci_master','Master','registrate.zul','english'),(40,'ci_doctorado','Doctorate','registrate.zul','english'),(41,'l_fecha_nacimiento','Birth date','registrate.zul','english'),(42,'b_registrarse','Sign in','registrate.zul','english'),(43,'l_captcha','Escriba los caracteres que se ven en la imagen','registrate.zul','español'),(44,'l_captcha','Write the caracteres shown in the image','registrate.zul','english'),(47,'win_main','Principal','main.zul','español'),(48,'win_main','Main','main.zul','english'),(49,'p_ultimo_resultado','Última actualización de datos','main.zul','español'),(50,'p_ultimo_resultado','Last data actualization','main.zul','english'),(51,'p_mi_progreso','Mi progeso','main.zul','español'),(52,'p_mi_progreso','My progress','main.zul','english'),(53,'l_idioma','Idioma','registrate.zul','español'),(54,'l_idioma','Language','registrate.zul','english'),(55,'ci_espaniol','Español','registrate.zul','español'),(56,'ci_espaniol','Spanish','registrate.zul','english'),(57,'ci_ingles','Inglés','registrate.zul','español'),(58,'ci_ingles','English','registrate.zul','english'),(59,'l_hola','Hola,','main.zul','español'),(60,'l_hola','Hi,','main.zul','english'),(61,'win_calculadora_huella','Calculadora de mi huella','calculadora_huella.zul','español'),(62,'win_calculadora_huella','My footprint calculator','calculadora_huella.zul','english'),(63,'tab_1','Introducción','calculadora_huella.zul','español'),(64,'tab_1','Introduction','calculadora_huella.zul','english'),(65,'tab_2','Consumo eléctrico','calculadora_huella.zul','español'),(66,'tab_2','Electric consumption','calculadora_huella.zul','english'),(67,'l_numero_miembros','¿Cuantas personas viven en su casa?','calculadora_huella.zul','español'),(68,'l_numero_miembros','How many people live in your house?','calculadora_huella.zul','english'),(69,'b_siguiente','Siguiente','calculadora_huella.zul','español'),(70,'b_siguiente','Next','calculadora_huella.zul','english'),(71,'l_generacion_co2_electricidad','Cantidad de emisiones de GEI por producción eléctrica en Colombia: ','calculadora_huella.zul','español'),(72,'l_generacion_co2_electricidad','Quantity of GHG emissions from electricity production in Colombia: ','calculadora_huella.zul','english'),(73,'l_tomado_de','Tomado de: ','calculadora_huella.zul','español'),(74,'l_tomado_de','Taken from: ','calculadora_huella.zul','english'),(75,'l_anio_referencia','Año de referencia: ','calculadora_huella.zul','español'),(76,'l_anio_referencia','Year of reference: ','calculadora_huella.zul','english'),(77,'l_consumo_electrico_mensual','¿Cuánto fue su consumo de energía eléctrica el último mes?','calculadora_huella.zul','español'),(78,'l_consumo_electrico_mensual','How much was your electric consumption the last month?','calculadora_huella.zul','english'),(79,'b_siguiente1','Siguiente','calculadora_huella.zul','español'),(80,'b_siguiente1','Next','calculadora_huella.zul','english'),(81,'b_anterior','Anterior','calculadora_huella.zul','español'),(82,'b_anterior','Back','calculadora_huella.zul','english'),(83,'tab_3','Otras energías','calculadora_huella.zul','español'),(84,'tab_3','Other energies','calculadora_huella.zul','english'),(85,'l_consumo_gas_mensual','Seleccione el tipo de combustible o energía que utiliza en su hogar para preparar sus alimentos, calentarse y demás y diligencie la cantidad consumida por mes:','calculadora_huella.zul','español'),(86,'l_consumo_gas_mensual','Select the type of fuel or energy that you use in your home to prepare your food, for heating the enviroment and so on, and fill in the amount consumed per month:','calculadora_huella.zul','english'),(87,'lhdr_tipo_combustible','Type of fuel','calculadora_huella.zul','english'),(88,'lhdr_tipo_combustible','Tipo de combustible','calculadora_huella.zul','español'),(89,'lhdr_cantidad','Cantidad','calculadora_huella.zul','español'),(90,'lhdr_cantidad','Quantity','calculadora_huella.zul','english'),(91,'lc_gas_natural','Gas natural:','calculadora_huella.zul','español'),(92,'lc_gas_natural','Natural gas:','calculadora_huella.zul','english'),(93,'lc_glp','Gas licuado del petroleo','calculadora_huella.zul','español'),(94,'lc_glp','Liquified Petrol Gas:','calculadora_huella.zul','english'),(97,'lc_gasolina','Gasolina:','calculadora_huella.zul','español'),(98,'lc_gasolina','Gasoline:','calculadora_huella.zul','english'),(99,'lc_kerosene','Keroseno:','calculadora_huella.zul','español'),(100,'lc_kerosene','Kerosene:','calculadora_huella.zul','english'),(101,'lc_carbon','Carbón:','calculadora_huella.zul','español'),(102,'lc_carbon','Charcoal:','calculadora_huella.zul','english'),(103,'lc_lena','Leña:','calculadora_huella.zul','español'),(104,'lc_lena','Firewood:','calculadora_huella.zul','english'),(105,'lc_madera','Madera:','calculadora_huella.zul','español'),(106,'lc_madera','Wood:','calculadora_huella.zul','english'),(107,'l_pais','Pais','registrate.zul','español'),(108,'l_pais','Country','registrate.zul','english'),(109,'l_departamento','Departamento/Estado','registrate.zul','español'),(110,'l_departamento','State','registrate.zul','english'),(111,'l_municipio','Municipio/Ciudad','registrate.zul','español'),(112,'l_municipio','City/Town','registrate.zul','english'),(113,'ci_10_lb','Cilindro(s) de 10 libras','calculadora_huella.zul','español'),(114,'ci_10_lb','Cylinder(s) of 10 pounds','calculadora_huella.zul','english'),(115,'ci_20_lb','Cilindro(s) de 20 libras ','calculadora_huella.zul','español'),(116,'ci_20_lb','Cylinder(s) of 20 pounds ','calculadora_huella.zul','english'),(117,'ci_30_lb','Cilindro(s) de 30 libras ','calculadora_huella.zul','español'),(118,'ci_30_lb','Cylinder(s) of 30 pounds','calculadora_huella.zul','english'),(119,'ci_40_lb','Cilindro(s) de 40 libras','calculadora_huella.zul','español'),(120,'ci_40_lb','Cylinder(s) of 40 pounds ','calculadora_huella.zul','english'),(121,'ci_80_lb','Cilindro(s) de 80 libras','calculadora_huella.zul','español'),(122,'ci_80_lb','Cylinder(s) of 80 pounds','calculadora_huella.zul','english'),(123,'ci_100_lb','Cilindro(s) de 100 libras ','calculadora_huella.zul','español'),(124,'ci_100_lb','Cylinder(s) of 100 pounds','calculadora_huella.zul','english'),(125,'lhdr_tipo_combustible_trans','Tipo de combustible','calculadora_huella.zul','español'),(126,'lhdr_tipo_combustible_trans','Fuel type','calculadora_huella.zul','english'),(127,'lhdr_trans','Cantidad/Costro','calculadora_huella.zul','español'),(128,'lhdr_trans','Quantity/Cost','calculadora_huella.zul','english'),(129,'lc_gasolina_trans','Gasolina:','calculadora_huella.zul','español'),(130,'lc_gasolina_trans','Gasoline:','calculadora_huella.zul','english'),(131,'ci_litros_trans','Litros','calculadora_huella.zul','español'),(132,'ci_litros_trans','Liters','calculadora_huella.zul','english'),(133,'ci_costo_trans','Costo $','calculadora_huella.zul','español'),(134,'ci_costo_trans','Cost $','calculadora_huella.zul','english'),(135,'lc_acpm_trans','Petrodiesel:','calculadora_huella.zul','español'),(136,'lc_acpm_trans','Petrodiesel:','calculadora_huella.zul','english'),(137,'lc_gnv_trans','Gas natural vehicular:','calculadora_huella.zul','español'),(138,'lc_diesel_trans','Gasoil:','calculadora_huella.zul','english'),(139,'lc_diesel_trans','Gasóleo:','calculadora_huella.zul','español'),(141,'lc_gnv_trans','Natural gas vehicular:','calculadora_huella.zul','english'),(142,'l_consumo_energia_transporte','Seleccione el tipo de combustible o energía que utiliza para su transporte mensual:','calculadora_huella.zul','español'),(143,'l_consumo_energia_transporte','Select the type of fuel or energy you use for your monthly transportation:','calculadora_huella.zul','english'),(144,'tab_4','Transporte','calculadora_huella.zul','español'),(145,'tab_4','Transportation','calculadora_huella.zul','english'),(156,'cb_compartir_vehiculo','Comparto mi vehiculo con las personas que viven en mi casa','calculadora_huella.zul','español'),(157,'cb_compartir_vehiculo','I share my vehicle with the people living at my house','calculadora_huella.zul','english'),(158,'tab_5','Alimentacion','calculadora_huella.zul','español'),(159,'tab_5','Feeding','calculadora_huella.zul','english'),(163,'l_consumo_alimenticio','Seleccione el consumo de carne diario:','calculadora_huella.zul','español'),(164,'l_consumo_alimenticio','Select your daily meat consumption:','calculadora_huella.zul','english'),(165,'lhdr_escala_alimentacion','Tipo de consumo','calculadora_huella.zul','español'),(166,'lhdr_escala_alimentacion','Consumption type','calculadora_huella.zul','english'),(167,'lc_alta_carne','Alta en carne (+ de 100 gramos diarios)','calculadora_huella.zul','español'),(168,'lc_alta_carne','High (+ 100 grams per day)','calculadora_huella.zul','english'),(169,'lc_moderada_carne','Moderada en carne (50-99 gramos diarios)','calculadora_huella.zul','español'),(170,'lc_moderada_carne','Moderate (50-99 grams daily)','calculadora_huella.zul','english'),(171,'lc_baja_carne','Baja en carne (50 gramos diarios)','calculadora_huella.zul','español'),(172,'lc_baja_carne','Low (50 grams daily)','calculadora_huella.zul','english'),(173,'lc_piscivicora','Piscivora','calculadora_huella.zul','español'),(174,'lc_piscivicora','Piscivorous','calculadora_huella.zul','english'),(175,'lc_vegetariana','Vegetariana','calculadora_huella.zul','español'),(176,'lc_vegetariana','Vegetarian','calculadora_huella.zul','english'),(177,'lc_vegana','Vegana','calculadora_huella.zul','español'),(178,'lc_vegana','Vegan','calculadora_huella.zul','english'),(179,'tab_6','Resumen','calculadora_huella.zul','español'),(180,'tab_6','Summary','calculadora_huella.zul','english'),(181,'b_guardar','Guardar','calculadora_huella.zul','español'),(182,'b_guardar','Save','calculadora_huella.zul','english'),(183,'chart_resumen_title','Resumen','calculadora_huella.zul','español'),(189,'chart_resumen_subtitle','Cantidad de emisiones por consumo mensual de alimentos y energías','calculadira_huella.zul','español'),(190,'chart_resumen_title','Summary','calculadora_huella.zul','english'),(191,'chart_resumen_subtitle','Quantity of emissions for consuming food and energies','calculadora_huella.zul','english');
/*!40000 ALTER TABLE `tb_lengua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_menu`
--

DROP TABLE IF EXISTS `tb_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_menu` (
  `id_item` int(11) NOT NULL,
  `id_menu` int(11) DEFAULT NULL,
  `etiqueta` varchar(100) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `idioma` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla que contiene los items del menú principal';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_menu`
--

LOCK TABLES `tb_menu` WRITE;
/*!40000 ALTER TABLE `tb_menu` DISABLE KEYS */;
INSERT INTO `tb_menu` VALUES (1,0,'Calcular huella','calculadora_huella.zul','español'),(2,0,'Calculate footprint','calculadora_huella.zul','english');
/*!40000 ALTER TABLE `tb_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_municipio`
--

DROP TABLE IF EXISTS `tb_municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_municipio` (
  `id_municipio` int(11) NOT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  `codigo` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `id_pais` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_municipio`),
  KEY `id_municipio_departamento_idx` (`id_departamento`),
  CONSTRAINT `id_municipio_departamento` FOREIGN KEY (`id_departamento`) REFERENCES `tb_departamentos` (`id_departamento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla que contiene los nombres de los municipios o ciudades por departamentos.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_municipio`
--

LOCK TABLES `tb_municipio` WRITE;
/*!40000 ALTER TABLE `tb_municipio` DISABLE KEYS */;
INSERT INTO `tb_municipio` VALUES (1,1,1,'MEDELLIN',1),(2,1,2,'ABEJORRAL',1),(3,1,4,'ABRIAQUI',1),(4,1,21,'ALEJANDRIA',1),(5,1,30,'AMAGA',1),(6,1,31,'AMALFI',1),(7,1,34,'ANDES',1),(8,1,36,'ANGELOPOLIS',1),(9,1,38,'ANGOSTURA',1),(10,1,40,'ANORI',1),(11,1,42,'ANTIOQUIA',1),(12,1,44,'ANZA',1),(13,1,45,'APARTADO',1),(14,1,51,'ARBOLETES',1),(15,1,55,'ARGELIA',1),(16,1,59,'ARMENIA',1),(17,1,79,'BARBOSA',1),(18,1,86,'BELMIRA',1),(19,1,88,'BELLO',1),(20,1,91,'BETANIA',1),(21,1,93,'BETULIA',1),(22,1,101,'BOLIVAR',1),(23,1,107,'BRICEÑO',1),(24,1,113,'BURITICA',1),(25,1,120,'CACERES',1),(26,1,125,'CAICEDO',1),(27,1,129,'CALDAS',1),(28,1,134,'CAMPAMENTO',1),(29,1,138,'CAÑASGORDAS',1),(30,1,142,'CARACOLI',1),(31,1,145,'CARAMANTA',1),(32,1,147,'CAREPA',1),(33,1,148,'CARMEN DE VIBORAL',1),(34,1,150,'CAROLINA',1),(35,1,154,'CAUCASIA',1),(36,1,172,'CHIGORODO',1),(37,1,190,'CISNEROS',1),(38,1,197,'COCORNA',1),(39,1,206,'CONCEPCION',1),(40,1,209,'CONCORDIA',1),(41,1,212,'COPACABANA',1),(42,1,234,'DABEIBA',1),(43,1,237,'DON MATIAS',1),(44,1,240,'EBEJICO',1),(45,1,250,'EL BAGRE',1),(46,1,264,'ENTRERRIOS',1),(47,1,266,'ENVIGADO',1),(48,1,282,'FREDONIA',1),(49,1,284,'FRONTINO',1),(50,1,306,'GIRALDO',1),(51,1,308,'GIRARDOTA',1),(52,1,310,'GOMEZ PLATA',1),(53,1,313,'GRANADA',1),(54,1,315,'GUADALUPE',1),(55,1,318,'GUARNE',1),(56,1,321,'GUATAPE',1),(57,1,347,'HELICONIA',1),(58,1,353,'HISPANIA',1),(59,1,360,'ITAGUI',1),(60,1,361,'ITUANGO',1),(61,1,364,'JARDIN',1),(62,1,368,'JERICO',1),(63,1,376,'LA CEJA',1),(64,1,380,'LA ESTRELLA',1),(65,1,390,'LA PINTADA',1),(66,1,400,'LA UNION',1),(67,1,411,'LIBORINA',1),(68,1,425,'MACEO',1),(69,1,440,'MARINILLA',1),(70,1,467,'MONTEBELLO',1),(71,1,475,'MURINDO',1),(72,1,480,'MUTATA',1),(73,1,483,'NARIÑO',1),(74,1,490,'NECOCLI',1),(75,1,495,'NECHI',1),(76,1,501,'OLAYA',1),(77,1,541,'PEÑOL',1),(78,1,543,'PEQUE',1),(79,1,576,'PUEBLORRICO',1),(80,1,579,'PUERTO BERRIO',1),(81,1,585,'PUERTO NARE (LA MAGDALENA)',1),(82,1,591,'PUERTO TRIUNFO',1),(83,1,604,'REMEDIOS',1),(84,1,607,'RETIRO',1),(85,1,615,'RIONEGRO',1),(86,1,628,'SABANALARGA',1),(87,1,631,'SABANETA',1),(88,1,642,'SALGAR',1),(89,1,647,'SAN ANDRES',1),(90,1,649,'SAN CARLOS',1),(91,1,652,'SAN FRANCISCO',1),(92,1,656,'SAN JERONIMO',1),(93,1,658,'SAN JOSE DE LA MONTAÑA',1),(94,1,659,'SAN JUAN DE URABA',1),(95,1,660,'SAN LUIS',1),(96,1,664,'SAN PEDRO',1),(97,1,665,'SAN PEDRO DE URABA',1),(98,1,667,'SAN RAFAEL',1),(99,1,670,'SAN ROQUE',1),(100,1,674,'SAN VICENTE',1),(101,1,679,'SANTA BARBARA',1),(102,1,686,'SANTA ROSA DE OSOS',1),(103,1,690,'SANTO DOMINGO',1),(104,1,697,'SANTUARIO',1),(105,1,736,'SEGOVIA',1),(106,1,756,'SONSON',1),(107,1,761,'SOPETRAN',1),(108,1,789,'TAMESIS',1),(109,1,790,'TARAZA',1),(110,1,792,'TARSO',1),(111,1,809,'TITIRIBI',1),(112,1,819,'TOLEDO',1),(113,1,837,'TURBO',1),(114,1,842,'URAMITA',1),(115,1,847,'URRAO',1),(116,1,854,'VALDIVIA',1),(117,1,856,'VALPARAISO',1),(118,1,858,'VEGACHI',1),(119,1,861,'VENECIA',1),(120,1,873,'VIGIA DEL FUERTE',1),(121,1,885,'YALI',1),(122,1,887,'YARUMAL',1),(123,1,890,'YOLOMBO',1),(124,1,893,'YONDO',1),(125,1,895,'ZARAGOZA',1),(126,2,1,'BARRANQUILLA (DISTRITO ESPECIAL INDUSTRIAL Y PORTUARIO DE BARRANQUILLA)',1),(127,2,78,'BARANOA',1),(128,2,137,'CAMPO DE LA CRUZ',1),(129,2,141,'CANDELARIA',1),(130,2,296,'GALAPA',1),(131,2,372,'JUAN DE ACOSTA',1),(132,2,421,'LURUACO',1),(133,2,433,'MALAMBO',1),(134,2,436,'MANATI',1),(135,2,520,'PALMAR DE VARELA',1),(136,2,549,'PIOJO',1),(137,2,558,'POLO NUEVO',1),(138,2,560,'PONEDERA',1),(139,2,573,'PUERTO COLOMBIA',1),(140,2,606,'REPELON',1),(141,2,634,'SABANAGRANDE',1),(142,2,638,'SABANALARGA',1),(143,2,675,'SANTA LUCIA',1),(144,2,685,'SANTO TOMAS',1),(145,2,758,'SOLEDAD',1),(146,2,770,'SUAN',1),(147,2,832,'TUBARA',1),(148,2,849,'USIACURI',1),(149,3,1,'Santa Fe de Bogotá',1),(150,3,1,'USAQUEN',1),(151,3,2,'CHAPINERO',1),(152,3,3,'SANTA FE',1),(153,3,4,'SAN CRISTOBAL',1),(154,3,5,'USME',1),(155,3,6,'TUNJUELITO',1),(156,3,7,'BOSA',1),(157,3,8,'KENNEDY',1),(158,3,9,'FONTIBON',1),(159,3,10,'ENGATIVA',1),(160,3,11,'SUBA',1),(161,3,12,'BARRIOS UNIDOS',1),(162,3,13,'TEUSAQUILLO',1),(163,3,14,'MARTIRES',1),(164,3,15,'ANTONIO NARIÑO',1),(165,3,16,'PUENTE ARANDA',1),(166,3,17,'CANDELARIA',1),(167,3,18,'RAFAEL URIBE',1),(168,3,19,'CIUDAD BOLIVAR',1),(169,3,20,'SUMAPAZ',1),(170,4,1,'CARTAGENA (DISTRITO TURISTICO Y CULTURAL DE CARTAGENA)',1),(171,4,6,'ACHI',1),(172,4,30,'ALTOS DEL ROSARIO',1),(173,4,42,'ARENAL',1),(174,4,52,'ARJONA',1),(175,4,62,'ARROYOHONDO',1),(176,4,74,'BARRANCO DE LOBA',1),(177,4,140,'CALAMAR',1),(178,4,160,'CANTAGALLO',1),(179,4,188,'CICUCO',1),(180,4,212,'CORDOBA',1),(181,4,222,'CLEMENCIA',1),(182,4,244,'EL CARMEN DE BOLIVAR',1),(183,4,248,'EL GUAMO',1),(184,4,268,'EL PEÑON',1),(185,4,300,'HATILLO DE LOBA',1),(186,4,430,'MAGANGUE',1),(187,4,433,'MAHATES',1),(188,4,440,'MARGARITA',1),(189,4,442,'MARIA LA BAJA',1),(190,4,458,'MONTECRISTO',1),(191,4,468,'MOMPOS',1),(192,4,473,'MORALES',1),(193,4,549,'PINILLOS',1),(194,4,580,'REGIDOR',1),(195,4,600,'RIO VIEJO',1),(196,4,620,'SAN CRISTOBAL',1),(197,4,647,'SAN ESTANISLAO',1),(198,4,650,'SAN FERNANDO',1),(199,4,654,'SAN JACINTO',1),(200,4,655,'SAN JACINTO DEL CAUCA',1),(201,4,657,'SAN JUAN NEPOMUCENO',1),(202,4,667,'SAN MARTIN DE LOBA',1),(203,4,670,'SAN PABLO',1),(204,4,673,'SANTA CATALINA',1),(205,4,683,'SANTA ROSA',1),(206,4,688,'SANTA ROSA DEL SUR',1),(207,4,744,'SIMITI',1),(208,4,760,'SOPLAVIENTO',1),(209,4,780,'TALAIGUA NUEVO',1),(210,4,810,'TIQUISIO (PUERTO RICO)',1),(211,4,836,'TURBACO',1),(212,4,838,'TURBANA',1),(213,4,873,'VILLANUEVA',1),(214,4,894,'ZAMBRANO',1),(215,5,1,'TUNJA',1),(216,5,22,'ALMEIDA',1),(217,5,47,'AQUITANIA',1),(218,5,51,'ARCABUCO',1),(219,5,87,'BELEN',1),(220,5,90,'BERBEO',1),(221,5,92,'BETEITIVA',1),(222,5,97,'BOAVITA',1),(223,5,104,'BOYACA',1),(224,5,106,'BRICEÑO',1),(225,5,109,'BUENAVISTA',1),(226,5,114,'BUSBANZA',1),(227,5,131,'CALDAS',1),(228,5,135,'CAMPOHERMOSO',1),(229,5,162,'CERINZA',1),(230,5,172,'CHINAVITA',1),(231,5,176,'CHIQUINQUIRA',1),(232,5,180,'CHISCAS',1),(233,5,183,'CHITA',1),(234,5,185,'CHITARAQUE',1),(235,5,187,'CHIVATA',1),(236,5,189,'CIENEGA',1),(237,5,204,'COMBITA',1),(238,5,212,'COPER',1),(239,5,215,'CORRALES',1),(240,5,218,'COVARACHIA',1),(241,5,223,'CUBARA',1),(242,5,224,'CUCAITA',1),(243,5,226,'CUITIVA',1),(244,5,232,'CHIQUIZA',1),(245,5,236,'CHIVOR',1),(246,5,238,'DUITAMA',1),(247,5,244,'EL COCUY',1),(248,5,248,'EL ESPINO',1),(249,5,272,'FIRAVITOBA',1),(250,5,276,'FLORESTA',1),(251,5,293,'GACHANTIVA',1),(252,5,296,'GAMEZA',1),(253,5,299,'GARAGOA',1),(254,5,317,'GUACAMAYAS',1),(255,5,322,'GUATEQUE',1),(256,5,325,'GUAYATA',1),(257,5,332,'GUICAN',1),(258,5,362,'IZA',1),(259,5,367,'JENESANO',1),(260,5,368,'JERICO',1),(261,5,377,'LABRANZAGRANDE',1),(262,5,380,'LA CAPILLA',1),(263,5,401,'LA VICTORIA',1),(264,5,403,'LA UVITA',1),(265,5,407,'VILLA DE LEIVA',1),(266,5,425,'MACANAL',1),(267,5,442,'MARIPI',1),(268,5,455,'MIRAFLORES',1),(269,5,464,'MONGUA',1),(270,5,466,'MONGUI',1),(271,5,469,'MONIQUIRA',1),(272,5,476,'MOTAVITA',1),(273,5,480,'MUZO',1),(274,5,491,'NOBSA',1),(275,5,494,'NUEVO COLON',1),(276,5,500,'OICATA',1),(277,5,507,'OTANCHE',1),(278,5,511,'PACHAVITA',1),(279,5,514,'PAEZ',1),(280,5,516,'PAIPA',1),(281,5,518,'PAJARITO',1),(282,5,522,'PANQUEBA',1),(283,5,531,'PAUNA',1),(284,5,533,'PAYA',1),(285,5,537,'PAZ DEL RIO',1),(286,5,542,'PESCA',1),(287,5,550,'PISBA',1),(288,5,572,'PUERTO BOYACA',1),(289,5,580,'QUIPAMA',1),(290,5,599,'RAMIRIQUI',1),(291,5,600,'RAQUIRA',1),(292,5,621,'RONDON',1),(293,5,632,'SABOYA',1),(294,5,638,'SACHICA',1),(295,5,646,'SAMACA',1),(296,5,660,'SAN EDUARDO',1),(297,5,664,'SAN JOSE DE PARE',1),(298,5,667,'SAN LUIS DE GACENO',1),(299,5,673,'SAN MATEO',1),(300,5,676,'SAN MIGUEL DE SEMA',1),(301,5,681,'SAN PABLO DE BORBUR',1),(302,5,686,'SANTANA',1),(303,5,690,'SANTA MARIA',1),(304,5,693,'SANTA ROSA DE VITERBO',1),(305,5,696,'SANTA SOFIA',1),(306,5,720,'SATIVANORTE',1),(307,5,723,'SATIVASUR',1),(308,5,740,'SIACHOQUE',1),(309,5,753,'SOATA',1),(310,5,755,'SOCOTA',1),(311,5,757,'SOCHA',1),(312,5,759,'SOGAMOSO',1),(313,5,761,'SOMONDOCO',1),(314,5,762,'SORA',1),(315,5,763,'SOTAQUIRA',1),(316,5,764,'SORACA',1),(317,5,774,'SUSACON',1),(318,5,776,'SUTAMARCHAN',1),(319,5,778,'SUTATENZA',1),(320,5,790,'TASCO',1),(321,5,798,'TENZA',1),(322,5,804,'TIBANA',1),(323,5,806,'TIBASOSA',1),(324,5,808,'TINJACA',1),(325,5,810,'TIPACOQUE',1),(326,5,814,'TOCA',1),(327,5,816,'TOGUI',1),(328,5,820,'TOPAGA',1),(329,5,822,'TOTA',1),(330,5,832,'TUNUNGUA',1),(331,5,835,'TURMEQUE',1),(332,5,837,'TUTA',1),(333,5,839,'TUTASA',1),(334,5,842,'UMBITA',1),(335,5,861,'VENTAQUEMADA',1),(336,5,879,'VIRACACHA',1),(337,5,897,'ZETAQUIRA',1),(338,6,1,'MANIZALES',1),(339,6,13,'AGUADAS',1),(340,6,42,'ANSERMA',1),(341,6,50,'ARANZAZU',1),(342,6,88,'BELALCAZAR',1),(343,6,174,'CHINCHINA',1),(344,6,272,'FILADELFIA',1),(345,6,380,'LA DORADA',1),(346,6,388,'LA MERCED',1),(347,6,433,'MANZANARES',1),(348,6,442,'MARMATO',1),(349,6,444,'MARQUETALIA',1),(350,6,446,'MARULANDA',1),(351,6,486,'NEIRA',1),(352,6,495,'NORCASIA',1),(353,6,513,'PACORA',1),(354,6,524,'PALESTINA',1),(355,6,541,'PENSILVANIA',1),(356,6,614,'RIOSUCIO',1),(357,6,616,'RISARALDA',1),(358,6,653,'SALAMINA',1),(359,6,662,'SAMANA',1),(360,6,665,'SAN JOSE',1),(361,6,777,'SUPIA',1),(362,6,867,'VICTORIA',1),(363,6,873,'VILLAMARIA',1),(364,6,877,'VITERBO',1),(365,7,1,'FLORENCIA',1),(366,7,29,'ALBANIA',1),(367,7,94,'BELEN DE LOS ANDAQUIES',1),(368,7,150,'CARTAGENA DEL CHAIRA',1),(369,7,205,'CURILLO',1),(370,7,247,'EL DONCELLO',1),(371,7,256,'EL PAUJIL',1),(372,7,410,'LA MONTAÑITA',1),(373,7,460,'MILAN',1),(374,7,479,'MORELIA',1),(375,7,592,'PUERTO RICO',1),(376,7,610,'SAN JOSE DE FRAGUA',1),(377,7,753,'SAN VICENTE DEL CAGUAN',1),(378,7,756,'SOLANO',1),(379,7,785,'SOLITA',1),(380,7,860,'VALPARAISO',1),(381,8,1,'POPAYAN',1),(382,8,22,'ALMAGUER',1),(383,8,50,'ARGELIA',1),(384,8,75,'BALBOA',1),(385,8,100,'BOLIVAR',1),(386,8,110,'BUENOS AIRES',1),(387,8,130,'CAJIBIO',1),(388,8,137,'CALDONO',1),(389,8,142,'CALOTO',1),(390,8,212,'CORINTO',1),(391,8,256,'EL TAMBO',1),(392,8,290,'FLORENCIA',1),(393,8,318,'GUAPI',1),(394,8,355,'INZA',1),(395,8,364,'JAMBALO',1),(396,8,392,'LA SIERRA',1),(397,8,397,'LA VEGA',1),(398,8,418,'LOPEZ (MICAY)',1),(399,8,450,'MERCADERES',1),(400,8,455,'MIRANDA',1),(401,8,473,'MORALES',1),(402,8,513,'PADILLA',1),(403,8,517,'PAEZ (BELALCAZAR)',1),(404,8,532,'PATIA (EL BORDO)',1),(405,8,533,'PIAMONTE',1),(406,8,548,'PIENDAMO',1),(407,8,573,'PUERTO TEJADA',1),(408,8,585,'PURACE (COCONUCO)',1),(409,8,622,'ROSAS',1),(410,8,693,'SAN SEBASTIAN',1),(411,8,698,'SANTANDER DE QUILICHAO',1),(412,8,701,'SANTA ROSA',1),(413,8,743,'SILVIA',1),(414,8,760,'SOTARA (PAISPAMBA)',1),(415,8,780,'SUAREZ',1),(416,8,807,'TIMBIO',1),(417,8,809,'TIMBIQUI',1),(418,8,821,'TORIBIO',1),(419,8,824,'TOTORO',1),(420,8,845,'VILLARICA',1),(421,9,1,'VALLEDUPAR',1),(422,9,11,'AGUACHICA',1),(423,9,13,'AGUSTIN CODAZZI',1),(424,9,32,'ASTREA',1),(425,9,45,'BECERRIL',1),(426,9,60,'BOSCONIA',1),(427,9,175,'CHIMICHAGUA',1),(428,9,178,'CHIRIGUANA',1),(429,9,228,'CURUMANI',1),(430,9,238,'EL COPEY',1),(431,9,250,'EL PASO',1),(432,9,295,'GAMARRA',1),(433,9,310,'GONZALEZ',1),(434,9,383,'LA GLORIA',1),(435,9,400,'LA JAGUA IBIRICO',1),(436,9,443,'MANAURE (BALCON DEL CESAR)',1),(437,9,517,'PAILITAS',1),(438,9,550,'PELAYA',1),(439,9,570,'PUEBLO BELLO',1),(440,9,614,'RIO DE ORO',1),(441,9,621,'LA PAZ (ROBLES)',1),(442,9,710,'SAN ALBERTO',1),(443,9,750,'SAN DIEGO',1),(444,9,770,'SAN MARTIN',1),(445,9,787,'TAMALAMEQUE',1),(446,10,1,'MONTERIA',1),(447,10,68,'AYAPEL',1),(448,10,79,'BUENAVISTA',1),(449,10,90,'CANALETE',1),(450,10,162,'CERETE',1),(451,10,168,'CHIMA',1),(452,10,182,'CHINU',1),(453,10,189,'CIENAGA DE ORO',1),(454,10,300,'COTORRA',1),(455,10,350,'LA APARTADA',1),(456,10,417,'LORICA',1),(457,10,419,'LOS CORDOBAS',1),(458,10,464,'MOMIL',1),(459,10,466,'MONTELIBANO',1),(460,10,500,'MOÑITOS',1),(461,10,555,'PLANETA RICA',1),(462,10,570,'PUEBLO NUEVO',1),(463,10,574,'PUERTO ESCONDIDO',1),(464,10,580,'PUERTO LIBERTADOR',1),(465,10,586,'PURISIMA',1),(466,10,660,'SAHAGUN',1),(467,10,670,'SAN ANDRES SOTAVENTO',1),(468,10,672,'SAN ANTERO',1),(469,10,675,'SAN BERNARDO DEL VIENTO',1),(470,10,678,'SAN CARLOS',1),(471,10,686,'SAN PELAYO',1),(472,10,807,'TIERRALTA',1),(473,10,855,'VALENCIA',1),(474,11,1,'AGUA DE DIOS',1),(475,11,19,'ALBAN',1),(476,11,35,'ANAPOIMA',1),(477,11,40,'ANOLAIMA',1),(478,11,53,'ARBELAEZ',1),(479,11,86,'BELTRAN',1),(480,11,95,'BITUIMA',1),(481,11,99,'BOJACA',1),(482,11,120,'CABRERA',1),(483,11,123,'CACHIPAY',1),(484,11,126,'CAJICA',1),(485,11,148,'CAPARRAPI',1),(486,11,151,'CAQUEZA',1),(487,11,154,'CARMEN DE CARUPA',1),(488,11,168,'CHAGUANI',1),(489,11,175,'CHIA',1),(490,11,178,'CHIPAQUE',1),(491,11,181,'CHOACHI',1),(492,11,183,'CHOCONTA',1),(493,11,200,'COGUA',1),(494,11,214,'COTA',1),(495,11,224,'CUCUNUBA',1),(496,11,245,'EL COLEGIO',1),(497,11,258,'EL PEÑON',1),(498,11,260,'EL ROSAL',1),(499,11,269,'FACATATIVA',1),(500,11,279,'FOMEQUE',1),(501,11,281,'FOSCA',1),(502,11,286,'FUNZA',1),(503,11,288,'FUQUENE',1),(504,11,290,'FUSAGASUGA',1),(505,11,293,'GACHALA',1),(506,11,295,'GACHANCIPA',1),(507,11,297,'GACHETA',1),(508,11,299,'GAMA',1),(509,11,307,'GIRARDOT',1),(510,11,312,'GRANADA',1),(511,11,317,'GUACHETA',1),(512,11,320,'GUADUAS',1),(513,11,322,'GUASCA',1),(514,11,324,'GUATAQUI',1),(515,11,326,'GUATAVITA',1),(516,11,328,'GUAYABAL DE SIQUIMA',1),(517,11,335,'GUAYABETAL',1),(518,11,339,'GUTIERREZ',1),(519,11,368,'JERUSALEN',1),(520,11,372,'JUNIN',1),(521,11,377,'LA CALERA',1),(522,11,386,'LA MESA',1),(523,11,394,'LA PALMA',1),(524,11,398,'LA PEÑA',1),(525,11,402,'LA VEGA',1),(526,11,407,'LENGUAZAQUE',1),(527,11,426,'MACHETA',1),(528,11,430,'MADRID',1),(529,11,436,'MANTA',1),(530,11,438,'MEDINA',1),(531,11,473,'MOSQUERA',1),(532,11,483,'NARIÑO',1),(533,11,486,'NEMOCON',1),(534,11,488,'NILO',1),(535,11,489,'NIMAIMA',1),(536,11,491,'NOCAIMA',1),(537,11,506,'VENECIA (OSPINA PEREZ)',1),(538,11,513,'PACHO',1),(539,11,518,'PAIME',1),(540,11,524,'PANDI',1),(541,11,530,'PARATEBUENO',1),(542,11,535,'PASCA',1),(543,11,572,'PUERTO SALGAR',1),(544,11,580,'PULI',1),(545,11,592,'QUEBRADANEGRA',1),(546,11,594,'QUETAME',1),(547,11,596,'QUIPILE',1),(548,11,599,'APULO (RAFAEL REYES)',1),(549,11,612,'RICAURTE',1),(550,11,645,'SAN ANTONIO DEL TEQUENDAMA',1),(551,11,649,'SAN BERNARDO',1),(552,11,653,'SAN CAYETANO',1),(553,11,658,'SAN FRANCISCO',1),(554,11,662,'SAN JUAN DE RIOSECO',1),(555,11,718,'SASAIMA',1),(556,11,736,'SESQUILE',1),(557,11,740,'SIBATE',1),(558,11,743,'SILVANIA',1),(559,11,745,'SIMIJACA',1),(560,11,754,'SOACHA',1),(561,11,758,'SOPO',1),(562,11,769,'SUBACHOQUE',1),(563,11,772,'SUESCA',1),(564,11,777,'SUPATA',1),(565,11,779,'SUSA',1),(566,11,781,'SUTATAUSA',1),(567,11,785,'TABIO',1),(568,11,793,'TAUSA',1),(569,11,797,'TENA',1),(570,11,799,'TENJO',1),(571,11,805,'TIBACUY',1),(572,11,807,'TIBIRITA',1),(573,11,815,'TOCAIMA',1),(574,11,817,'TOCANCIPA',1),(575,11,823,'TOPAIPI',1),(576,11,839,'UBALA',1),(577,11,841,'UBAQUE',1),(578,11,843,'UBATE',1),(579,11,845,'UNE',1),(580,11,851,'UTICA',1),(581,11,862,'VERGARA',1),(582,11,867,'VIANI',1),(583,11,871,'VILLAGOMEZ',1),(584,11,873,'VILLAPINZON',1),(585,11,875,'VILLETA',1),(586,11,878,'VIOTA',1),(587,11,885,'YACOPI',1),(588,11,898,'ZIPACON',1),(589,11,899,'ZIPAQUIRA',1),(590,12,1,'QUIBDO (SAN FRANCISCO DE QUIBDO)',1),(591,12,6,'ACANDI',1),(592,12,25,'ALTO BAUDO (PIE DE PATO)',1),(593,12,50,'ATRATO',1),(594,12,73,'BAGADO',1),(595,12,75,'BAHIA SOLANO (MUTIS)',1),(596,12,77,'BAJO BAUDO (PIZARRO)',1),(597,12,99,'BOJAYA (BELLAVISTA)',1),(598,12,135,'CANTON DE SAN PABLO (MANAGRU)',1),(599,12,205,'CONDOTO',1),(600,12,245,'EL CARMEN DE ATRATO',1),(601,12,250,'LITORAL DEL BAJO SAN JUAN (SANTA GENOVEVA DE DOCORDO)',1),(602,12,361,'ISTMINA',1),(603,12,372,'JURADO',1),(604,12,413,'LLORO',1),(605,12,425,'MEDIO ATRATO',1),(606,12,430,'MEDIO BAUDO',1),(607,12,491,'NOVITA',1),(608,12,495,'NUQUI',1),(609,12,600,'RIOQUITO',1),(610,12,615,'RIOSUCIO',1),(611,12,660,'SAN JOSE DEL PALMAR',1),(612,12,745,'SIPI',1),(613,12,787,'TADO',1),(614,12,800,'UNGUIA',1),(615,12,810,'UNION PANAMERICANA',1),(616,13,1,'NEIVA',1),(617,13,6,'ACEVEDO',1),(618,13,13,'AGRADO',1),(619,13,16,'AIPE',1),(620,13,20,'ALGECIRAS',1),(621,13,26,'ALTAMIRA',1),(622,13,78,'BARAYA',1),(623,13,132,'CAMPOALEGRE',1),(624,13,206,'COLOMBIA',1),(625,13,244,'ELIAS',1),(626,13,298,'GARZON',1),(627,13,306,'GIGANTE',1),(628,13,319,'GUADALUPE',1),(629,13,349,'HOBO',1),(630,13,357,'IQUIRA',1),(631,13,359,'ISNOS (SAN JOSE DE ISNOS)',1),(632,13,378,'LA ARGENTINA',1),(633,13,396,'LA PLATA',1),(634,13,483,'NATAGA',1),(635,13,503,'OPORAPA',1),(636,13,518,'PAICOL',1),(637,13,524,'PALERMO',1),(638,13,530,'PALESTINA',1),(639,13,548,'PITAL',1),(640,13,551,'PITALITO',1),(641,13,615,'RIVERA',1),(642,13,660,'SALADOBLANCO',1),(643,13,668,'SAN AGUSTIN',1),(644,13,676,'SANTA MARIA',1),(645,13,770,'SUAZA',1),(646,13,791,'TARQUI',1),(647,13,797,'TESALIA',1),(648,13,799,'TELLO',1),(649,13,801,'TERUEL',1),(650,13,807,'TIMANA',1),(651,13,872,'VILLAVIEJA',1),(652,13,885,'YAGUARA',1),(653,14,1,'RIOHACHA',1),(654,14,78,'BARRANCAS',1),(655,14,90,'DIBULLA',1),(656,14,98,'DISTRACCION',1),(657,14,110,'EL MOLINO',1),(658,14,279,'FONSECA',1),(659,14,378,'HATONUEVO',1),(660,14,420,'LA JAGUA DEL PILAR',1),(661,14,430,'MAICAO',1),(662,14,560,'MANAURE',1),(663,14,650,'SAN JUAN DEL CESAR',1),(664,14,847,'URIBIA',1),(665,14,855,'URUMITA',1),(666,14,874,'VILLANUEVA',1),(667,15,1,'SANTA MARTA (DISTRITO TURISTICO CULTURAL E HISTORICO DE SANTA MARTA)',1),(668,15,30,'ALGARROBO',1),(669,15,53,'ARACATACA',1),(670,15,58,'ARIGUANI (EL DIFICIL)',1),(671,15,161,'CERRO SAN ANTONIO',1),(672,15,170,'CHIVOLO',1),(673,15,189,'CIENAGA',1),(674,15,205,'CONCORDIA',1),(675,15,245,'EL BANCO',1),(676,15,258,'EL PIÑON',1),(677,15,268,'EL RETEN',1),(678,15,288,'FUNDACION',1),(679,15,318,'GUAMAL',1),(680,15,541,'PEDRAZA',1),(681,15,545,'PIJIÑO DEL CARMEN (PIJIÑO)',1),(682,15,551,'PIVIJAY',1),(683,15,555,'PLATO',1),(684,15,570,'PUEBLOVIEJO',1),(685,15,605,'REMOLINO',1),(686,15,660,'SABANAS DE SAN ANGEL',1),(687,15,675,'SALAMINA',1),(688,15,692,'SAN SEBASTIAN DE BUENAVISTA',1),(689,15,703,'SAN ZENON',1),(690,15,707,'SANTA ANA',1),(691,15,745,'SITIONUEVO',1),(692,15,798,'TENERIFE',1),(693,16,1,'VILLAVICENCIO',1),(694,16,6,'ACACIAS',1),(695,16,110,'BARRANCA DE UPIA',1),(696,16,124,'CABUYARO',1),(697,16,150,'CASTILLA LA NUEVA',1),(698,16,223,'SAN LUIS DE CUBARRAL',1),(699,16,226,'CUMARAL',1),(700,16,245,'EL CALVARIO',1),(701,16,251,'EL CASTILLO',1),(702,16,270,'EL DORADO',1),(703,16,287,'FUENTE DE ORO',1),(704,16,313,'GRANADA',1),(705,16,318,'GUAMAL',1),(706,16,325,'MAPIRIPAN',1),(707,16,330,'MESETAS',1),(708,16,350,'LA MACARENA',1),(709,16,370,'LA URIBE',1),(710,16,400,'LEJANIAS',1),(711,16,450,'PUERTO CONCORDIA',1),(712,16,568,'PUERTO GAITAN',1),(713,16,573,'PUERTO LOPEZ',1),(714,16,577,'PUERTO LLERAS',1),(715,16,590,'PUERTO RICO',1),(716,16,606,'RESTREPO',1),(717,16,680,'SAN CARLOS DE GUAROA',1),(718,16,683,'SAN JUAN DE ARAMA',1),(719,16,686,'SAN JUANITO',1),(720,16,689,'SAN MARTIN',1),(721,16,711,'VISTAHERMOSA',1),(722,17,1,'PASTO (SAN JUAN DE PASTO)',1),(723,17,19,'ALBAN (SAN JOSE)',1),(724,17,22,'ALDANA',1),(725,17,36,'ANCUYA',1),(726,17,51,'ARBOLEDA (BERRUECOS)',1),(727,17,79,'BARBACOAS',1),(728,17,83,'BELEN',1),(729,17,110,'BUESACO',1),(730,17,203,'COLON (GENOVA)',1),(731,17,207,'CONSACA',1),(732,17,210,'CONTADERO',1),(733,17,215,'CORDOBA',1),(734,17,224,'CUASPUD (CARLOSAMA)',1),(735,17,227,'CUMBAL',1),(736,17,233,'CUMBITARA',1),(737,17,240,'CHACHAGUI',1),(738,17,250,'EL CHARCO',1),(739,17,254,'EL PEÑOL',1),(740,17,256,'EL ROSARIO',1),(741,17,258,'EL TABLON',1),(742,17,260,'EL TAMBO',1),(743,17,287,'FUNES',1),(744,17,317,'GUACHUCAL',1),(745,17,320,'GUAITARILLA',1),(746,17,323,'GUALMATAN',1),(747,17,352,'ILES',1),(748,17,354,'IMUES',1),(749,17,356,'IPIALES',1),(750,17,378,'LA CRUZ',1),(751,17,381,'LA FLORIDA',1),(752,17,385,'LA LLANADA',1),(753,17,390,'LA TOLA',1),(754,17,399,'LA UNION',1),(755,17,405,'LEIVA',1),(756,17,411,'LINARES',1),(757,17,418,'LOS ANDES (SOTOMAYOR)',1),(758,17,427,'MAGUI (PAYAN)',1),(759,17,435,'MALLAMA (PIEDRANCHA)',1),(760,17,473,'MOSQUERA',1),(761,17,490,'OLAYA HERRERA (BOCAS DE SATINGA)',1),(762,17,506,'OSPINA',1),(763,17,520,'FRANCISCO PIZARRO (SALAHONDA)',1),(764,17,540,'POLICARPA',1),(765,17,560,'POTOSI',1),(766,17,565,'PROVIDENCIA',1),(767,17,573,'PUERRES',1),(768,17,585,'PUPIALES',1),(769,17,612,'RICAURTE',1),(770,17,621,'ROBERTO PAYAN (SAN JOSE)',1),(771,17,678,'SAMANIEGO',1),(772,17,683,'SANDONA',1),(773,17,685,'SAN BERNARDO',1),(774,17,687,'SAN LORENZO',1),(775,17,693,'SAN PABLO',1),(776,17,694,'SAN PEDRO DE CARTAGO',1),(777,17,696,'SANTA BARBARA (ISCUANDE)',1),(778,17,699,'SANTA CRUZ (GUACHAVES)',1),(779,17,720,'SAPUYES',1),(780,17,786,'TAMINANGO',1),(781,17,788,'TANGUA',1),(782,17,835,'TUMACO',1),(783,17,838,'TUQUERRES',1),(784,17,885,'YACUANQUER',1),(785,18,1,'CUCUTA',1),(786,18,3,'ABREGO',1),(787,18,51,'ARBOLEDAS',1),(788,18,99,'BOCHALEMA',1),(789,18,109,'BUCARASICA',1),(790,18,125,'CACOTA',1),(791,18,128,'CACHIRA',1),(792,18,172,'CHINACOTA',1),(793,18,174,'CHITAGA',1),(794,18,206,'CONVENCION',1),(795,18,223,'CUCUTILLA',1),(796,18,239,'DURANIA',1),(797,18,245,'EL CARMEN',1),(798,18,250,'EL TARRA',1),(799,18,261,'EL ZULIA',1),(800,18,313,'GRAMALOTE',1),(801,18,344,'HACARI',1),(802,18,347,'HERRAN',1),(803,18,377,'LABATECA',1),(804,18,385,'LA ESPERANZA',1),(805,18,398,'LA PLAYA',1),(806,18,405,'LOS PATIOS',1),(807,18,418,'LOURDES',1),(808,18,480,'MUTISCUA',1),(809,18,498,'OCAÑA',1),(810,18,518,'PAMPLONA',1),(811,18,520,'PAMPLONITA',1),(812,18,553,'PUERTO SANTANDER',1),(813,18,599,'RAGONVALIA',1),(814,18,660,'SALAZAR',1),(815,18,670,'SAN CALIXTO',1),(816,18,673,'SAN CAYETANO',1),(817,18,680,'SANTIAGO',1),(818,18,720,'SARDINATA',1),(819,18,743,'SILOS',1),(820,18,800,'TEORAMA',1),(821,18,810,'TIBU',1),(822,18,820,'TOLEDO',1),(823,18,871,'VILLACARO',1),(824,18,874,'VILLA DEL ROSARIO',1),(825,19,1,'ARMENIA',1),(826,19,111,'BUENAVISTA',1),(827,19,130,'CALARCA',1),(828,19,190,'CIRCASIA',1),(829,19,212,'CORDOBA',1),(830,19,272,'FILANDIA',1),(831,19,302,'GENOVA',1),(832,19,401,'LA TEBAIDA',1),(833,19,470,'MONTENEGRO',1),(834,19,548,'PIJAO',1),(835,19,594,'QUIMBAYA',1),(836,19,690,'SALENTO',1),(837,20,1,'PEREIRA',1),(838,20,45,'APIA',1),(839,20,75,'BALBOA',1),(840,20,88,'BELEN DE UMBRIA',1),(841,20,170,'DOS QUEBRADAS',1),(842,20,318,'GUATICA',1),(843,20,383,'LA CELIA',1),(844,20,400,'LA VIRGINIA',1),(845,20,440,'MARSELLA',1),(846,20,456,'MISTRATO',1),(847,20,572,'PUEBLO RICO',1),(848,20,594,'QUINCHIA',1),(849,20,682,'SANTA ROSA DE CABAL',1),(850,20,687,'SANTUARIO',1),(851,21,1,'BUCARAMANGA',1),(852,21,13,'AGUADA',1),(853,21,20,'ALBANIA',1),(854,21,51,'ARATOCA',1),(855,21,77,'BARBOSA',1),(856,21,79,'BARICHARA',1),(857,21,81,'BARRANCABERMEJA',1),(858,21,92,'BETULIA',1),(859,21,101,'BOLIVAR',1),(860,21,121,'CABRERA',1),(861,21,132,'CALIFORNIA',1),(862,21,147,'CAPITANEJO',1),(863,21,152,'CARCASI',1),(864,21,160,'CEPITA',1),(865,21,162,'CERRITO',1),(866,21,167,'CHARALA',1),(867,21,169,'CHARTA',1),(868,21,176,'CHIMA',1),(869,21,179,'CHIPATA',1),(870,21,190,'CIMITARRA',1),(871,21,207,'CONCEPCION',1),(872,21,209,'CONFINES',1),(873,21,211,'CONTRATACION',1),(874,21,217,'COROMORO',1),(875,21,229,'CURITI',1),(876,21,235,'EL CARMEN DE CHUCURY',1),(877,21,245,'EL GUACAMAYO',1),(878,21,250,'EL PEÑON',1),(879,21,255,'EL PLAYON',1),(880,21,264,'ENCINO',1),(881,21,266,'ENCISO',1),(882,21,271,'FLORIAN',1),(883,21,276,'FLORIDABLANCA',1),(884,21,296,'GALAN',1),(885,21,298,'GAMBITA',1),(886,21,307,'GIRON',1),(887,21,318,'GUACA',1),(888,21,320,'GUADALUPE',1),(889,21,322,'GUAPOTA',1),(890,21,324,'GUAVATA',1),(891,21,327,'GUEPSA',1),(892,21,344,'HATO',1),(893,21,368,'JESUS MARIA',1),(894,21,370,'JORDAN',1),(895,21,377,'LA BELLEZA',1),(896,21,385,'LANDAZURI',1),(897,21,397,'LA PAZ',1),(898,21,406,'LEBRIJA',1),(899,21,418,'LOS SANTOS',1),(900,21,425,'MACARAVITA',1),(901,21,432,'MALAGA',1),(902,21,444,'MATANZA',1),(903,21,464,'MOGOTES',1),(904,21,468,'MOLAGAVITA',1),(905,21,498,'OCAMONTE',1),(906,21,500,'OIBA',1),(907,21,502,'ONZAGA',1),(908,21,522,'PALMAR',1),(909,21,524,'PALMAS DEL SOCORRO',1),(910,21,533,'PARAMO',1),(911,21,547,'PIEDECUESTA',1),(912,21,549,'PINCHOTE',1),(913,21,572,'PUENTE NACIONAL',1),(914,21,573,'PUERTO PARRA',1),(915,21,575,'PUERTO WILCHES',1),(916,21,615,'RIONEGRO',1),(917,21,655,'SABANA DE TORRES',1),(918,21,669,'SAN ANDRES',1),(919,21,673,'SAN BENITO',1),(920,21,679,'SAN GIL',1),(921,21,682,'SAN JOAQUIN',1),(922,21,684,'SAN JOSE DE MIRANDA',1),(923,21,686,'SAN MIGUEL',1),(924,21,689,'SAN VICENTE DE CHUCURI',1),(925,21,705,'SANTA BARBARA',1),(926,21,720,'SANTA HELENA DEL OPON',1),(927,21,745,'SIMACOTA',1),(928,21,755,'SOCORRO',1),(929,21,770,'SUAITA',1),(930,21,773,'SUCRE',1),(931,21,780,'SURATA',1),(932,21,820,'TONA',1),(933,21,855,'VALLE SAN JOSE',1),(934,21,861,'VELEZ',1),(935,21,867,'VETAS',1),(936,21,872,'VILLANUEVA',1),(937,21,895,'ZAPATOCA',1),(938,22,1,'SINCELEJO',1),(939,22,110,'BUENAVISTA',1),(940,22,124,'CAIMITO',1),(941,22,204,'COLOSO (RICAURTE)',1),(942,22,215,'COROZAL',1),(943,22,230,'CHALAN',1),(944,22,235,'GALERAS (NUEVA GRANADA)',1),(945,22,265,'GUARANDA',1),(946,22,400,'LA UNION',1),(947,22,418,'LOS PALMITOS',1),(948,22,429,'MAJAGUAL',1),(949,22,473,'MORROA',1),(950,22,508,'OVEJAS',1),(951,22,523,'PALMITO',1),(952,22,670,'SAMPUES',1),(953,22,678,'SAN BENITO ABAD',1),(954,22,702,'SAN JUAN DE BETULIA',1),(955,22,708,'SAN MARCOS',1),(956,22,713,'SAN ONOFRE',1),(957,22,717,'SAN PEDRO',1),(958,22,742,'SINCE',1),(959,22,771,'SUCRE',1),(960,22,820,'TOLU',1),(961,22,823,'TOLUVIEJO',1),(962,23,1,'IBAGUE',1),(963,23,24,'ALPUJARRA',1),(964,23,26,'ALVARADO',1),(965,23,30,'AMBALEMA',1),(966,23,43,'ANZOATEGUI',1),(967,23,55,'ARMERO (GUAYABAL)',1),(968,23,67,'ATACO',1),(969,23,124,'CAJAMARCA',1),(970,23,148,'CARMEN APICALA',1),(971,23,152,'CASABIANCA',1),(972,23,168,'CHAPARRAL',1),(973,23,200,'COELLO',1),(974,23,217,'COYAIMA',1),(975,23,226,'CUNDAY',1),(976,23,236,'DOLORES',1),(977,23,268,'ESPINAL',1),(978,23,270,'FALAN',1),(979,23,275,'FLANDES',1),(980,23,283,'FRESNO',1),(981,23,319,'GUAMO',1),(982,23,347,'HERVEO',1),(983,23,349,'HONDA',1),(984,23,352,'ICONONZO',1),(985,23,408,'LERIDA',1),(986,23,411,'LIBANO',1),(987,23,443,'MARIQUITA',1),(988,23,449,'MELGAR',1),(989,23,461,'MURILLO',1),(990,23,483,'NATAGAIMA',1),(991,23,504,'ORTEGA',1),(992,23,520,'PALOCABILDO',1),(993,23,547,'PIEDRAS',1),(994,23,555,'PLANADAS',1),(995,23,563,'PRADO',1),(996,23,585,'PURIFICACION',1),(997,23,616,'RIOBLANCO',1),(998,23,622,'RONCESVALLES',1),(999,23,624,'ROVIRA',1),(1000,23,671,'SALDAÑA',1),(1001,23,675,'SAN ANTONIO',1),(1002,23,678,'SAN LUIS',1),(1003,23,686,'SANTA ISABEL',1),(1004,23,770,'SUAREZ',1),(1005,23,854,'VALLE DE SAN JUAN',1),(1006,23,861,'VENADILLO',1),(1007,23,870,'VILLAHERMOSA',1),(1008,23,873,'VILLARRICA',1),(1009,24,1,'CALI (SANTIAGO DE CALI)',1),(1010,24,20,'ALCALA',1),(1011,24,36,'ANDALUCIA',1),(1012,24,41,'ANSERMANUEVO',1),(1013,24,54,'ARGELIA',1),(1014,24,100,'BOLIVAR',1),(1015,24,109,'BUENAVENTURA',1),(1016,24,111,'BUGA',1),(1017,24,113,'BUGALAGRANDE',1),(1018,24,122,'CAICEDONIA',1),(1019,24,126,'CALIMA (DARIEN)',1),(1020,24,130,'CANDELARIA',1),(1021,24,147,'CARTAGO',1),(1022,24,233,'DAGUA',1),(1023,24,243,'EL AGUILA',1),(1024,24,246,'EL CAIRO',1),(1025,24,248,'EL CERRITO',1),(1026,24,250,'EL DOVIO',1),(1027,24,275,'FLORIDA',1),(1028,24,306,'GINEBRA',1),(1029,24,318,'GUACARI',1),(1030,24,364,'JAMUNDI',1),(1031,24,377,'LA CUMBRE',1),(1032,24,400,'LA UNION',1),(1033,24,403,'LA VICTORIA',1),(1034,24,497,'OBANDO',1),(1035,24,520,'PALMIRA',1),(1036,24,563,'PRADERA',1),(1037,24,606,'RESTREPO',1),(1038,24,616,'RIOFRIO',1),(1039,24,622,'ROLDANILLO',1),(1040,24,670,'SAN PEDRO',1),(1041,24,736,'SEVILLA',1),(1042,24,823,'TORO',1),(1043,24,828,'TRUJILLO',1),(1044,24,834,'TULUA',1),(1045,24,845,'ULLOA',1),(1046,24,863,'VERSALLES',1),(1047,24,869,'VIJES',1),(1048,24,890,'YOTOCO',1),(1049,24,892,'YUMBO',1),(1050,24,895,'ZARZAL',1),(1051,25,1,'ARAUCA',1),(1052,25,65,'ARAUQUITA',1),(1053,25,220,'CRAVO NORTE',1),(1054,25,300,'FORTUL',1),(1055,25,591,'PUERTO RONDON',1),(1056,25,736,'SARAVENA',1),(1057,25,794,'TAME',1),(1058,26,1,'YOPAL',1),(1059,26,10,'AGUAZUL',1),(1060,26,15,'CHAMEZA',1),(1061,26,125,'HATO COROZAL',1),(1062,26,136,'LA SALINA',1),(1063,26,139,'MANI',1),(1064,26,162,'MONTERREY',1),(1065,26,225,'NUNCHIA',1),(1066,26,230,'OROCUE',1),(1067,26,250,'PAZ DE ARIPORO',1),(1068,26,263,'PORE',1),(1069,26,279,'RECETOR',1),(1070,26,300,'SABANALARGA',1),(1071,26,315,'SACAMA',1),(1072,26,325,'SAN LUIS DE PALENQUE',1),(1073,26,400,'TAMARA',1),(1074,26,410,'TAURAMENA',1),(1075,26,430,'TRINIDAD',1),(1076,26,440,'VILLANUEVA',1),(1077,27,1,'MOCOA',1),(1078,27,219,'COLON',1),(1079,27,320,'ORITO',1),(1080,27,568,'PUERTO ASIS',1),(1081,27,569,'PUERTO CAICEDO',1),(1082,27,571,'PUERTO GUZMAN',1),(1083,27,573,'PUERTO LEGUIZAMO',1),(1084,27,749,'SIBUNDOY',1),(1085,27,755,'SAN FRANCISCO',1),(1086,27,757,'SAN MIGUEL (LA DORADA)',1),(1087,27,760,'SANTIAGO',1),(1088,27,865,'LA HORMIGA (VALLE DEL GUAMUEZ)',1),(1089,27,885,'VILLAGARZON',1),(1090,28,1,'SAN ANDRES',1),(1091,28,564,'PROVIDENCIA',1),(1092,29,1,'LETICIA',1),(1093,29,263,'EL ENCANTO',1),(1094,29,405,'LA CHORRERA',1),(1095,29,407,'LA PEDRERA',1),(1096,29,430,'LA VICTORIA',1),(1097,29,460,'MIRITI-PARANA',1),(1098,29,530,'PUERTO ALEGRIA',1),(1099,29,536,'PUERTO ARICA',1),(1100,29,540,'PUERTO NARIÑO',1),(1101,29,669,'PUERTO SANTANDER',1),(1102,29,798,'TARAPACA',1),(1103,30,1,'PUERTO INIRIDA',1),(1104,30,343,'BARRANCO MINAS',1),(1105,30,883,'SAN FELIPE',1),(1106,30,884,'PUERTO COLOMBIA',1),(1107,30,885,'LA GUADALUPE',1),(1108,30,886,'CACAHUAL',1),(1109,30,887,'PANA PANA (CAMPO ALEGRE)',1),(1110,30,888,'MORICHAL (MORICHAL NUEVO)',1),(1111,31,1,'SAN JOSE DEL GUAVIARE',1),(1112,31,15,'CALAMAR',1),(1113,31,25,'EL RETORNO',1),(1114,31,200,'MIRAFLORES',1),(1115,32,1,'MITU',1),(1116,32,161,'CARURU',1),(1117,32,511,'PACOA',1),(1118,32,666,'TARAIRA',1),(1119,32,777,'PAPUNAUA (MORICHAL)',1),(1120,32,889,'YAVARATE',1),(1121,33,1,'PUERTO CARREÑO',1),(1122,33,524,'LA PRIMAVERA',1),(1123,33,572,'SANTA RITA',1),(1124,33,666,'SANTA ROSALIA',1),(1125,33,760,'SAN JOSE DE OCUNE',1),(1126,33,773,'CUMARIBO',1);
/*!40000 ALTER TABLE `tb_municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_organizacion`
--

DROP TABLE IF EXISTS `tb_organizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_organizacion` (
  `id_organizacion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(500) DEFAULT NULL,
  `id_pais` int(11) DEFAULT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  `id_municipio` int(11) DEFAULT NULL,
  `url_logo` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_organizacion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Tabla que contiene una organización o fundación que sirva para sembrar árboles.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_organizacion`
--

LOCK TABLES `tb_organizacion` WRITE;
/*!40000 ALTER TABLE `tb_organizacion` DISABLE KEYS */;
INSERT INTO `tb_organizacion` VALUES (1,'Plataforma Juvenil Rosaluna',1,11,498,NULL),(2,'Plataforma Juvenil Facatativá',1,11,499,NULL);
/*!40000 ALTER TABLE `tb_organizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_paginas`
--

DROP TABLE IF EXISTS `tb_paginas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_paginas` (
  `id_paginas` int(11) NOT NULL,
  `id_organizacion` int(11) DEFAULT NULL,
  `id_pais` int(11) DEFAULT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  `id_municipio` int(11) DEFAULT NULL,
  `pagina_habilitada` varchar(50) DEFAULT NULL,
  `vigencia_desde` datetime DEFAULT NULL,
  `vigencia_hasta` datetime DEFAULT NULL,
  `str_vigencia_desde` varchar(50) DEFAULT NULL,
  `str_vigencia_hasta` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_paginas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla en la que se guardan las páginas habilitadas para la edición y referencia de nuevos árboles  para los voluntarios por los administradores.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_paginas`
--

LOCK TABLES `tb_paginas` WRITE;
/*!40000 ALTER TABLE `tb_paginas` DISABLE KEYS */;
INSERT INTO `tb_paginas` VALUES (1,0,1,1,1,'prueBA','2019-11-25 19:00:00','2019-11-26 00:00:00',NULL,NULL),(2,1,1,11,498,'nuevo_arbol','2019-12-02 01:00:00','2020-01-01 01:00:00','2019-12-02T01:00','2020-01-01T01:00'),(3,1,1,11,498,'editar_arbol','2019-01-01 01:00:00','2021-01-01 01:00:00','2019-01-01T01:00','2021-01-01T01:00'),(4,2,1,11,499,'nuevo_arbol','2021-05-06 01:34:00','2022-02-23 00:00:00','2021-05-06T01:34','2022-02-23T13:36');
/*!40000 ALTER TABLE `tb_paginas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pais`
--

DROP TABLE IF EXISTS `tb_pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_pais` (
  `id_pais` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contiene la lista de paises ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pais`
--

LOCK TABLES `tb_pais` WRITE;
/*!40000 ALTER TABLE `tb_pais` DISABLE KEYS */;
INSERT INTO `tb_pais` VALUES (1,'COLOMBIA');
/*!40000 ALTER TABLE `tb_pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_parametros`
--

DROP TABLE IF EXISTS `tb_parametros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_parametros` (
  `id_parametro` int(11) NOT NULL,
  `servidor_smtp` varchar(500) DEFAULT NULL,
  `puerto_smtp` varchar(45) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_parametro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla que aloja los parametros de configuración';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_parametros`
--

LOCK TABLES `tb_parametros` WRITE;
/*!40000 ALTER TABLE `tb_parametros` DISABLE KEYS */;
INSERT INTO `tb_parametros` VALUES (1,'smtp.gmail.com','587','mi.arbol.pjr@gmail.com','NlVjdDAzTkJkbFZZZ05xM1QxSEo3UT09');
/*!40000 ALTER TABLE `tb_parametros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_plantillas_email`
--

DROP TABLE IF EXISTS `tb_plantillas_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_plantillas_email` (
  `id_plantilla` int(11) NOT NULL,
  `proceso` varchar(500) DEFAULT NULL,
  `idioma` varchar(45) DEFAULT NULL,
  `asunto` varchar(500) DEFAULT NULL,
  `cuerpo` text,
  PRIMARY KEY (`id_plantilla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contiene las plantillas de los correos electrónicos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_plantillas_email`
--

LOCK TABLES `tb_plantillas_email` WRITE;
/*!40000 ALTER TABLE `tb_plantillas_email` DISABLE KEYS */;
INSERT INTO `tb_plantillas_email` VALUES (1,'registro','español','Registro exitoso','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">'),(2,'registro','english','User successfully registered','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">');
/*!40000 ALTER TABLE `tb_plantillas_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_precio_combustible`
--

DROP TABLE IF EXISTS `tb_precio_combustible`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_precio_combustible` (
  `id_precio_combustible` int(11) NOT NULL,
  `id_pais` int(11) DEFAULT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  `id_municipio` int(11) DEFAULT NULL,
  `id_energia` int(11) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `fecha_referencia` date DEFAULT NULL,
  `referencia` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_precio_combustible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla que almacena los precios del combustible liquido por litro  por país';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_precio_combustible`
--

LOCK TABLES `tb_precio_combustible` WRITE;
/*!40000 ALTER TABLE `tb_precio_combustible` DISABLE KEYS */;
INSERT INTO `tb_precio_combustible` VALUES (1,1,0,0,4,2406.08,'2019-02-28','https://es.globalpetrolprices.com/Colombia/gasoline_prices/'),(2,1,0,0,9,2144.99,'2019-02-28','https://www.minminas.gov.co/precios-ano-2018 (Promedio Nacional pasado a litros)'),(3,1,0,0,10,2267.92,'2019-02-28','https://es.globalpetrolprices.com/diesel_prices/#hl16'),(4,1,0,0,11,1473.00,'2019-02-28','http://www.grupovanti.com/co/gas+natural+vehicular+%E2%80%93+gnv/1297370398775/precio+historico+del+gas+natural+vehicular.html');
/*!40000 ALTER TABLE `tb_precio_combustible` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_registro_emisiones`
--

DROP TABLE IF EXISTS `tb_registro_emisiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_registro_emisiones` (
  `id_registro_emisiones` int(11) NOT NULL,
  `id_energia` int(11) DEFAULT NULL,
  `valor` decimal(8,4) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `referencia` text,
  PRIMARY KEY (`id_registro_emisiones`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla que almacena el registro de emisiones mensuales';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_registro_emisiones`
--

LOCK TABLES `tb_registro_emisiones` WRITE;
/*!40000 ALTER TABLE `tb_registro_emisiones` DISABLE KEYS */;
INSERT INTO `tb_registro_emisiones` VALUES (1,1,4.9750,'2019-02-28',1,'no hay referencias disponibles, por etapa de prueba'),(2,2,2.2847,'2019-02-28',1,'no hay referencias disponibles, por etapa de prueba'),(3,3,0.0000,'2019-02-28',1,'no hay referencias disponibles, por etapa de prueba'),(4,4,0.0000,'2019-02-28',1,'no hay referencias disponibles, por etapa de prueba'),(5,5,0.0000,'2019-02-28',1,'no hay referencias disponibles, por etapa de prueba'),(6,6,0.0000,'2019-02-28',1,'no hay referencias disponibles, por etapa de prueba'),(7,7,0.0000,'2019-02-28',1,'no hay referencias disponibles, por etapa de prueba'),(8,8,0.0000,'2019-02-28',1,'no hay referencias disponibles, por etapa de pruebano hay referencias disponibles, por etapa de pruebano hay referencias disponibles, por etapa de prueba'),(9,9,0.0000,'2019-02-28',1,'no hay referencias disponibles, por etapa de prueba'),(10,10,0.0000,'2019-02-28',1,'no hay referencias disponibles, por etapa de prueba'),(11,11,0.0000,'2019-02-28',1,'no hay referencias disponibles, por etapa de prueba'),(12,12,142.0460,'2019-02-28',1,'no hay referencias disponibles, por etapa de prueba'),(13,13,149.3057,'2019-02-28',1,'no hay referencias disponibles, por etapa de prueba'),(14,1,4.9750,'2019-03-30',1,'no hay referencias disponibles, por etapa de prueba'),(15,2,2.2847,'2019-03-30',1,'no hay referencias disponibles, por etapa de prueba'),(16,3,0.0000,'2019-03-30',1,'no hay referencias disponibles, por etapa de prueba'),(17,4,0.0000,'2019-03-30',1,'no hay referencias disponibles, por etapa de prueba'),(18,5,0.0000,'2019-03-30',1,'no hay referencias disponibles, por etapa de prueba'),(19,6,0.0000,'2019-03-30',1,'no hay referencias disponibles, por etapa de prueba'),(20,7,0.0000,'2019-03-30',1,'no hay referencias disponibles, por etapa de prueba'),(21,8,0.0000,'2019-03-30',1,'no hay referencias disponibles, por etapa de prueba'),(22,9,0.0000,'2019-03-30',1,'no hay referencias disponibles, por etapa de prueba'),(23,10,0.0000,'2019-03-30',1,'no hay referencias disponibles, por etapa de prueba'),(24,11,0.0000,'2019-03-30',1,'no hay referencias disponibles, por etapa de prueba'),(25,12,142.0460,'2019-03-30',1,'no hay referencias disponibles, por etapa de prueba'),(26,13,149.3057,'2019-03-30',1,'no hay referencias disponibles, por etapa de prueba'),(27,1,7.9600,'2019-05-19',1,'Factor de emisión: 0.19900KgCO2/KWh, Referencia: www.upme.gov.co/Calculadora_Emisiones/aplicacion/calculadora.html, año 2015'),(28,2,3.1986,'2019-05-19',1,'Factor de emisión :1.86000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(29,3,0.0000,'2019-05-19',1,'Factor de emisión: 7.11000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(30,4,0.0000,'2019-05-19',1,'Factor de emisión: 2.34840KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015 $2406.08/Litro. Referencia: https://es.globalpetrolprices.com/Colombia/gasoline_prices/ Año: 2019-02-28'),(31,5,0.0000,'2019-05-19',1,'Factor de emisión: 2.64170KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(32,6,0.0000,'2019-05-19',1,'Factor de emisión: 2.45000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(33,7,0.0000,'2019-05-19',1,'Factor de emisión:1.84000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(34,8,0.0000,'2019-05-19',1,'Factor de emisión: 1.15000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(35,9,0.0000,'2019-05-19',1,'Factor de emisión: 2.76060KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015 $2144.99/Litro. Referencia: https://www.minminas.gov.co/precios-ano-2018 (Promedio Nacional pasado a litros) Año: 2019-02-28'),(36,10,0.0000,'2019-05-19',1,'Factor de emisión: 2.74475KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015 $2267.92/Litro. Referencia: https://es.globalpetrolprices.com/diesel_prices/#hl16 Año: 2019-02-28'),(37,11,0.0000,'2019-05-19',1,'Factor de emisión: 2.09000KgCO2/l, Referencia: Corpoica, año 2017 $1473.00/Litro. Referencia: http://www.grupovanti.com/co/gas+natural+vehicular+%E2%80%93+gnv/1297370398775/precio+historico+del+gas+natural+vehicular.html Año: 2019-02-28'),(38,12,142.0460,'2019-05-19',1,'4.67000 KgCO2'),(39,13,153.2046,'2019-05-19',1,''),(40,1,7.9600,'2019-06-20',1,'Factor de emisión: 0.19900KgCO2/KWh, Referencia: www.upme.gov.co/Calculadora_Emisiones/aplicacion/calculadora.html, año 2015'),(41,2,3.1986,'2019-06-20',1,'Factor de emisión :1.86000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(42,3,0.0000,'2019-06-20',1,'Factor de emisión: 7.11000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(43,4,0.0000,'2019-06-20',1,'Factor de emisión: 2.34840KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015 $2406.08/Litro. Referencia: https://es.globalpetrolprices.com/Colombia/gasoline_prices/ Año: 2019-02-28'),(44,5,0.0000,'2019-06-20',1,'Factor de emisión: 2.64170KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(45,6,0.0000,'2019-06-20',1,'Factor de emisión: 2.45000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(46,7,0.0000,'2019-06-20',1,'Factor de emisión:1.84000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(47,8,0.0000,'2019-06-20',1,'Factor de emisión: 1.15000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(48,9,0.0000,'2019-06-20',1,'Factor de emisión: 2.76060KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015 $2144.99/Litro. Referencia: https://www.minminas.gov.co/precios-ano-2018 (Promedio Nacional pasado a litros) Año: 2019-02-28'),(49,10,0.0000,'2019-06-20',1,'Factor de emisión: 2.74475KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015 $2267.92/Litro. Referencia: https://es.globalpetrolprices.com/diesel_prices/#hl16 Año: 2019-02-28'),(50,11,0.0000,'2019-06-20',1,'Factor de emisión: 2.09000KgCO2/l, Referencia: Corpoica, año 2017 $1473.00/Litro. Referencia: http://www.grupovanti.com/co/gas+natural+vehicular+%E2%80%93+gnv/1297370398775/precio+historico+del+gas+natural+vehicular.html Año: 2019-02-28'),(51,12,142.0460,'2019-06-20',1,'4.67000 KgCO2'),(52,13,153.2046,'2019-06-20',1,''),(53,1,0.5970,'2019-08-01',9,'Factor de emisión: 0.19900KgCO2/KWh, Referencia: www.upme.gov.co/Calculadora_Emisiones/aplicacion/calculadora.html, año 2015'),(54,2,2.3989,'2019-08-01',9,'Factor de emisión :1.86000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(55,3,0.0000,'2019-08-01',9,'Factor de emisión: 7.11000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(56,4,0.0000,'2019-08-01',9,'Factor de emisión: 2.34840KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015 $2406.08/Litro. Referencia: https://es.globalpetrolprices.com/Colombia/gasoline_prices/ Año: 2019-02-28'),(57,5,0.0000,'2019-08-01',9,'Factor de emisión: 2.64170KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(58,6,0.0000,'2019-08-01',9,'Factor de emisión: 2.45000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(59,7,0.0000,'2019-08-01',9,'Factor de emisión:1.84000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(60,8,0.0000,'2019-08-01',9,'Factor de emisión: 1.15000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(61,9,0.0000,'2019-08-01',9,'Factor de emisión: 2.76060KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4;;, año 2015 $2144.99/Litro. Referencia: https://www.minminas.gov.co/precios-ano-2018 (Promedio Nacional pasado a litros) Año: 2019-02-28'),(62,10,0.0000,'2019-08-01',9,'Factor de emisión: 2.74475KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015 $2267.92/Litro. Referencia: https://es.globalpetrolprices.com/diesel_prices/#hl16 Año: 2019-02-28'),(63,11,0.0000,'2019-08-01',9,'Factor de emisión: 2.09000KgCO2/l, Referencia: Corpoica, año 2018 $1473.00/Litro. Referencia: http://www.grupovanti.com/co/gas+natural+vehicular+%E2%80%93+gnv/1297370398775/precio+historico+del+gas+natural+vehicular.html Año: 2019-02-28'),(64,12,142.0460,'2019-08-01',9,'4.67000 KgCO2'),(65,13,145.0419,'2019-08-01',9,''),(66,1,0.9950,'2019-07-01',9,'Factor de emisión: 0.19900KgCO2/KWh, Referencia: www.upme.gov.co/Calculadora_Emisiones/aplicacion/calculadora.html, año 2015'),(67,2,3.1986,'2019-07-01',9,'Factor de emisión :1.86000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(68,3,0.0000,'2019-07-01',9,'Factor de emisión: 7.11000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(69,4,19.5205,'2019-07-01',9,'Factor de emisión: 2.34840KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015 $2406.08/Litro. Referencia: https://es.globalpetrolprices.com/Colombia/gasoline_prices/ Año: 2019-02-28'),(70,5,0.0000,'2019-07-01',9,'Factor de emisión: 2.64170KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(71,6,1.6333,'2019-07-01',9,'Factor de emisión: 2.45000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(72,7,0.0000,'2019-07-01',9,'Factor de emisión:1.84000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(73,8,0.0000,'2019-07-01',9,'Factor de emisión: 1.15000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(74,9,0.0000,'2019-07-01',9,'Factor de emisión: 2.76060KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4;;, año 2015 $2144.99/Litro. Referencia: https://www.minminas.gov.co/precios-ano-2018 (Promedio Nacional pasado a litros) Año: 2019-02-28'),(75,10,0.0000,'2019-07-01',9,'Factor de emisión: 2.74475KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015 $2267.92/Litro. Referencia: https://es.globalpetrolprices.com/diesel_prices/#hl16 Año: 2019-02-28'),(76,11,0.0000,'2019-07-01',9,'Factor de emisión: 2.09000KgCO2/l, Referencia: Corpoica, año 2018 $1473.00/Litro. Referencia: http://www.grupovanti.com/co/gas+natural+vehicular+%E2%80%93+gnv/1297370398775/precio+historico+del+gas+natural+vehicular.html Año: 2019-02-28'),(77,12,142.0460,'2019-07-01',9,'4.67000 KgCO2'),(78,13,167.3935,'2019-07-01',9,''),(79,1,0.6633,'2019-09-03',9,'Factor de emisión: 0.19900KgCO2/KWh, Referencia: www.upme.gov.co/Calculadora_Emisiones/aplicacion/calculadora.html, año 2015'),(80,2,2.2847,'2019-09-03',9,'Factor de emisión :1.86000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(81,3,0.0000,'2019-09-03',9,'Factor de emisión: 7.11000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(82,4,29.2808,'2019-09-03',9,'Factor de emisión: 2.34840KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015 $2406.08/Litro. Referencia: https://es.globalpetrolprices.com/Colombia/gasoline_prices/ Año: 2019-02-28'),(83,5,0.0000,'2019-09-03',9,'Factor de emisión: 2.64170KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(84,6,0.0000,'2019-09-03',9,'Factor de emisión: 2.45000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(85,7,0.0000,'2019-09-03',9,'Factor de emisión:1.84000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(86,8,0.0000,'2019-09-03',9,'Factor de emisión: 1.15000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(87,9,0.0000,'2019-09-03',9,'Factor de emisión: 2.76060KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4;;, año 2015 $2144.99/Litro. Referencia: https://www.minminas.gov.co/precios-ano-2018 (Promedio Nacional pasado a litros) Año: 2019-02-28'),(88,10,0.0000,'2019-09-03',9,'Factor de emisión: 2.74475KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015 $2267.92/Litro. Referencia: https://es.globalpetrolprices.com/diesel_prices/#hl16 Año: 2019-02-28'),(89,11,0.0000,'2019-09-03',9,'Factor de emisión: 2.09000KgCO2/l, Referencia: Corpoica, año 2018 $1473.00/Litro. Referencia: http://www.grupovanti.com/co/gas+natural+vehicular+%E2%80%93+gnv/1297370398775/precio+historico+del+gas+natural+vehicular.html Año: 2019-02-28'),(90,12,142.0460,'2019-09-03',9,'4.67000 KgCO2'),(91,13,174.2748,'2019-09-03',9,''),(92,1,1.0613,'2019-09-09',11,'Factor de emisión: 0.19900KgCO2/KWh, Referencia: www.upme.gov.co/Calculadora_Emisiones/aplicacion/calculadora.html, año 2015'),(93,2,2.2847,'2019-09-09',11,'Factor de emisión :1.86000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(94,3,0.0000,'2019-09-09',11,'Factor de emisión: 7.11000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(95,4,0.0000,'2019-09-09',11,'Factor de emisión: 2.34840KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015 $2406.08/Litro. Referencia: https://es.globalpetrolprices.com/Colombia/gasoline_prices/ Año: 2019-02-28'),(96,5,0.0000,'2019-09-09',11,'Factor de emisión: 2.64170KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(97,6,0.0000,'2019-09-09',11,'Factor de emisión: 2.45000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(98,7,0.0000,'2019-09-09',11,'Factor de emisión:1.84000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(99,8,0.3833,'2019-09-09',11,'Factor de emisión: 1.15000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(100,9,0.0000,'2019-09-09',11,'Factor de emisión: 2.76060KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4;;, año 2015 $2144.99/Litro. Referencia: https://www.minminas.gov.co/precios-ano-2018 (Promedio Nacional pasado a litros) Año: 2019-02-28'),(101,10,0.0000,'2019-09-09',11,'Factor de emisión: 2.74475KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015 $2267.92/Litro. Referencia: https://es.globalpetrolprices.com/diesel_prices/#hl16 Año: 2019-02-28'),(102,11,0.0000,'2019-09-09',11,'Factor de emisión: 2.09000KgCO2/l, Referencia: Corpoica, año 2018 $1473.00/Litro. Referencia: http://www.grupovanti.com/co/gas+natural+vehicular+%E2%80%93+gnv/1297370398775/precio+historico+del+gas+natural+vehicular.html Año: 2019-02-28'),(103,12,142.0460,'2019-09-09',11,'4.67000 KgCO2'),(104,13,145.7754,'2019-09-09',11,''),(105,1,0.4975,'2019-08-18',1,'Factor de emisión: 0.19900KgCO2/KWh, Referencia: www.upme.gov.co/Calculadora_Emisiones/aplicacion/calculadora.html, año 2015'),(106,2,1.7135,'2019-08-18',1,'Factor de emisión :1.86000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(107,3,0.0000,'2019-08-18',1,'Factor de emisión: 7.11000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(108,4,0.0000,'2019-08-18',1,'Factor de emisión: 2.34840KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015 $2406.08/Litro. Referencia: https://es.globalpetrolprices.com/Colombia/gasoline_prices/ Año: 2019-02-28'),(109,5,0.0000,'2019-08-18',1,'Factor de emisión: 2.64170KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(110,6,0.0000,'2019-08-18',1,'Factor de emisión: 2.45000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(111,7,1.8400,'2019-08-18',1,'Factor de emisión:1.84000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(112,8,0.0000,'2019-08-18',1,'Factor de emisión: 1.15000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(113,9,0.0000,'2019-08-18',1,'Factor de emisión: 2.76060KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4;;, año 2015 $2144.99/Litro. Referencia: https://www.minminas.gov.co/precios-ano-2018 (Promedio Nacional pasado a litros) Año: 2019-02-28'),(114,10,0.0000,'2019-08-18',1,'Factor de emisión: 2.74475KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015 $2267.92/Litro. Referencia: https://es.globalpetrolprices.com/diesel_prices/#hl16 Año: 2019-02-28'),(115,11,0.0000,'2019-08-18',1,'Factor de emisión: 2.09000KgCO2/l, Referencia: Corpoica, año 2018 $1473.00/Litro. Referencia: http://www.grupovanti.com/co/gas+natural+vehicular+%E2%80%93+gnv/1297370398775/precio+historico+del+gas+natural+vehicular.html Año: 2019-02-28'),(116,12,171.2460,'2019-08-18',1,'5.63000 KgCO2'),(117,13,175.2970,'2019-08-18',1,''),(118,1,0.8623,'2019-09-19',1,'Factor de emisión: 0.19900KgCO2/KWh, Referencia: www.upme.gov.co/Calculadora_Emisiones/aplicacion/calculadora.html, año 2015'),(119,2,4.1125,'2019-09-19',1,'Factor de emisión :1.86000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(120,3,0.0000,'2019-09-19',1,'Factor de emisión: 7.11000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(121,4,58.5616,'2019-09-19',1,'Factor de emisión: 2.34840KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015 $2406.08/Litro. Referencia: https://es.globalpetrolprices.com/Colombia/gasoline_prices/ Año: 2019-02-28'),(122,5,0.0000,'2019-09-19',1,'Factor de emisión: 2.64170KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(123,6,1.6333,'2019-09-19',1,'Factor de emisión: 2.45000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(124,7,0.0000,'2019-09-19',1,'Factor de emisión:1.84000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(125,8,0.0000,'2019-09-19',1,'Factor de emisión: 1.15000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(126,9,0.0000,'2019-09-19',1,'Factor de emisión: 2.76060KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4;;, año 2015 $2144.99/Litro. Referencia: https://www.minminas.gov.co/precios-ano-2018 (Promedio Nacional pasado a litros) Año: 2019-02-28'),(127,10,0.0000,'2019-09-19',1,'Factor de emisión: 2.74475KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015 $2267.92/Litro. Referencia: https://es.globalpetrolprices.com/diesel_prices/#hl16 Año: 2019-02-28'),(128,11,0.0000,'2019-09-19',1,'Factor de emisión: 2.09000KgCO2/l, Referencia: Corpoica, año 2018 $1473.00/Litro. Referencia: http://www.grupovanti.com/co/gas+natural+vehicular+%E2%80%93+gnv/1297370398775/precio+historico+del+gas+natural+vehicular.html Año: 2019-02-28'),(129,12,142.0460,'2019-09-19',1,'4.67000 KgCO2'),(130,13,207.2158,'2019-09-19',1,''),(131,1,0.6766,'2019-11-22',1,'Factor de emisión: 0.19900KgCO2/KWh, Referencia: www.upme.gov.co/Calculadora_Emisiones/aplicacion/calculadora.html, año 2015'),(132,2,1.3708,'2019-11-22',1,'Factor de emisión :1.86000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(133,3,0.0000,'2019-11-22',1,'Factor de emisión: 7.11000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(134,4,58.5616,'2019-11-22',1,'Factor de emisión: 2.34840KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015 $2406.08/Litro. Referencia: https://es.globalpetrolprices.com/Colombia/gasoline_prices/ Año: 2019-02-28'),(135,5,0.0000,'2019-11-22',1,'Factor de emisión: 2.64170KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(136,6,0.0000,'2019-11-22',1,'Factor de emisión: 2.45000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(137,7,0.0000,'2019-11-22',1,'Factor de emisión:1.84000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(138,8,0.0000,'2019-11-22',1,'Factor de emisión: 1.15000KgCO2/Kg, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015'),(139,9,0.0000,'2019-11-22',1,'Factor de emisión: 2.76060KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4;;, año 2015 $2144.99/Litro. Referencia: https://www.minminas.gov.co/precios-ano-2018 (Promedio Nacional pasado a litros) Año: 2019-02-28'),(140,10,0.0000,'2019-11-22',1,'Factor de emisión: 2.74475KgCO2/l, Referencia: Carrasco L, Juan. Factores de emision consideradas en la herramienta de cálculo en la huella de carbono corporativa, version 4, año 2015 $2267.92/Litro. Referencia: https://es.globalpetrolprices.com/diesel_prices/#hl16 Año: 2019-02-28'),(141,11,0.0000,'2019-11-22',1,'Factor de emisión: 2.09000KgCO2/l, Referencia: Corpoica, año 2018 $1473.00/Litro. Referencia: http://www.grupovanti.com/co/gas+natural+vehicular+%E2%80%93+gnv/1297370398775/precio+historico+del+gas+natural+vehicular.html Año: 2019-02-28'),(142,12,142.0460,'2019-11-22',1,'4.67000 KgCO2'),(143,13,202.6551,'2019-11-22',1,'');
/*!40000 ALTER TABLE `tb_registro_emisiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usuario`
--

DROP TABLE IF EXISTS `tb_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(500) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` text,
  `id_pais` int(11) DEFAULT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  `id_municipio` int(11) DEFAULT NULL,
  `url_imagen_perfil` blob,
  `id_perfil` int(2) DEFAULT NULL,
  `id_organizacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `id_usuario_pais_idx` (`id_pais`),
  KEY `id_usuario_departamento_idx` (`id_departamento`),
  KEY `id_usuario_municipio_idx` (`id_municipio`),
  CONSTRAINT `id_usuario_departamento` FOREIGN KEY (`id_departamento`) REFERENCES `tb_departamentos` (`id_departamento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_usuario_municipio` FOREIGN KEY (`id_municipio`) REFERENCES `tb_municipio` (`id_municipio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_usuario_pais` FOREIGN KEY (`id_pais`) REFERENCES `tb_pais` (`id_pais`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Tabla que almacena los datos de usuario del sistema';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuario`
--

LOCK TABLES `tb_usuario` WRITE;
/*!40000 ALTER TABLE `tb_usuario` DISABLE KEYS */;
INSERT INTO `tb_usuario` VALUES (1,'cindy.miranda0310@gmail.com','Cindy','WjlTaGtjMFdjNElPNjVlOEpqck5qdz09',1,11,498,NULL,1,0),(9,'cemira000@hotmail.com','Cindy E. Miranda Campos','WjlTaGtjMFdjNElPNjVlOEpqck5qdz09',1,11,489,NULL,2,2),(10,'cindy@globalrose.com','Cindy Global','WjlTaGtjMFdjNElPNjVlOEpqck5qdz09',1,11,498,NULL,2,1),(11,'cindy@ynu.ac.kr','Cindy Yu','ak5zMzhOYkc2cWN4RWxOcFV1anI4dz09',1,11,498,NULL,3,0),(12,'c9w8jdnf@iisuoo.voo','Cindy','WjlTaGtjMFdjNElPNjVlOEpqck5qdz09',1,3,162,NULL,3,0);
/*!40000 ALTER TABLE `tb_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-14 18:52:41
