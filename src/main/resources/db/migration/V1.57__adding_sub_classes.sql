CREATE TABLE `charactersheet`.`sub_class_level` (
  `sub_class_id` BIGINT(20) NULL,
  `level_id` BIGINT(20) NULL,
  INDEX `sub_class_to_level_subclass_id_fk_idx` (`sub_class_id` ASC),
  INDEX `sub_class_to_level_level_id_fk_idx` (`level_id` ASC),
  CONSTRAINT `sub_class_to_level_subclass_id_fk`
  FOREIGN KEY (`sub_class_id`)
  REFERENCES `charactersheet`.`subclassmodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `sub_class_to_level_level_id_fk`
  FOREIGN KEY (`level_id`)
  REFERENCES `charactersheet`.`level` (`id_level`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `charactersheet`.`level_spell` (
  `level_id` BIGINT(20) NULL,
  `spell_id` BIGINT(20) NULL,
  INDEX `level_id_fk_idx` (`level_id` ASC),
  INDEX `spell_id_fk_idx` (`spell_id` ASC),
  CONSTRAINT `level_to_spell_level_id_fk`
  FOREIGN KEY (`level_id`)
  REFERENCES `charactersheet`.`level` (`id_level`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `level_to_spell_spell_id_fk`
  FOREIGN KEY (`spell_id`)
  REFERENCES `charactersheet`.`spellmodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

ALTER TABLE `charactersheet`.`traitmodel`
CHANGE COLUMN `description` `description` VARCHAR(10000) NULL DEFAULT NULL ;

CREATE TABLE `role_play_trait` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;


CREATE TABLE `damage_resistance_vulnerability_trait` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `damage_resistance_id` bigint(20) DEFAULT NULL,
  `damage_vulnerability_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `damage_resistance_id_fk_idx` (`damage_resistance_id`),
  KEY `damage_vulnerability_id_fk_idx` (`damage_vulnerability_id`),
  CONSTRAINT `damage_resistance_id_fk` FOREIGN KEY (`damage_resistance_id`) REFERENCES `damagetype` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `damage_vulnerability_id_fk` FOREIGN KEY (`damage_vulnerability_id`) REFERENCES `damagetype` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;


ALTER TABLE `charactersheet`.`charactermodel`
ADD COLUMN `max_health_reduction` int(11) DEFAULT '0' AFTER `maxHealth`;

CREATE TABLE `charactersheet`.`trait_subtrait` (
  `trait_id` BIGINT(20) NULL,
  `subtrait_id` BIGINT(20) NULL,
  INDEX `trait_subtrait_trait_id_fk_idx` (`trait_id` ASC),
  INDEX `trait_subtrait_subtrait_id_fk_idx` (`subtrait_id` ASC),
  CONSTRAINT `trait_subtrait_trait_id_fk`
  FOREIGN KEY (`trait_id`)
  REFERENCES `charactersheet`.`traitmodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `trait_subtrait_subtrait_id_fk`
  FOREIGN KEY (`subtrait_id`)
  REFERENCES `charactersheet`.`traitmodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

DROP TABLE `charactersheet`.`subclass_trait`;
DROP TABLE `charactersheet`.`subclassmodel_traitmodel`;

ALTER TABLE `charactersheet`.`level`
DROP FOREIGN KEY `class_level_fk`;
ALTER TABLE `charactersheet`.`level`
CHANGE COLUMN `clazz_id` `clazz_id` BIGINT(20) NULL ,
ADD COLUMN `sub_class_id` BIGINT(20) NULL AFTER `clazz_id`,
ADD INDEX `sub_class_level_fk_idx` (`sub_class_id` ASC);
ALTER TABLE `charactersheet`.`level`
ADD CONSTRAINT `class_level_fk`
FOREIGN KEY (`clazz_id`)
REFERENCES `charactersheet`.`classmodel` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `sub_class_level_fk`
FOREIGN KEY (`sub_class_id`)
REFERENCES `charactersheet`.`subclassmodel` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `charactersheet`.`classmodel`
ADD COLUMN `sub_class_name` VARCHAR(45) NULL AFTER `magic_ability`;

CREATE TABLE `charactersheet`.`class_subclass` (
  `class_id` BIGINT(20) NULL,
  `subclass_id` BIGINT(20) NULL,
  INDEX `class_to_subclass_class_id_fk_idx` (`class_id` ASC),
  INDEX `class_to_subclass_subclass_id_fk_idx` (`subclass_id` ASC),
  CONSTRAINT `class_to_subclass_class_id_fk`
  FOREIGN KEY (`class_id`)
  REFERENCES `charactersheet`.`classmodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `class_to_subclass_subclass_id_fk`
  FOREIGN KEY (`subclass_id`)
  REFERENCES `charactersheet`.`subclassmodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `prevent_reduced_max_health_trait` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `trait_id_for_prevent_reduced_health_trait_fk_idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `charactersheet`.`spell_recovery_trait` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `clazz_id` BIGINT(20) NULL,
  PRIMARY KEY (`id`),
  INDEX `spell_recovery_class_id_fk_idx` (`clazz_id` ASC),
  CONSTRAINT `spell_recovery_class_id_fk`
  FOREIGN KEY (`clazz_id`)
  REFERENCES `charactersheet`.`classmodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

ALTER TABLE `charactersheet`.`level`
ADD COLUMN `choose_sub_class` TINYINT(1) NULL DEFAULT 0 AFTER `sub_class_id`;

ALTER TABLE `charactersheet`.`charactermodel`
ADD COLUMN `subclass_id` BIGINT(20) NULL AFTER `clazz_id`;

UPDATE `charactersheet`.`traitmodel` SET `name`='Ability Score Improvement' WHERE `id`='14';
UPDATE `charactersheet`.`traitmodel` SET `description`='When you reach 4th level, and again at 8th, 12th, 16th, and 19th level, you can increase one ability score o f your choice by 2, or you can increase two ability scores of your choice by 1. As normal, you can’t increase an ability score above 20 using this feature.' WHERE `id`='14';

DROP TABLE `charactersheet`.`classmodel_traitmodel`;

INSERT INTO `charactersheet`.`subclassmodel` (`id`, `description`, `name`, `baseClass_id`) VALUES ('1', '', 'School of Abjuration', '12');
INSERT INTO `charactersheet`.`subclassmodel` (`id`, `description`, `name`, `baseClass_id`) VALUES ('2', '', 'School of Conjuration', '12');
INSERT INTO `charactersheet`.`subclassmodel` (`id`, `description`, `name`, `baseClass_id`) VALUES ('3', '', 'School of Divination', '12');
INSERT INTO `charactersheet`.`subclassmodel` (`id`, `description`, `name`, `baseClass_id`) VALUES ('4', '', 'School of Enchantment', '12');
INSERT INTO `charactersheet`.`subclassmodel` (`id`, `description`, `name`, `baseClass_id`) VALUES ('5', '', 'School of Evocation', '12');
INSERT INTO `charactersheet`.`subclassmodel` (`id`, `description`, `name`, `baseClass_id`) VALUES ('6', '', 'School of Illusion', '12');
INSERT INTO `charactersheet`.`subclassmodel` (`id`, `description`, `name`, `baseClass_id`) VALUES ('7', '', 'School of Necromancy', '12');
INSERT INTO `charactersheet`.`subclassmodel` (`id`, `description`, `name`, `baseClass_id`) VALUES ('8', '', 'School of Transmutation', '12');
UPDATE `charactersheet`.`damagetype` SET `name`='Necrotic' WHERE `id`='7';

INSERT INTO `charactersheet`.`traitmodel` (`id`, `description`, `name`) VALUES ('15', 'Beginning when you select this school at 2nd level, the gold and time you must spend to copy a necromancy spell into your spellbook is halved.', 'Necromancy Savant');
INSERT INTO `charactersheet`.`role_play_trait` (`id`) VALUES ('15');

INSERT INTO `charactersheet`.`traitmodel` (`id`, `description`, `name`) VALUES ('16', 'At 2nd level, you gain the ability to reap life energy FROM creatures you kill with your spells. Once per turn WHEN you kill one or more creatures with a spell of 1st LEVEL or higher, you regain hit points equal to twice the spell’s level, or three times its level if the spell belongs to the School of Necromancy. You don’t gain this benefit FOR killing constructs or undead.', 'Grim Harvest');
INSERT INTO `charactersheet`.`role_play_trait` (`id`) VALUES ('16');

# INSERT INTO `charactersheet`.`traitmodel` (`id`, `description`, `name`) VALUES ('17', 'When you cast <span class=\"text-italic\">animate dead</span>, you can target one additional corpse or pile of bones, creating another zombie or skeleton, as appropriate. /nWhenever you create an undead using a necromancy spell, it has additional benefits: /bullets• The creature’s hit point maximum is increased by an amount equal to your w izard level. /b• The creature adds your proficiency bonus to its weapon damage rolls./bullets', 'Undead Thralls');
INSERT INTO `charactersheet`.`traitmodel` (`id`, `description`, `name`) VALUES ('17', 'When you cast animate dead, you can target one additional corpse or pile of bones, creating another zombie or skeleton, as appropriate. \nWhenever you create an undead using a necromancy spell, it has additional benefits: \n• The creature’s hit point maximum is increased by an amount equal to your wizard level. \n• The creature adds your proficiency bonus to its weapon damage rolls.', 'Undead Thralls');
INSERT INTO `charactersheet`.`role_play_trait` (`id`) VALUES ('17');

INSERT INTO `charactersheet`.`traitmodel` (`id`, `description`, `name`) VALUES ('18', 'Beginning at 10th level, you have resistance to necrotic damage, and your hit point maximum can\'\'t be reduced. You have spent so much time dealing with undead AND the forces that animate them that you have become inured to some of their worst effects.', 'Inured to Undeath');
INSERT INTO `charactersheet`.`role_play_trait` (`id`) VALUES ('18');

INSERT INTO `charactersheet`.`traitmodel` (`id`, `description`, `name`) VALUES ('19', 'Starting at 14th level, you can use magic to bring undead under your control, even those created by other wizards. As an action, you can choose one undead that you can see within 60 feet of you. That creature must make a Charisma saving throw against your wizard spell save DC. If it succeeds, you can’t use this feature on it again. If it fails, it becomes friendly to you AND obeys your commands until you use this feature again. Intelligent undead are harder to control in this way. If the target has an Intelligence of 8 or higher, it has advantage on the saving throw. If it fails the saving throw and has an Intelligence of 12 or higher, it can repeat the saving throw at the end of every hour until it succeeds and breaks free.', 'Command Undead');
INSERT INTO `charactersheet`.`role_play_trait` (`id`) VALUES ('19');

INSERT INTO `charactersheet`.`traitmodel` (`id`, `description`, `name`) VALUES ('20', 'Maximum hitpoints cannot be reduced.', 'Immune to Hit Point Reduction');
INSERT INTO `charactersheet`.`prevent_reduced_max_health_trait` (`id`) VALUES ('20');

INSERT INTO `charactersheet`.`traitmodel` (`id`, `description`, `name`) VALUES ('21', 'Resistant to Necrotic Damage', 'Necrotic Resistance');
INSERT INTO `charactersheet`.`damage_resistance_vulnerability_trait` (`damage_resistance_id`, `id`) VALUES ('7', '21');

INSERT INTO `charactersheet`.`trait_subtrait` (`trait_id`, `subtrait_id`) VALUES ('18', '20');
INSERT INTO `charactersheet`.`trait_subtrait` (`trait_id`, `subtrait_id`) VALUES ('18', '21');

UPDATE `charactersheet`.`classmodel` SET `sub_class_name`='Primal Paths' WHERE `id`='1';
UPDATE `charactersheet`.`classmodel` SET `sub_class_name`='Bard Colleges' WHERE `id`='2';
UPDATE `charactersheet`.`classmodel` SET `sub_class_name`='Divine Domains' WHERE `id`='3';
UPDATE `charactersheet`.`classmodel` SET `sub_class_name`='Druid Circles' WHERE `id`='4';
UPDATE `charactersheet`.`classmodel` SET `sub_class_name`='Martial Archetypes' WHERE `id`='5';
UPDATE `charactersheet`.`classmodel` SET `sub_class_name`='Monastic Traditions' WHERE `id`='6';
UPDATE `charactersheet`.`classmodel` SET `sub_class_name`='Sacred Oaths' WHERE `id`='7';
UPDATE `charactersheet`.`classmodel` SET `sub_class_name`='Ranger Archetypes' WHERE `id`='8';
UPDATE `charactersheet`.`classmodel` SET `sub_class_name`='Roguish Archetypes' WHERE `id`='9';
UPDATE `charactersheet`.`classmodel` SET `sub_class_name`='Sorcerous Origins' WHERE `id`='10';
UPDATE `charactersheet`.`classmodel` SET `sub_class_name`='Otherworldly Patrons' WHERE `id`='11';
UPDATE `charactersheet`.`classmodel` SET `sub_class_name`='Arcane Traditions' WHERE `id`='12';

INSERT INTO `charactersheet`.`level` (`id_level`, `level_number`, `sub_class_id`) VALUES ('21', '2', '7');
INSERT INTO `charactersheet`.`level` (`id_level`, `level_number`, `sub_class_id`) VALUES ('22', '6', '7');
INSERT INTO `charactersheet`.`level` (`id_level`, `level_number`, `sub_class_id`) VALUES ('23', '10', '7');
INSERT INTO `charactersheet`.`level` (`id_level`, `level_number`, `sub_class_id`) VALUES ('24', '14', '7');

INSERT INTO `charactersheet`.`level_trait` (`level_id`, `trait_id`) VALUES ('21', '15');
INSERT INTO `charactersheet`.`level_trait` (`level_id`, `trait_id`) VALUES ('21', '16');
INSERT INTO `charactersheet`.`level_trait` (`level_id`, `trait_id`) VALUES ('22', '17');
INSERT INTO `charactersheet`.`level_trait` (`level_id`, `trait_id`) VALUES ('23', '18');
INSERT INTO `charactersheet`.`level_trait` (`level_id`, `trait_id`) VALUES ('24', '19');

INSERT INTO `charactersheet`.`level_spell` (`level_id`, `spell_id`) VALUES ('22', '8');

INSERT INTO `charactersheet`.`level_trait` (`level_id`, `trait_id`) VALUES ('4', '14');
INSERT INTO `charactersheet`.`level_trait` (`level_id`, `trait_id`) VALUES ('8', '14');
INSERT INTO `charactersheet`.`level_trait` (`level_id`, `trait_id`) VALUES ('12', '14');
INSERT INTO `charactersheet`.`level_trait` (`level_id`, `trait_id`) VALUES ('16', '14');
INSERT INTO `charactersheet`.`level_trait` (`level_id`, `trait_id`) VALUES ('19', '14');

INSERT INTO `charactersheet`.`class_subclass` (`class_id`, `subclass_id`) VALUES ('12', '1');
INSERT INTO `charactersheet`.`class_subclass` (`class_id`, `subclass_id`) VALUES ('12', '2');
INSERT INTO `charactersheet`.`class_subclass` (`class_id`, `subclass_id`) VALUES ('12', '3');
INSERT INTO `charactersheet`.`class_subclass` (`class_id`, `subclass_id`) VALUES ('12', '4');
INSERT INTO `charactersheet`.`class_subclass` (`class_id`, `subclass_id`) VALUES ('12', '5');
INSERT INTO `charactersheet`.`class_subclass` (`class_id`, `subclass_id`) VALUES ('12', '6');
INSERT INTO `charactersheet`.`class_subclass` (`class_id`, `subclass_id`) VALUES ('12', '7');
INSERT INTO `charactersheet`.`class_subclass` (`class_id`, `subclass_id`) VALUES ('12', '8');

INSERT INTO `charactersheet`.`sub_class_level` (`sub_class_id`, `level_id`) VALUES ('7', '21');
INSERT INTO `charactersheet`.`sub_class_level` (`sub_class_id`, `level_id`) VALUES ('7', '22');
INSERT INTO `charactersheet`.`sub_class_level` (`sub_class_id`, `level_id`) VALUES ('7', '23');
INSERT INTO `charactersheet`.`sub_class_level` (`sub_class_id`, `level_id`) VALUES ('7', '24');

INSERT INTO `charactersheet`.`traitmodel` (`id`, `description`, `name`) VALUES ('22', 'Recover spell slots equal to half your Wizard level on a short rest', 'Arcane Recovery');
INSERT INTO `charactersheet`.`traitmodel` (`id`, `description`, `name`) VALUES ('23', 'Recover spell slots equal to half your Druid level on a short rest', 'Natural');

INSERT INTO `charactersheet`.`spell_recovery_trait` (`id`, `clazz_id`) VALUES ('23', '4');
INSERT INTO `charactersheet`.`spell_recovery_trait` (`id`, `clazz_id`) VALUES ('22', '12');


INSERT INTO `charactersheet`.`level_trait` (`level_id`, `trait_id`) VALUES ('1', '22');
