
### Simple Weapons
INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
  VALUES ('1', 'Club', '', '2', '1', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='sp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`, `weaponGroup_id`, `damageDice_id`)
  VALUES ('1', '1', '5', '5', '0', 'bludgeoning', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Melee'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='4'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
  VALUES ('2', 'Dagger', '', '1', '2', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`, `weaponGroup_id`, `damageDice_id`)
  VALUES ('2', '1', '20', '60', '0', 'piercing', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Melee/Range'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='4'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
  VALUES ('3', 'Greatclub', '', '10', '2', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='sp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`, `weaponGroup_id`, `damageDice_id`)
  VALUES ('3', '1', '5', '5', '1', 'bludgeoning', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Melee'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='8'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
  VALUES ('4', 'Handaxe', '', '2', '5', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`, `weaponGroup_id`, `damageDice_id`)
  VALUES ('4', '1', '20', '60', '0', 'slashing', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Melee/Range'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='6'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
  VALUES ('5', 'Javelin', '', '2', '5', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='sp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`, `weaponGroup_id`, `damageDice_id`)
  VALUES ('5', '1', '30', '120', '0', 'piercing', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Melee/Range'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='6'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
  VALUES ('6', 'Light Hammer', '', '2', '2', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
  VALUES ('6', '1', '20', '60', '0', 'bludgeoning', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Melee/Range'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='4'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
  VALUES ('7', 'Mace', '', '4', '5', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
  VALUES ('7', '1', '5', '5', '0', 'bludgeoning', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Melee'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='6'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
  VALUES ('8', 'Quarterstaff', '', '4', '2', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='sp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
  VALUES ('8', '1', '5', '5', '0', 'bludgeoning', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Melee'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='6'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
  VALUES ('9', 'Sickle', '', '2', '1', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
  VALUES ('9', '1', '5', '5', '0', 'slashing', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Melee'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='4'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
  VALUES ('10', 'Spear', '', '3', '2', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
  VALUES ('10', '1', '20', '60', '0', 'piercing', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Melee/Range'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='6'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
  VALUES ('11', 'Light Crossbow', '', '5', '25', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
  VALUES ('11', '1', '80', '320', '1', 'piercing', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Range'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='8'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
  VALUES ('12', 'Dart', '', '.25', '5', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='cp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
  VALUES ('12', '1', '20', '60', '0', 'piercing', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Range'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='4'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
  VALUES ('13', 'Shortbow', '', '2', '25', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
  VALUES ('13', '1', '80', '320', '1', 'piercing', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Range'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='6'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
  VALUES ('14', 'Sling', '', '0', '1', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='sp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
  VALUES ('14', '1', '30', '120', '0', 'bludgeoning', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Range'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='4'));

### Martial Weapons


INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
VALUES ('15', 'Battleaxe', '', '4', '10', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
VALUES ('15', '1', '5', '5', '0', 'slashing', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Melee'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='8'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
VALUES ('16', 'Flail', '', '2', '10', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
VALUES ('16', '1', '5', '5', '0', 'bludgeoning', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Melee'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='8'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
VALUES ('17', 'Glaive', '', '6', '20', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
VALUES ('17', '1', '5', '5', '1', 'slashing', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Melee'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='10'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
VALUES ('18', 'Greataxe', '', '7', '30', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
VALUES ('18', '1', '5', '5', '1', 'slashing', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Melee'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='12'));


INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
VALUES ('19', 'Greatsword', '', '6', '50', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
VALUES ('19', '2', '5', '5', '1', 'slashing', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Melee'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='6'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
VALUES ('20', 'Halberd', '', '6', '20', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
VALUES ('20', '1', '5', '5', '1', 'slashing', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Melee'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='10'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
VALUES ('21', 'Lance', '', '6', '10', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
VALUES ('21', '1', '10', '10', '0', 'piercing', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Melee'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='12'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
VALUES ('22', 'Longsword', '', '3', '15', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
VALUES ('22', '1', '5', '5', '0', 'slashing', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Melee'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='8'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
VALUES ('23', 'Maul', '', '10', '10', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
VALUES ('23', '2', '5', '5', '1', 'bludgeoning', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Melee'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='6'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
VALUES ('24', 'Morningstar', '', '4', '15', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
VALUES ('24', '1', '5', '5', '0', 'piercing', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Melee'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='8'));


INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
VALUES ('25', 'Pike', '', '18', '5', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
VALUES ('25', '1', '5', '5', '1', 'piercing', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Melee'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='10'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
VALUES ('26', 'Rapier', '', '2', '25', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
VALUES ('26', '1', '5', '5', '0', 'piercing', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Melee'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='8'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
VALUES ('27', 'Scimitar', '', '3', '25', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
VALUES ('27', '1', '5', '5', '0', 'slashing', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Melee'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='8'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
VALUES ('28', 'Shortsword', '', '2', '10', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
VALUES ('28', '1', '5', '5', '0', 'piercing', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Melee'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='6'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
VALUES ('29', 'Trident', '', '4', '5', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
VALUES ('29', '1', '20', '60', '0', 'piercing', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Melee/Range'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='8'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
VALUES ('30', 'War pick', '', '2', '5', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
VALUES ('30', '1', '5', '5', '0', 'piercing', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Melee'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='8'));


INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
VALUES ('31', 'Warhammer', '', '2', '15', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
VALUES ('31', '1', '5', '5', '0', 'bludgeoning', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Melee'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='8'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
VALUES ('32', 'Whip', '', '3', '2', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
VALUES ('32', '1', '10', '10', '0', 'slashing', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Melee'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='4'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
VALUES ('33', 'Hand Crossbow', '', '3', '75', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
VALUES ('33', '1', '30', '120', '0', 'piercing', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Range'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='6'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
VALUES ('34', 'Heavy Crossbow', '', '18', '50', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
VALUES ('34', '1', '100', '400', '1', 'piercing', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Range'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='10'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
VALUES ('35', 'Longbow', '', '2', '50', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
VALUES ('35', '1', '150', '600', '1', 'piercing', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Range'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='8'));

# INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
# VALUES ('36', 'Blowgun', '', '1', '10', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='gp'));
# INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
# VALUES ('36', '1', '25', '100', '0', 'piercing', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Melee'), (SELECT id from `charactersheet`.`dice` WHERE `maxRoll`='4'));


# INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
# VALUES ('37', 'Net', '', '3', '1', (SELECT id from `charactersheet`.`coin` WHERE `abbr`='gp'));
# INSERT INTO `charactersheet`.`weaponmodel`(`id`, `numberOfDice`, `weaponRange`, `maxWeaponRange`, `twoHanded`, `damageType`,`weaponGroup_id`, `damageDice_id`)
# VALUES ('37', '1', '5', '15', '0', '', (SELECT id from `charactersheet`.`weapongroup` WHERE `name`='Range'), '');
