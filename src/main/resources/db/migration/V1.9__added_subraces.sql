INSERT INTO `charactersheet`.`subraces`(`id`, `name`, `description`, `parentRace_id`)
VALUES ('1', 'Wood Elf', 'Wood Elf', (SELECT id from `charactersheet`.`racemodel` WHERE `raceName`='Elf'));
INSERT INTO `charactersheet`.`subraces`(`id`, `name`, `description`, `parentRace_id`)
VALUES ('2', 'High Elf', 'High Elf', (SELECT id from `charactersheet`.`racemodel` WHERE `raceName`='Elf'));
INSERT INTO `charactersheet`.`subraces`(`id`, `name`, `description`, `parentRace_id`)
VALUES ('3', 'Drow', 'Drow', (SELECT id from `charactersheet`.`racemodel` WHERE `raceName`='Elf'));

INSERT INTO `charactersheet`.`subraces`(`id`, `name`, `description`, `parentRace_id`)
VALUES ('4', 'Hill Dwarf', 'Hill Dwarf', (SELECT id from `charactersheet`.`racemodel` WHERE `raceName`='Dwarf'));
INSERT INTO `charactersheet`.`subraces`(`id`, `name`, `description`, `parentRace_id`)
VALUES ('5', 'Mountain Dwarf', 'Mountain Dwarf', (SELECT id from `charactersheet`.`racemodel` WHERE `raceName`='Dwarf'));

INSERT INTO `charactersheet`.`subraces`(`id`, `name`, `description`, `parentRace_id`)
VALUES ('6', 'Lightfoot', 'Lightfoot', (SELECT id from `charactersheet`.`racemodel` WHERE `raceName`='Halfling'));
INSERT INTO `charactersheet`.`subraces`(`id`, `name`, `description`, `parentRace_id`)
VALUES ('7', 'Stout', 'Stout', (SELECT id from `charactersheet`.`racemodel` WHERE `raceName`='Halfling'));

INSERT INTO `charactersheet`.`subraces`(`id`, `name`, `description`, `parentRace_id`)
VALUES ('8', 'Forest Gnome', 'Forest Gnome', (SELECT id from `charactersheet`.`racemodel` WHERE `raceName`='Gnome'));
INSERT INTO `charactersheet`.`subraces`(`id`, `name`, `description`, `parentRace_id`)
VALUES ('9', 'Rock Gnome', 'Rock Gnome', (SELECT id from `charactersheet`.`racemodel` WHERE `raceName`='Gnome'));
