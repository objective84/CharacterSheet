INSERT INTO `charactersheet`.`races` (`id`, `description`,`name`,`size`, `speed`) VALUES ('1', NULL, 'Dwarf','Medium','25');
INSERT INTO `charactersheet`.`races` (`id`, `description`,`name`,`size`, `speed`) VALUES ('2', NULL, 'Elf','Medium','30');
INSERT INTO `charactersheet`.`races` (`id`, `description`,`name`,`size`, `speed`) VALUES ('3', NULL, 'Halfling','Small','25');
INSERT INTO `charactersheet`.`races` (`id`, `description`,`name`,`size`, `speed`) VALUES ('4', NULL, 'Human','Medium','30');

INSERT INTO `charactersheet`.`races_languages` (`races_id`, `languages_id`) VALUES ('1', '2');
INSERT INTO `charactersheet`.`races_languages` (`races_id`, `languages_id`) VALUES ('1', '1');

INSERT INTO `charactersheet`.`races_languages` (`races_id`, `languages_id`) VALUES ('2', '3');
INSERT INTO `charactersheet`.`races_languages` (`races_id`, `languages_id`) VALUES ('2', '1');

INSERT INTO `charactersheet`.`races_languages` (`races_id`, `languages_id`) VALUES ('3', '1');
INSERT INTO `charactersheet`.`races_languages` (`races_id`, `languages_id`) VALUES ('3', '7');

INSERT INTO `charactersheet`.`races_languages` (`races_id`, `languages_id`) VALUES ('4', '1');