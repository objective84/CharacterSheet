INSERT INTO `charactersheet`.`racemodel_proficiency` (`races_id`, `proficiencies_id`) VALUES ('1', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Battleaxe'));
INSERT INTO `charactersheet`.`racemodel_proficiency` (`races_id`, `proficiencies_id`) VALUES ('1', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Handaxe'));
INSERT INTO `charactersheet`.`racemodel_proficiency` (`races_id`, `proficiencies_id`) VALUES ('1', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Light Hammer'));
INSERT INTO `charactersheet`.`racemodel_proficiency` (`races_id`, `proficiencies_id`) VALUES ('1', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Warhammer'));

INSERT INTO `charactersheet`.`racemodel_proficiency` (`races_id`, `proficiencies_id`) VALUES ('2', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Perception'));

INSERT INTO `charactersheet`.`racemodel_proficiency` (`races_id`, `proficiencies_id`) VALUES ('7', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Optional Skill'));
INSERT INTO `charactersheet`.`racemodel_proficiency` (`races_id`, `proficiencies_id`) VALUES ('7', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Optional Skill'));

INSERT INTO `charactersheet`.`racemodel_proficiency` (`races_id`, `proficiencies_id`) VALUES ('8', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Intimidation'));

INSERT INTO `charactersheet`.`subraces_proficiency` (`subRaces_id`, `proficiencies_id`) VALUES ('1', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Longsword'));
INSERT INTO `charactersheet`.`subraces_proficiency` (`subRaces_id`, `proficiencies_id`) VALUES ('1', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Shortsword'));
INSERT INTO `charactersheet`.`subraces_proficiency` (`subRaces_id`, `proficiencies_id`) VALUES ('1', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Longbow'));
INSERT INTO `charactersheet`.`subraces_proficiency` (`subRaces_id`, `proficiencies_id`) VALUES ('1', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Shortbow'));

INSERT INTO `charactersheet`.`subraces_proficiency` (`subRaces_id`, `proficiencies_id`) VALUES ('2', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Longsword'));
INSERT INTO `charactersheet`.`subraces_proficiency` (`subRaces_id`, `proficiencies_id`) VALUES ('2', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Shortsword'));
INSERT INTO `charactersheet`.`subraces_proficiency` (`subRaces_id`, `proficiencies_id`) VALUES ('2', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Longbow'));
INSERT INTO `charactersheet`.`subraces_proficiency` (`subRaces_id`, `proficiencies_id`) VALUES ('2', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Shortbow'));

INSERT INTO `charactersheet`.`subraces_proficiency` (`subRaces_id`, `proficiencies_id`) VALUES ('3', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Rapier'));
INSERT INTO `charactersheet`.`subraces_proficiency` (`subRaces_id`, `proficiencies_id`) VALUES ('3', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Shortsword'));
INSERT INTO `charactersheet`.`subraces_proficiency` (`subRaces_id`, `proficiencies_id`) VALUES ('3', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Hand Crossbow'));

