CREATE TABLE `charactersheet`.`level` (
  `id_level` BIGINT NOT NULL,
  `level_number` INT NOT NULL,
  `proficiency_bonus` INT NOT NULL,
  `cantrips_known` INT NULL,
  `spells_known` INT NULL,
  `first_level_spell_slots` INT NULL,
  `second_level_spell_slots` INT NULL,
  `third_level_spell_slots` INT NULL,
  `fourth_level_spell_slots` INT NULL,
  `fifth_level_spell_slots` INT NULL,
  `sixth_level_spell_slots` INT NULL,
  `seventh_level_spell_slots` INT NULL,
  `eighth_level_spell_slots` INT NULL,
  `ninth_level_spell_slots` INT NULL,
  `clazz_id` BIGINT NOT NULL,
  PRIMARY KEY (`id_level`),
  INDEX `class_level_fk_idx` (`clazz_id` ASC),
  CONSTRAINT `class_level_fk`
    FOREIGN KEY (`clazz_id`)
    REFERENCES `charactersheet`.`classmodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
