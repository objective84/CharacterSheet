  CREATE TABLE `character_advancement_level` (
    `character_advancement_id` bigint(20) DEFAULT NULL,
    `level_id` bigint(20) DEFAULT NULL,
    KEY `character_advancement_fk_idx` (`character_advancement_id`),
    KEY `level_fk_idx` (`level_id`),
    CONSTRAINT `character_advancement_id_fk`
    FOREIGN KEY (`character_advancement_id`)
    REFERENCES `character_advancement` (`id_character_advancement`)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
    CONSTRAINT `level_id_fk`
    FOREIGN KEY (`level_id`)
    REFERENCES `level` (`id_level`)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

 ALTER TABLE `charactersheet`.`level`
 DROP COLUMN `proficiency_bonus`;
  ALTER TABLE `charactersheet`.`charactermodel`
  DROP COLUMN `level`;

  ALTER TABLE `charactersheet`.`character_advancement`
  DROP COLUMN `total_level`;

###### Wizard levels ######
INSERT INTO `charactersheet`.`level` (`id_level`, `level_number`, `cantrips_known`, `spells_known`, `first_level_spell_slots`, `second_level_spell_slots`, `third_level_spell_slots`, `fourth_level_spell_slots`, `fifth_level_spell_slots`, `sixth_level_spell_slots`, `seventh_level_spell_slots`, `eighth_level_spell_slots`, `ninth_level_spell_slots`, `clazz_id`)
VALUES ('2', #id
        '2', #level_number
        '3', #cantrips_known
        '2', #spells_known
        '1', #first_level_spell_slots
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
INSERT INTO `charactersheet`.`level` (`id_level`, `level_number`, `cantrips_known`, `spells_known`, `first_level_spell_slots`, `second_level_spell_slots`, `third_level_spell_slots`, `fourth_level_spell_slots`, `fifth_level_spell_slots`, `sixth_level_spell_slots`, `seventh_level_spell_slots`, `eighth_level_spell_slots`, `ninth_level_spell_slots`, `clazz_id`)
VALUES ('3', #id
        '3', #level_number
        '0', #cantrips_known
        '2', #spells_known
        '1', #first_level_spell_slots
        '2', #second_level_spell_slots
        '0', #third_level_spell_slots
        '0', #fourth_level_spell_slots
        '0', #fifth_level_spell_slots
        '0', #sixth_level_spell_slots
        '0', #seventh_level_spell_slots
        '0', #eighth_level_spell_slots
        '0', #ninth_level_spell_slots
        '12' #clazz_id
);
INSERT INTO `charactersheet`.`level` (`id_level`, `level_number`, `cantrips_known`, `spells_known`, `first_level_spell_slots`, `second_level_spell_slots`, `third_level_spell_slots`, `fourth_level_spell_slots`, `fifth_level_spell_slots`, `sixth_level_spell_slots`, `seventh_level_spell_slots`, `eighth_level_spell_slots`, `ninth_level_spell_slots`, `clazz_id`)
VALUES ('4', #id
        '4', #level_number
        '1', #cantrips_known
        '2', #spells_known
        '0', #first_level_spell_slots
        '1', #second_level_spell_slots
        '0', #third_level_spell_slots
        '0', #fourth_level_spell_slots
        '0', #fifth_level_spell_slots
        '0', #sixth_level_spell_slots
        '0', #seventh_level_spell_slots
        '0', #eighth_level_spell_slots
        '0', #ninth_level_spell_slots
        '12' #clazz_id
);
INSERT INTO `charactersheet`.`level` (`id_level`, `level_number`, `cantrips_known`, `spells_known`, `first_level_spell_slots`, `second_level_spell_slots`, `third_level_spell_slots`, `fourth_level_spell_slots`, `fifth_level_spell_slots`, `sixth_level_spell_slots`, `seventh_level_spell_slots`, `eighth_level_spell_slots`, `ninth_level_spell_slots`, `clazz_id`)
VALUES ('5', #id
        '5', #level_number
        '0', #cantrips_known
        '2', #spells_known
        '0', #first_level_spell_slots
        '0', #second_level_spell_slots
        '2', #third_level_spell_slots
        '0', #fourth_level_spell_slots
        '0', #fifth_level_spell_slots
        '0', #sixth_level_spell_slots
        '0', #seventh_level_spell_slots
        '0', #eighth_level_spell_slots
        '0', #ninth_level_spell_slots
        '12' #clazz_id
);
INSERT INTO `charactersheet`.`level` (`id_level`, `level_number`, `cantrips_known`, `spells_known`, `first_level_spell_slots`, `second_level_spell_slots`, `third_level_spell_slots`, `fourth_level_spell_slots`, `fifth_level_spell_slots`, `sixth_level_spell_slots`, `seventh_level_spell_slots`, `eighth_level_spell_slots`, `ninth_level_spell_slots`, `clazz_id`)
VALUES ('6', #id
        '6', #level_number
        '0', #cantrips_known
        '2', #spells_known
        '0', #first_level_spell_slots
        '0', #second_level_spell_slots
        '1', #third_level_spell_slots
        '0', #fourth_level_spell_slots
        '0', #fifth_level_spell_slots
        '0', #sixth_level_spell_slots
        '0', #seventh_level_spell_slots
        '0', #eighth_level_spell_slots
        '0', #ninth_level_spell_slots
        '12' #clazz_id
);
INSERT INTO `charactersheet`.`level` (`id_level`, `level_number`, `cantrips_known`, `spells_known`, `first_level_spell_slots`, `second_level_spell_slots`, `third_level_spell_slots`, `fourth_level_spell_slots`, `fifth_level_spell_slots`, `sixth_level_spell_slots`, `seventh_level_spell_slots`, `eighth_level_spell_slots`, `ninth_level_spell_slots`, `clazz_id`)
VALUES ('7', #id
        '7', #level_number
        '0', #cantrips_known
        '2', #spells_known
        '0', #first_level_spell_slots
        '0', #second_level_spell_slots
        '0', #third_level_spell_slots
        '1', #fourth_level_spell_slots
        '0', #fifth_level_spell_slots
        '0', #sixth_level_spell_slots
        '0', #seventh_level_spell_slots
        '0', #eighth_level_spell_slots
        '0', #ninth_level_spell_slots
        '12' #clazz_id
);
INSERT INTO `charactersheet`.`level` (`id_level`, `level_number`, `cantrips_known`, `spells_known`, `first_level_spell_slots`, `second_level_spell_slots`, `third_level_spell_slots`, `fourth_level_spell_slots`, `fifth_level_spell_slots`, `sixth_level_spell_slots`, `seventh_level_spell_slots`, `eighth_level_spell_slots`, `ninth_level_spell_slots`, `clazz_id`)
VALUES ('8', #id
        '8', #level_number
        '0', #cantrips_known
        '2', #spells_known
        '0', #first_level_spell_slots
        '0', #second_level_spell_slots
        '0', #third_level_spell_slots
        '1', #fourth_level_spell_slots
        '0', #fifth_level_spell_slots
        '0', #sixth_level_spell_slots
        '0', #seventh_level_spell_slots
        '0', #eighth_level_spell_slots
        '0', #ninth_level_spell_slots
        '12' #clazz_id
);
INSERT INTO `charactersheet`.`level` (`id_level`, `level_number`, `cantrips_known`, `spells_known`, `first_level_spell_slots`, `second_level_spell_slots`, `third_level_spell_slots`, `fourth_level_spell_slots`, `fifth_level_spell_slots`, `sixth_level_spell_slots`, `seventh_level_spell_slots`, `eighth_level_spell_slots`, `ninth_level_spell_slots`, `clazz_id`)
VALUES ('9', #id
        '9', #level_number
        '0', #cantrips_known
        '2', #spells_known
        '0', #first_level_spell_slots
        '0', #second_level_spell_slots
        '0', #third_level_spell_slots
        '1', #fourth_level_spell_slots
        '1', #fifth_level_spell_slots
        '0', #sixth_level_spell_slots
        '0', #seventh_level_spell_slots
        '0', #eighth_level_spell_slots
        '0', #ninth_level_spell_slots
        '12' #clazz_id
);
INSERT INTO `charactersheet`.`level` (`id_level`, `level_number`, `cantrips_known`, `spells_known`, `first_level_spell_slots`, `second_level_spell_slots`, `third_level_spell_slots`, `fourth_level_spell_slots`, `fifth_level_spell_slots`, `sixth_level_spell_slots`, `seventh_level_spell_slots`, `eighth_level_spell_slots`, `ninth_level_spell_slots`, `clazz_id`)
VALUES ('10', #id
        '10', #level_number
        '1', #cantrips_known
        '2', #spells_known
        '0', #first_level_spell_slots
        '0', #second_level_spell_slots
        '0', #third_level_spell_slots
        '0', #fourth_level_spell_slots
        '1', #fifth_level_spell_slots
        '0', #sixth_level_spell_slots
        '0', #seventh_level_spell_slots
        '0', #eighth_level_spell_slots
        '0', #ninth_level_spell_slots
        '12' #clazz_id
);
INSERT INTO `charactersheet`.`level` (`id_level`, `level_number`, `cantrips_known`, `spells_known`, `first_level_spell_slots`, `second_level_spell_slots`, `third_level_spell_slots`, `fourth_level_spell_slots`, `fifth_level_spell_slots`, `sixth_level_spell_slots`, `seventh_level_spell_slots`, `eighth_level_spell_slots`, `ninth_level_spell_slots`, `clazz_id`)
VALUES ('11', #id
        '11', #level_number
        '0', #cantrips_known
        '2', #spells_known
        '0', #first_level_spell_slots
        '0', #second_level_spell_slots
        '0', #third_level_spell_slots
        '0', #fourth_level_spell_slots
        '0', #fifth_level_spell_slots
        '1', #sixth_level_spell_slots
        '0', #seventh_level_spell_slots
        '0', #eighth_level_spell_slots
        '0', #ninth_level_spell_slots
        '12' #clazz_id
);
INSERT INTO `charactersheet`.`level` (`id_level`, `level_number`, `cantrips_known`, `spells_known`, `first_level_spell_slots`, `second_level_spell_slots`, `third_level_spell_slots`, `fourth_level_spell_slots`, `fifth_level_spell_slots`, `sixth_level_spell_slots`, `seventh_level_spell_slots`, `eighth_level_spell_slots`, `ninth_level_spell_slots`, `clazz_id`)
VALUES ('12', #id
        '12', #level_number
        '0', #cantrips_known
        '2', #spells_known
        '0', #first_level_spell_slots
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
INSERT INTO `charactersheet`.`level` (`id_level`, `level_number`, `cantrips_known`, `spells_known`, `first_level_spell_slots`, `second_level_spell_slots`, `third_level_spell_slots`, `fourth_level_spell_slots`, `fifth_level_spell_slots`, `sixth_level_spell_slots`, `seventh_level_spell_slots`, `eighth_level_spell_slots`, `ninth_level_spell_slots`, `clazz_id`)
VALUES ('13', #id
        '13', #level_number
        '0', #cantrips_known
        '2', #spells_known
        '0', #first_level_spell_slots
        '0', #second_level_spell_slots
        '0', #third_level_spell_slots
        '0', #fourth_level_spell_slots
        '0', #fifth_level_spell_slots
        '0', #sixth_level_spell_slots
        '1', #seventh_level_spell_slots
        '0', #eighth_level_spell_slots
        '0', #ninth_level_spell_slots
        '12' #clazz_id
);
INSERT INTO `charactersheet`.`level` (`id_level`, `level_number`, `cantrips_known`, `spells_known`, `first_level_spell_slots`, `second_level_spell_slots`, `third_level_spell_slots`, `fourth_level_spell_slots`, `fifth_level_spell_slots`, `sixth_level_spell_slots`, `seventh_level_spell_slots`, `eighth_level_spell_slots`, `ninth_level_spell_slots`, `clazz_id`)
VALUES ('14', #id
        '14', #level_number
        '0', #cantrips_known
        '2', #spells_known
        '0', #first_level_spell_slots
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
INSERT INTO `charactersheet`.`level` (`id_level`, `level_number`, `cantrips_known`, `spells_known`, `first_level_spell_slots`, `second_level_spell_slots`, `third_level_spell_slots`, `fourth_level_spell_slots`, `fifth_level_spell_slots`, `sixth_level_spell_slots`, `seventh_level_spell_slots`, `eighth_level_spell_slots`, `ninth_level_spell_slots`, `clazz_id`)
VALUES ('15', #id
        '15', #level_number
        '0', #cantrips_known
        '2', #spells_known
        '0', #first_level_spell_slots
        '0', #second_level_spell_slots
        '0', #third_level_spell_slots
        '0', #fourth_level_spell_slots
        '0', #fifth_level_spell_slots
        '0', #sixth_level_spell_slots
        '0', #seventh_level_spell_slots
        '1', #eighth_level_spell_slots
        '0', #ninth_level_spell_slots
        '12' #clazz_id
);
INSERT INTO `charactersheet`.`level` (`id_level`, `level_number`, `cantrips_known`, `spells_known`, `first_level_spell_slots`, `second_level_spell_slots`, `third_level_spell_slots`, `fourth_level_spell_slots`, `fifth_level_spell_slots`, `sixth_level_spell_slots`, `seventh_level_spell_slots`, `eighth_level_spell_slots`, `ninth_level_spell_slots`, `clazz_id`)
VALUES ('16', #id
        '16', #level_number
        '0', #cantrips_known
        '2', #spells_known
        '0', #first_level_spell_slots
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
INSERT INTO `charactersheet`.`level` (`id_level`, `level_number`, `cantrips_known`, `spells_known`, `first_level_spell_slots`, `second_level_spell_slots`, `third_level_spell_slots`, `fourth_level_spell_slots`, `fifth_level_spell_slots`, `sixth_level_spell_slots`, `seventh_level_spell_slots`, `eighth_level_spell_slots`, `ninth_level_spell_slots`, `clazz_id`)
VALUES ('17', #id
        '17', #level_number
        '0', #cantrips_known
        '2', #spells_known
        '0', #first_level_spell_slots
        '0', #second_level_spell_slots
        '0', #third_level_spell_slots
        '0', #fourth_level_spell_slots
        '0', #fifth_level_spell_slots
        '0', #sixth_level_spell_slots
        '0', #seventh_level_spell_slots
        '0', #eighth_level_spell_slots
        '1', #ninth_level_spell_slots
        '12' #clazz_id
);
INSERT INTO `charactersheet`.`level` (`id_level`, `level_number`, `cantrips_known`, `spells_known`, `first_level_spell_slots`, `second_level_spell_slots`, `third_level_spell_slots`, `fourth_level_spell_slots`, `fifth_level_spell_slots`, `sixth_level_spell_slots`, `seventh_level_spell_slots`, `eighth_level_spell_slots`, `ninth_level_spell_slots`, `clazz_id`)
VALUES ('18', #id
        '18', #level_number
        '0', #cantrips_known
        '2', #spells_known
        '0', #first_level_spell_slots
        '0', #second_level_spell_slots
        '0', #third_level_spell_slots
        '0', #fourth_level_spell_slots
        '1', #fifth_level_spell_slots
        '0', #sixth_level_spell_slots
        '0', #seventh_level_spell_slots
        '0', #eighth_level_spell_slots
        '0', #ninth_level_spell_slots
        '12' #clazz_id
);
INSERT INTO `charactersheet`.`level` (`id_level`, `level_number`, `cantrips_known`, `spells_known`, `first_level_spell_slots`, `second_level_spell_slots`, `third_level_spell_slots`, `fourth_level_spell_slots`, `fifth_level_spell_slots`, `sixth_level_spell_slots`, `seventh_level_spell_slots`, `eighth_level_spell_slots`, `ninth_level_spell_slots`, `clazz_id`)
VALUES ('19', #id
        '19', #level_number
        '0', #cantrips_known
        '2', #spells_known
        '0', #first_level_spell_slots
        '0', #second_level_spell_slots
        '0', #third_level_spell_slots
        '0', #fourth_level_spell_slots
        '0', #fifth_level_spell_slots
        '1', #sixth_level_spell_slots
        '0', #seventh_level_spell_slots
        '0', #eighth_level_spell_slots
        '0', #ninth_level_spell_slots
        '12' #clazz_id
);
INSERT INTO `charactersheet`.`level` (`id_level`, `level_number`, `cantrips_known`, `spells_known`, `first_level_spell_slots`, `second_level_spell_slots`, `third_level_spell_slots`, `fourth_level_spell_slots`, `fifth_level_spell_slots`, `sixth_level_spell_slots`, `seventh_level_spell_slots`, `eighth_level_spell_slots`, `ninth_level_spell_slots`, `clazz_id`)
VALUES ('20', #id
        '20', #level_number
        '0', #cantrips_known
        '2', #spells_known
        '0', #first_level_spell_slots
        '0', #second_level_spell_slots
        '0', #third_level_spell_slots
        '0', #fourth_level_spell_slots
        '0', #fifth_level_spell_slots
        '0', #sixth_level_spell_slots
        '1', #seventh_level_spell_slots
        '0', #eighth_level_spell_slots
        '0', #ninth_level_spell_slots
        '12' #clazz_id
);
