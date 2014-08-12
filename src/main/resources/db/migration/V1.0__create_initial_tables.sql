CREATE DATABASE  IF NOT EXISTS `charactersheet` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `charactersheet`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: charactersheet
-- ------------------------------------------------------
-- Server version	5.6.19

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
-- Table structure for table `armor_groups`
--

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

--
-- Table structure for table `armormodel`
--

DROP TABLE IF EXISTS `armormodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `armormodel` (
  `armorClass` int(11) DEFAULT NULL,
  `maxDexModifier` int(11) DEFAULT NULL,
  `stealthDisadvantage` tinyint(1) NOT NULL,
  `strength` int(11) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `armorGroup_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKFECC754AE3F46692` (`armorGroup_id`),
  KEY `FKFECC754A15FEE84E` (`id`),
  CONSTRAINT `FKFECC754A15FEE84E` FOREIGN KEY (`id`) REFERENCES `equipment` (`id`),
  CONSTRAINT `FKFECC754AE3F46692` FOREIGN KEY (`armorGroup_id`) REFERENCES `armor_groups` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_equipment`
--

DROP TABLE IF EXISTS `character_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_equipment` (
  `character_id` bigint(20) NOT NULL,
  `equipment_id` bigint(20) NOT NULL,
  KEY `FK1E177BF8F8D2D49F` (`equipment_id`),
  KEY `FK1E177BF86666F1E6` (`character_id`),
  CONSTRAINT `FK1E177BF86666F1E6` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`),
  CONSTRAINT `FK1E177BF8F8D2D49F` FOREIGN KEY (`equipment_id`) REFERENCES `equipment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_language`
--

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

--
-- Table structure for table `character_proficiency`
--

DROP TABLE IF EXISTS `character_proficiency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_proficiency` (
  `character_id` bigint(20) NOT NULL,
  `proficiency_id` bigint(20) NOT NULL,
  KEY `FK1BDF845F53CB6A02` (`proficiency_id`),
  KEY `FK1BDF845F6666F1E6` (`character_id`),
  CONSTRAINT `FK1BDF845F6666F1E6` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`),
  CONSTRAINT `FK1BDF845F53CB6A02` FOREIGN KEY (`proficiency_id`) REFERENCES `proficiency` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_traits`
--

DROP TABLE IF EXISTS `character_traits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_traits` (
  `character_id` bigint(20) NOT NULL,
  `trait_id` bigint(20) NOT NULL,
  KEY `FKE71261FB56E9E79C` (`trait_id`),
  KEY `FKE71261FB6666F1E6` (`character_id`),
  CONSTRAINT `FKE71261FB6666F1E6` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`),
  CONSTRAINT `FKE71261FB56E9E79C` FOREIGN KEY (`trait_id`) REFERENCES `traits` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `characters` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cha` int(11) NOT NULL,
  `con` int(11) NOT NULL,
  `currentHealth` int(11) NOT NULL,
  `dex` int(11) NOT NULL,
  `intel` int(11) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `maxHealth` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `str` int(11) NOT NULL,
  `wis` int(11) NOT NULL,
  `clazz_id` bigint(20) DEFAULT NULL,
  `coinPurse_id` bigint(20) DEFAULT NULL,
  `equippedArmor_id` bigint(20) DEFAULT NULL,
  `equippedMainHand_id` bigint(20) DEFAULT NULL,
  `equippedOffHand_id` bigint(20) DEFAULT NULL,
  `race_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4A3BAA6A91512DE8` (`clazz_id`),
  KEY `FK4A3BAA6AE2831F45` (`coinPurse_id`),
  KEY `FK4A3BAA6AD0CD221C` (`equippedArmor_id`),
  KEY `FK4A3BAA6A1C005348` (`equippedMainHand_id`),
  KEY `FK4A3BAA6A1A1779EE` (`equippedOffHand_id`),
  KEY `FK4A3BAA6AF7C9388C` (`race_id`),
  CONSTRAINT `FK4A3BAA6AF7C9388C` FOREIGN KEY (`race_id`) REFERENCES `races` (`id`),
  CONSTRAINT `FK4A3BAA6A1A1779EE` FOREIGN KEY (`equippedOffHand_id`) REFERENCES `equipment` (`id`),
  CONSTRAINT `FK4A3BAA6A1C005348` FOREIGN KEY (`equippedMainHand_id`) REFERENCES `weaponmodel` (`id`),
  CONSTRAINT `FK4A3BAA6A91512DE8` FOREIGN KEY (`clazz_id`) REFERENCES `classes` (`id`),
  CONSTRAINT `FK4A3BAA6AD0CD221C` FOREIGN KEY (`equippedArmor_id`) REFERENCES `armormodel` (`id`),
  CONSTRAINT `FK4A3BAA6AE2831F45` FOREIGN KEY (`coinPurse_id`) REFERENCES `coinpurse` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `class_trait`
--

DROP TABLE IF EXISTS `class_trait`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_trait` (
  `class_id` bigint(20) NOT NULL,
  `trait_id` bigint(20) NOT NULL,
  KEY `FKE7A30487B3B84272` (`trait_id`),
  KEY `FKE7A30487341CFFF2` (`class_id`),
  CONSTRAINT `FKE7A30487341CFFF2` FOREIGN KEY (`class_id`) REFERENCES `traits` (`id`),
  CONSTRAINT `FKE7A30487B3B84272` FOREIGN KEY (`trait_id`) REFERENCES `classes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `skills_at_creation` int(11) DEFAULT NULL,
  `startingWealthDieAmount` int(11) DEFAULT NULL,
  `hitDie_id` bigint(20) DEFAULT NULL,
  `startingWealthDie_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK32E1382682385ECC` (`hitDie_id`),
  KEY `FK32E138266BBD03A6` (`startingWealthDie_id`),
  CONSTRAINT `FK32E138266BBD03A6` FOREIGN KEY (`startingWealthDie_id`) REFERENCES `dice` (`id`),
  CONSTRAINT `FK32E1382682385ECC` FOREIGN KEY (`hitDie_id`) REFERENCES `dice` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `classes_proficiency`
--

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

--
-- Table structure for table `coin`
--

DROP TABLE IF EXISTS `coin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `abbr` varchar(255) DEFAULT NULL,
  `denomination` varchar(255) DEFAULT NULL,
  `lowerCoin` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `coinpurse`
--

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dice`
--

DROP TABLE IF EXISTS `dice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `maxRoll` int(11) DEFAULT NULL,
  `minRoll` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `itemWeight` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `priceDenomination_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4027E58EF1236E92` (`priceDenomination_id`),
  CONSTRAINT `FK4027E58EF1236E92` FOREIGN KEY (`priceDenomination_id`) REFERENCES `coin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `equipment_traits`
--

DROP TABLE IF EXISTS `equipment_traits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipment_traits` (
  `equipment_id` bigint(20) NOT NULL,
  `traits_id` bigint(20) NOT NULL,
  KEY `FKFD9ABF641213E25` (`traits_id`),
  KEY `FKFD9ABF6F8D2D49F` (`equipment_id`),
  CONSTRAINT `FKFD9ABF6F8D2D49F` FOREIGN KEY (`equipment_id`) REFERENCES `equipment` (`id`),
  CONSTRAINT `FKFD9ABF641213E25` FOREIGN KEY (`traits_id`) REFERENCES `traits` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `languages`
--

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

--
-- Table structure for table `proficiency`
--

DROP TABLE IF EXISTS `proficiency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proficiency` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `proficiencyType` int(11) DEFAULT NULL,
  `proficiencyTypeString` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `race_trait`
--

DROP TABLE IF EXISTS `race_trait`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `race_trait` (
  `race_id` bigint(20) NOT NULL,
  `trait_id` bigint(20) NOT NULL,
  KEY `FKAA407F20A2CEC2F` (`trait_id`),
  KEY `FKAA407F20448633F9` (`race_id`),
  CONSTRAINT `FKAA407F20448633F9` FOREIGN KEY (`race_id`) REFERENCES `traits` (`id`),
  CONSTRAINT `FKAA407F20A2CEC2F` FOREIGN KEY (`trait_id`) REFERENCES `races` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `races`
--

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `races_languages`
--

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

--
-- Table structure for table `races_traits`
--

DROP TABLE IF EXISTS `races_traits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `races_traits` (
  `races_id` bigint(20) NOT NULL,
  `racialTraits_id` bigint(20) NOT NULL,
  KEY `FKE7275F42B80BC065` (`racialTraits_id`),
  KEY `FKE7275F42BA5181FB` (`races_id`),
  CONSTRAINT `FKE7275F42BA5181FB` FOREIGN KEY (`races_id`) REFERENCES `races` (`id`),
  CONSTRAINT `FKE7275F42B80BC065` FOREIGN KEY (`racialTraits_id`) REFERENCES `traits` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subclass`
--

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

--
-- Table structure for table `subclass_trait`
--

DROP TABLE IF EXISTS `subclass_trait`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subclass_trait` (
  `subclass_id` bigint(20) NOT NULL,
  `trait_id` bigint(20) NOT NULL,
  KEY `FK5227DE47C1B53AC8` (`trait_id`),
  KEY `FK5227DE477E9C7E32` (`subclass_id`),
  CONSTRAINT `FK5227DE477E9C7E32` FOREIGN KEY (`subclass_id`) REFERENCES `traits` (`id`),
  CONSTRAINT `FK5227DE47C1B53AC8` FOREIGN KEY (`trait_id`) REFERENCES `subclass` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subrace_trait`
--

DROP TABLE IF EXISTS `subrace_trait`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subrace_trait` (
  `subrace_id` bigint(20) NOT NULL,
  `trait_id` bigint(20) NOT NULL,
  KEY `FK52D96D601B249119` (`trait_id`),
  KEY `FK52D96D6088FDEDB9` (`subrace_id`),
  CONSTRAINT `FK52D96D6088FDEDB9` FOREIGN KEY (`subrace_id`) REFERENCES `traits` (`id`),
  CONSTRAINT `FK52D96D601B249119` FOREIGN KEY (`trait_id`) REFERENCES `subraces` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subraces`
--

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

--
-- Table structure for table `subraces_traits`
--

DROP TABLE IF EXISTS `subraces_traits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subraces_traits` (
  `subraces_id` bigint(20) NOT NULL,
  `subRacialTraits_id` bigint(20) NOT NULL,
  KEY `FKCD3DBD823D0DBA25` (`subRacialTraits_id`),
  KEY `FKCD3DBD8215C8A525` (`subraces_id`),
  CONSTRAINT `FKCD3DBD8215C8A525` FOREIGN KEY (`subraces_id`) REFERENCES `subraces` (`id`),
  CONSTRAINT `FKCD3DBD823D0DBA25` FOREIGN KEY (`subRacialTraits_id`) REFERENCES `traits` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `traits`
--

DROP TABLE IF EXISTS `traits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `traits` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `modType` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `traitModifier` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `traits_characters`
--

DROP TABLE IF EXISTS `traits_characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `traits_characters` (
  `traits_id` bigint(20) NOT NULL,
  `characters_id` bigint(20) NOT NULL,
  KEY `FKC34E96C451CA2F05` (`characters_id`),
  KEY `FKC34E96C441213E25` (`traits_id`),
  CONSTRAINT `FKC34E96C441213E25` FOREIGN KEY (`traits_id`) REFERENCES `traits` (`id`),
  CONSTRAINT `FKC34E96C451CA2F05` FOREIGN KEY (`characters_id`) REFERENCES `characters` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weapon_groups`
--

DROP TABLE IF EXISTS `weapon_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weapon_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weaponmodel`
--

DROP TABLE IF EXISTS `weaponmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weaponmodel` (
  `maxWeaponRange` int(11) DEFAULT NULL,
  `numberOfDice` int(11) DEFAULT NULL,
  `twoHanded` tinyint(1) NOT NULL,
  `weaponRange` int(11) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `damageDice_id` bigint(20) DEFAULT NULL,
  `weaponGroup_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4B1DE24D12F162A3` (`damageDice_id`),
  KEY `FK4B1DE24DE8C108C2` (`weaponGroup_id`),
  KEY `FK4B1DE24D15FEE84E` (`id`),
  CONSTRAINT `FK4B1DE24D15FEE84E` FOREIGN KEY (`id`) REFERENCES `equipment` (`id`),
  CONSTRAINT `FK4B1DE24D12F162A3` FOREIGN KEY (`damageDice_id`) REFERENCES `dice` (`id`),
  CONSTRAINT `FK4B1DE24DE8C108C2` FOREIGN KEY (`weaponGroup_id`) REFERENCES `weapon_groups` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-08-11 15:40:35
