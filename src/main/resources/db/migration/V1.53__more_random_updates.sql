INSERT INTO `charactersheet`.`subraces` (`id`, `description`, `name`, `parentRace_id`) VALUES ('10', 'Normal Human', 'Normal', '4');
INSERT INTO `charactersheet`.`subraces` (`id`, `description`, `name`, `parentRace_id`) VALUES ('11', 'Variant', 'Variant', '4');

ALTER TABLE `charactersheet`.`abilities`
ADD COLUMN `available_ability_points` INT(11) NULL DEFAULT 0 AFTER `cha`,
ADD COLUMN `ability_increase_points` INT(11) NULL DEFAULT NULL AFTER `available_ability_points`;




CREATE TABLE `charactersheet`.`ability_point_increase_trait` (
  `id` BIGINT(12) NOT NULL AUTO_INCREMENT,
  `num_ability_points` VARCHAR(45) NULL DEFAULT 0,
  PRIMARY KEY (`id`));
INSERT INTO `charactersheet`.`traitmodel` (`id`, `name`) VALUES ('13', '+1 Ability Point');
INSERT INTO `charactersheet`.`ability_point_increase_trait` (`id`, `num_ability_points`) VALUES ('13', '1');
INSERT INTO `charactersheet`.`traitmodel` (`id`, `name`) VALUES ('14', '+2 Ability Points');
INSERT INTO `charactersheet`.`ability_point_increase_trait` (`id`, `num_ability_points`) VALUES ('14', '2');

INSERT INTO `charactersheet`.`subraces_traitmodel`(`subraces_id`, `traitmodel_id`) VALUES ('11', '14');
INSERT INTO `charactersheet`.`subraces_traitmodel`(`subraces_id`, `traitmodel_id`) VALUES ('10', '1');
INSERT INTO `charactersheet`.`subraces_traitmodel`(`subraces_id`, `traitmodel_id`) VALUES ('10', '2');
INSERT INTO `charactersheet`.`subraces_traitmodel`(`subraces_id`, `traitmodel_id`) VALUES ('10', '3');
INSERT INTO `charactersheet`.`subraces_traitmodel`(`subraces_id`, `traitmodel_id`) VALUES ('10', '4');
INSERT INTO `charactersheet`.`subraces_traitmodel`(`subraces_id`, `traitmodel_id`) VALUES ('10', '5');
INSERT INTO `charactersheet`.`subraces_traitmodel`(`subraces_id`, `traitmodel_id`) VALUES ('10', '6');

DROP TABLE `charactersheet`.`subrace_trait`;
