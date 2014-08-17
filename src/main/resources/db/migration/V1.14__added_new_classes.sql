INSERT INTO `charactersheet`.`classmodel` (`id`, `name`, `skills_at_creation`, `startingWealthDieAmount`, `hitDie_id`, `startingWealthDie_id`)
VALUES ('10', 'Sorcerer', '2', '3', '2', '1');

INSERT INTO `charactersheet`.`classmodel` (`id`, `name`, `skills_at_creation`, `startingWealthDieAmount`, `hitDie_id`, `startingWealthDie_id`)
VALUES ('11', 'Warlock', '2', '4', '2', '1');

INSERT INTO `charactersheet`.`classmodel` (`id`, `name`, `skills_at_creation`, `startingWealthDieAmount`, `hitDie_id`, `startingWealthDie_id`)
VALUES ('12', 'Wizard', '2', '4', '2', '1');


INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('1', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Animal Handling'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('1', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Athletics'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('1', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Intimidation'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('1', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Nature'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('1', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Medicine'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('1', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Survival'));

INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('2', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Acrobatics'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('2', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Athletics'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('2', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Slight of Hand'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('2', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Stealth'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('2', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Arcana'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('2', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='History'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('2', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Investigation'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('2', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Nature'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('2', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Religion'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('2', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Animal Handling'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('2', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Insight'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('2', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Medicine'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('2', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Perception'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('2', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Survival'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('2', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Deception'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('2', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Intimidation'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('2', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Performance'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('2', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Persuasion'));

INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('3', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='History'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('3', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Insight'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('3', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Medicine'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('3', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Persuasion'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('3', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Religion'));

INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('4', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Arcana'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('4', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Animal Handling'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('4', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Insight'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('4', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Medicine'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('4', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Nature'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('4', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Perception'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('4', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Religion'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('4', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Survival'));

INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('5', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Acrobatics'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('5', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Animal Handling'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('5', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Athletics'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('5', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='History'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('5', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Insight'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('5', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Intimidation'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('5', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Perception'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('5', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Survival'));

INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('6', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Acrobatics'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('6', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Athletics'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('6', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='History'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('6', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Insight'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('6', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Religion'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('6', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Stealth'));

INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('7', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Athletics'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('7', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Insight'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('7', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Intimidation'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('7', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Medicine'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('7', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Persuasion'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('7', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Religion'));

INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('8', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Animal Handling'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('8', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Athletics'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('8', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Insight'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('8', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Investigation'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('8', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Nature'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('8', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Perception'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('8', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Stealth'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('8', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Survival'));

INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('9', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Acrobatics'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('9', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Athletics'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('9', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Deception'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('9', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Insight'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('9', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Intimidation'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('9', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Investigation'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('9', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Perception'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('9', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Performance'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('9', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Persuasion'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('9', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Slight of Hand'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('9', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Acrobatics'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('9', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Stealth'));

INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('10', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Arcana'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('10', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Deception'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('10', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Insight'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('10', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Intimidation'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('10', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Persuasion'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('10', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Religion'));

INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('11', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Arcana'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('11', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Deception'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('11', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='History'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('11', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Intimidation'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('11', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Investigation'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('11', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Nature'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('11', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Religion'));

INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('12', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Arcana'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('12', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Religion'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('12', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Insight'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('12', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Investigation'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('12', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Medicine'));
INSERT INTO `charactersheet`.`classmodel_proficiency` (`classes_id`, `proficiencies_id`) VALUES ('12', (SELECT id from `charactersheet`.`proficiency` WHERE `name`='Religion'));



