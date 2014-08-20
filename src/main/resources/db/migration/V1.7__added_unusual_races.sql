INSERT INTO `charactersheet`.`racemodel` (`id`, `name`, `description`, `size`, `speed`)
    VALUES ('5', 'Dragonborn', NULL, 'Medium', '30');
INSERT INTO `charactersheet`.`racemodel` (`id`, `name`, `description`, `size`, `speed`)
    VALUES ('6', 'Gnome', NULL, 'Small', '25');
INSERT INTO `charactersheet`.`racemodel` (`id`, `name`, `description`, `size`, `speed`)
    VALUES ('7', 'Half-Elf', NULL, 'Medium', '30');
INSERT INTO `charactersheet`.`racemodel` (`id`, `name`, `description`, `size`, `speed`)
    VALUES ('8', 'Half-Orc', NULL, 'Medium', '30');
INSERT INTO `charactersheet`.`racemodel` (`id`, `name`, `description`, `size`, `speed`)
    VALUES ('9', 'Kender', NULL, 'Small', '25');
INSERT INTO `charactersheet`.`racemodel` (`id`, `name`, `description`, `size`, `speed`)
    VALUES ('10', 'Tiefling', NULL, 'Medium', '30');
INSERT INTO `charactersheet`.`racemodel` (`id`, `name`, `description`, `size`, `speed`)
    VALUES ('11', 'Warforged', NULL, 'Medium', '30');

INSERT INTO `charactersheet`.`racemodel_languagemodel` (`races_id`, `languages_id`) VALUES ('5', '1');
INSERT INTO `charactersheet`.`racemodel_languagemodel` (`races_id`, `languages_id`) VALUES ('5', '11');

INSERT INTO `charactersheet`.`racemodel_languagemodel` (`races_id`, `languages_id`) VALUES ('6', '1');
INSERT INTO `charactersheet`.`racemodel_languagemodel` (`races_id`, `languages_id`) VALUES ('6', '5');

INSERT INTO `charactersheet`.`racemodel_languagemodel` (`races_id`, `languages_id`) VALUES ('7', '1');
INSERT INTO `charactersheet`.`racemodel_languagemodel` (`races_id`, `languages_id`) VALUES ('7', '3');

INSERT INTO `charactersheet`.`racemodel_languagemodel` (`races_id`, `languages_id`) VALUES ('8', '1');
INSERT INTO `charactersheet`.`racemodel_languagemodel` (`races_id`, `languages_id`) VALUES ('8', '8');

INSERT INTO `charactersheet`.`racemodel_languagemodel` (`races_id`, `languages_id`) VALUES ('9', '1');
INSERT INTO `charactersheet`.`racemodel_languagemodel` (`races_id`, `languages_id`) VALUES ('9', '17');

INSERT INTO `charactersheet`.`racemodel_languagemodel` (`races_id`, `languages_id`) VALUES ('10', '1');
INSERT INTO `charactersheet`.`racemodel_languagemodel` (`races_id`, `languages_id`) VALUES ('10', '13');

INSERT INTO `charactersheet`.`racemodel_languagemodel` (`races_id`, `languages_id`) VALUES ('11', '1');
INSERT INTO `charactersheet`.`racemodel_languagemodel` (`races_id`, `languages_id`) VALUES ('11', '11');
