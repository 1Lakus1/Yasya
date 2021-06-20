-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: cooking_db
-- ------------------------------------------------------
-- Server version	8.0.25-cluster

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `descriptions`
--

DROP TABLE IF EXISTS `descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `descriptions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `description` text NOT NULL,
  `ingridients` text NOT NULL,
  `time` int NOT NULL,
  `level` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_descriptions_1_idx` (`product_id`),
  CONSTRAINT `fk_descriptions_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descriptions`
--

LOCK TABLES `descriptions` WRITE;
/*!40000 ALTER TABLE `descriptions` DISABLE KEYS */;
INSERT INTO `descriptions` VALUES (1,1,'a:6:{i:0;s:763:\"Как сделать классическую окрошку с колбасой? Подготовьте продукты для приготовления окрошки. Картофель надо предварительно отварить. Для этого хорошенько помойте его и неочищенным закиньте в кипящую воду, так в нем сохранятся витамины. Варите картофель 25 минут. Яйца отварите в течении 10 минут после закипания. Затем оставьте их остывать в той воде, в которой они варились. Так белок останется мягким, а желток ярким.\";i:1;s:221:\"Зеленый лук хорошо промойте под проточной водой, затем обсушите при помощи бумажных или обычных полотенец. Порежьте лук.\";i:2;s:408:\"Сложите лук в емкость, в которой будете готовить окрошку. Добавьте соль. С помощью пестика или любой другой толкушки разомните лук до выделения сока. Окрошка с добавлением такого мятого лука приобретает яркий вкус и аромат.\";i:3;s:237:\"Укроп промойте под холодной водой, обсушите. Отделите жесткие стебли, их лучше не использовать. Остальные веточки мелко порубите.\";i:4;s:299:\"Отваренный картофель остудите. Не используйте его в теплом виде, он испортит вкус холодного супа. Очистите картофель от кожуры. Мелко нарежьте картофель на кубики.\";i:5;s:298:\"Колбасу порежьте тонкой соломкой. Мне больше нравится такая нарезка остальных продуктов для окрошки. Я подсмотрела идею у шеф-повара одного известного ресторана.\";}','a:10:{s:5:\"600г\";s:12:\"курицы\";s:5:\"500г\";s:16:\"картошки\";s:16:\"Японский\";s:10:\"уксус\";s:12:\"Васаби\";N;s:8:\"Нори\";N;s:8:\"Гари\";N;s:23:\"Японский рис\";N;s:12:\"Форель\";N;s:25:\"Свежий огурец\";N;s:8:\"2 ч.л.\";s:8:\"соли\";}',130,'Hard','2021-06-11 17:24:00',NULL),(2,2,'a:6:{i:0;s:87:\"Яйца взбить с сахаром и солью до появления пены.\";i:1;s:202:\"Добавить стакан молока, хорошо взбить венчиком, постепенно всыпать муку, постоянно разбивая комочки венчиком.\";i:2;s:128:\"Повторить предыдущий пункт, добавив оставшиеся стаканы молока и муки.\";i:3;s:113:\"Влить растительное масло (можно заменить топленым сливочным).\";i:4;s:224:\"Погасить соду, добавить в тесто и еще раз хорошо перемешать. Оставить постоять минут 5–10. За это время разогреть сковороду.\";i:5;s:214:\"Жарить на умеренном огне. Как только появятся и начнут лопаться пузырьки, перевернуть оладушек и жарить еще секунд 20.\";}','a:7:{s:23:\"Куриное яйцо\";s:12:\"2 штуки\";s:8:\"Соль\";s:25:\"1 чайная ложка\";s:10:\"Сахар\";s:29:\"3 столовые ложки\";s:12:\"Молоко\";s:16:\"2 стакана\";s:27:\"Пшеничная мука\";s:16:\"2 стакана\";s:23:\"Гашеная сода\";s:25:\"1 чайная ложка\";s:35:\"Растительное масло\";s:17:\"¼ стакана\";}',20,'Easy','2021-06-20 01:33:35',NULL),(3,3,'a:6:{i:0;s:430:\"В кастрюлю на 3 литра положить мясо и налить воды. Как только бульон начнет кипеть, добавить 1 чайную ложку соли, пару горошков душистого перца и черного, 2–3 листика лаврового листа. Варить от момента закипания 20 минут. Затем мясо вынуть.\";i:1;s:374:\"Картофель почистить и нарезать кубиками. Лук нарезать кубиками. Морковь натереть на терке. Мясо порезать небольшими кусочками. Плавленый сыр (если в виде брусочка) натереть на терке или порезать кубиками.\";i:2;s:122:\"В кипящий бульон добавить картофель. С момента закипания 5–7 минут.\";i:3;s:317:\"В это время сделать слабую зажарку на сливочном масле. Сначала положить лук, затем морковь. Слегка посолить и поперчить. Готовую зажарку добавить в суп и варить еще 5–7 минут.\";i:4;s:207:\"Затем добавить порезанное мясо. Варить 3–4 минуты, добавить плавленый сыр, хорошенько помешать и выключить огонь.\";i:5;s:116:\"Перед подачей посыпать зеленью. По желанию подавать с гренками.\";}','a:12:{s:23:\"Куриное филе\";s:6:\"500 г\";s:25:\"Плавленый сыр\";s:6:\"200 г\";s:18:\"Картофель\";s:6:\"400 г\";s:6:\"Лук\";s:6:\"150 г\";s:14:\"Морковь\";s:6:\"180 г\";s:29:\"Сливочное масло\";s:15:\"по вкусу\";s:8:\"Соль\";s:15:\"по вкусу\";s:38:\"Молотый черный перец\";s:15:\"по вкусу\";s:12:\"Зелень\";s:15:\"по вкусу\";s:12:\"Гренки\";s:15:\"по вкусу\";s:25:\"Лавровый лист\";s:12:\"3 штуки\";s:40:\"Черный перец горошком\";s:12:\"3 штуки\";}',60,'Middle','2021-06-20 01:40:46',NULL),(4,4,'a:4:{i:0;s:267:\"Вскипятите воду в большой кастрюле и сварите пасту до состояния аль денте. Обычно для этого нужно варить ее на минуту меньше, чем указано на пачке.\";i:1;s:311:\"Пока паста варится, растопите на сковороде масло и обжарьте на нем мелко нарезанные лук, чеснок и бекон. До мягкости и до отчетливого чесночного и жаренобеконного запаха.\";i:2;s:274:\"Снимите сковороду с огня и в глубокой миске взбейте четыре яичных желтка со сливками и тертым пармезаном. Посолите и поперчите смесь, еще раз взбейте.\";i:3;s:367:\"В готовые спагетти вывалите обжаренные с луком и чесноком кусочки бекона. Влейте смесь сливок, желтков и пармезана, перемешайте. И сразу подавайте, посыпав свеженатертым сыром и черным молотым перцем.\";}','a:8:{s:16:\"Спагетти\";s:6:\"250 г\";s:29:\"Сливочное масло\";s:5:\"20 г\";s:12:\"Чеснок\";s:16:\"2 зубчика\";s:10:\"Бекон\";s:5:\"50 г\";s:23:\"Сливки 20%-ные\";s:8:\"200 мл\";s:36:\"Тертый сыр пармезан\";s:5:\"50 г\";s:23:\"Куриное яйцо\";s:12:\"4 штуки\";s:8:\"Соль\";s:15:\"по вкусу\";}',20,'Easy','2021-06-20 01:45:50',NULL),(5,5,'a:4:{i:0;s:185:\"Разогреть духовку. Отделить белки от желтков. Белки взбить в крепкую пену, постепенно добавляя сахар.\";i:1;s:226:\"Продолжать взбивать, добавляя по одному желтки, затем гашеную соду и муку. Тесто по консистенции должно напоминать сметану.\";i:2;s:287:\"Смазать противень растительным маслом. Вылить половину теста на противень, разложить равномерно нарезанные дольками яблоки, залить второй половиной теста.\";i:3;s:236:\"Поместить противень в разогретую духовку. 3 минуты подержать при температуре 200 градусов, затем убавить до 180 и выпекать 20-25 минут.\";}','a:6:{s:10:\"Сахар\";s:14:\"1 стакан\";s:23:\"Куриное яйцо\";s:10:\"5 штук\";s:27:\"Пшеничная мука\";s:14:\"1 стакан\";s:12:\"Яблоко\";s:10:\"7 штук\";s:35:\"Растительное масло\";s:29:\"1 столовая ложка\";s:8:\"Сода\";s:26:\"½ чайной ложки\";}',35,'Middle','2021-06-20 01:52:20',NULL),(6,6,'a:8:{i:0;s:279:\"В сотейник положить сливочное масло и 2 ложки растительного масла, растопить. Постепенно добавлять муку и размешивать так, чтобы не оставалось комочков.\";i:1;s:279:\"Когда вся мука вмешана, влить все молоко. Убавить огонь и томить до нужной консистенции: не жидкой, но и не слишком густой. Консистенция нежирной сметаны.\";i:2;s:158:\"На сковороде раскалить оливковое масло. Добавить мясной фарш (лучше свинина+телятина).\";i:3;s:164:\"Фарш жарить до полуготовности. Влить в него соус болоньезе, посолить и поперчить по вкусу.\";i:4;s:254:\"Духовку разогреть до 180 градусов. Форму смазать сливочным маслом. На дно вылить немного соуса бешамель, чуть-чуть, только чтобы покрыть дно.\";i:5;s:229:\"Выложить пласты (не вареные). На пласты выложить получившийся фарш (не жалеем!), на фарш — натертый сыр. На сыр — соус бешамель.\";i:6;s:302:\"Соуса нужно выкладывать столько, сколько необходимо, на ваш взгляд, чтобы лазанья получилась сочной. Поверх соуса выложить сухие листы лазаньи. Повторить процедуру.\";i:7;s:252:\"Последний слой листов промазать соусом бешамель и сверху щедро засыпать сыром. Дать постоять минут 7–10. Поставить в духовку. Печь 30 минут.\";}','a:8:{s:21:\"Мясной фарш\";s:6:\"600 г\";s:27:\"Соус болоньезе\";s:6:\"600 г\";s:29:\"Сливочное масло\";s:5:\"60 г\";s:27:\"Пшеничная мука\";s:31:\"2,5 столовые ложки\";s:29:\"Оливковое масло\";s:29:\"2 столовые ложки\";s:12:\"Молоко\";s:8:\"750 мл\";s:51:\"Готовые сухие листы лазаньи\";s:11:\"10 штук\";s:21:\"Твердый сыр\";s:6:\"500 г\";}',40,'Hard','2021-06-20 15:20:16',NULL),(7,7,'a:7:{i:0;s:342:\"Нарежьте болгарский перец кольцами (лучше выбрать трех разных цветов — это выглядит красочнее), предварительно удалив семена. Лук нарезать полукольцами, чеснок натереть на мелкой терке.\";i:1;s:336:\"Куриные грудки посолить, поперчить. В комбинации 2 столовые ложки оливкового и 1 столовая ложка сливочного масла, обжарить грудки до золотистой корочки. Переложить в форму для духовки.\";i:2;s:151:\"В этой же сковороде обжарить лук до золотистого цвета, переложить в форму к курице.\";i:3;s:172:\"Время для болгарского перца — слегка обжарить кольца, пока они не станут мягкими — и к курице.\";i:4;s:536:\"Тертый чеснок поместить в сковороду, пассеровать 30 секунд, затем залить водой, добавив нарезанные помидоры (кожицу можно предварительно удалить), хорошо перемешать. Добавить итальянских трав, овощной бульонный кубик, соль, перец, щепотку мускатного ореха. Влить полстакана сливок, перемешать.\";i:5;s:257:\"Варить соус 5 минут на медленном огне. Залить им курицу с овощами. Закрыть фольгой, отправить в духовку при температуре 200 градусов на 30 минут.\";i:6;s:248:\"Достать, посыпать натертым на терке сыром, поместить курицу обратно в духовку, но уже без фольги, еще на 15 минут, пока сыр не расплавится.\";}','a:9:{s:27:\"Куриная грудка\";s:12:\"4 штуки\";s:6:\"Лук\";s:12:\"2 штуки\";s:25:\"Сладкий перец\";s:12:\"3 штуки\";s:12:\"Чеснок\";s:16:\"3 зубчика\";s:16:\"Помидоры\";s:12:\"4 штуки\";s:44:\"Овощной бульонный кубик\";s:12:\"1 штука\";s:6:\"Сыр\";s:6:\"100 г\";s:29:\"Сливочное масло\";s:29:\"1 столовая ложка\";s:29:\"Оливковое масло\";s:29:\"2 столовые ложки\";}',45,'MIddle','2021-06-20 15:26:00',NULL),(8,8,'a:4:{i:0;s:456:\"Просеять муку и соль в глубокую миску. Перетереть между ладоней с мягким маслом, чтобы смесь напоминала хлебные крошки, затем добавить слегка взбитое яйцо и замесить тесто. Скатать его в шар, завернуть в пленку и отправить в холодильник на 30–50 минут.\";i:1;s:537:\"Очистить тыкву, удалить семена. Нарезать мякоть кубиками. Положить в кастрюлю с толстым дном или сотейник, добавить немного воды и тушить до мягкости и полного испарения жидкости. Блендером измельчить мякоть в однородную массу. Для пущей нежности получившееся пюре можно протереть через сито.\";i:2;s:495:\"Раскатать тесто на слегка присыпанной мукой поверхности и застелить им круглую низкую форму диаметром около 30 см. Поверх теста положить лист бумаги для запекания и засыпать любую крупу. Это позволит коржу равномерно пропечься. Выпекать в течение 15 минут при 190 градусах.\";i:3;s:444:\"Выложить тыквенное пюре в глубокую миску, взбить с двумя яйцами, сахаром, сливками, пряностями и солью. Вылить смесь в форму с запеченным тестом. Выпекать пирог 50–55 минут при 180 градусах. Когда пирог остынет, его можно смело разрезать на порции.\";}','a:8:{s:27:\"Пшеничная мука\";s:6:\"400 г\";s:29:\"Сливочное масло\";s:6:\"250 г\";s:23:\"Куриное яйцо\";s:12:\"3 штуки\";s:10:\"Тыква\";s:6:\"900 г\";s:10:\"Сахар\";s:6:\"200 г\";s:23:\"Сливки 30%-ные\";s:8:\"200 мл\";s:12:\"Корица\";s:15:\"по вкусу\";s:14:\"Ванилин\";s:15:\"по вкусу\";}',120,'Easy','2021-06-20 15:31:14',NULL);
/*!40000 ALTER TABLE `descriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Куриные ножки на гриле','article_1.png','2021-06-11 14:01:16','2021-06-11 11:12:43'),(2,'Американские блины','pancake.jpg','2021-06-20 01:19:13',NULL),(3,'Сырный суп по‑французски с курицей','chezze.jpg','2021-06-20 01:34:43',NULL),(4,'Спагетти карбонара с красным луком','spagetti.jpg','2021-06-20 01:41:37',NULL),(5,'Классическая шарлотка','sharlotte.jpg','2021-06-20 01:46:51',NULL),(6,'Лазанья классическая с мясом','lazaniya.jpg','2021-06-20 15:15:05',NULL),(7,'Курица «Пикассо»','picasso.jpg','2021-06-20 15:21:29',NULL),(8,'Американский тыквенный пирог с корицей','pie.jpg','2021-06-20 15:29:45',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-20 17:25:20