-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: fang
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

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
-- Table structure for table `bsession`
--

DROP TABLE IF EXISTS `bsession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bsession` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci,
  `expired_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bsession_token_unique` (`token`),
  UNIQUE KEY `bsession_user_id_unique` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bsession`
--

LOCK TABLES `bsession` WRITE;
/*!40000 ALTER TABLE `bsession` DISABLE KEYS */;
INSERT INTO `bsession` VALUES (20,'5a69f1a3106af78b9cab19959e4af8ff46156ee460c74',NULL,'[]','2018-02-01 23:02:59','2018-01-25 23:02:59','2018-01-25 23:02:59'),(21,'5a69f1bcf0566bb1443cc31d7396bf73e7858cea114e1',NULL,'[]','2018-02-01 23:03:24','2018-01-25 23:03:24','2018-01-25 23:03:24'),(22,'5a69f1bd3e0e4951124d4a093eeae83d9726a20295498',NULL,'[]','2018-02-01 23:03:25','2018-01-25 23:03:25','2018-01-25 23:03:25'),(26,'5a6aa1a2dee495291822d0636dc429e80e953c58b6a76',NULL,'[]','2018-02-02 11:33:54','2018-01-26 11:33:54','2018-01-26 11:33:54'),(33,'5a6aa63a8bda61ca5c750a30312d1919ae6a4d636dcc4',NULL,'[]','2018-02-02 11:53:30','2018-01-26 11:53:30','2018-01-26 11:53:30'),(50,'5a6abce1bc2d751f15efdd170e6043fa02a74882f0470',NULL,'[]','2018-02-02 13:30:09','2018-01-26 13:30:09','2018-01-26 13:30:09'),(56,'5a71759cc555dbc29e1f123ed6f213520caad629ee432',NULL,'[]','2018-02-07 15:51:56','2018-01-31 15:51:56','2018-01-31 15:51:56'),(57,'5a71759d46b65ca5150ff1c65880ded50f92ed067c95e',NULL,'[]','2018-02-07 15:51:57','2018-01-31 15:51:57','2018-01-31 15:51:57'),(60,'5a9f94f2a75d8effc299a1addb07e7089f9b269c31f2f',1,'[]','2018-03-14 15:29:54','2018-03-07 15:29:54','2018-03-07 15:29:54');
/*!40000 ALTER TABLE `bsession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `house`
--

