ALTER TABLE `charactersheet`.`dice`
CHANGE COLUMN `maxRoll` `max_roll` INT(11) NULL DEFAULT NULL ,
CHANGE COLUMN `minRoll` `min_roll` INT(11) NULL DEFAULT NULL ,
ADD COLUMN `average_roll` INT(11) NULL AFTER `name`;



UPDATE `charactersheet`.`dice` SET `average_roll`='4' WHERE `id`='2';
UPDATE `charactersheet`.`dice` SET `average_roll`='5' WHERE `id`='3';
UPDATE `charactersheet`.`dice` SET `average_roll`='6' WHERE `id`='4';
UPDATE `charactersheet`.`dice` SET `average_roll`='7' WHERE `id`='5';
UPDATE `charactersheet`.`dice` SET `average_roll`='11' WHERE `id`='6';
UPDATE `charactersheet`.`dice` SET `average_roll`='51' WHERE `id`='7';
UPDATE `charactersheet`.`dice` SET `average_roll`='3' WHERE `id`='1';

UPDATE `charactersheet`.`classmodel` SET `magic_ability`='Cha' WHERE `id`='11';
UPDATE `charactersheet`.`classmodel` SET `magic_ability`='Cha' WHERE `id`='2';
UPDATE `charactersheet`.`classmodel` SET `magic_ability`='Wis' WHERE `id`='3';
UPDATE `charactersheet`.`classmodel` SET `magic_ability`='Wis' WHERE `id`='4';
UPDATE `charactersheet`.`classmodel` SET `magic_ability`='Cha' WHERE `id`='7';
UPDATE `charactersheet`.`classmodel` SET `magic_ability`='Wis' WHERE `id`='8';
UPDATE `charactersheet`.`classmodel` SET `magic_ability`='Cha' WHERE `id`='10';
