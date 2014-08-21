ALTER TABLE `charactersheet`.`charactermodel`
ADD COLUMN `character_advancement_id` BIGINT(20) NULL AFTER `abilities_id`;

ALTER TABLE `charactersheet`.`charactermodel`
ADD INDEX `character_advancement_fk_idx` (`character_advancement_id` ASC);
ALTER TABLE `charactersheet`.`charactermodel`
ADD CONSTRAINT `character_advancement_fk`
  FOREIGN KEY (`character_advancement_id`)
  REFERENCES `charactersheet`.`character_advancement` (`id_character_advancement`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
