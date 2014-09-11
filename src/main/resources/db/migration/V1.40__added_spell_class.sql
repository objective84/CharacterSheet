CREATE TABLE `charactersheet`.`charactermodel_spellmodel` (
  `character_id` BIGINT(20) NOT NULL,
  `spellmodel_id` BIGINT(20) NULL,
  INDEX `character_model_fk_idx` (`character_id` ASC),
  INDEX `spell_model_fk_idx` (`spellmodel_id` ASC),
  CONSTRAINT `character_model_fk`
  FOREIGN KEY (`character_id`)
  REFERENCES `charactersheet`.`charactermodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `spell_model_fk`
  FOREIGN KEY (`spellmodel_id`)
  REFERENCES `charactersheet`.`spellmodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

ALTER TABLE `charactersheet`.`traitmodel_level`
RENAME TO  `charactersheet`.`level_traitmodel` ;


INSERT INTO `charactersheet`.`level` (`id_level`, `level_number`, `proficiency_bonus`, `cantrips_known`, `spells_known`, `first_level_spell_slots`, `second_level_spell_slots`, `third_level_spell_slots`, `fourth_level_spell_slots`, `fifth_level_spell_slots`, `sixth_level_spell_slots`, `seventh_level_spell_slots`, `eighth_level_spell_slots`, `ninth_level_spell_slots`, `clazz_id`)
VALUES ('1', #id
        '1', #level_number
        '2', #proficiency_bonus
        '3', #cantrips_known
        '6', #spells_known
        '2', #first_level_spell_slots
        '0', #second_level_spell_slots
        '0', #third_level_spell_slots
        '0', #fourth_level_spell_slots
        '0', #fifth_level_spell_slots
        '0', #sixth_level_spell_slots
        '0', #seventh_level_spell_slots
        '0', #eighth_level_spell_slots
        '0', #ninth_level_spell_slots
        '12' #clazz_id
);
