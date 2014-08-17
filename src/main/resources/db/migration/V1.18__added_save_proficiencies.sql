INSERT INTO `charactersheet`.`proficiency` (`id`, `description`, `name`, `proficiencyTypeString`)
  VALUES ('81', '', 'Strength', 'SAVE');
INSERT INTO `charactersheet`.`proficiency` (`id`, `description`, `name`, `proficiencyTypeString`)
  VALUES ('82', '', 'Dexterity', 'SAVE');
INSERT INTO `charactersheet`.`proficiency` (`id`, `description`, `name`, `proficiencyTypeString`)
  VALUES ('83', '', 'Constitution', 'SAVE');
INSERT INTO `charactersheet`.`proficiency` (`id`, `description`, `name`, `proficiencyTypeString`)
  VALUES ('84', '', 'Intelligence', 'SAVE');
INSERT INTO `charactersheet`.`proficiency` (`id`, `description`, `name`, `proficiencyTypeString`)
  VALUES ('85', '', 'Wisdom', 'SAVE');
INSERT INTO `charactersheet`.`proficiency` (`id`, `description`, `name`, `proficiencyTypeString`)
  VALUES ('86', '', 'Charisma', 'SAVE');

INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('1', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Strength'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('1', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Constitution'));

INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('2', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Dexterity'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('2', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Charisma'));

INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('3', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Wisdom'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('3', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Charisma'));

INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('4', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Intelligence'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('4', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Wisdom'));

INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('5', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Strength'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('5', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Constitution'));

INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('6', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Strength'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('6', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Dexterity'));

INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('7', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Wisdom'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('7', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Charisma'));

INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('8', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Strength'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('8', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Dexterity'));

INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('9', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Dexterity'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('9', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Intelligence'));

INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('10', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Constitution'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('10', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Charisma'));

INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('11', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Wisdom'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('11', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Charisma'));

INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('12', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Intelligence'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('12', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Wisdom'));
