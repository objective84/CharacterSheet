INSERT INTO `charactersheet`.`racemodel` (`id`, `raceName`, `description`, `size`, `speed`)
    VALUES ('8', 'Dragonborn', NULL, 'Medium', '30');
INSERT INTO `charactersheet`.`racemodel` (`id`, `raceName`, `description`, `size`, `speed`)
    VALUES ('10', 'Drow', NULL, 'Medium', '30');
INSERT INTO `charactersheet`.`racemodel` (`id`, `raceName`, `description`, `size`, `speed`)
    VALUES ('5', 'Gnome', NULL, 'Small', '25');
INSERT INTO `charactersheet`.`racemodel` (`id`, `raceName`, `description`, `size`, `speed`)
    VALUES ('6', 'Half-Elf', NULL, 'Medium', '30');
INSERT INTO `charactersheet`.`racemodel` (`id`, `raceName`, `description`, `size`, `speed`)
    VALUES ('7', 'Half-Orc', NULL, 'Medium', '30');
INSERT INTO `charactersheet`.`racemodel` (`id`, `raceName`, `description`, `size`, `speed`)
    VALUES ('9', 'Kender', NULL, 'Small', '25');
INSERT INTO `charactersheet`.`racemodel` (`id`, `raceName`, `description`, `size`, `speed`)
    VALUES ('11', 'Tiefling', NULL, 'Medium', '30');
INSERT INTO `charactersheet`.`racemodel` (`id`, `raceName`, `description`, `size`, `speed`)
    VALUES ('12', 'Warforged', NULL, 'Medium', '30');

INSERT INTO `charactersheet`.`racemodel_languagemodel` (`races_id`, `languages_id`) VALUES ('5', '1');
INSERT INTO `charactersheet`.`racemodel_languagemodel` (`races_id`, `languages_id`) VALUES ('5', '5');

INSERT INTO `charactersheet`.`racemodel_languagemodel` (`races_id`, `languages_id`) VALUES ('6', '1');
INSERT INTO `charactersheet`.`racemodel_languagemodel` (`races_id`, `languages_id`) VALUES ('6', '3');

INSERT INTO `charactersheet`.`racemodel_languagemodel` (`races_id`, `languages_id`) VALUES ('7', '1');
INSERT INTO `charactersheet`.`racemodel_languagemodel` (`races_id`, `languages_id`) VALUES ('7', '8');

INSERT INTO `charactersheet`.`racemodel_languagemodel` (`races_id`, `languages_id`) VALUES ('8', '1');
INSERT INTO `charactersheet`.`racemodel_languagemodel` (`races_id`, `languages_id`) VALUES ('8', '11');

INSERT INTO `charactersheet`.`racemodel_languagemodel` (`races_id`, `languages_id`) VALUES ('9', '1');
INSERT INTO `charactersheet`.`racemodel_languagemodel` (`races_id`, `languages_id`) VALUES ('9', '17');

INSERT INTO `charactersheet`.`racemodel_languagemodel` (`races_id`, `languages_id`) VALUES ('10', '1');
INSERT INTO `charactersheet`.`racemodel_languagemodel` (`races_id`, `languages_id`) VALUES ('10', '16');

INSERT INTO `charactersheet`.`racemodel_languagemodel` (`races_id`, `languages_id`) VALUES ('11', '1');
INSERT INTO `charactersheet`.`racemodel_languagemodel` (`races_id`, `languages_id`) VALUES ('11', '13');

INSERT INTO `charactersheet`.`racemodel_languagemodel` (`races_id`, `languages_id`) VALUES ('12', '1');
INSERT INTO `charactersheet`.`racemodel_languagemodel` (`races_id`, `languages_id`) VALUES ('12', '11');
