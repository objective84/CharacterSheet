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

DROP TABLE IF EXISTS `armorgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `armorgroup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  CONSTRAINT `FKFECC754A15FEE84E` FOREIGN KEY (`id`) REFERENCES `equipmentmodel` (`id`),
  CONSTRAINT `FKFECC754AE3F46692` FOREIGN KEY (`armorGroup_id`) REFERENCES `armorgroup` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `character_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_equipment` (
  `character_id` bigint(20) NOT NULL,
  `equipment_id` bigint(20) NOT NULL,
  KEY `FK1E177BF8F8D2D49F` (`equipment_id`),
  KEY `FK1E177BF86666F1E6` (`character_id`),
  CONSTRAINT `FK1E177BF86666F1E6` FOREIGN KEY (`character_id`) REFERENCES `charactermodel` (`id`),
  CONSTRAINT `FK1E177BF8F8D2D49F` FOREIGN KEY (`equipment_id`) REFERENCES `equipmentmodel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `character_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_language` (
  `character_id` bigint(20) NOT NULL,
  `language_id` bigint(20) NOT NULL,
  KEY `FKBFC187AE8DC14FE` (`language_id`),
  KEY `FKBFC187AE6666F1E6` (`character_id`),
  CONSTRAINT `FKBFC187AE6666F1E6` FOREIGN KEY (`character_id`) REFERENCES `charactermodel` (`id`),
  CONSTRAINT `FKBFC187AE8DC14FE` FOREIGN KEY (`language_id`) REFERENCES `languagemodel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `character_proficiency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_proficiency` (
  `character_id` bigint(20) NOT NULL,
  `proficiency_id` bigint(20) NOT NULL,
  KEY `FK1BDF845F53CB6A02` (`proficiency_id`),
  KEY `FK1BDF845F6666F1E6` (`character_id`),
  CONSTRAINT `FK1BDF845F6666F1E6` FOREIGN KEY (`character_id`) REFERENCES `charactermodel` (`id`),
  CONSTRAINT `FK1BDF845F53CB6A02` FOREIGN KEY (`proficiency_id`) REFERENCES `proficiency` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `character_traits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_traits` (
  `character_id` bigint(20) NOT NULL,
  `trait_id` bigint(20) NOT NULL,
  KEY `FKE71261FB56E9E79C` (`trait_id`),
  KEY `FKE71261FB6666F1E6` (`character_id`),
  CONSTRAINT `FKE71261FB6666F1E6` FOREIGN KEY (`character_id`) REFERENCES `charactermodel` (`id`),
  CONSTRAINT `FKE71261FB56E9E79C` FOREIGN KEY (`trait_id`) REFERENCES `traitmodel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `charactermodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charactermodel` (
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
  `subrace_id` bigint(20) DEFAULT NULL,
  `inventoryWeight` bigint(20) Default 0,
  `encumbered` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKD88FADA091512DE8` (`clazz_id`),
  KEY `FKD88FADA0E2831F45` (`coinPurse_id`),
  KEY `FKD88FADA0D0CD221C` (`equippedArmor_id`),
  KEY `FKD88FADA01C005348` (`equippedMainHand_id`),
  KEY `FKD88FADA01A1779EE` (`equippedOffHand_id`),
  KEY `FKD88FADA0F7C9388C` (`race_id`),
  KEY `FKD88FADA04D389736` (`subrace_id`),
  CONSTRAINT `FKD88FADA04D389736` FOREIGN KEY (`subrace_id`) REFERENCES `subraces` (`id`),
  CONSTRAINT `FKD88FADA01A1779EE` FOREIGN KEY (`equippedOffHand_id`) REFERENCES `equipmentmodel` (`id`),
  CONSTRAINT `FKD88FADA01C005348` FOREIGN KEY (`equippedMainHand_id`) REFERENCES `weaponmodel` (`id`),
  CONSTRAINT `FKD88FADA091512DE8` FOREIGN KEY (`clazz_id`) REFERENCES `classmodel` (`id`),
  CONSTRAINT `FKD88FADA0D0CD221C` FOREIGN KEY (`equippedArmor_id`) REFERENCES `armormodel` (`id`),
  CONSTRAINT `FKD88FADA0E2831F45` FOREIGN KEY (`coinPurse_id`) REFERENCES `coinpurse` (`id`),
  CONSTRAINT `FKD88FADA0F7C9388C` FOREIGN KEY (`race_id`) REFERENCES `racemodel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `class_trait`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_trait` (
  `class_id` bigint(20) NOT NULL,
  `trait_id` bigint(20) NOT NULL,
  KEY `FKE7A30487B3B84272` (`trait_id`),
  KEY `FKE7A30487341CFFF2` (`class_id`),
  CONSTRAINT `FKE7A30487341CFFF2` FOREIGN KEY (`class_id`) REFERENCES `traitmodel` (`id`),
  CONSTRAINT `FKE7A30487B3B84272` FOREIGN KEY (`trait_id`) REFERENCES `classmodel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `classmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classmodel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `skills_at_creation` int(11) DEFAULT NULL,
  `startingWealthDieAmount` int(11) DEFAULT NULL,
  `hitDie_id` bigint(20) DEFAULT NULL,
  `startingWealthDie_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK648468B182385ECC` (`hitDie_id`),
  KEY `FK648468B16BBD03A6` (`startingWealthDie_id`),
  CONSTRAINT `FK648468B16BBD03A6` FOREIGN KEY (`startingWealthDie_id`) REFERENCES `dice` (`id`),
  CONSTRAINT `FK648468B182385ECC` FOREIGN KEY (`hitDie_id`) REFERENCES `dice` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `classmodel_proficiency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classmodel_proficiency` (
  `classes_id` bigint(20) NOT NULL,
  `proficiencies_id` bigint(20) NOT NULL,
  KEY `FK1B91CDC7C82B3DE4` (`proficiencies_id`),
  KEY `FK1B91CDC756AC255A` (`classes_id`),
  CONSTRAINT `FK1B91CDC756AC255A` FOREIGN KEY (`classes_id`) REFERENCES `classmodel` (`id`),
  CONSTRAINT `FK1B91CDC7C82B3DE4` FOREIGN KEY (`proficiencies_id`) REFERENCES `proficiency` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `coin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `abbr` varchar(255) DEFAULT NULL,
  `denomination` varchar(255) DEFAULT NULL,
  `lowerCoin` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  CONSTRAINT `FK4B4D25EE6666F1E6` FOREIGN KEY (`character_id`) REFERENCES `charactermodel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `dice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `maxRoll` int(11) DEFAULT NULL,
  `minRoll` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  KEY `FK41073A5BF1236E92` (`priceDenomination_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `equipmentmodel_proficiency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipmentmodel_proficiency` (
  `equipment_id` bigint(20) NOT NULL,
  `proficiencies_id` bigint(20) NOT NULL,
  KEY `FKA0657071C82B3DE4` (`proficiencies_id`),
  KEY `FKA0657071F8D2D49F` (`equipment_id`),
  CONSTRAINT `FKA0657071F8D2D49F` FOREIGN KEY (`equipment_id`) REFERENCES `equipmentmodel` (`id`),
  CONSTRAINT `FKA0657071C82B3DE4` FOREIGN KEY (`proficiencies_id`) REFERENCES `proficiency` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `equipmentmodel_traitmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipmentmodel_traitmodel` (
  `equipment_id` bigint(20) NOT NULL,
  `traits_id` bigint(20) NOT NULL,
  KEY `FKE8CAB23F41213E25` (`traits_id`),
  KEY `FKE8CAB23FF8D2D49F` (`equipment_id`),
  CONSTRAINT `FKE8CAB23FF8D2D49F` FOREIGN KEY (`equipment_id`) REFERENCES `equipmentmodel` (`id`),
  CONSTRAINT `FKE8CAB23F41213E25` FOREIGN KEY (`traits_id`) REFERENCES `traitmodel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `languagemodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languagemodel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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

DROP TABLE IF EXISTS `race_trait`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `race_trait` (
  `race_id` bigint(20) NOT NULL,
  `trait_id` bigint(20) NOT NULL,
  KEY `FKAA407F20A2CEC2F` (`trait_id`),
  KEY `FKAA407F20448633F9` (`race_id`),
  CONSTRAINT `FKAA407F20448633F9` FOREIGN KEY (`race_id`) REFERENCES `traitmodel` (`id`),
  CONSTRAINT `FKAA407F20A2CEC2F` FOREIGN KEY (`trait_id`) REFERENCES `racemodel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `racemodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `racemodel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `raceName` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `speed` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `racemodel_languagemodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `racemodel_languagemodel` (
  `races_id` bigint(20) NOT NULL,
  `languages_id` bigint(20) NOT NULL,
  KEY `FK66E1A94AD250F55B` (`languages_id`),
  KEY `FK66E1A94ABA5181FB` (`races_id`),
  CONSTRAINT `FK66E1A94ABA5181FB` FOREIGN KEY (`races_id`) REFERENCES `racemodel` (`id`),
  CONSTRAINT `FK66E1A94AD250F55B` FOREIGN KEY (`languages_id`) REFERENCES `languagemodel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `racemodel_proficiency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `racemodel_proficiency` (
  `races_id` bigint(20) NOT NULL,
  `proficiencies_id` bigint(20) NOT NULL,
  KEY `FK4688D4EC82B3DE4` (`proficiencies_id`),
  KEY `FK4688D4EBA5181FB` (`races_id`),
  CONSTRAINT `FK4688D4EBA5181FB` FOREIGN KEY (`races_id`) REFERENCES `racemodel` (`id`),
  CONSTRAINT `FK4688D4EC82B3DE4` FOREIGN KEY (`proficiencies_id`) REFERENCES `proficiency` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `racemodel_traitmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `racemodel_traitmodel` (
  `RaceModel_id` bigint(20) NOT NULL,
  `traits_id` bigint(20) NOT NULL,
  KEY `FKA1B205C241213E25` (`traits_id`),
  KEY `FKA1B205C2685E7305` (`RaceModel_id`),
  CONSTRAINT `FKA1B205C2685E7305` FOREIGN KEY (`RaceModel_id`) REFERENCES `racemodel` (`id`),
  CONSTRAINT `FKA1B205C241213E25` FOREIGN KEY (`traits_id`) REFERENCES `traitmodel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE  IF EXISTS `spellmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spellmodel`(
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `damageDiceAmount` int(11) DEFAULT NULL,
  `savingThrow` varchar(255) DEFAULT NULL,
  `saveDC` int(11) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `damageDice_id` bigint(20) DEFAULT NULL,
   PRIMARY KEY (`id`),
  KEY `FKA1B205C2685E7306` (`damageDice_id`),
  CONSTRAINT `FKA1B205C2685E7306` FOREIGN KEY (`damageDice_id`) REFERENCES `dice` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `spellmodel_classmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spellmodel_classmodel`(
  `spellmodel_id` bigint(20) NOT NULL,
  `classmodel_id` bigint(20) NOT NULL,
  KEY `FKEB5CED18C82B3DE5` (`spellmodel_id`),
  KEY `FKEB5CED1815C8A526` (`classmodel_id`),
  CONSTRAINT `FKEB5CED18C82B3DE5` FOREIGN KEY (`spellmodel_id`) REFERENCES `spellmodel` (`id`),
  CONSTRAINT `FKEB5CED1815C8A526` FOREIGN KEY (`classmodel_id`) REFERENCES `classmodel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `subraces_proficiency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subraces_proficiency` (
  `subRaces_id` bigint(20) NOT NULL,
  `proficiencies_id` bigint(20) NOT NULL,
  KEY `FKEB5CED18C82B3DE4` (`proficiencies_id`),
  KEY `FKEB5CED1815C8A525` (`subRaces_id`),
  CONSTRAINT `FKEB5CED1815C8A525` FOREIGN KEY (`subRaces_id`) REFERENCES `subraces` (`id`),
  CONSTRAINT `FKEB5CED18C82B3DE4` FOREIGN KEY (`proficiencies_id`) REFERENCES `proficiency` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `subclass_trait`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subclass_trait` (
  `subclass_id` bigint(20) NOT NULL,
  `trait_id` bigint(20) NOT NULL,
  KEY `FK5227DE47C1B53AC8` (`trait_id`),
  KEY `FK5227DE477E9C7E32` (`subclass_id`),
  CONSTRAINT `FK5227DE477E9C7E32` FOREIGN KEY (`subclass_id`) REFERENCES `traitmodel` (`id`),
  CONSTRAINT `FK5227DE47C1B53AC8` FOREIGN KEY (`trait_id`) REFERENCES `subclassmodel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `subclassmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subclassmodel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `baseClass_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3CBC86D129920099` (`baseClass_id`),
  CONSTRAINT `FK3CBC86D129920099` FOREIGN KEY (`baseClass_id`) REFERENCES `classmodel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `subclassmodel_traitmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subclassmodel_traitmodel` (
  `SubClassModel_id` bigint(20) NOT NULL,
  `subClassTraits_id` bigint(20) NOT NULL,
  KEY `FK42F020097D2E89ED` (`subClassTraits_id`),
  KEY `FK42F020096B72F305` (`SubClassModel_id`),
  CONSTRAINT `FK42F020096B72F305` FOREIGN KEY (`SubClassModel_id`) REFERENCES `subclassmodel` (`id`),
  CONSTRAINT `FK42F020097D2E89ED` FOREIGN KEY (`subClassTraits_id`) REFERENCES `traitmodel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `subrace_trait`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subrace_trait` (
  `subrace_id` bigint(20) NOT NULL,
  `trait_id` bigint(20) NOT NULL,
  KEY `FK52D96D601B249119` (`trait_id`),
  KEY `FK52D96D6088FDEDB9` (`subrace_id`),
  CONSTRAINT `FK52D96D6088FDEDB9` FOREIGN KEY (`subrace_id`) REFERENCES `traitmodel` (`id`),
  CONSTRAINT `FK52D96D601B249119` FOREIGN KEY (`trait_id`) REFERENCES `subraces` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  CONSTRAINT `FK850F3982B1ACFCA2` FOREIGN KEY (`parentRace_id`) REFERENCES `racemodel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `subraces_traitmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subraces_traitmodel` (
  `subraces_id` bigint(20) NOT NULL,
  `subRacialTraits_id` bigint(20) NOT NULL,
  KEY `FKCA2D84B83D0DBA25` (`subRacialTraits_id`),
  KEY `FKCA2D84B815C8A525` (`subraces_id`),
  CONSTRAINT `FKCA2D84B815C8A525` FOREIGN KEY (`subraces_id`) REFERENCES `subraces` (`id`),
  CONSTRAINT `FKCA2D84B83D0DBA25` FOREIGN KEY (`subRacialTraits_id`) REFERENCES `traitmodel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `traitmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `traitmodel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `traitModifier` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `traitmodel_charactermodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `traitmodel_charactermodel` (
  `TraitModel_id` bigint(20) NOT NULL,
  `characters_id` bigint(20) NOT NULL,
  KEY `FK66933C8451CA2F05` (`characters_id`),
  KEY `FK66933C84323588AF` (`TraitModel_id`),
  CONSTRAINT `FK66933C84323588AF` FOREIGN KEY (`TraitModel_id`) REFERENCES `traitmodel` (`id`),
  CONSTRAINT `FK66933C8451CA2F05` FOREIGN KEY (`characters_id`) REFERENCES `charactermodel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `weapongroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weapongroup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


DROP TABLE IF EXISTS `weaponmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weaponmodel` (
  `damageType` varchar(255) DEFAULT NULL,
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
  CONSTRAINT `FK4B1DE24D15FEE84E` FOREIGN KEY (`id`) REFERENCES `equipmentmodel` (`id`),
  CONSTRAINT `FK4B1DE24D12F162A3` FOREIGN KEY (`damageDice_id`) REFERENCES `dice` (`id`),
  CONSTRAINT `FK4B1DE24DE8C108C2` FOREIGN KEY (`weaponGroup_id`) REFERENCES `weapongroup` (`id`)
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
