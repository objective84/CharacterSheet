CREATE TABLE `charactersheet`.`monster` (
  `id` BIGINT NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `size` VARCHAR(45) NULL,
  `type` VARCHAR(45) NULL,
  `alignment` VARCHAR(45) NULL,
  `armor_class` INT NULL,
  `max_hit_points` INT NULL,
  `current_hit_points` INT NULL,
  `armor_type` VARCHAR(45) NULL,
  `hit_dice` VARCHAR(45) NULL,
  `hit_dice_modifier` INT NULL,
  `passive_perception` INT NULL,
  `str` INT NULL,
  `dex` INT NULL,
  `con` INT NULL,
  `intel` INT NULL,
  `wis` INT NULL,
  `cha` INT NULL,
  `challenge_rating` INT NULL,
  `xp` INT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `charactersheet`.`trait` (
  `id` BIGINT NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `description` VARCHAR(2500) NOT NULL,
  `monster_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `trait_monster_fk_idx` (`monster_id` ASC),
  CONSTRAINT `trait_monster_fk`
  FOREIGN KEY (`monster_id`)
  REFERENCES `charactersheet`.`monster` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `charactersheet`.`saving_throw` (
  `id` BIGINT NOT NULL,
  `ability` VARCHAR(45) NOT NULL,
  `modifier` BIGINT NULL,
  `monster_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `save_monster_fk_idx` (`monster_id` ASC),
  CONSTRAINT `save_monster_fk`
  FOREIGN KEY (`monster_id`)
  REFERENCES `charactersheet`.`monster` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


CREATE TABLE `charactersheet`.`skill` (
  `id` BIGINT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `modifier` BIGINT NULL,
  `monster_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `skill_monster_fk_idx` (`monster_id` ASC),
  CONSTRAINT `skill_monster_fk`
  FOREIGN KEY (`monster_id`)
  REFERENCES `charactersheet`.`monster` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `charactersheet`.`monster_sense` (
  `id` BIGINT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `range` BIGINT NULL,
  `monster_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `monster_sense_fk_idx` (`monster_id` ASC),
  CONSTRAINT `monster_sense_fk`
  FOREIGN KEY (`monster_id`)
  REFERENCES `charactersheet`.`monster` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `charactersheet`.`monster_resistance` (
  `id` BIGINT NOT NULL,
  `damage_type_id` BIGINT NULL,
  `monster_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `resistance_monster_fk_idx` (`monster_id` ASC),
  INDEX `damage_type_fk_idx` (`damage_type_id` ASC),
  CONSTRAINT `resistance_monster_fk`
  FOREIGN KEY (`monster_id`)
  REFERENCES `charactersheet`.`monster` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `damage_type_monster_fk`
  FOREIGN KEY (`damage_type_id`)
  REFERENCES `charactersheet`.`damagetype` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `charactersheet`.`monster_damage_immunities` (
  `id` BIGINT NOT NULL,
  `damage_type_id` BIGINT NULL,
  `monster_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `immunities_monster_fk_idx` (`monster_id` ASC),
  INDEX `immunities_damage_type_fk_idx` (`damage_type_id` ASC),
  CONSTRAINT `immunities_monster_fk`
  FOREIGN KEY (`monster_id`)
  REFERENCES `charactersheet`.`monster` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `immunities_damage_type_fk`
  FOREIGN KEY (`damage_type_id`)
  REFERENCES `charactersheet`.`damagetype` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `charactersheet`.`monster_language` (
  `id` BIGINT NOT NULL,
  `language_id` BIGINT NULL,
  `monster_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `monster_language_monster_fk_idx` (`monster_id` ASC),
  INDEX `monster_language_language_fx_idx` (`language_id` ASC),
  CONSTRAINT `monster_language_monster_fk`
  FOREIGN KEY (`monster_id`)
  REFERENCES `charactersheet`.`monster` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `monster_language_language_fk`
  FOREIGN KEY (`language_id`)
  REFERENCES `charactersheet`.`languagemodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
CREATE TABLE `charactersheet`.`monster_actions` (
  `id` BIGINT NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `toHitBonus` INT NULL,
  `target` VARCHAR(45) NULL,
  `range` VARCHAR(45) NULL,
  `type` VARCHAR(45) NULL,
  `description` VARCHAR(5000) NULL,
  `monster_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `monster_actions_fk_idx` (`monster_id` ASC),
  CONSTRAINT `monster_actions_fk`
  FOREIGN KEY (`monster_id`)
  REFERENCES `charactersheet`.`monster` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
CREATE TABLE `charactersheet`.`monster_damage` (
  `id` BIGINT NOT NULL,
  `dice_amount` INT NULL,
  `damage_type_id` BIGINT NULL,
  `dice_id` BIGINT NULL,
  `damage_modifier` INT NULL,
  `monster_actions_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `monster_damage_fk_idx` (`monster_actions_id` ASC),
  CONSTRAINT `monster_damage_fk`
  FOREIGN KEY (`monster_actions_id`)
  REFERENCES `charactersheet`.`monster_actions` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  INDEX `monster_damage_type_fk_idx` (`damage_type_id` ASC),
  CONSTRAINT `monster_damage_type_fk`
  FOREIGN KEY (`damage_type_id`)
  REFERENCES `charactersheet`.`damagetype` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  INDEX `monster_damage_dice_fk_idx` (`dice_id` ASC),
  CONSTRAINT `monster_damage_dice_fk`
  FOREIGN KEY (`dice_id`)
  REFERENCES `charactersheet`.`dice` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);