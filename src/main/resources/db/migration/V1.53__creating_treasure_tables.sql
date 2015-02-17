CREATE TABLE `CharacterSheet`.`rarity` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `minimum_level` INT NULL,
  `minimum_gold_value` INT NULL,
  `maximum_gold_value` INT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `CharacterSheet`.`gemstone` (
  `id` INT NOT NULL,
  `name` VARCHAR(500) NOT NULL,
  `description` VARCHAR(500) NULL,
  `gold_value` INT NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `CharacterSheet`.`magic_item` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `description` VARCHAR(500) NULL,
  `rarity_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `rarity_id_fk_idx` (`rarity_id` ASC),
  CONSTRAINT `rarity_id_fk`
    FOREIGN KEY (`rarity_id`)
    REFERENCES `CharacterSheet`.`rarity` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
