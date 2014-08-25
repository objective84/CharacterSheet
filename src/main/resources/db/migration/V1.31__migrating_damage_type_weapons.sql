ALTER TABLE charactersheet.weaponmodel ADD column temp_damageType bigint;

UPDATE charactersheet.weaponmodel set temp_damageType = 2 where damageType = 'bludgeoning';
UPDATE charactersheet.weaponmodel set temp_damageType = 8 where damageType = 'piercing';
UPDATE charactersheet.weaponmodel set temp_damageType = 12 where damageType = 'slashing';

UPDATE charactersheet.weaponmodel set damageType = null;

ALTER TABLE charactersheet.weaponmodel modify damageType bigint;

UPDATE charactersheet.weaponmodel set damageType = temp_damageType;

ALTER TABLE charactersheet.weaponmodel DROP temp_damageType;

ALTER TABLE `charactersheet`.`weaponmodel`
ADD INDEX `weapon_damage_type_fk_idx` (`damageType` ASC);
ALTER TABLE `charactersheet`.`weaponmodel`
ADD CONSTRAINT `weapon_damage_type_fk`
  FOREIGN KEY (`damageType`)
  REFERENCES `charactersheet`.`damagetype` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `charactersheet`.`weaponmodel`
DROP FOREIGN KEY `weapon_damage_type_fk`;
ALTER TABLE `charactersheet`.`weaponmodel`
CHANGE COLUMN `damageType` `damageType_id` BIGINT(20) NULL DEFAULT NULL ;
ALTER TABLE `charactersheet`.`weaponmodel`
ADD CONSTRAINT `weapon_damage_type_fk`
FOREIGN KEY (`damageType_id`)
REFERENCES `charactersheet`.`damagetype` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
