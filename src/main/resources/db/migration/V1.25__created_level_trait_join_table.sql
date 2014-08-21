DROP TABLE IF EXISTS `traitmodel_level`;
CREATE TABLE `charactersheet`.`traitmodel_level` (
  `traitmodel_id` BIGINT NOT NULL,
  `level_id` BIGINT NOT NULL,
  PRIMARY KEY (`traitmodel_id`, `level_id`),
  INDEX `level_fk_idx` (`level_id` ASC),
  CONSTRAINT `level_fk`
    FOREIGN KEY (`level_id`)
    REFERENCES `charactersheet`.`level` (`id_level`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `traitmodel_fk`
    FOREIGN KEY (`traitmodel_id`)
    REFERENCES `charactersheet`.`traitmodel` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION);