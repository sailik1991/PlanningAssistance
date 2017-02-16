-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: radar
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.14.04.2

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
-- Table structure for table `alert`
--

DROP TABLE IF EXISTS `alert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alert` (
  `message` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alert`
--

LOCK TABLES `alert` WRITE;
/*!40000 ALTER TABLE `alert` DISABLE KEYS */;
/*!40000 ALTER TABLE `alert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disj_landmark`
--

DROP TABLE IF EXISTS `disj_landmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disj_landmark` (
  `landmark1` int(11) DEFAULT NULL,
  `landmark2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disj_landmark`
--

LOCK TABLES `disj_landmark` WRITE;
/*!40000 ALTER TABLE `disj_landmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `disj_landmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `durations`
--

DROP TABLE IF EXISTS `durations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `durations` (
  `type` varchar(50) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `durations`
--

LOCK TABLES `durations` WRITE;
/*!40000 ALTER TABLE `durations` DISABLE KEYS */;
INSERT INTO `durations` VALUES ('duration_unit_actions',1),('duration_deploy_police_cars',1),('duration_deploy_small_engines',2),('duration_deploy_big_engines',4),('duration_deploy_ladders',3),('duration_deploy_bulldozers',3),('duration_deploy_helicopters',3),('duration_deploy_rescuers',3),('duration_deploy_ambulances',2),('duration_position_policemen',1),('duration_contact_media',1),('duration_set_up_helpline',1),('duration_issue_local_alert',1),('duration_block_road',2),('duration_prepare_evacuation',1),('duration_evacuation',5),('duration_extinguish_small_fire',1),('duration_extinguish_big_fire',1),('duration_barricade',1),('duration_search_casualties',3),('duration_address_media',2),('duration_attend_casualties',3);
/*!40000 ALTER TABLE `durations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fire_stations`
--

DROP TABLE IF EXISTS `fire_stations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fire_stations` (
  `fire_station` varchar(200) DEFAULT NULL,
  `small_engines` int(11) DEFAULT NULL,
  `big_engines` int(11) DEFAULT NULL,
  `ladders` int(11) DEFAULT NULL,
  `bulldozers` int(11) DEFAULT NULL,
  `helicopters` int(11) DEFAULT NULL,
  `rescuers` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fire_stations`
--

LOCK TABLES `fire_stations` WRITE;
/*!40000 ALTER TABLE `fire_stations` DISABLE KEYS */;
INSERT INTO `fire_stations` VALUES ('Tempe_Fire_Stn',0,1,1,1,1,1),('Mesa_Fire_Stn',0,0,1,1,1,0),('Scottsdale_Fire_Stn',0,0,1,1,1,0),('Phoenix_Fire_Stn',0,0,1,1,1,0);
/*!40000 ALTER TABLE `fire_stations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fire_stations_actual`
--

DROP TABLE IF EXISTS `fire_stations_actual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fire_stations_actual` (
  `fire_station` varchar(200) DEFAULT NULL,
  `small_engines` int(11) DEFAULT NULL,
  `big_engines` int(11) DEFAULT NULL,
  `ladders` int(11) DEFAULT NULL,
  `bulldozers` int(11) DEFAULT NULL,
  `helicopters` int(11) DEFAULT NULL,
  `rescuers` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fire_stations_actual`
--

LOCK TABLES `fire_stations_actual` WRITE;
/*!40000 ALTER TABLE `fire_stations_actual` DISABLE KEYS */;
INSERT INTO `fire_stations_actual` VALUES ('adminfire',1,0,1,1,1,1),('mesafire',0,1,1,0,0,1),('scottsfire',1,0,1,1,0,1),('phxfire',0,0,1,1,1,1);
/*!40000 ALTER TABLE `fire_stations_actual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospitals`
--

DROP TABLE IF EXISTS `hospitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospitals` (
  `hospital` varchar(200) DEFAULT NULL,
  `ambulances` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitals`
--

LOCK TABLES `hospitals` WRITE;
/*!40000 ALTER TABLE `hospitals` DISABLE KEYS */;
INSERT INTO `hospitals` VALUES ('lukes',1),('joseph',1);
/*!40000 ALTER TABLE `hospitals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landmarks`
--

DROP TABLE IF EXISTS `landmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `landmarks` (
  `id` int(11) DEFAULT NULL,
  `landmark` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landmarks`
--

LOCK TABLES `landmarks` WRITE;
/*!40000 ALTER TABLE `landmarks` DISABLE KEYS */;
INSERT INTO `landmarks` VALUES (2,'deployed_bulldozers(byeng)'),(6,'deployed_engines(byeng)'),(1,'deployed_helicopters(byeng)'),(4,'deployed_rescuers(byeng)'),(3,'deployed_big_engines(byeng)');
/*!40000 ALTER TABLE `landmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_type`
--

DROP TABLE IF EXISTS `object_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_type` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_type`
--

LOCK TABLES `object_type` WRITE;
/*!40000 ALTER TABLE `object_type` DISABLE KEYS */;
INSERT INTO `object_type` VALUES (1,'police'),(2,'fire'),(3,'medic'),(4,'transport'),(5,'policestation'),(6,'firestation'),(7,'hospital'),(8,'pois');
/*!40000 ALTER TABLE `object_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objects`
--

DROP TABLE IF EXISTS `objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `objects` (
  `object_name` varchar(50) DEFAULT NULL,
  `type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objects`
--

LOCK TABLES `objects` WRITE;
/*!40000 ALTER TABLE `objects` DISABLE KEYS */;
INSERT INTO `objects` VALUES ('policeChief',1),('firechief',2),('medichief',3),('transportchief',4),('apachestation',5),('courtstation',5),('substation',5),('adminfire',6),('mesafire',6),('scottsfire',6),('phxfire',6),('lukes',7),('joseph',7),('lake',8),('mill',8),('marketplace',8),('rural',8),('byeng',8);
/*!40000 ALTER TABLE `objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan_under_execution`
--

DROP TABLE IF EXISTS `plan_under_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan_under_execution` (
  `action_id` varchar(30) NOT NULL DEFAULT '',
  `action_name` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_under_execution`
--

LOCK TABLES `plan_under_execution` WRITE;
/*!40000 ALTER TABLE `plan_under_execution` DISABLE KEYS */;
/*!40000 ALTER TABLE `plan_under_execution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plans` (
  `plan_desc` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans`
--

LOCK TABLES `plans` WRITE;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
INSERT INTO `plans` VALUES ('(alert firechief adminfire)');
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `police_stations`
--

DROP TABLE IF EXISTS `police_stations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `police_stations` (
  `police_station` varchar(200) DEFAULT NULL,
  `cars` int(11) DEFAULT NULL,
  `police_men` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `police_stations`
--

LOCK TABLES `police_stations` WRITE;
/*!40000 ALTER TABLE `police_stations` DISABLE KEYS */;
INSERT INTO `police_stations` VALUES ('apachestation',1,1),('courtstation',1,1),('substation',1,1);
/*!40000 ALTER TABLE `police_stations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `predicate_resource`
--

DROP TABLE IF EXISTS `predicate_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `predicate_resource` (
  `id` int(11) DEFAULT NULL,
  `resource_type` varchar(50) DEFAULT NULL,
  `isDisjunctive` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `predicate_resource`
--

LOCK TABLES `predicate_resource` WRITE;
/*!40000 ALTER TABLE `predicate_resource` DISABLE KEYS */;
INSERT INTO `predicate_resource` VALUES (1,'helicopters',0),(2,'bulldozers',0),(3,'big_engines',0),(4,'rescuers',0),(5,'small_engines',0),(6,'deployed_engines',1);
/*!40000 ALTER TABLE `predicate_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `predicates_for_fireStation`
--

DROP TABLE IF EXISTS `predicates_for_fireStation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `predicates_for_fireStation` (
  `id` int(11) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `predicates_for_fireStation`
--

LOCK TABLES `predicates_for_fireStation` WRITE;
/*!40000 ALTER TABLE `predicates_for_fireStation` DISABLE KEYS */;
INSERT INTO `predicates_for_fireStation` VALUES (1,'has_small_engines_number'),(2,'has_big_engines_number'),(3,'has_ladders_number'),(4,'has_bulldozers_number'),(5,'has_helicopters_number'),(6,'has_rescuers_number');
/*!40000 ALTER TABLE `predicates_for_fireStation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `predicates_for_hospital`
--

DROP TABLE IF EXISTS `predicates_for_hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `predicates_for_hospital` (
  `id` int(11) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `predicates_for_hospital`
--

LOCK TABLES `predicates_for_hospital` WRITE;
/*!40000 ALTER TABLE `predicates_for_hospital` DISABLE KEYS */;
INSERT INTO `predicates_for_hospital` VALUES (1,'has_ambulances_number');
/*!40000 ALTER TABLE `predicates_for_hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `predicates_for_policeStation`
--

DROP TABLE IF EXISTS `predicates_for_policeStation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `predicates_for_policeStation` (
  `id` int(11) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `predicates_for_policeStation`
--

LOCK TABLES `predicates_for_policeStation` WRITE;
/*!40000 ALTER TABLE `predicates_for_policeStation` DISABLE KEYS */;
INSERT INTO `predicates_for_policeStation` VALUES (1,'has_police_car_number'),(2,'has_policemen_number');
/*!40000 ALTER TABLE `predicates_for_policeStation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subgoals`
--

DROP TABLE IF EXISTS `subgoals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subgoals` (
  `subgoal_desc` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subgoals`
--

LOCK TABLES `subgoals` WRITE;
/*!40000 ALTER TABLE `subgoals` DISABLE KEYS */;
INSERT INTO `subgoals` VALUES ('extinguished_fire byeng'),('addressed_media');
/*!40000 ALTER TABLE `subgoals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suggested_actions`
--

DROP TABLE IF EXISTS `suggested_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suggested_actions` (
  `action_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suggested_actions`
--

LOCK TABLES `suggested_actions` WRITE;
/*!40000 ALTER TABLE `suggested_actions` DISABLE KEYS */;
INSERT INTO `suggested_actions` VALUES ('(alert_firechief_adminfire )'),('(contact_media_policechief )'),('(deploy_big_engines_firechief_adminfire_byeng )'),('(alert_firechief_adminfire )'),('(extinguish_big_fire_firechief_byeng )'),('(deploy_bulldozers_firechief_adminfire_byeng )'),('(alert_firechief_adminfire )'),('(deploy_helicopters_firechief_adminfire_byeng )'),('(alert_firechief_adminfire )'),('(deploy_rescuers_firechief_adminfire_byeng )'),('(search_casualties_firechief_byeng )'),('(explain_obs_address_media_policechief_1 )'),('; cost = 24 (general cost)');
/*!40000 ALTER TABLE `suggested_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_specification`
--

DROP TABLE IF EXISTS `task_specification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_specification` (
  `goal_id` varchar(30) NOT NULL DEFAULT '',
  `task_description` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`goal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_specification`
--

LOCK TABLES `task_specification` WRITE;
/*!40000 ALTER TABLE `task_specification` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_specification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `task_desc` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES ('fire_at byeng');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp`
--

DROP TABLE IF EXISTS `temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp` (
  `action_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp`
--

LOCK TABLES `temp` WRITE;
/*!40000 ALTER TABLE `temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(20) DEFAULT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('vxxv','vxv','vxvxv','vxvxv','cvxcv');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `violated_constraints`
--

DROP TABLE IF EXISTS `violated_constraints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `violated_constraints` (
  `constraint_id` varchar(30) NOT NULL DEFAULT '',
  `constraint_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`constraint_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `violated_constraints`
--

LOCK TABLES `violated_constraints` WRITE;
/*!40000 ALTER TABLE `violated_constraints` DISABLE KEYS */;
/*!40000 ALTER TABLE `violated_constraints` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-21 18:23:47
