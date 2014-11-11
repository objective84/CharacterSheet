UPDATE `charactersheet`.`spellmodel` SET `castingTime`='1 action' WHERE `id`='38';

UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='4';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='10';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='11';
UPDATE `charactersheet`.`spellmodel` SET `range`='Touch' WHERE `id`='15';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='16';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='17';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='19';
UPDATE `charactersheet`.`spellmodel` SET `range`='Touch' WHERE `id`='23';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='25';
UPDATE `charactersheet`.`spellmodel` SET `range`='Touch' WHERE `id`='28';
UPDATE `charactersheet`.`spellmodel` SET `range`='Touch' WHERE `id`='29';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='32';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='35';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='38';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='39';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='40';
UPDATE `charactersheet`.`spellmodel` SET `range`='Touch' WHERE `id`='51';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='56';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='57';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='59';
UPDATE `charactersheet`.`spellmodel` SET `range`='Touch' WHERE `id`='71';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='72';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='74';
UPDATE `charactersheet`.`spellmodel` SET `range`='Touch' WHERE `id`='75';
UPDATE `charactersheet`.`spellmodel` SET `range`='Touch' WHERE `id`='86';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='89';
UPDATE `charactersheet`.`spellmodel` SET `range`='Touch' WHERE `id`='91';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='100';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='102';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='103';
UPDATE `charactersheet`.`spellmodel` SET `range`='Touch' WHERE `id`='109';
UPDATE `charactersheet`.`spellmodel` SET `range`='Special' WHERE `id`='110';
UPDATE `charactersheet`.`spellmodel` SET `range`='Touch' WHERE `id`='114';
UPDATE `charactersheet`.`spellmodel` SET `range`='Touch' WHERE `id`='115';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='117';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='120';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='122';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='123';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='126';
UPDATE `charactersheet`.`spellmodel` SET `range`='Touch' WHERE `id`='130';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='133';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='138';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='139';
UPDATE `charactersheet`.`spellmodel` SET `range`='Touch' WHERE `id`='143';
UPDATE `charactersheet`.`spellmodel` SET `range`='Touch' WHERE `id`='145';
UPDATE `charactersheet`.`spellmodel` SET `range`='Touch' WHERE `id`='147';
UPDATE `charactersheet`.`spellmodel` SET `range`='Touch' WHERE `id`='148';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='149';
UPDATE `charactersheet`.`spellmodel` SET `range`='Touch' WHERE `id`='150';
UPDATE `charactersheet`.`spellmodel` SET `range`='Touch' WHERE `id`='153';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='155';
UPDATE `charactersheet`.`spellmodel` SET `range`='Touch' WHERE `id`='157';
UPDATE `charactersheet`.`spellmodel` SET `range`='Touch' WHERE `id`='158';
UPDATE `charactersheet`.`spellmodel` SET `range`='Touch' WHERE `id`='161';
UPDATE `charactersheet`.`spellmodel` SET `range`='Touch' WHERE `id`='162';
UPDATE `charactersheet`.`spellmodel` SET `range`='Touch' WHERE `id`='164';
UPDATE `charactersheet`.`spellmodel` SET `range`='Touch' WHERE `id`='165';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='168';
UPDATE `charactersheet`.`spellmodel` SET `range`='Touch' WHERE `id`='169';
UPDATE `charactersheet`.`spellmodel` SET `range`='Touch' WHERE `id`='178';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='297';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='283';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='281';
UPDATE `charactersheet`.`spellmodel` SET `range`='Touch' WHERE `id`='280';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='206';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='208';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='211';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='193';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='196';
UPDATE `charactersheet`.`spellmodel` SET `range`='Self' WHERE `id`='259';

ALTER TABLE `charactersheet`.`spellmodel`
ADD COLUMN `linkedSpell` BIGINT(20) NULL DEFAULT NULL AFTER `numAttacks`,
ADD COLUMN `areaOfEffectType` VARCHAR(45) NULL DEFAULT NULL AFTER `linkedSpell`,
ADD COLUMN `areaOfEffectRange` INT NULL DEFAULT NULL AFTER `areaOfEffectType`;


ALTER TABLE `charactersheet`.`spellmodel`
ADD INDEX `spell_model_linked_spell_id_fk_idx` (`linkedSpell` ASC);
ALTER TABLE `charactersheet`.`spellmodel`
ADD CONSTRAINT `spell_model_linked_spell_id_fk`
FOREIGN KEY (`linkedSpell`)
REFERENCES `charactersheet`.`spellmodel` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `charactersheet`.`spellmodel`
DROP FOREIGN KEY `spell_model_linked_spell_id_fk`;
ALTER TABLE `charactersheet`.`spellmodel`
CHANGE COLUMN `linkedSpell` `linkedSpell_id` BIGINT(20) NULL DEFAULT NULL ;
ALTER TABLE `charactersheet`.`spellmodel`
ADD CONSTRAINT `spell_model_linked_spell_id_fk`
FOREIGN KEY (`linkedSpell_id`)
REFERENCES `charactersheet`.`spellmodel` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `charactersheet`.`spellmodel`
CHANGE COLUMN `areaOfEffectRange` `areaOfEffectRange` INT(11) NULL DEFAULT 0 ;
