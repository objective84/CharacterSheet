CREATE TABLE `charactersheet`.`spell_slots` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT ,
  `per_day_one` INT NULL DEFAULT 0,
  `per_day_two` INT NULL DEFAULT 0,
  `per_day_three` INT NULL DEFAULT 0,
  `per_day_four` INT NULL DEFAULT 0,
  `per_day_five` INT NULL DEFAULT 0,
  `per_day_six` INT NULL DEFAULT 0,
  `per_day_seven` INT NULL DEFAULT 0,
  `per_day_eight` INT NULL DEFAULT 0,
  `per_day_nine` INT NULL DEFAULT 0,
  `expended_one` INT NULL DEFAULT 0,
  `expended_two` INT NULL DEFAULT 0,
  `expended_three` INT NULL DEFAULT 0,
  `expended_four` INT NULL DEFAULT 0,
  `expended_five` INT NULL DEFAULT 0,
  `expended_six` INT NULL DEFAULT 0,
  `expended_seven` INT NULL DEFAULT 0,
  `expended_eight` INT NULL DEFAULT 0,
  `expended_nine` INT NULL DEFAULT 0,
  PRIMARY KEY (`id`));

ALTER TABLE `charactersheet`.`charactermodel`
ADD COLUMN `spell_slots_id` BIGINT(20) NULL AFTER `armorClass`,
ADD INDEX `spell_slots_fk_idx` (`spell_slots_id` ASC);
ALTER TABLE `charactersheet`.`charactermodel`
ADD CONSTRAINT `spell_slots_fk`
FOREIGN KEY (`spell_slots_id`)
REFERENCES `charactersheet`.`spell_slots` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

UPDATE `charactersheet`.`classmodel` SET `magic_ability`='Int' WHERE `id`='12';