DROP TABLE IF EXISTS `house`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `house` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `subTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '子标题',
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '封面图',
  `region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '区域',
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '面积',
  `unitPrice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '单价',
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '总价',
  `roomCount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '几室几厅',
  `direction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '朝向',
  `community` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '隶属小区',
  `floor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '楼层',
  `floors` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '最大楼层',
  `houseType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '房屋类型',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系人',
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `decoration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '装修状态',
  `floorAge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '楼龄',
  `houseAgeLimit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产权年限',
  `supplyHeating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '供暖',
  `elevator` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电梯',
  `communityInfo` longtext COLLATE utf8mb4_unicode_ci COMMENT '小区信息',
  `surroundings` longtext COLLATE utf8mb4_unicode_ci COMMENT '周边信息',
  `traffic` longtext COLLATE utf8mb4_unicode_ci COMMENT '交通信息',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `house`
--

LOCK TABLES `house` WRITE;
/*!40000 ALTER TABLE `house` DISABLE KEYS */;
INSERT INTO `house` VALUES (1,'南北通透板楼不临街不把边 实景婚房精装修','南湖东园二区不临街不把边 南北通透两居室 双阳台','http://p3cur76xq.bkt.clouddn.com/home.jpg','昌平区','200','50000','10000000','{\"livingRoom\":\"2\",\"bedRoom\":\"3\"}','[\"\\u4e1c\",\"\\u5357\"]','南湖东园','8','20','公寓楼','李先生','13800000000','精装','10','70','集中','1','小区是1997年拿地，1999年建成，北京市示范小区，总体以板楼为主，此房是小区的主打户型，小区物业管理完善，保安24小时值班，每栋楼物业都在更换门禁，去除小广告，创建一个文明的社区，需要您的加入','出小区东门就看到一个很大的菜市场，里面不但蔬菜水果价格便宜，而且保证很新鲜，每天人流量很大，很多业主自驾车前来购买，就是为了吃一口新鲜的蔬菜，出小区北门150米有京客隆超市，里面生活用品很齐全。','小区位置很好，出行方便，距离地铁14/15号线望京站518米（距离来源：百度地图）出小区西门就是公交车站南湖东园站，自驾车2.1公里可以上北四环（距离来源：百度地图）距离京承高速公路1.2公里（距离来源：百度地图），出行方便。','2018-01-30 17:13:21','2018-01-30 17:13:21'),(2,'南北通透板楼不临街不把边 实景婚房精装修','南湖东园二区不临街不把边 南北通透两居室 双阳台','http://p3cur76xq.bkt.clouddn.com/home.jpg','昌平区','200','50000','10000000','\"{\\\"livingRoom\\\":\\\"2\\\",\\\"bedRoom\\\":\\\"3\\\"}\"','\"[\\\"\\\\u4e1c\\\",\\\"\\\\u5357\\\"]\"','南湖东园','8','20','公寓楼','李先生','13800000000','精装','10','70','集中','1','小区是1997年拿地，1999年建成，北京市示范小区，总体以板楼为主，此房是小区的主打户型，小区物业管理完善，保安24小时值班，每栋楼物业都在更换门禁，去除小广告，创建一个文明的社区，需要您的加入','出小区东门就看到一个很大的菜市场，里面不但蔬菜水果价格便宜，而且保证很新鲜，每天人流量很大，很多业主自驾车前来购买，就是为了吃一口新鲜的蔬菜，出小区北门150米有京客隆超市，里面生活用品很齐全。','小区位置很好，出行方便，距离地铁14/15号线望京站518米（距离来源：百度地图）出小区西门就是公交车站南湖东园站，自驾车2.1公里可以上北四环（距离来源：百度地图）距离京承高速公路1.2公里（距离来源：百度地图），出行方便。','2018-01-30 17:18:42','2018-01-30 17:18:42'),(3,'南北通透板楼不临街不把边 实景婚房精装修','南湖东园二区不临街不把边 南北通透两居室 双阳台','http://p3cur76xq.bkt.clouddn.com/home.jpg','昌平区','200','50000','10000000','\"{\\\"livingRoom\\\":\\\"2\\\",\\\"bedRoom\\\":\\\"3\\\"}\"','\"[\\\"\\\\u4e1c\\\",\\\"\\\\u5357\\\"]\"','南湖东园','8','20','公寓楼','李先生','13800000000','精装','10','70','集中','1','小区是1997年拿地，1999年建成，北京市示范小区，总体以板楼为主，此房是小区的主打户型，小区物业管理完善，保安24小时值班，每栋楼物业都在更换门禁，去除小广告，创建一个文明的社区，需要您的加入','出小区东门就看到一个很大的菜市场，里面不但蔬菜水果价格便宜，而且保证很新鲜，每天人流量很大，很多业主自驾车前来购买，就是为了吃一口新鲜的蔬菜，出小区北门150米有京客隆超市，里面生活用品很齐全。','小区位置很好，出行方便，距离地铁14/15号线望京站518米（距离来源：百度地图）出小区西门就是公交车站南湖东园站，自驾车2.1公里可以上北四环（距离来源：百度地图）距离京承高速公路1.2公里（距离来源：百度地图），出行方便。','2018-01-30 17:18:42','2018-01-30 17:18:42'),(4,'南北通透板楼不临街不把边 实景婚房精装修','南湖东园二区不临街不把边 南北通透两居室 双阳台','http://p3cur76xq.bkt.clouddn.com/home.jpg','昌平区','200','50000','10000000','\"{\\\"livingRoom\\\":\\\"2\\\",\\\"bedRoom\\\":\\\"3\\\"}\"','\"[\\\"\\\\u4e1c\\\",\\\"\\\\u5357\\\"]\"','南湖东园','8','20','公寓楼','李先生','13800000000','精装','10','70','集中','1','小区是1997年拿地，1999年建成，北京市示范小区，总体以板楼为主，此房是小区的主打户型，小区物业管理完善，保安24小时值班，每栋楼物业都在更换门禁，去除小广告，创建一个文明的社区，需要您的加入','出小区东门就看到一个很大的菜市场，里面不但蔬菜水果价格便宜，而且保证很新鲜，每天人流量很大，很多业主自驾车前来购买，就是为了吃一口新鲜的蔬菜，出小区北门150米有京客隆超市，里面生活用品很齐全。','小区位置很好，出行方便，距离地铁14/15号线望京站518米（距离来源：百度地图）出小区西门就是公交车站南湖东园站，自驾车2.1公里可以上北四环（距离来源：百度地图）距离京承高速公路1.2公里（距离来源：百度地图），出行方便。','2018-01-30 17:18:43','2018-01-30 17:18:43'),(5,'南北通透板楼不临街不把边 实景婚房精装修','南湖东园二区不临街不把边 南北通透两居室 双阳台','http://p3cur76xq.bkt.clouddn.com/home.jpg','昌平区','200','50000','10000000','\"{\\\"livingRoom\\\":\\\"2\\\",\\\"bedRoom\\\":\\\"3\\\"}\"','\"[\\\"\\\\u4e1c\\\",\\\"\\\\u5357\\\"]\"','南湖东园','8','20','公寓楼','李先生','13800000000','精装','10','70','集中','1','小区是1997年拿地，1999年建成，北京市示范小区，总体以板楼为主，此房是小区的主打户型，小区物业管理完善，保安24小时值班，每栋楼物业都在更换门禁，去除小广告，创建一个文明的社区，需要您的加入','出小区东门就看到一个很大的菜市场，里面不但蔬菜水果价格便宜，而且保证很新鲜，每天人流量很大，很多业主自驾车前来购买，就是为了吃一口新鲜的蔬菜，出小区北门150米有京客隆超市，里面生活用品很齐全。','小区位置很好，出行方便，距离地铁14/15号线望京站518米（距离来源：百度地图）出小区西门就是公交车站南湖东园站，自驾车2.1公里可以上北四环（距离来源：百度地图）距离京承高速公路1.2公里（距离来源：百度地图），出行方便。','2018-01-30 17:18:44','2018-01-30 17:18:44'),(6,'南北通透板楼不临街不把边 实景婚房精装修','南湖东园二区不临街不把边 南北通透两居室 双阳台','http://p3cur76xq.bkt.clouddn.com/home.jpg','昌平区','200','50000','10000000','\"{\\\"livingRoom\\\":\\\"2\\\",\\\"bedRoom\\\":\\\"3\\\"}\"','\"[\\\"\\\\u4e1c\\\",\\\"\\\\u5357\\\"]\"','南湖东园','8','20','公寓楼','李先生','13800000000','精装','10','70','集中','1','小区是1997年拿地，1999年建成，北京市示范小区，总体以板楼为主，此房是小区的主打户型，小区物业管理完善，保安24小时值班，每栋楼物业都在更换门禁，去除小广告，创建一个文明的社区，需要您的加入','出小区东门就看到一个很大的菜市场，里面不但蔬菜水果价格便宜，而且保证很新鲜，每天人流量很大，很多业主自驾车前来购买，就是为了吃一口新鲜的蔬菜，出小区北门150米有京客隆超市，里面生活用品很齐全。','小区位置很好，出行方便，距离地铁14/15号线望京站518米（距离来源：百度地图）出小区西门就是公交车站南湖东园站，自驾车2.1公里可以上北四环（距离来源：百度地图）距离京承高速公路1.2公里（距离来源：百度地图），出行方便。','2018-01-30 17:18:44','2018-01-30 17:18:44'),(7,'南北通透板楼不临街不把边 实景婚房精装修','南湖东园二区不临街不把边 南北通透两居室 双阳台','http://p3cur76xq.bkt.clouddn.com/home.jpg','昌平区','200','50000','10000000','\"{\\\"livingRoom\\\":\\\"2\\\",\\\"bedRoom\\\":\\\"3\\\"}\"','\"[\\\"\\\\u4e1c\\\",\\\"\\\\u5357\\\"]\"','南湖东园','8','20','公寓楼','李先生','13800000000','精装','10','70','集中','1','小区是1997年拿地，1999年建成，北京市示范小区，总体以板楼为主，此房是小区的主打户型，小区物业管理完善，保安24小时值班，每栋楼物业都在更换门禁，去除小广告，创建一个文明的社区，需要您的加入','出小区东门就看到一个很大的菜市场，里面不但蔬菜水果价格便宜，而且保证很新鲜，每天人流量很大，很多业主自驾车前来购买，就是为了吃一口新鲜的蔬菜，出小区北门150米有京客隆超市，里面生活用品很齐全。','小区位置很好，出行方便，距离地铁14/15号线望京站518米（距离来源：百度地图）出小区西门就是公交车站南湖东园站，自驾车2.1公里可以上北四环（距离来源：百度地图）距离京承高速公路1.2公里（距离来源：百度地图），出行方便。','2018-01-30 17:18:45','2018-01-30 17:18:45'),(8,'南北通透板楼不临街不把边 实景婚房精装修','南湖东园二区不临街不把边 南北通透两居室 双阳台','http://p3cur76xq.bkt.clouddn.com/home.jpg','昌平区','200','50000','10000000','\"{\\\"livingRoom\\\":\\\"2\\\",\\\"bedRoom\\\":\\\"3\\\"}\"','\"[\\\"\\\\u4e1c\\\",\\\"\\\\u5357\\\"]\"','南湖东园','8','20','公寓楼','李先生','13800000000','精装','10','70','集中','1','小区是1997年拿地，1999年建成，北京市示范小区，总体以板楼为主，此房是小区的主打户型，小区物业管理完善，保安24小时值班，每栋楼物业都在更换门禁，去除小广告，创建一个文明的社区，需要您的加入','出小区东门就看到一个很大的菜市场，里面不但蔬菜水果价格便宜，而且保证很新鲜，每天人流量很大，很多业主自驾车前来购买，就是为了吃一口新鲜的蔬菜，出小区北门150米有京客隆超市，里面生活用品很齐全。','小区位置很好，出行方便，距离地铁14/15号线望京站518米（距离来源：百度地图）出小区西门就是公交车站南湖东园站，自驾车2.1公里可以上北四环（距离来源：百度地图）距离京承高速公路1.2公里（距离来源：百度地图），出行方便。','2018-01-30 17:18:45','2018-01-30 17:18:45'),(9,'南北通透板楼不临街不把边 实景婚房精装修','南湖东园二区不临街不把边 南北通透两居室 双阳台','http://p3cur76xq.bkt.clouddn.com/home.jpg','昌平区','200','50000','10000000','\"{\\\"livingRoom\\\":\\\"2\\\",\\\"bedRoom\\\":\\\"3\\\"}\"','\"[\\\"\\\\u4e1c\\\",\\\"\\\\u5357\\\"]\"','南湖东园','8','20','公寓楼','李先生','13800000000','精装','10','70','集中','1','小区是1997年拿地，1999年建成，北京市示范小区，总体以板楼为主，此房是小区的主打户型，小区物业管理完善，保安24小时值班，每栋楼物业都在更换门禁，去除小广告，创建一个文明的社区，需要您的加入','出小区东门就看到一个很大的菜市场，里面不但蔬菜水果价格便宜，而且保证很新鲜，每天人流量很大，很多业主自驾车前来购买，就是为了吃一口新鲜的蔬菜，出小区北门150米有京客隆超市，里面生活用品很齐全。','小区位置很好，出行方便，距离地铁14/15号线望京站518米（距离来源：百度地图）出小区西门就是公交车站南湖东园站，自驾车2.1公里可以上北四环（距离来源：百度地图）距离京承高速公路1.2公里（距离来源：百度地图），出行方便。','2018-01-30 17:18:46','2018-01-30 17:18:46');
/*!40000 ALTER TABLE `house` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (6,'2018_01_20_065721_create_table_bsession',1),(7,'2018_01_20_065812_create_table_user',1),(8,'2018_01_25_125125_add_email_to_user_table',1),(11,'2018_01_30_163719_create_house_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_username_unique` (`username`),
  UNIQUE KEY `user_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'yuan','123123','admin','2018-01-25 15:41:59','2018-01-25 15:41:59','yuan@mail.com'),(3,'bbbb','123123123','user','2018-01-25 15:48:32','2018-01-26 14:43:56','bbbb@mail.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-07 10:05:20
