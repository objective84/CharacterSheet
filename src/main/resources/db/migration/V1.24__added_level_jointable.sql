CREATE TABLE `level`(
  `id` bigint(20) NOT NULL,
  `levelnumber` int(11) NULL,
  `proficiencybonus` int(11) NULL,
  `cantripsknown` int(11) NULL,
  `spellsknown` int(11) NULL,
  `firstlevelspellslots` int(11) NULL,
  `secondlevelspellslots` int(11) NULL,
  `thirdlevelspellslots` int(11) NULL,
  `fourthlevelspellslots` int(11) NULL,
  `fifthlevelspellslots` int(11) NULL,
  `sixthlevelspellslots` int(11) NULL,
  `seventhlevelspellslots` int(11) NULL,
  `eighthlevelspellslots` int(11) NULL,
  `ninthlevelspellslots` int(11) NULL,
  `clazz_id` bigint(20) NULL,
  PRIMARY KEY (`id`),
  KEY `FKE7A30487B3B34277` (`clazz_id`),
  CONSTRAINT `FKE7A30487B3B34277` FOREIGN KEY (`clazz_id`) REFERENCES `classmodel` (`id`)
);

CREATE TABLE `level_classmodel`(
  `level_id` bigint(20) NOT NULL,
  `classmodel_id` bigint(20) NOT NULL,
  KEY `FKE7A30487341CFFF4` (`level_id`),
  KEY `FKE7A30487B3B84274` (`classmodel_id`),
  CONSTRAINT `FKE7A30487341CFFF4` FOREIGN KEY (`level_id`) REFERENCES `level` (`id`),
  CONSTRAINT `FKE7A30487B3B84274` FOREIGN KEY (`classmodel_id`) REFERENCES `classmodel` (`id`)
);

ALTER TABLE `charactersheet`.`charactermodel`
DROP COLUMN `level`,
ADD COLUMN `characteradvancement_id` VARCHAR(255) NULL AFTER `abilities_id`;
ALTER TABLE `charactersheet`.`charactermodel`
ADD CONSTRAINT `FKE7A30487B3B84275`
FOREIGN KEY (`id`)
REFERENCES `charactersheet`.`characteradvancement` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


CREATE TABLE `characteradvancement_traitmodel` (
  `characteradvancement_id` bigint(20) NOT NULL,
  `traitmodel_id` bigint(20) NOT NULL,
  KEY `FKE7A30487341CFHF5` (`characteradvancement_id`),
  KEY `FKE7A30487B3B34275` (`traitmodel_id`),
  CONSTRAINT `FKE7A30487341CFHF5` FOREIGN KEY (`characteradvancement_id`) REFERENCES `characteradvancement` (`id`),
  CONSTRAINT `FKE7A30487B3B34275` FOREIGN KEY (`traitmodel_id`) REFERENCES `traitmodel` (`id`)
);

CREATE TABLE `charactermodel_multiclasses` (
  `charactermodel_id` bigint(20) NOT NULL,
  `classmodel_id` bigint(20) NOT NULL,
  KEY `FKE7A30487341CFHF6` (`charactermodel_id`),
  KEY `FKE7A30487B3B34276` (`classmodel_id`),
  CONSTRAINT `FKE7A30487341CFHF6` FOREIGN KEY (`charactermodel_id`) REFERENCES `charactermodel` (`id`),
  CONSTRAINT `FKE7A30487B3B34276` FOREIGN KEY (`classmodel_id`) REFERENCES `classmodel` (`id`)
);

ALTER TABLE `charactersheet`.`level`
ADD CONSTRAINT `clazz_id`
FOREIGN KEY (`id`)
REFERENCES `charactersheet`.`classmodel` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
