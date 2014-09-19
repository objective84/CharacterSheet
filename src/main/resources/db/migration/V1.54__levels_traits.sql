DROP TABLE `charactersheet`.`level_traitmodel`;

CREATE TABLE `charactersheet`.`level_trait` (
  `level_id` BIGINT(20) NULL,
  `trait_id` BIGINT(20) NULL,
  INDEX `level_fk_idx` (`level_id` ASC),
  INDEX `trait_fk_idx` (`trait_id` ASC),
  CONSTRAINT `level593lg_fk`
  FOREIGN KEY (`level_id`)
  REFERENCES `charactersheet`.`level` (`id_level`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `trait6j2303K_fk`
  FOREIGN KEY (`trait_id`)
  REFERENCES `charactersheet`.`traitmodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


CREATE TABLE `charactersheet`.`character_description` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `height` VARCHAR(45) NULL DEFAULT NULL,
  `hair` VARCHAR(45) NULL DEFAULT NULL,
  `eyes` VARCHAR(45) NULL DEFAULT NULL,
  `weight` VARCHAR(45) NULL DEFAULT NULL,
  `gender` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`));

ALTER TABLE `charactersheet`.`charactermodel`
DROP COLUMN `name`,
ADD COLUMN `character_description` BIGINT(20) NULL DEFAULT NULL AFTER `spell_slots_id`,
ADD INDEX `character_description_fk_idx` (`character_description` ASC);
ALTER TABLE `charactersheet`.`charactermodel`
ADD CONSTRAINT `character_description_fk`
FOREIGN KEY (`character_description`)
REFERENCES `charactersheet`.`character_description` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
