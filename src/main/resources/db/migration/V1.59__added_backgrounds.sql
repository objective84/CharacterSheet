CREATE TABLE `background` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `feature` varchar(10000) DEFAULT NULL,
  `coin_purse_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `background_coin_purse_id_fk_idx` (`coin_purse_id`),
  CONSTRAINT `background_coin_purse_id_fk`
  FOREIGN KEY (`coin_purse_id`)
  ADD INDEX `background_coin_purse_id_fk_idx` (`coin_purse_id` ASC);
  ADD CONSTRAINT `background_coin_purse_id_fk`
  FOREIGN KEY (`coin_purse_id`)
  REFERENCES `charactersheet`.`coinpurse` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
);


CREATE TABLE `charactersheet`.`background_proficiency` (
  `background_id` BIGINT(20) NULL,
  `proficiency_id` BIGINT(20) NULL,
  INDEX `background_proficiency_background_id_fk_idx` (`background_id` ASC),
  INDEX `background_proficiency_proficiency_id_fk_idx` (`proficiency_id` ASC),
  CONSTRAINT `background_proficiency_background_id_fk`
    FOREIGN KEY (`background_id`)
    REFERENCES `charactersheet`.`background` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `background_proficiency_proficiency_id_fk`
    FOREIGN KEY (`proficiency_id`)
    REFERENCES `charactersheet`.`proficiency` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


CREATE TABLE `charactersheet`.`background_language` (
  `background_id` BIGINT(20) NULL,
  `language_id` BIGINT(20) NULL,
  INDEX `background_language_bacground_id_fk_idx` (`background_id` ASC),
  INDEX `background_language_language_id_fk_idx` (`language_id` ASC),
  CONSTRAINT `background_language_bacground_id_fk`
    FOREIGN KEY (`background_id`)
    REFERENCES `charactersheet`.`background` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `background_language_language_id_fk`
    FOREIGN KEY (`language_id`)
    REFERENCES `charactersheet`.`languagemodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `charactersheet`.`background_equipment` (
  `background_id` BIGINT(20) NULL,
  `equipment_id` BIGINT(20) NULL,
  INDEX `background_equipment_background_id_fk_idx` (`background_id` ASC),
  INDEX `background_equipment_equipment_id_fk_idx` (`equipment_id` ASC),
  CONSTRAINT `background_equipment_background_id_fk`
    FOREIGN KEY (`background_id`)
    REFERENCES `charactersheet`.`background` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `background_equipment_equipment_id_fk`
    FOREIGN KEY (`equipment_id`)
    REFERENCES `charactersheet`.`equipmentmodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

UPDATE `charactersheet`.`level` SET `cantrips_known`='0' WHERE `id_level`='2';
UPDATE `charactersheet`.`level` SET `choose_sub_class`='1' WHERE `id_level`='2';

ALTER TABLE `charactersheet`.`spellmodel`
ADD COLUMN `numAttacks` INT NULL DEFAULT '0' AFTER `range`;
UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='3' WHERE `id`='251';
UPDATE `charactersheet`.`spellmodel` SET `damageDice_id`='3' WHERE `id`='258';

CREATE TABLE `charactersheet`.`character_model_used_traits` (
  `character_id` BIGINT(20) NULL,
  `trait_id` BIGINT(20) NULL,
  INDEX `character_used_traits_character_id_fk_idx` (`character_id` ASC),
  INDEX `character_used_traits_trait_id_fk_idx` (` trait_id` ASC),
  CONSTRAINT `character_used_traits_character_id_fk`
  FOREIGN KEY (`character_id`)
  REFERENCES `charactersheet`.`charactermodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `character_used_traits_trait_id_fk`
  FOREIGN KEY (` trait_id`)
  REFERENCES `charactersheet`.`traitmodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

ALTER TABLE `charactersheet`.`traitmodel`
ADD COLUMN `refreshOnShortRest` TINYINT(1) NULL DEFAULT 0 AFTER `name`;

CREATE TABLE `charactersheet`.`character_hit_dice` (
  `character_id` BIGINT(20) NULL,
  `dice_id` BIGINT(20) NULL,
  INDEX `hit_dice_character_id_fk_idx` (`character_id` ASC),
  INDEX `hit_dice_dice_id_fk_idx` (`dice_id` ASC),
  CONSTRAINT `hit_dice_character_id_fk`
  FOREIGN KEY (`character_id`)
  REFERENCES `charactersheet`.`charactermodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `hit_dice_dice_id_fk`
  FOREIGN KEY (`dice_id`)
  REFERENCES `charactersheet`.`dice` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `character_used_hit_dice` (
  `character_id` bigint(20) DEFAULT NULL,
  `dice_id` bigint(20) DEFAULT NULL,
  KEY `hit_dice_character_id_fk_idx` (`character_id`),
  KEY `hit_dice_dice_id_fk_idx` (`dice_id`),
  CONSTRAINT `character_used_hit_dice_character_id_fk`
  FOREIGN KEY (`character_id`)
  REFERENCES `charactermodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `character_used_hit_dice_dice_id_fk`
  FOREIGN KEY (`dice_id`)
  REFERENCES `dice` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

CREATE TABLE `add_spell_trait` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `numSpellsLearned` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `charactersheet`.`add_spell_trait_spells` (
  `trait_id` BIGINT(20) NULL,
  `spell_id` BIGINT(20) NULL,
  INDEX `add_spell_trait_spells_trait_id_fk_idx` (`trait_id` ASC),
  INDEX `add_spell_trait_spells_spell_id_fk_idx` (`spell_id` ASC),
  CONSTRAINT `add_spell_trait_spells_trait_id_fk`
  FOREIGN KEY (`trait_id`)
  REFERENCES `charactersheet`.`add_spell_trait` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `add_spell_trait_spells_spell_id_fk`
  FOREIGN KEY (`spell_id`)
  REFERENCES `charactersheet`.`spellmodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `charactersheet`.`ability_point_increase_limited_trait` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `str` TINYINT(1) NULL DEFAULT 0,
  `dex` TINYINT(1) NULL DEFAULT 0,
  `con` TINYINT(1) NULL DEFAULT 0,
  `intel` TINYINT(1) NULL DEFAULT 0,
  `wis` TINYINT(1) NULL DEFAULT 0,
  `cha` TINYINT(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`));

CREATE TABLE `charactersheet`.`feat_prerequisite` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`));

ALTER TABLE `charactersheet`.`feat`
ADD INDEX `feat_prerequisite_id_fk_idx` (`prerequisite_id` ASC);
ALTER TABLE `charactersheet`.`feat`
ADD CONSTRAINT `feat_prerequisite_id_fk`
FOREIGN KEY (`prerequisite_id`)
REFERENCES `charactersheet`.`feat_prerequisite` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

CREATE TABLE `charactersheet`.`feats_traits` (
  `feat_id` BIGINT(20) NULL,
  `trait_id` BIGINT(20) NULL,
  INDEX `feats_traits_feat_id_fk_idx` (`feat_id` ASC),
  INDEX `feats_traits_trait_id_fk_idx` (`trait_id` ASC),
  CONSTRAINT `feats_traits_feat_id_fk`
  FOREIGN KEY (`feat_id`)
  REFERENCES `charactersheet`.`feat` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `feats_traits_trait_id_fk`
  FOREIGN KEY (`trait_id`)
  REFERENCES `charactersheet`.`traitmodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `charactersheet`.`ability_score_req` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `abilityOne` TINYINT(1) NOT NULL,
  `abilityTwo` VARCHAR(45) NULL DEFAULT NULL,
  `requirement` INT(11) NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `charactersheet`.`proficiency_req` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `proficiency_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `proficiency_req_proficiency_id_)fk_idx` (`proficiency_id` ASC),
  CONSTRAINT `proficiency_req_proficiency_id_)fk`
  FOREIGN KEY (`proficiency_id`)
  REFERENCES `charactersheet`.`proficiency` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `charactersheet`.`can_cast_spell_req` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `clazz_id` BIGINT(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `can_cast_spell_req_clazz_id_fk_idx` (`clazz_id` ASC),
  CONSTRAINT `can_cast_spell_req_clazz_id_fk`
  FOREIGN KEY (`clazz_id`)
  REFERENCES `charactersheet`.`classmodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `charactersheet`.`character_feats` (
  `character_id` BIGINT(20) NULL,
  `feat_id` BIGINT(20) NULL,
  INDEX `character_feats_character_id_fk_idx` (`character_id` ASC),
  INDEX `character_feats_feat_id_fk_idx` (`feat_id` ASC),
  CONSTRAINT `character_feats_character_id_fk`
  FOREIGN KEY (`character_id`)
  REFERENCES `charactersheet`.`charactermodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `character_feats_feat_id_fk`
  FOREIGN KEY (`feat_id`)
  REFERENCES `charactersheet`.`feat` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

ALTER TABLE `charactersheet`.`abilities`
ADD COLUMN `strCanIncrease` TINYINT(1) NULL DEFAULT 0 AFTER `cha_bonus`,
ADD COLUMN `dexCanIncrease` TINYINT(1) NULL DEFAULT 0 AFTER `strCanIncrease`,
ADD COLUMN `conCanIncrease` TINYINT(1) NULL DEFAULT 0 AFTER `dexCanIncrease`,
ADD COLUMN `intelCanIncrease` TINYINT(1) NULL DEFAULT 0 AFTER `conCanIncrease`,
ADD COLUMN `wisCanIncrease` TINYINT(1) NULL DEFAULT 0 AFTER `intelCanIncrease`,
ADD COLUMN `chaCanIncrease` TINYINT(1) NULL DEFAULT 0 AFTER `wisCanIncrease`;

UPDATE `charactersheet`.`spellmodel` SET `requiresAttackRoll`='1' WHERE `id`='205';
UPDATE `charactersheet`.`spellmodel` SET `requiresAttackRoll`='0' WHERE `id`='244';


INSERT INTO `charactersheet`.`feat_prerequisite` (`id`) VALUES ('1');
INSERT INTO `charactersheet`.`can_cast_spell_req` (`id`) VALUES ('1');

INSERT INTO `charactersheet`.`feat` (`id`, `name`, `description`, `prerequisite_id`) VALUES ('1', 'Spell Sniper', 'Prerequisite: The ability to cast at least one spell /n/nYou have learned techniques to enhance your attacks with certain kinds of spells, gaining the following benefits: /bullets• When you cast a spell that requires you to make an attack roll, the spell’s range is doubled. /bt• Your ranged spell attacks ignore half cover AND three-quarters cover. /bt• You learn one cantrip that requires an attack roll./bullets /nChoose the cantrip from the bard, cleric, druid, sorcerer, warlock, or wizard spell list. Your spellcasting ability for this cantrip depends on the spell list you chose from: Charisma for bard, sorcerer, or warlock; Wisdom for cleric or druid; or Intelligence for wizard.', '1');

INSERT INTO `charactersheet`.`traitmodel` (`id`, `description`, `name`, `refreshOnShortRest`) VALUES ('24', 'You learn one cantrip that requires an attack roll. Choose the cantrip from the bard, cleric, druid, sorcerer, warlock, or wizard spell list. Your spellcasting ability for this cantrip depends on the spell list you chose from: Charisma for bard, sorcerer, or warlock; Wisdom for cleric or druid; or Intelligence for wizard.', 'Gain offensive cantrip', '0');
INSERT INTO `charactersheet`.`add_spell_trait` (`id`) VALUES ('24', '1');

INSERT INTO `charactersheet`.`add_spell_trait_spell` (`trait_id`, `spell_id`) VALUES ('24', '46');
INSERT INTO `charactersheet`.`add_spell_trait_spell` (`trait_id`, `spell_id`) VALUES ('24', '113');
INSERT INTO `charactersheet`.`add_spell_trait_spell` (`trait_id`, `spell_id`) VALUES ('24', '137');
INSERT INTO `charactersheet`.`add_spell_trait_spell` (`trait_id`, `spell_id`) VALUES ('24', '205');
INSERT INTO `charactersheet`.`add_spell_trait_spell` (`trait_id`, `spell_id`) VALUES ('24', '239');
INSERT INTO `charactersheet`.`add_spell_trait_spell` (`trait_id`, `spell_id`) VALUES ('24', '257');
