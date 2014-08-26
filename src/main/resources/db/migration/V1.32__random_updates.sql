ALTER TABLE `charactersheet`.`charactermodel`
ADD COLUMN `armorClass` INT(11) NULL DEFAULT NULL AFTER `character_advancement_id`;
ALTER TABLE `charactersheet`.`abilities`
ADD COLUMN `ability_points_used` INT(11) NULL DEFAULT NULL AFTER `id`;


# INSERT INTO `charactersheet`.`character_equipment`(`equipment_id`, `character_id`) VALUES ('40', '6');
ALTER TABLE `charactersheet`.`spellmodel`
ADD COLUMN `damageType_id` VARCHAR(45) NULL AFTER `ritual`;
ALTER TABLE `charactersheet`.`spellmodel`
ADD CONSTRAINT `spell_damage_type_fk`
FOREIGN KEY (`id`)
REFERENCES `charactersheet`.`damagetype` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `charactersheet`.`abilities`
DROP COLUMN `ability_points_used`;
