ALTER TABLE `charactersheet`.`spellmodel` ADD (
          concentration TINYINT(1),
          castingTime varchar(255),
          school varchar(255),
          `range` INT(11)
          );