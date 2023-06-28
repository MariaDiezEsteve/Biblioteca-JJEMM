-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: containers-us-west-59.railway.app    Database: railway
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `idbooks` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(225) NOT NULL,
  `Author` varchar(225) NOT NULL,
  `Language` varchar(225) DEFAULT NULL,
  `AgeRating` enum('Adulto','Juvenil','Infantil','Todos los públicos','No asignado') DEFAULT 'No asignado',
  `Category` enum('Fantasía','Drama','Religión','Psicología','Ciencia ficción','Romance','Misterio','Thriller','Aventura','Historia','Ayuda','Ciencia','Biografía','Novela','Terror','Idiomas','Salud','Arte','Cómic','Comedia','Tecnología','Bélicas','No asignado') DEFAULT 'No asignado',
  `State` enum('Disponible','No disponible','Extraviado') DEFAULT 'Disponible',
  PRIMARY KEY (`idbooks`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (23,'El principito','Antoine de Saint-Exupéry','Español','Infantil','Ciencia ficción','Disponible'),(24,'Charlie y la fábrica de chocolate','Roald Dahl','Español','Juvenil','Ciencia ficción','Extraviado'),(25,'Alicia en el país de las maravillas','Lewis Carroll','Español','Infantil','Ciencia ficción','Disponible'),(26,'Matilda','Roald Dahl','Español','Juvenil','Aventura','Disponible'),(27,'El libro de la selva','Rudyard Kipling','Español','Infantil','Aventura','Extraviado'),(28,'Harry Potter y la piedra filosofal','J.K. Rowling','Español','Juvenil','Fantasía','Disponible'),(29,'Cuentos de Hans Christian Andersen','Hans Christian Andersen','Español','Infantil','Misterio','Disponible'),(30,'Las crónicas de Narnia: El león, la bruja y el armario','C.S. Lewis','Español','Juvenil','Ciencia ficción','Disponible'),(31,'Donde viven los monstruos','Maurice Sendak','Español','Infantil','Misterio','Disponible'),(32,'El gato en el sombrero','Dr. Seuss','Español','Infantil','Ciencia ficción','Disponible'),(33,'Caperucita Roja','Charles Perrault','Español','Infantil','Fantasía','Disponible'),(34,'El patito feo','Hans Christian Andersen','Español','Infantil','Fantasía','Disponible'),(35,'El Grúfalo','Julia Donaldson','Español','Infantil','Ciencia ficción','Disponible'),(36,'La telaraña de Carlota','E.B. White','Español','Infantil','Aventura','Disponible'),(37,'El libro de los tres cerditos','James Marshall','Español','Infantil','Fantasía','Disponible'),(38,'El mago de Oz','L. Frank Baum','Español','Infantil','Fantasía','Disponible'),(39,'La historia interminable','Michael Ende','Español','Juvenil','Fantasía','No disponible'),(40,'Pippi Calzaslargas','Astrid Lindgren','Español','Juvenil','Aventura','Disponible'),(41,'El principito y el zorro','Antoine de Saint-Exupéry','Español','Infantil','Ciencia ficción','Disponible'),(42,'El secreto del jardín','Frances Hodgson Burnett','Español','Juvenil','Aventura','Disponible'),(43,'Harry Potter y la piedra filosofal','J.K. Rowling','Español','Juvenil','Fantasía','Disponible'),(44,'Los juegos del hambre','Suzanne Collins','Español','Juvenil','Ciencia ficción','Disponible'),(45,'Cazadores de sombras: Ciudad de hueso','Cassandra Clare','Español','Juvenil','Fantasía','Disponible'),(46,'Divergente','Veronica Roth','Español','Juvenil','Ciencia ficción','Disponible'),(47,'El corredor del laberinto','James Dashner','Español','Juvenil','Ciencia ficción','Disponible'),(48,'Bajo la misma estrella','John Green','Español','Juvenil','Drama','Disponible'),(49,'Ciudades de papel','John Green','Español','Juvenil','Drama','Disponible'),(50,'Crepúsculo','Stephenie Meyer','Español','Juvenil','Romance','Disponible'),(51,'El alquimista','Paulo Coelho','Español','Juvenil','Ciencia ficción','Disponible'),(52,'El nombre del viento','Patrick Rothfuss','Español','Juvenil','Fantasía','Disponible'),(53,'Cazadores de sombras: Ciudad de ceniza','Cassandra Clare','Español','Juvenil','Fantasía','Disponible'),(54,'Bajo la misma estrella','John Green','Español','Juvenil','Drama','Disponible'),(55,'Los juegos del hambre: En llamas','Suzanne Collins','Español','Juvenil','Ciencia ficción','Disponible'),(56,'La selección','Kiera Cass','Español','Juvenil','Romance','Disponible'),(57,'El sobrino del mago','C.S. Lewis','Español','Juvenil','Fantasía','Disponible'),(58,'Cazadores de sombras: Ciudad de cristal','Cassandra Clare','Español','Juvenil','Fantasía','Disponible'),(59,'El hobbit','J.R.R. Tolkien','Español','Juvenil','Fantasía','Disponible'),(60,'Crepúsculo: Luna nueva','Stephenie Meyer','Español','Juvenil','Romance','Disponible'),(61,'Cazadores de sombras: Ciudad de cristal','Cassandra Clare','Español','Juvenil','Fantasía','Disponible'),(62,'El alquimista','Paulo Coelho','Español','Juvenil','Ciencia ficción','Disponible'),(63,'El nombre del viento','Patrick Rothfuss','Español','Juvenil','Fantasía','Disponible'),(64,'1984','George Orwell','Español','Adulto','Ciencia ficción','Disponible'),(65,'Cien años de soledad','Gabriel García Márquez','Español','Adulto','Drama','Disponible'),(66,'El gran Gatsby','F. Scott Fitzgerald','Español','Adulto','Ciencia ficción','Disponible'),(67,'Matar a un ruiseñor','Harper Lee','Español','Adulto','Drama','Disponible'),(68,'El guardián entre el centeno','J.D. Salinger','Español','Adulto','Ciencia ficción','Disponible'),(69,'Orgullo y prejuicio','Jane Austen','Español','Adulto','Romance','Disponible'),(70,'Crónica de una muerte anunciada','Gabriel García Márquez','Español','Adulto','Drama','Disponible'),(71,'El código Da Vinci','Dan Brown','Español','Adulto','Misterio','Disponible'),(72,'La sombra del viento','Carlos Ruiz Zafón','Español','Adulto','Misterio','Disponible'),(73,'Los pilares de la Tierra','Ken Follett','Español','Adulto','Novela','Disponible'),(74,'Don Quijote de la Mancha','Miguel de Cervantes Saavedra','Español','Adulto','Novela','Disponible'),(75,'Mujercitas','Louisa May Alcott','Español','Adulto','Drama','Disponible'),(76,'El perfume','Patrick Süskind','Español','Adulto','Ciencia ficción','Disponible'),(77,'El retrato de Dorian Gray','Oscar Wilde','Español','Adulto','Drama','Disponible'),(78,'La catedral del mar','Ildefonso Falcones','Español','Adulto','Aventura','Disponible'),(79,'La hoguera de las vanidades','Tom Wolfe','Español','Adulto','Comedia','Disponible'),(80,'Los hombres que no amaban a las mujeres','Stieg Larsson','Español','Adulto','Misterio','Disponible'),(81,'La ladrona de libros','Markus Zusak','Español','Adulto','Drama','Disponible'),(82,'El médico','Noah Gordon','Español','Adulto','Novela','Disponible'),(83,'El nombre del viento','Patrick Rothfuss','Español','Adulto','Fantasía','Disponible'),(84,'La chica del tren','Paula Hawkins','Español','Adulto','Novela','Disponible'),(85,'El principito','Antoine de Saint-Exupéry','Ingles','Infantil','Ciencia ficción','Disponible'),(86,'Charlie y la fábrica de chocolate','Roald Dahl','Ingles','Infantil','Ciencia ficción','Disponible'),(87,'Alicia en el país de las maravillas','Lewis Carroll','Ingles','Infantil','Ciencia ficción','Disponible'),(88,'Matilda','Roald Dahl','Ingles','Infantil','Aventura','Disponible'),(89,'El libro de la selva','Rudyard Kipling','Ingles','Infantil','Aventura','Disponible'),(90,'Harry Potter y la piedra filosofal','J.K. Rowling','Ingles','Juvenil','Fantasía','Disponible'),(91,'Cuentos de Hans Christian Andersen','Hans Christian Andersen','Ingles','Infantil','Misterio','Disponible'),(92,'Las crónicas de Narnia: El león, la bruja y el armario','C.S. Lewis','Ingles','Infantil','Ciencia ficción','Disponible'),(93,'Donde viven los monstruos','Maurice Sendak','Ingles','Infantil','Misterio','Disponible'),(94,'El gato en el sombrero','Dr. Seuss','Ingles','Infantil','Ciencia ficción','Disponible'),(95,'Caperucita Roja','Charles Perrault','Ingles','Infantil','Fantasía','Disponible'),(96,'El patito feo','Hans Christian Andersen','Ingles','Infantil','Fantasía','Disponible'),(97,'El Grúfalo','Julia Donaldson','Ingles','Infantil','Ciencia ficción','Disponible'),(98,'La telaraña de Carlota','E.B. White','Ingles','Infantil','Aventura','Disponible'),(99,'El libro de los tres cerditos','James Marshall','Ingles','Infantil','Fantasía','Disponible'),(100,'El mago de Oz','L. Frank Baum','Ingles','Infantil','Fantasía','Disponible'),(101,'La historia interminable','Michael Ende','Ingles','Infantil','Fantasía','Disponible'),(102,'Pippi Calzaslargas','Astrid Lindgren','Ingles','Infantil','Aventura','Disponible'),(103,'El principito y el zorro','Antoine de Saint-Exupéry','Ingles','Infantil','Ciencia ficción','Disponible'),(104,'El secreto del jardín','Frances Hodgson Burnett','Ingles','Infantil','Aventura','Disponible'),(105,'Memorias de un amante sarnoso','Groucho Marx','Español','Adulto','Comedia','Disponible'),(106,'La taberna errante','Álvaro Cunqueiro','Español','Adulto','Comedia','Disponible'),(107,'Mi familia y otros animales','Gerald Durrell','Español','Adulto','Comedia','Disponible'),(108,'¡Noticia bomba!','Terry Pratchett','Español','Juvenil','Comedia','Disponible'),(109,'El inimitable Jeeves','P.G. Wodehouse','Español','Juvenil','Comedia','Disponible'),(110,'Sin noticias de Gurb','Eduardo Mendoza','Español','Adulto','Comedia','Disponible'),(111,'La conjura de los necios','John Kennedy Toole','Español','Adulto','Comedia','Disponible'),(112,'El enfermo imaginario','Molière','Español','Adulto','Comedia','Disponible'),(113,'Maldito karma','David Safier','Español','Juvenil','Comedia','Disponible'),(114,'Un yanki en la corte del Rey Arturo','Mark Twain','Español','Juvenil','Comedia','Disponible'),(115,'El abuelo que saltó por la ventana y se largó','Jonas Jonasson','Español','Adulto','Comedia','Disponible'),(116,'La Biblia','Varios autores','Ingles','Todos los públicos','Religión','Disponible'),(117,'El Corán','Varios autores','Ingles','Todos los públicos','Religión','Disponible'),(118,'El Tao de la física','Fritjof Capra','Ingles','Adulto','Religión','Disponible'),(119,'Bhagavad Gita','Varios autores','Ingles','Todos los públicos','Religión','Disponible'),(120,'Místicos de Oriente','Eva de Vitray-Meyerovitch','Ingles','Adulto','Religión','Disponible'),(121,'Historia de la filosofía','Frederick Copleston','Ingles','Adulto','Religión','Disponible'),(122,'El libro tibetano de los muertos','Varios autores','Ingles','Todos los públicos','Religión','Disponible'),(123,'La sabiduría de Buda','Anne Bancroft','Ingles','Adulto','Religión','Disponible'),(124,'Confesiones','San Agustín','Ingles','Adulto','Religión','Disponible'),(125,'El poder del ahora','Eckhart Tolle','Ingles','Adulto','Religión','Disponible'),(126,'La Biblia','Varios autores','Frances','Todos los públicos','Religión','Disponible'),(127,'El Corán','Varios autores','Frances','Todos los públicos','Religión','Disponible'),(128,'El Tao de la física','Fritjof Capra','Frances','Adulto','Religión','Disponible'),(129,'Bhagavad Gita','Varios autores','Frances','Todos los públicos','Religión','Disponible'),(130,'Místicos de Oriente','Eva de Vitray-Meyerovitch','Frances','Adulto','Religión','Disponible'),(131,'Historia de la filosofía','Frederick Copleston','Frances','Adulto','Religión','Disponible'),(132,'El libro tibetano de los muertos','Varios autores','Frances','Todos los públicos','Religión','Disponible'),(133,'La sabiduría de Buda','Anne Bancroft','Frances','Adulto','Religión','Disponible'),(134,'Confesiones','San Agustín','Frances','Adulto','Religión','Disponible'),(135,'El poder del ahora','Eckhart Tolle','Frances','Adulto','Religión','Disponible'),(136,'La Biblia','Varios autores','Italiano','Todos los públicos','Religión','Disponible'),(137,'El Corán','Varios autores','Italiano','Todos los públicos','Religión','Disponible'),(138,'El Tao de la física','Fritjof Capra','Italiano','Adulto','Religión','Disponible'),(139,'Bhagavad Gita','Varios autores','Italiano','Todos los públicos','Religión','Disponible'),(140,'Místicos de Oriente','Eva de Vitray-Meyerovitch','Italiano','Adulto','Religión','Disponible'),(141,'Historia de la filosofía','Frederick Copleston','Italiano','Adulto','Religión','Disponible'),(142,'El libro tibetano de los muertos','Varios autores','Italiano','Todos los públicos','Religión','Disponible'),(143,'La sabiduría de Buda','Anne Bancroft','Italiano','Adulto','Religión','Disponible'),(144,'Confesiones','San Agustín','Italiano','Adulto','Religión','Disponible'),(145,'El poder del ahora','Eckhart Tolle','Italiano','Adulto','Religión','Disponible'),(146,'Orgullo y prejuicio','Jane Austen','Español','Adulto','Romance','Disponible'),(147,'Romeo y Julieta','William Shakespeare','Español','Juvenil','Romance','Disponible'),(148,'Jane Eyre','Charlotte Brontë','Español','Adulto','Romance','Disponible'),(149,'Cumbres borrascosas','Emily Brontë','Español','Adulto','Romance','Disponible'),(150,'The Fault in Our Stars','John Green','English','Juvenil','Romance','Disponible'),(151,'El amante de Lady Chatterley','D.H. Lawrence','Español','Adulto','Romance','Disponible'),(152,'Memorias de una geisha','Arthur Golden','Español','Adulto','Romance','Disponible'),(153,'Los puentes de Madison','Robert James Waller','Español','Adulto','Romance','Disponible'),(154,'El tiempo entre costuras','María Dueñas','Español','Adulto','Romance','Disponible'),(155,'Un paseo para recordar','Nicholas Sparks','Español','Juvenil','Romance','Disponible'),(156,'En llamas','Suzanne Collins','Español','Juvenil','Romance','Disponible'),(157,'Outlander (Forastera)','Diana Gabaldon','Español','Adulto','Romance','Disponible'),(158,'El cuaderno de Noah','Nicholas Sparks','Español','Adulto','Romance','Disponible'),(159,'El amor en los tiempos del cólera','Gabriel García Márquez','Español','Adulto','Romance','Disponible'),(160,'La sombra del viento','Carlos Ruiz Zafón','Español','Adulto','Romance','Disponible'),(161,'Persuasión','Jane Austen','Español','Adulto','Romance','Disponible'),(162,'Como agua para chocolate','Laura Esquivel','Español','Adulto','Romance','Disponible'),(163,'Anna Karenina','León Tolstói','Español','Adulto','Romance','Disponible'),(164,'El amor en los tiempos del Facebook','Dante Gebel','Español','Adulto','Romance','Disponible'),(165,'Drácula','Bram Stoker','Español','Adulto','Terror','Disponible'),(166,'Frankenstein','Mary Shelley','Español','Adulto','Terror','Disponible'),(167,'El resplandor','Stephen King','Español','Adulto','Terror','Disponible'),(168,'It','Stephen King','Español','Adulto','Terror','Disponible'),(169,'La llamada de Cthulhu y otros cuentos','H.P. Lovecraft','Español','Adulto','Terror','Disponible'),(170,'El exorcista','William Peter Blatty','Español','Adulto','Terror','Disponible'),(171,'Psicosis','Robert Bloch','Español','Adulto','Terror','Disponible'),(172,'El retrato de Dorian Gray','Oscar Wilde','Español','Adulto','Terror','Disponible'),(173,'El silencio de los corderos','Thomas Harris','Español','Adulto','Terror','Disponible'),(174,'Pet Sematary','Stephen King','Inglés','Adulto','Terror','Disponible'),(175,'El perfume','Patrick Süskind','Español','Adulto','Terror','Disponible'),(176,'Misery','Stephen King','Inglés','Adulto','Terror','Disponible'),(177,'El extraño caso del Dr. Jekyll y Mr. Hyde','Robert Louis Stevenson','Español','Adulto','Terror','Disponible'),(178,'Carrie','Stephen King','Español','Adulto','Terror','Disponible'),(179,'La carretera','Cormac McCarthy','Español','Adulto','Terror','Disponible'),(180,'El corazón delator y otros cuentos','Edgar Allan Poe','Español','Adulto','Terror','Disponible'),(181,'American Psycho','Bret Easton Ellis','Ingles','Adulto','Terror','Disponible'),(182,'El nombre de la rosa','Umberto Eco','Español','Adulto','Terror','Disponible'),(183,'Entrevista con el vampiro','Anne Rice','Español','Adulto','Terror','Disponible'),(184,'El hombre en busca de sentido','Viktor Frankl','Español','Adulto','Psicología','Disponible'),(185,'Influence: The Psychology of Persuasion','Robert Cialdini','Ingles','Adulto','Psicología','Disponible'),(186,'Thinking, Fast and Slow','Daniel Kahneman','Ingles','Adulto','Psicología','Disponible'),(187,'Man\'s Search for Meaning','Viktor Frankl','Ingles','Adulto','Psicología','Disponible'),(188,'The Power of Now','Eckhart Tolle','Ingles','Adulto','Psicología','Disponible'),(189,'Quiet: The Power of Introverts in a World That Can\'t Stop Talking','Susan Cain','Ingles','Adulto','Psicología','Disponible'),(190,'Flow: The Psychology of Optimal Experience','Mihaly Csikszentmihalyi','Ingles','Adulto','Psicología','Disponible'),(191,'Mindset: The New Psychology of Success','Carol S. Dweck','Ingles','Adulto','Psicología','Disponible'),(192,'The Four Agreements: A Practical Guide to Personal Freedom','Don Miguel Ruiz','Ingles','Adulto','Psicología','Disponible'),(193,'Daring Greatly: How the Courage to Be Vulnerable Transforms the Way We Live, Love, Parent, and Lead','Brené Brown','Ingles','Adulto','Psicología','Disponible'),(194,'Emotional Intelligence: Why It Can Matter More Than IQ','Daniel Goleman','Ingles','Adulto','Psicología','Disponible'),(195,'Man and His Symbols','Carl Jung','Ingles','Adulto','Psicología','Disponible'),(196,'The Body Keeps the Score: Brain, Mind, and Body in the Healing of Trauma','Bessel van der Kolk','Ingles','Adulto','Psicología','Disponible'),(197,'Stumbling on Happiness','Daniel Gilbert','Ingles','Adulto','Psicología','Disponible'),(198,'The Psychology of Persuasion','Robert B. Cialdini','Ingles','Adulto','Psicología','Disponible'),(199,'The Gifts of Imperfection: Let Go of Who You Think You\'re Supposed to Be and Embrace Who You Are','Brené Brown','Ingles','Adulto','Psicología','Disponible'),(200,'The Road Less Traveled: A New Psychology of Love, Traditional Values, and Spiritual Growth','M. Scott Peck','Ingles','Adulto','Psicología','Disponible'),(201,'Thinking in Systems: A Primer','Donella H. Meadows','Ingles','Adulto','Psicología','Disponible'),(202,'Blink: The Power of Thinking Without Thinking','Malcolm Gladwell','Ingles','Adulto','Psicología','Disponible'),(211,'Prueba8','Dan Brown','Español','Adulto','Misterio','Disponible'),(212,'Prueba9','Carlos Ruiz Zafón','Español','Adulto','Misterio','Disponible'),(213,'Prueba10','Ken Follett','Español','Adulto','Novela','Disponible'),(214,'Prueba11','Miguel de Cervantes Saavedra','Español','Adulto','Novela','Disponible'),(220,'La llibreria màgica','Anna Manso','Valenciano','Infantil','Fantasía','Disponible'),(221,'El gegant dels núvols','Pep Albanell','Valenciano','Infantil','Aventura','Disponible'),(222,'La cuina màgica','Pepa Guardiola','Valenciano','Infantil','Fantasía','Disponible'),(223,'El tresor de l\'illa del Pirata','Ximo Cerdà','Valenciano','Juvenil','Aventura','Disponible'),(224,'La gran aventura de l\'esperit del bosc','Lluís Prats','Valenciano','Juvenil','Fantasía','Disponible'),(225,'El misteri del carrer de l\'Ou','Maria Mercè Roca','Valenciano','Juvenil','Misterio','Disponible'),(226,'La bruixa avorrida','Mar Benegas','Valenciano','Infantil','Fantasía','Disponible'),(227,'El drac que no tenia foc','Miquel Desclot','Valenciano','Infantil','Fantasía','Disponible'),(228,'La pell de l\'unicorn','Manuel Llaser','Valenciano','Juvenil','Aventura','Disponible');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loands`
--

DROP TABLE IF EXISTS `loands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loands` (
  `idloan` int NOT NULL AUTO_INCREMENT,
  `iduser` int DEFAULT NULL,
  `idbooks` int DEFAULT NULL,
  `idvideos` int DEFAULT NULL,
  `idsoundTracks` int DEFAULT NULL,
  `LoanDate` date DEFAULT NULL,
  PRIMARY KEY (`idloan`),
  KEY `loads_ibfk_1` (`iduser`),
  KEY `loads_ibfk_2` (`idbooks`),
  KEY `loads_ibfk_3` (`idvideos`),
  KEY `loads_ibfk_4` (`idsoundTracks`),
  CONSTRAINT `loands_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`),
  CONSTRAINT `loands_ibfk_2` FOREIGN KEY (`idbooks`) REFERENCES `books` (`idbooks`),
  CONSTRAINT `loands_ibfk_3` FOREIGN KEY (`idvideos`) REFERENCES `videos` (`idvideos`),
  CONSTRAINT `loands_ibfk_4` FOREIGN KEY (`idsoundTracks`) REFERENCES `soundTracks` (`idsoundTracks`)
) ENGINE=InnoDB AUTO_INCREMENT=4006 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loands`
--

LOCK TABLES `loands` WRITE;
/*!40000 ALTER TABLE `loands` DISABLE KEYS */;
INSERT INTO `loands` VALUES (4001,1005,NULL,3016,NULL,'2023-05-23'),(4002,1005,NULL,NULL,2007,'2023-06-23'),(4005,1006,39,NULL,2004,'2023-06-26');
/*!40000 ALTER TABLE `loands` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `tr_actualizar_fecha` BEFORE INSERT ON `loands` FOR EACH ROW BEGIN
    SET NEW.LoanDate = CURDATE();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `records`
--

DROP TABLE IF EXISTS `records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `records` (
  `idrecords` int NOT NULL AUTO_INCREMENT,
  `iduser` int DEFAULT NULL,
  `idloan` int DEFAULT NULL,
  `description` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`idrecords`),
  KEY `records_ibfk_1` (`iduser`),
  KEY `records_ibfk_2` (`idloan`),
  CONSTRAINT `records_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `records_ibfk_2` FOREIGN KEY (`idloan`) REFERENCES `loands` (`idloan`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `records`
--

LOCK TABLES `records` WRITE;
/*!40000 ALTER TABLE `records` DISABLE KEYS */;
/*!40000 ALTER TABLE `records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soundTracks`
--

DROP TABLE IF EXISTS `soundTracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `soundTracks` (
  `idsoundTracks` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(225) NOT NULL,
  `Composer` varchar(225) NOT NULL,
  `RecordCompany` varchar(225) DEFAULT NULL,
  `State` enum('Disponible','No Disponible','Extraviado') DEFAULT 'Disponible',
  PRIMARY KEY (`idsoundTracks`)
) ENGINE=InnoDB AUTO_INCREMENT=2061 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soundTracks`
--

LOCK TABLES `soundTracks` WRITE;
/*!40000 ALTER TABLE `soundTracks` DISABLE KEYS */;
INSERT INTO `soundTracks` VALUES (2001,'El código Da Vinci','Hans Zimmer','Decca Records','Disponible'),(2002,'Harry Potter y la piedra filosofal','John Williams','Warner Bros. Records','Disponible'),(2003,'Cien años de soledad','Gustavo Santaolalla','Sony Classical','Disponible'),(2004,'La ladrona de libros','John Williams','Sony Classical','No Disponible'),(2005,'El nombre del viento','Patrick Rothfuss','WaterTower Music','Disponible'),(2006,'La sombra del viento','Alberto Iglesias','Sony Classical','Disponible'),(2007,'Los juegos del hambre','James Newton Howard','Universal Republic','No Disponible'),(2008,'El hobbit: Un viaje inesperado','Howard Shore','WaterTower Music','Disponible'),(2009,'El laberinto de los espíritus','Alberto Iglesias','Sony Classical','Disponible'),(2010,'Cazadores de sombras: Ciudad de hueso','Atli Örvarsson','Milan Records','Disponible'),(2011,'El perfume: Historia de un asesino','Reinhold Heil, Johnny Klimek, Tom Tykwer','EMI Classics','Disponible'),(2012,'La chica del tren','Danny Elfman','Sony Classical','Disponible'),(2013,'El alquimista','Alan Silvestri','Decca Records','Disponible'),(2014,'El lector','Nico Muhly','Deutsche Grammophon','Disponible'),(2015,'El señor de los anillos: La comunidad del anillo','Howard Shore','Reprise Records','Disponible'),(2016,'El gran Gatsby','Craig Armstrong','Interscope Records','Disponible'),(2017,'Los juegos del hambre: En llamas','James Newton Howard','Republic Records','Disponible'),(2018,'Orgullo y prejuicio','Dario Marianelli','Decca Records','Disponible'),(2019,'La chica con el tatuaje del dragón','Trent Reznor, Atticus Ross','Null Corporation','Disponible'),(2020,'Crónicas de Narnia: El león, la bruja y el armario','Harry Gregson-Williams','Walt Disney Records','Disponible'),(2021,'Las ventajas de ser un marginado','Michael Brook','Atlantic Records','Disponible'),(2022,'La saga Crepúsculo: Amanecer - Parte 1','Carter Burwell','Atlantic Records','Disponible'),(2023,'Divergente','Junkie XL','Interscope Records','Disponible'),(2024,'El niño con el pijama de rayas','James Horner','Varèse Sarabande','Disponible'),(2025,'Matar a un ruiseñor','Elmer Bernstein','Universal Records','Disponible'),(2026,'La ladrona de libros','John Williams','Sony Classical','Disponible'),(2027,'La sombra del viento','Alberto Iglesias','Sony Classical','Disponible'),(2028,'El amor en los tiempos del cólera','Antonio Pinto','New Line Records','Disponible'),(2029,'El club de la lucha','Dust Brothers','EMI','Disponible'),(2030,'El atlas de las nubes','Tom Tykwer, Johnny Klimek, Reinhold Heil','WaterTower Music','Disponible'),(2031,'El cazador de sueños','James Newton Howard','Varèse Sarabande','Disponible'),(2032,'El corredor del laberinto','John Paesano','Sony Classical','Disponible'),(2033,'El cuaderno de Noah','Aaron Zigman','New Line Records','Disponible'),(2034,'El gran gigante bonachón','John Williams','Walt Disney Records','Disponible'),(2035,'El gran hotel Budapest','Alexandre Desplat','ABKCO Music & Records','Disponible'),(2036,'El nombre de la rosa','James Horner','Virgin Records','Disponible'),(2037,'El paciente inglés','Gabriel Yared','Decca Records','Disponible'),(2038,'El perfume: Historia de un asesino','Reinhold Heil, Johnny Klimek, Tom Tykwer','EMI Classics','Disponible'),(2039,'El resplandor','Wendy Carlos, Rachel Elkind','Warner Bros. Records','Disponible'),(2040,'El libro de la selva','John Debney','Walt Disney Records','Disponible'),(2041,'El último mohicano','Trevor Jones, Randy Edelman','Morgan Creek Records','Disponible'),(2042,'El juego de Ender','Steve Jablonsky','Varese Sarabande','Disponible'),(2043,'El león, la bruja y el armario','Harry Gregson-Williams','Walt Disney Records','Disponible'),(2044,'El origen de los guardianes','Alexandre Desplat','Varèse Sarabande','Disponible'),(2045,'Matilda','David Newman','Sony Classical','Disponible'),(2046,'Charlie y la fábrica de chocolate','Danny Elfman','Warner Bros. Records','Disponible'),(2047,'El Grinch','James Horner','Interscope Records','Disponible'),(2048,'Las crónicas de Spiderwick','James Horner','Lakeshore Records','Disponible'),(2049,'Stuart Little','Alan Silvestri','Sony Classical','Disponible'),(2050,'La telaraña de Charlotte','Danny Elfman','Sony Classical','Disponible'),(2051,'El libro de la vida','Gustavo Santaolalla','Sony Classical','Disponible'),(2052,'Los mundos de Coraline','Bruno Coulais','Lakeshore Records','Disponible'),(2053,'El principito','Hans Zimmer, Richard Harvey','WaterTower Music','Disponible'),(2054,'El libro de la selva','John Debney','Walt Disney Records','Disponible'),(2055,'Cómo entrenar a tu dragón','John Powell','Varèse Sarabande','Disponible'),(2056,'Paddington','Nick Urata','Decca Records','Disponible'),(2057,'La historia interminable','Klaus Doldinger, Giorgio Moroder','WEA','Disponible'),(2058,'El gato con botas','Henry Jackman','Sony Classical','Disponible'),(2059,'La oveja Shaun: La película','Ilan Eshkeri','Sony Classical','Disponible'),(2060,'El viaje de Chihiro','Joe Hisaishi','Tokuma Japan Communications','Disponible');
/*!40000 ALTER TABLE `soundTracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `iduser` int NOT NULL AUTO_INCREMENT,
  `DNI` varchar(9) NOT NULL,
  `Name` varchar(225) NOT NULL,
  `Lastname` varchar(225) NOT NULL,
  `Email` varchar(225) NOT NULL,
  `Password` varchar(225) NOT NULL,
  `Rol` enum('admin','user') NOT NULL DEFAULT 'user',
  PRIMARY KEY (`iduser`),
  UNIQUE KEY `DNI_UNIQUE` (`DNI`),
  UNIQUE KEY `Email_UNIQUE` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=1008 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'12345678E','Prueba','Prueba','prueba@prueba.com','12345','user'),(2,'23456789D','Pepito','Grillo','pepito@grillo','23456','user'),(1001,'12345688B','jess','jessica','jess@jessica.com','23456','admin'),(1002,'12344556R','jone','jone','jone@jone.com','98765','admin'),(1003,'12345677A','maria','maria','maria@maria.com','12345','user'),(1005,'13345668C','may','may','may@may.com','34567','user'),(1006,'12234555D','edurne','edurne','edurne@edurne.com','45678','user');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videos` (
  `idvideos` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(225) NOT NULL,
  `Director` varchar(225) NOT NULL,
  `Year` int DEFAULT NULL,
  `Category` enum('Fantasía','Drama','Ciencia ficción','Romance','Misterio','Thriller','Aventura','Historia','Ayuda','Ciencia','Biografía','Novela','Terror','Idiomas','Salud','Arte','Cómic','Comedia','Tecnología','Bélicas','No asignado') DEFAULT 'No asignado',
  `AgeRating` enum('Adulto','Juvenil','Infantil','Todos los públicos','No asignado') DEFAULT 'No asignado',
  `State` enum('Disponible','No disponible','Extraviado') DEFAULT 'Disponible',
  PRIMARY KEY (`idvideos`)
) ENGINE=InnoDB AUTO_INCREMENT=3029 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (3009,'El Padrino','Francis Ford Coppola',1972,'Drama','Adulto','Disponible'),(3010,'El Señor de los Anillos: La Comunidad del Anillo','Peter Jackson',2001,'Fantasía','Juvenil','Disponible'),(3011,'Harry Potter y la Piedra Filosofal','Chris Columbus',2001,'Fantasía','Infantil','Disponible'),(3012,'La naranja mecánica','Stanley Kubrick',1971,'Ciencia ficción','Adulto','Disponible'),(3013,'Jurassic Park','Steven Spielberg',1993,'Ciencia ficción','Juvenil','Disponible'),(3014,'El gran Gatsby','Baz Luhrmann',2013,'Drama','Juvenil','Disponible'),(3015,'Orgullo y prejuicio','Joe Wright',2005,'Romance','Infantil','Disponible'),(3016,'El silencio de los corderos','Jonathan Demme',1991,'Thriller','Adulto','No disponible'),(3017,'Forrest Gump','Robert Zemeckis',1994,'Drama','Juvenil','Disponible'),(3018,'Crepúsculo','Catherine Hardwicke',2008,'Fantasía','Juvenil','Disponible'),(3019,'El nombre de la rosa','Jean-Jacques Annaud',1986,'Misterio','Adulto','Disponible'),(3020,'Los juegos del hambre','Gary Ross',2012,'Ciencia ficción','Juvenil','Disponible'),(3021,'El club de la pelea','David Fincher',1999,'Drama','Adulto','Disponible'),(3022,'El resplandor','Stanley Kubrick',1980,'Terror','Adulto','Disponible'),(3023,'El diario de Bridget Jones','Sharon Maguire',2001,'Comedia','Adulto','Disponible'),(3024,'Matar a un ruiseñor','Robert Mulligan',1962,'Drama','Infantil','Disponible'),(3025,'Las ventajas de ser un marginado','Stephen Chbosky',2012,'Romance','Juvenil','Disponible'),(3026,'El curioso caso de Benjamin Button','David Fincher',2008,'Romance','Juvenil','No disponible'),(3027,'El código Da Vinci','Ron Howard',2006,'Misterio','Juvenil','Disponible'),(3028,'Los hombres que no amaban a las mujeres','David Fincher',2011,'Misterio','Adulto','Disponible');
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-27 13:35:30
