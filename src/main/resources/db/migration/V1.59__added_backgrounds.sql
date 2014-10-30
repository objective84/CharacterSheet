CREATE TABLE `background` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `feature` varchar(10000) DEFAULT NULL,
  `coin_purse_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `background_coin_purse_id_fk_idx` (`coin_purse_id`),
  CONSTRAINT `background_coin_purse_id_fk`
  FOREIGN KEY (`coin_purse_id`)
  REFERENCES `coinpurse` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);


CREATE TABLE `charactersheet`.`background_proficiency` (
  `background_id` BIGINT(20) NULL,
  `proficiency_id` BIGINT(20) NULL,
  INDEX `background_proficiency_background_id_fk_idx` (`background_id` ASC),
  INDEX `background_proficiency_proficiency_id_fk_idx` (`proficiency_id` ASC),
  CONSTRAINT `background_proficiency_background_id_fk`
    FOREIGN KEY (`background_id`)
    REFERENCES `charactersheet`.`background` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `background_proficiency_proficiency_id_fk`
    FOREIGN KEY (`proficiency_id`)
    REFERENCES `charactersheet`.`proficiency` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

ALTER TABLE `charactersheet`.`background`
ADD COLUMN `coin_purse_id` BIGINT(20) NULL DEFAULT NULL AFTER `feature`,
ADD INDEX `background_coin_purse_id_fk_idx` (`coin_purse_id` ASC);
ALTER TABLE `charactersheet`.`background`
ADD CONSTRAINT `background_coin_purse_id_fk`
FOREIGN KEY (`coin_purse_id`)
REFERENCES `charactersheet`.`coinpurse` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


CREATE TABLE `charactersheet`.`background_language` (
  `background_id` BIGINT(20) NULL,
  `language_id` BIGINT(20) NULL,
  INDEX `background_language_bacground_id_fk_idx` (`background_id` ASC),
  INDEX `background_language_language_id_fk_idx` (`language_id` ASC),
  CONSTRAINT `background_language_bacground_id_fk`
    FOREIGN KEY (`background_id`)
    REFERENCES `charactersheet`.`background` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `background_language_language_id_fk`
    FOREIGN KEY (`language_id`)
    REFERENCES `charactersheet`.`languagemodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `charactersheet`.`background_equipment` (
  `background_id` BIGINT(20) NULL,
  `equipment_id` BIGINT(20) NULL,
  INDEX `background_equipment_background_id_fk_idx` (`background_id` ASC),
  INDEX `background_equipment_equipment_id_fk_idx` (`equipment_id` ASC),
  CONSTRAINT `background_equipment_background_id_fk`
    FOREIGN KEY (`background_id`)
    REFERENCES `charactersheet`.`background` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `background_equipment_equipment_id_fk`
    FOREIGN KEY (`equipment_id`)
    REFERENCES `charactersheet`.`equipmentmodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

UPDATE `charactersheet`.`level` SET `cantrips_known`='0' WHERE `id_level`='2';
UPDATE `charactersheet`.`level` SET `choose_sub_class`='1' WHERE `id_level`='2';

ALTER TABLE `charactersheet`.`spellmodel`
ADD COLUMN `numAttacks` INT NULL DEFAULT '0' AFTER `range`;
UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='3' WHERE `id`='251';
UPDATE `charactersheet`.`spellmodel` SET `damageDice_id`='3' WHERE `id`='258';


# UPDATE `charactersheet`.`spellmodel` SET `damageDice_id`='4', `numAttacks`='0' WHERE `id`='258';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='1';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='2';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='3';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='4';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='5';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='6';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='7';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='8';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='9';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='10';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='11';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='12';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='13';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='14';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='15';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='16';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='17';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='18';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='19';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='20';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='21';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='22';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='23';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='24';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='25';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='26';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='71';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='27';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='28';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='29';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='30';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='31';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='32';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='33';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='34';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='35';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='36';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='38';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='39';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='40';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='41';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='42';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='43';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='44';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='45';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='259';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='46';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='47';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='48';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='49';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='50';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='51';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='52';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='53';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='54';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='55';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='56';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='57';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='58';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='59';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='60';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='61';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='62';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='63';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='64';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='65';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='66';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='67';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='68';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='69';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='70';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='72';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='73';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='74';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='75';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='76';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='77';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='78';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='79';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='80';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='81';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='82';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='83';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='84';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='85';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='86';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='87';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='88';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='89';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='90';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='37';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='91';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='92';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='93';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='94';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='95';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='96';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='97';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='98';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='99';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='100';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='101';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='102';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='359';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='105';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='362';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='103';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='104';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='106';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='107';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='108';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='109';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='110';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='111';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='112';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='113';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='114';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='115';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='116';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='117';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='118';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='119';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='120';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='121';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='122';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='123';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='124';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='125';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='126';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='127';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='128';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='129';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='130';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='132';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='133';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='134';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='131';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='135';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='137';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='138';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='363';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='136';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='139';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='140';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='141';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='142';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='143';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='144';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='145';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='146';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='147';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='148';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='149';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='150';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='151';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='152';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='153';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='154';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='155';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='156';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='157';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='158';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='159';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='160';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='161';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='162';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='163';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='164';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='165';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='166';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='167';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='168';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='169';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='170';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='171';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='172';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='173';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='174';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='175';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='176';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='177';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='178';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='300';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='298';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='299';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='297';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='296';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='295';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='294';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='293';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='292';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='291';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='290';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='289';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='288';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='287';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='286';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='285';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='284';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='283';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='282';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='281';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='280';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='279';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='218';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='270';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='271';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='219';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='360';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='222';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='223';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='220';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='221';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='272';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='273';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='224';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='225';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='226';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='274';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='275';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='276';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='277';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='278';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='301';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='302';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='229';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='227';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='228';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='303';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='304';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='230';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='305';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='231';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='307';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='232';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='308';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='233';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='309';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='310';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='311';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='312';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='313';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='314';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='234';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='315';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='316';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='317';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='269';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='318';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='235';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='319';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='320';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='321';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='322';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='323';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='306';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='236';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='361';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='324';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='325';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='326';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='237';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='238';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='327';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='328';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='239';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='329';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='330';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='331';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='242';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='240';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='241';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='332';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='333';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='243';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='244';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='245';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='335';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='334';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='336';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='246';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='337';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='339';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='338';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='247';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='248';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='249';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='3' WHERE `id`='251';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='340';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='252';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='253';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='343';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='341';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='342';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='344';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='254';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='255';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='256';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='257';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='260';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='261';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='345';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='262';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='346';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='347';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='263';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='264';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='349';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='348';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='265';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='266';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='350';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='267';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='364';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='351';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='352';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='353';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='354';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='268';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='355';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='356';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='357';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='358';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='198';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='199';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='200';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='201';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='202';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='203';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='204';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='205';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='206';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='207';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='208';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='209';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='210';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='211';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='212';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='213';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='214';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='215';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='216';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='217';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='179';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='180';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='181';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='182';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='183';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='184';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='185';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='186';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='187';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='188';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='189';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='190';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='191';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='192';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='193';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='194';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='195';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='196';
# UPDATE `charactersheet`.`spellmodel` SET `numAttacks`='0' WHERE `id`='197';


CREATE TABLE `charactersheet`.`character_model_used_traits` (
  `character_id` BIGINT(20) NULL,
  `trait_id` BIGINT(20) NULL,
  INDEX `character_used_traits_character_id_fk_idx` (`character_id` ASC),
  INDEX `character_used_traits_trait_id_fk_idx` (` trait_id` ASC),
  CONSTRAINT `character_used_traits_character_id_fk`
  FOREIGN KEY (`character_id`)
  REFERENCES `charactersheet`.`charactermodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `character_used_traits_trait_id_fk`
  FOREIGN KEY (` trait_id`)
  REFERENCES `charactersheet`.`traitmodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

ALTER TABLE `charactersheet`.`traitmodel`
ADD COLUMN `refreshOnShortRest` TINYINT(1) NULL DEFAULT 0 AFTER `name`;

CREATE TABLE `charactersheet`.`character_hit_dice` (
  `character_id` BIGINT(20) NULL,
  `dice_id` BIGINT(20) NULL,
  INDEX `hit_dice_character_id_fk_idx` (`character_id` ASC),
  INDEX `hit_dice_dice_id_fk_idx` (`dice_id` ASC),
  CONSTRAINT `hit_dice_character_id_fk`
  FOREIGN KEY (`character_id`)
  REFERENCES `charactersheet`.`charactermodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `hit_dice_dice_id_fk`
  FOREIGN KEY (`dice_id`)
  REFERENCES `charactersheet`.`dice` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `character_used_hit_dice` (
  `character_id` bigint(20) DEFAULT NULL,
  `dice_id` bigint(20) DEFAULT NULL,
  KEY `hit_dice_character_id_fk_idx` (`character_id`),
  KEY `hit_dice_dice_id_fk_idx` (`dice_id`),
  CONSTRAINT `character_used_hit_dice_character_id_fk`
  FOREIGN KEY (`character_id`)
  REFERENCES `charactermodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `character_used_hit_dice_dice_id_fk`
  FOREIGN KEY (`dice_id`)
  REFERENCES `dice` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);


CREATE TABLE `add_spell_trait` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `numSpellsLearned` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
);


CREATE TABLE `charactersheet`.`add_spell_trait_spells` (
  `trait_id` BIGINT(20) NULL,
  `spell_id` BIGINT(20) NULL,
  INDEX `add_spell_trait_spells_trait_id_fk_idx` (`trait_id` ASC),
  INDEX `add_spell_trait_spells_spell_id_fk_idx` (`spell_id` ASC),
  CONSTRAINT `add_spell_trait_spells_trait_id_fk`
  FOREIGN KEY (`trait_id`)
  REFERENCES `charactersheet`.`add_spell_trait` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `add_spell_trait_spells_spell_id_fk`
  FOREIGN KEY (`spell_id`)
  REFERENCES `charactersheet`.`spellmodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `charactersheet`.`ability_point_increase_limited_trait` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `str` TINYINT(1) NULL DEFAULT 0,
  `dex` TINYINT(1) NULL DEFAULT 0,
  `con` TINYINT(1) NULL DEFAULT 0,
  `intel` TINYINT(1) NULL DEFAULT 0,
  `wis` TINYINT(1) NULL DEFAULT 0,
  `cha` TINYINT(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`));

CREATE TABLE `charactersheet`.`feat_prerequisite` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`));

ALTER TABLE `charactersheet`.`feat`
ADD INDEX `feat_prerequisite_id_fk_idx` (`prerequisite_id` ASC);
ALTER TABLE `charactersheet`.`feat`
ADD CONSTRAINT `feat_prerequisite_id_fk`
FOREIGN KEY (`prerequisite_id`)
REFERENCES `charactersheet`.`feat_prerequisite` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

CREATE TABLE `charactersheet`.`feats_traits` (
  `feat_id` BIGINT(20) NULL,
  `trait_id` BIGINT(20) NULL,
  INDEX `feats_traits_feat_id_fk_idx` (`feat_id` ASC),
  INDEX `feats_traits_trait_id_fk_idx` (`trait_id` ASC),
  CONSTRAINT `feats_traits_feat_id_fk`
  FOREIGN KEY (`feat_id`)
  REFERENCES `charactersheet`.`feat` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `feats_traits_trait_id_fk`
  FOREIGN KEY (`trait_id`)
  REFERENCES `charactersheet`.`traitmodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `charactersheet`.`ability_score_req` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `abilityOne` TINYINT(1) NOT NULL,
  `abilityTwo` VARCHAR(45) NULL DEFAULT NULL,
  `requirement` INT(11) NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `charactersheet`.`proficiency_req` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `proficiency_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `proficiency_req_proficiency_id_)fk_idx` (`proficiency_id` ASC),
  CONSTRAINT `proficiency_req_proficiency_id_)fk`
  FOREIGN KEY (`proficiency_id`)
  REFERENCES `charactersheet`.`proficiency` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `charactersheet`.`can_cast_spell_req` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `clazz_id` BIGINT(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `can_cast_spell_req_clazz_id_fk_idx` (`clazz_id` ASC),
  CONSTRAINT `can_cast_spell_req_clazz_id_fk`
  FOREIGN KEY (`clazz_id`)
  REFERENCES `charactersheet`.`classmodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `charactersheet`.`character_feats` (
  `character_id` BIGINT(20) NULL,
  `feat_id` BIGINT(20) NULL,
  INDEX `character_feats_character_id_fk_idx` (`character_id` ASC),
  INDEX `character_feats_feat_id_fk_idx` (`feat_id` ASC),
  CONSTRAINT `character_feats_character_id_fk`
  FOREIGN KEY (`character_id`)
  REFERENCES `charactersheet`.`charactermodel` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `character_feats_feat_id_fk`
  FOREIGN KEY (`feat_id`)
  REFERENCES `charactersheet`.`feat` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

ALTER TABLE `charactersheet`.`abilities`
ADD COLUMN `strCanIncrease` TINYINT(1) NULL DEFAULT 0 AFTER `cha_bonus`,
ADD COLUMN `dexCanIncrease` TINYINT(1) NULL DEFAULT 0 AFTER `strCanIncrease`,
ADD COLUMN `conCanIncrease` TINYINT(1) NULL DEFAULT 0 AFTER `dexCanIncrease`,
ADD COLUMN `intelCanIncrease` TINYINT(1) NULL DEFAULT 0 AFTER `conCanIncrease`,
ADD COLUMN `wisCanIncrease` TINYINT(1) NULL DEFAULT 0 AFTER `intelCanIncrease`,
ADD COLUMN `chaCanIncrease` TINYINT(1) NULL DEFAULT 0 AFTER `wisCanIncrease`;

UPDATE `charactersheet`.`spellmodel` SET `requiresAttackRoll`='1' WHERE `id`='205';
UPDATE `charactersheet`.`spellmodel` SET `requiresAttackRoll`='0' WHERE `id`='244';


INSERT INTO `charactersheet`.`feat_prerequisite` (`id`) VALUES ('1');
INSERT INTO `charactersheet`.`can_cast_spell_req` (`id`) VALUES ('1');

INSERT INTO `charactersheet`.`feat` (`id`, `name`, `description`, `prerequisite_id`) VALUES ('1', 'Spell Sniper', 'Prerequisite: The ability to cast at least one spell /n/nYou have learned techniques to enhance your attacks with certain kinds of spells, gaining the following benefits: /bullets• When you cast a spell that requires you to make an attack roll, the spell’s range is doubled. /bt• Your ranged spell attacks ignore half cover AND three-quarters cover. /bt• You learn one cantrip that requires an attack roll./bullets /nChoose the cantrip from the bard, cleric, druid, sorcerer, warlock, or wizard spell list. Your spellcasting ability for this cantrip depends on the spell list you chose from: Charisma for bard, sorcerer, or warlock; Wisdom for cleric or druid; or Intelligence for wizard.', '1');

INSERT INTO `charactersheet`.`traitmodel` (`id`, `description`, `name`, `refreshOnShortRest`) VALUES ('24', 'You learn one cantrip that requires an attack roll. Choose the cantrip from the bard, cleric, druid, sorcerer, warlock, or wizard spell list. Your spellcasting ability for this cantrip depends on the spell list you chose from: Charisma for bard, sorcerer, or warlock; Wisdom for cleric or druid; or Intelligence for wizard.', 'Gain offensive cantrip', '0');
INSERT INTO `charactersheet`.`add_spell_trait` (`id`) VALUES ('24', '1');

INSERT INTO `charactersheet`.`add_spell_trait_spell` (`trait_id`, `spell_id`) VALUES ('24', '46');
INSERT INTO `charactersheet`.`add_spell_trait_spell` (`trait_id`, `spell_id`) VALUES ('24', '113');
INSERT INTO `charactersheet`.`add_spell_trait_spell` (`trait_id`, `spell_id`) VALUES ('24', '137');
INSERT INTO `charactersheet`.`add_spell_trait_spell` (`trait_id`, `spell_id`) VALUES ('24', '205');
INSERT INTO `charactersheet`.`add_spell_trait_spell` (`trait_id`, `spell_id`) VALUES ('24', '239');
INSERT INTO `charactersheet`.`add_spell_trait_spell` (`trait_id`, `spell_id`) VALUES ('24', '257');






















