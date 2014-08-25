ALTER TABLE `charactersheet`.`charactermodel`
ADD COLUMN `armorClass` INT(11) NULL DEFAULT NULL AFTER `character_advancement_id`;
ALTER TABLE `charactersheet`.`abilities`
ADD COLUMN `ability_points_used` INT(11) NULL DEFAULT NULL AFTER `id`;


INSERT INTO `charactersheet`.`character_equipment`(`equipment_id`, `character_id`) VALUES ('40', '6');
