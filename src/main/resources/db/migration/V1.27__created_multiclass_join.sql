CREATE TABLE `charactersheet`.`classmodel_charactermodel` (
  `classmodel_id` BIGINT NOT NULL,
  `charactermodel_id` BIGINT NOT NULL,
  PRIMARY KEY (`classmodel_id`, `charactermodel_id`),
  INDEX `charactermodel_fk_idx` (`charactermodel_id` ASC),
  CONSTRAINT `charactermodel_fk`
    FOREIGN KEY (`charactermodel_id`)
    REFERENCES `charactersheet`.`charactermodel` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `classmodel_fk`
    FOREIGN KEY (`classmodel_id`)
    REFERENCES `charactersheet`.`classmodel` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION);
