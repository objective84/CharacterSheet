CREATE DATABASE  IF NOT EXISTS `charactersheet` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `charactersheet`;

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
DROP TABLE IF EXISTS `armor_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `armor_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `armor_groups` WRITE;
/*!40000 ALTER TABLE `armor_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `armor_groups` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `armormodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `armormodel` (
  `armorClass` int(11) NOT NULL,
  `maxDexModifier` int(11) NOT NULL,
  `stealthDisadvantage` tinyint(1) NOT NULL,
  `strength` int(11) NOT NULL,
  `id` bigint(20) NOT NULL,
  `armorGroup_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKFECC754AE3F46692` (`armorGroup_id`),
  KEY `FKFECC754A15FEE84E` (`id`),
  CONSTRAINT `FKFECC754A15FEE84E` FOREIGN KEY (`id`) REFERENCES `equipmentmodel` (`id`),
  CONSTRAINT `FKFECC754AE3F46692` FOREIGN KEY (`armorGroup_id`) REFERENCES `armor_groups` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `armormodel` WRITE;
/*!40000 ALTER TABLE `armormodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `armormodel` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `background`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `background` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `feature_description` varchar(255) DEFAULT NULL,
  `feature_title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `background` WRITE;
/*!40000 ALTER TABLE `background` DISABLE KEYS */;
/*!40000 ALTER TABLE `background` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `background_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `background_languages` (
  `background_id` bigint(20) NOT NULL,
  `languages_id` bigint(20) NOT NULL,
  KEY `FK84CB064AB990454C` (`languages_id`),
  KEY `FK84CB064AB9AD53EF` (`background_id`),
  CONSTRAINT `FK84CB064AB990454C` FOREIGN KEY (`languages_id`) REFERENCES `languages` (`id`),
  CONSTRAINT `FK84CB064AB9AD53EF` FOREIGN KEY (`background_id`) REFERENCES `background` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `background_languages` WRITE;
/*!40000 ALTER TABLE `background_languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `background_languages` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `background_proficiency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `background_proficiency` (
  `background_id` bigint(20) NOT NULL,
  `proficiencies_id` bigint(20) NOT NULL,
  KEY `FKBFB43EE4A8FA7B27` (`proficiencies_id`),
  KEY `FKBFB43EE4B9AD53EF` (`background_id`),
  CONSTRAINT `FKBFB43EE4A8FA7B27` FOREIGN KEY (`proficiencies_id`) REFERENCES `proficiency` (`id`),
  CONSTRAINT `FKBFB43EE4B9AD53EF` FOREIGN KEY (`background_id`) REFERENCES `background` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `background_proficiency` WRITE;
/*!40000 ALTER TABLE `background_proficiency` DISABLE KEYS */;
/*!40000 ALTER TABLE `background_proficiency` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_equipment` (
  `character_id` bigint(20) NOT NULL,
  `equipment_id` bigint(20) NOT NULL,
  KEY `FK1E177BF8F8D2D49F` (`equipment_id`),
  KEY `FK1E177BF86666F1E6` (`character_id`),
  CONSTRAINT `FK1E177BF86666F1E6` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`),
  CONSTRAINT `FK1E177BF8F8D2D49F` FOREIGN KEY (`equipment_id`) REFERENCES `equipmentmodel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `character_equipment` WRITE;
/*!40000 ALTER TABLE `character_equipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_equipment` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_language` (
  `character_id` bigint(20) NOT NULL,
  `language_id` bigint(20) NOT NULL,
  KEY `FKBFC187AE8DC14FE` (`language_id`),
  KEY `FKBFC187AE6666F1E6` (`character_id`),
  CONSTRAINT `FKBFC187AE6666F1E6` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`),
  CONSTRAINT `FKBFC187AE8DC14FE` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `character_language` WRITE;
/*!40000 ALTER TABLE `character_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_language` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_proficiency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_proficiency` (
  `character_id` bigint(20) NOT NULL,
  `proficiency_id` bigint(20) NOT NULL,
  KEY `FK1BDF845F53CB6A02` (`proficiency_id`),
  KEY `FK1BDF845F6666F1E6` (`character_id`),
  CONSTRAINT `FK1BDF845F53CB6A02` FOREIGN KEY (`proficiency_id`) REFERENCES `proficiency` (`id`),
  CONSTRAINT `FK1BDF845F6666F1E6` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `character_proficiency` WRITE;
/*!40000 ALTER TABLE `character_proficiency` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_proficiency` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `character_traits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_traits` (
  `character_id` bigint(20) NOT NULL,
  `trait_id` int(11) NOT NULL,
  KEY `FKE71261FB56E9E79C` (`trait_id`),
  KEY `FKE71261FB6666F1E6` (`character_id`),
  CONSTRAINT `FKE71261FB6666F1E6` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`),
  CONSTRAINT `FKE71261FB56E9E79C` FOREIGN KEY (`trait_id`) REFERENCES `traits` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `character_traits` WRITE;
/*!40000 ALTER TABLE `character_traits` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_traits` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `characteristic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `characteristic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `background_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK15D5819BB9AD53EF` (`background_id`),
  CONSTRAINT `FK15D5819BB9AD53EF` FOREIGN KEY (`background_id`) REFERENCES `background` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `characteristic` WRITE;
/*!40000 ALTER TABLE `characteristic` DISABLE KEYS */;
/*!40000 ALTER TABLE `characteristic` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `characters` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cha` int(11) DEFAULT NULL,
  `con` int(11) DEFAULT NULL,
  `currentHealth` int(11) DEFAULT NULL,
  `dex` int(11) DEFAULT NULL,
  `intel` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `maxHealth` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `str` int(11) DEFAULT NULL,
  `wis` int(11) DEFAULT NULL,
  `clazz_id` bigint(20) DEFAULT NULL,
  `race_id` bigint(20) DEFAULT NULL,
  `coinPurse_id` bigint(20) DEFAULT NULL,
  `equippedArmor_id` bigint(20) DEFAULT NULL,
  `equippedMainHand_id` bigint(20) DEFAULT NULL,
  `equippedOffHand_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4A3BAA6A91512DE8` (`clazz_id`),
  KEY `FK4A3BAA6AF7C9388C` (`race_id`),
  KEY `FK4A3BAA6AE2831F45` (`coinPurse_id`),
  KEY `FK4A3BAA6AD0CD221C` (`equippedArmor_id`),
  KEY `FK4A3BAA6A1C005348` (`equippedMainHand_id`),
  KEY `FK4A3BAA6A1A1779EE` (`equippedOffHand_id`),
  CONSTRAINT `FK4A3BAA6A1A1779EE` FOREIGN KEY (`equippedOffHand_id`) REFERENCES `equipmentmodel` (`id`),
  CONSTRAINT `FK4A3BAA6A1C005348` FOREIGN KEY (`equippedMainHand_id`) REFERENCES `weaponmodel` (`id`),
  CONSTRAINT `FK4A3BAA6A91512DE8` FOREIGN KEY (`clazz_id`) REFERENCES `classes` (`id`),
  CONSTRAINT `FK4A3BAA6AD0CD221C` FOREIGN KEY (`equippedArmor_id`) REFERENCES `armormodel` (`id`),
  CONSTRAINT `FK4A3BAA6AE2831F45` FOREIGN KEY (`coinPurse_id`) REFERENCES `coinpurse` (`id`),
  CONSTRAINT `FK4A3BAA6AF7C9388C` FOREIGN KEY (`race_id`) REFERENCES `races` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `characters` WRITE;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
INSERT INTO `characters` VALUES (2,8,8,6,8,8,1,6,'Test',8,8,1,1,2,NULL,NULL,NULL);
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `class_trait`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_trait` (
  `class_id` int(11) NOT NULL,
  `trait_id` bigint(20) NOT NULL,
  KEY `FKE7A30487B3B84272` (`trait_id`),
  KEY `FKE7A30487341CFFF2` (`class_id`),
  CONSTRAINT `FKE7A30487341CFFF2` FOREIGN KEY (`class_id`) REFERENCES `traits` (`id`),
  CONSTRAINT `FKE7A30487B3B84272` FOREIGN KEY (`trait_id`) REFERENCES `classes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `class_trait` WRITE;
/*!40000 ALTER TABLE `class_trait` DISABLE KEYS */;
/*!40000 ALTER TABLE `class_trait` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `class_traits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_traits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `class_traits` WRITE;
/*!40000 ALTER TABLE `class_traits` DISABLE KEYS */;
/*!40000 ALTER TABLE `class_traits` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `class_traits_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_traits_classes` (
  `classTraits_id` int(11) NOT NULL,
  `classes_id` bigint(20) NOT NULL,
  KEY `FK526ADFB338508C17` (`classes_id`),
  KEY `FK526ADFB320690D68` (`classTraits_id`),
  CONSTRAINT `FK526ADFB320690D68` FOREIGN KEY (`classTraits_id`) REFERENCES `class_traits` (`id`),
  CONSTRAINT `FK526ADFB338508C17` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `class_traits_classes` WRITE;
/*!40000 ALTER TABLE `class_traits_classes` DISABLE KEYS */;
/*!40000 ALTER TABLE `class_traits_classes` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hit_die` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `skills_at_creation` int(11) DEFAULT NULL,
  `hitDie_id` bigint(20) DEFAULT NULL,
  `startingWealthDieAmount` int(11) DEFAULT NULL,
  `startingWealthDie_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK32E1382682385ECC` (`hitDie_id`),
  KEY `FK32E138266BBD03A6` (`startingWealthDie_id`),
  CONSTRAINT `FK32E138266BBD03A6` FOREIGN KEY (`startingWealthDie_id`) REFERENCES `dice` (`id`),
  CONSTRAINT `FK32E1382682385ECC` FOREIGN KEY (`hitDie_id`) REFERENCES `dice` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (1,NULL,'Wizard',NULL,1,3,1);
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `classes_proficiency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classes_proficiency` (
  `classes_id` bigint(20) NOT NULL,
  `proficiencies_id` bigint(20) NOT NULL,
  KEY `FK341215BCC82B3DE4` (`proficiencies_id`),
  KEY `FK341215BC56AC255A` (`classes_id`),
  CONSTRAINT `FK341215BC56AC255A` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`),
  CONSTRAINT `FK341215BCC82B3DE4` FOREIGN KEY (`proficiencies_id`) REFERENCES `proficiency` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `classes_proficiency` WRITE;
/*!40000 ALTER TABLE `classes_proficiency` DISABLE KEYS */;
/*!40000 ALTER TABLE `classes_proficiency` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `coin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `abbr` varchar(255) DEFAULT NULL,
  `denomination` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `coin` WRITE;
/*!40000 ALTER TABLE `coin` DISABLE KEYS */;
/*!40000 ALTER TABLE `coin` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `coinpurse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coinpurse` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cp` int(11) DEFAULT NULL,
  `ep` int(11) DEFAULT NULL,
  `gp` int(11) DEFAULT NULL,
  `pp` int(11) DEFAULT NULL,
  `sp` int(11) DEFAULT NULL,
  `character_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4B4D25EE6666F1E6` (`character_id`),
  CONSTRAINT `FK4B4D25EE6666F1E6` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `coinpurse` WRITE;
/*!40000 ALTER TABLE `coinpurse` DISABLE KEYS */;
INSERT INTO `coinpurse` VALUES (1,0,0,110,0,0,NULL),(2,0,0,110,0,0,NULL);
/*!40000 ALTER TABLE `coinpurse` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `coins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coins` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `abbr` varchar(255) DEFAULT NULL,
  `denomination` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `coins` WRITE;
/*!40000 ALTER TABLE `coins` DISABLE KEYS */;
/*!40000 ALTER TABLE `coins` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `dice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `maxRoll` int(11) DEFAULT NULL,
  `minRoll` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `equipmentmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipmentmodel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `itemWeight` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `priceDenomination_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK41073A5B297BCECF` (`priceDenomination_id`),
  KEY `FK41073A5BF1236E92` (`priceDenomination_id`),
  CONSTRAINT `FK41073A5BF1236E92` FOREIGN KEY (`priceDenomination_id`) REFERENCES `coin` (`id`),
  CONSTRAINT `FK41073A5B297BCECF` FOREIGN KEY (`priceDenomination_id`) REFERENCES `coins` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `equipmentmodel` WRITE;
/*!40000 ALTER TABLE `equipmentmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipmentmodel` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `proficiency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proficiency` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `typeString` varchar(255) DEFAULT NULL,
  `proficiencyType` int(11) DEFAULT NULL,
  `proficiencyTypeString` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `proficiency` WRITE;
/*!40000 ALTER TABLE `proficiency` DISABLE KEYS */;
/*!40000 ALTER TABLE `proficiency` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `race_trait`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `race_trait` (
  `race_id` int(11) NOT NULL,
  `trait_id` bigint(20) NOT NULL,
  KEY `FKAA407F20A2CEC2F` (`trait_id`),
  KEY `FKAA407F20448633F9` (`race_id`),
  CONSTRAINT `FKAA407F20448633F9` FOREIGN KEY (`race_id`) REFERENCES `traits` (`id`),
  CONSTRAINT `FKAA407F20A2CEC2F` FOREIGN KEY (`trait_id`) REFERENCES `races` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `race_trait` WRITE;
/*!40000 ALTER TABLE `race_trait` DISABLE KEYS */;
/*!40000 ALTER TABLE `race_trait` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `races`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `races` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `speed` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `races` WRITE;
/*!40000 ALTER TABLE `races` DISABLE KEYS */;
INSERT INTO `races` VALUES (1,'','Elf','Meduim',30);
/*!40000 ALTER TABLE `races` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `races_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `races_languages` (
  `races_id` bigint(20) NOT NULL,
  `languages_id` bigint(20) NOT NULL,
  KEY `FKC2FD97DED250F55B` (`languages_id`),
  KEY `FKC2FD97DEBA5181FB` (`races_id`),
  CONSTRAINT `FKC2FD97DEBA5181FB` FOREIGN KEY (`races_id`) REFERENCES `races` (`id`),
  CONSTRAINT `FKC2FD97DED250F55B` FOREIGN KEY (`languages_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `races_languages` WRITE;
/*!40000 ALTER TABLE `races_languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `races_languages` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `races_traits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `races_traits` (
  `races_id` bigint(20) NOT NULL,
  `racialTraits_id` int(11) NOT NULL,
  KEY `FKE7275F42B80BC065` (`racialTraits_id`),
  KEY `FKE7275F42BA5181FB` (`races_id`),
  CONSTRAINT `FKE7275F42B80BC065` FOREIGN KEY (`racialTraits_id`) REFERENCES `traits` (`id`),
  CONSTRAINT `FKE7275F42BA5181FB` FOREIGN KEY (`races_id`) REFERENCES `races` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `races_traits` WRITE;
/*!40000 ALTER TABLE `races_traits` DISABLE KEYS */;
/*!40000 ALTER TABLE `races_traits` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `racial_traits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `racial_traits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `racial_traits` WRITE;
/*!40000 ALTER TABLE `racial_traits` DISABLE KEYS */;
/*!40000 ALTER TABLE `racial_traits` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `subclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subclass` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `baseClass_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8440D33829920099` (`baseClass_id`),
  CONSTRAINT `FK8440D33829920099` FOREIGN KEY (`baseClass_id`) REFERENCES `classes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `subclass` WRITE;
/*!40000 ALTER TABLE `subclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `subclass` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `subclass_trait`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subclass_trait` (
  `subclass_id` int(11) NOT NULL,
  `trait_id` bigint(20) NOT NULL,
  KEY `FK5227DE47C1B53AC8` (`trait_id`),
  KEY `FK5227DE477E9C7E32` (`subclass_id`),
  CONSTRAINT `FK5227DE477E9C7E32` FOREIGN KEY (`subclass_id`) REFERENCES `traits` (`id`),
  CONSTRAINT `FK5227DE47C1B53AC8` FOREIGN KEY (`trait_id`) REFERENCES `subclass` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `subclass_trait` WRITE;
/*!40000 ALTER TABLE `subclass_trait` DISABLE KEYS */;
/*!40000 ALTER TABLE `subclass_trait` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `subrace_trait`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subrace_trait` (
  `subrace_id` int(11) NOT NULL,
  `trait_id` bigint(20) NOT NULL,
  KEY `FK52D96D601B249119` (`trait_id`),
  KEY `FK52D96D6088FDEDB9` (`subrace_id`),
  CONSTRAINT `FK52D96D601B249119` FOREIGN KEY (`trait_id`) REFERENCES `subraces` (`id`),
  CONSTRAINT `FK52D96D6088FDEDB9` FOREIGN KEY (`subrace_id`) REFERENCES `traits` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `subrace_trait` WRITE;
/*!40000 ALTER TABLE `subrace_trait` DISABLE KEYS */;
/*!40000 ALTER TABLE `subrace_trait` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `subraces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subraces` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parentRace_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK850F3982B1ACFCA2` (`parentRace_id`),
  CONSTRAINT `FK850F3982B1ACFCA2` FOREIGN KEY (`parentRace_id`) REFERENCES `races` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `subraces` WRITE;
/*!40000 ALTER TABLE `subraces` DISABLE KEYS */;
/*!40000 ALTER TABLE `subraces` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `subraces_traits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subraces_traits` (
  `subraces_id` bigint(20) NOT NULL,
  `subRacialTraits_id` int(11) NOT NULL,
  KEY `FKCD3DBD823D0DBA25` (`subRacialTraits_id`),
  KEY `FKCD3DBD8215C8A525` (`subraces_id`),
  CONSTRAINT `FKCD3DBD8215C8A525` FOREIGN KEY (`subraces_id`) REFERENCES `subraces` (`id`),
  CONSTRAINT `FKCD3DBD823D0DBA25` FOREIGN KEY (`subRacialTraits_id`) REFERENCES `traits` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `subraces_traits` WRITE;
/*!40000 ALTER TABLE `subraces_traits` DISABLE KEYS */;
/*!40000 ALTER TABLE `subraces_traits` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `traits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `traits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `traits` WRITE;
/*!40000 ALTER TABLE `traits` DISABLE KEYS */;
/*!40000 ALTER TABLE `traits` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `traits_characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `traits_characters` (
  `traits_id` int(11) NOT NULL,
  `characters_id` bigint(20) NOT NULL,
  KEY `FKC34E96C451CA2F05` (`characters_id`),
  KEY `FKC34E96C441213E25` (`traits_id`),
  CONSTRAINT `FKC34E96C441213E25` FOREIGN KEY (`traits_id`) REFERENCES `traits` (`id`),
  CONSTRAINT `FKC34E96C451CA2F05` FOREIGN KEY (`characters_id`) REFERENCES `characters` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `traits_characters` WRITE;
/*!40000 ALTER TABLE `traits_characters` DISABLE KEYS */;
/*!40000 ALTER TABLE `traits_characters` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `weapon_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weapon_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `weapon_groups` WRITE;
/*!40000 ALTER TABLE `weapon_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `weapon_groups` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `weaponmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weaponmodel` (
  `numberOfDice` int(11) DEFAULT NULL,
  `weaponRange` int(11) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `damageDice_id` bigint(20) DEFAULT NULL,
  `weaponGroup_id` bigint(20) DEFAULT NULL,
  `maxWeaponRange` int(11) DEFAULT NULL,
  `twoHanded` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4B1DE24D12F162A3` (`damageDice_id`),
  KEY `FK4B1DE24DE8C108C2` (`weaponGroup_id`),
  KEY `FK4B1DE24D15FEE84E` (`id`),
  CONSTRAINT `FK4B1DE24D12F162A3` FOREIGN KEY (`damageDice_id`) REFERENCES `dice` (`id`),
  CONSTRAINT `FK4B1DE24D15FEE84E` FOREIGN KEY (`id`) REFERENCES `equipmentmodel` (`id`),
  CONSTRAINT `FK4B1DE24DE8C108C2` FOREIGN KEY (`weaponGroup_id`) REFERENCES `weapon_groups` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `weaponmodel` WRITE;
/*!40000 ALTER TABLE `weaponmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `weaponmodel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

