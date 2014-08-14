
### Simple Weapons
INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
  VALUES ('37', 'Padded', '', '8', '5', (SELECT `id` from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`armormodel`(`id`, `armorClass`, `maxDexModifier`, `stealthDisadvantage`, `strength`, `armorGroup_id`)
  VALUES ('37', '11', '5', '0', '0', (SELECT `id` from `charactersheet`.`armorgroup` WHERE `name`='Light'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
  VALUES ('38', 'Leather', '', '10', '1', (SELECT `id` from `charactersheet`.`coin` WHERE `abbr`='pp'));
INSERT INTO `charactersheet`.`armormodel`(`id`, `armorClass`, `maxDexModifier`, `stealthDisadvantage`, `strength`, `armorGroup_id`)
  VALUES ('38', '11', '5', '0', '0', (SELECT `id` from `charactersheet`.`armorgroup` WHERE `name`='Light'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
  VALUES ('39', 'Studded Leather', '', '13', '45', (SELECT `id` from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`armormodel`(`id`, `armorClass`, `maxDexModifier`, `stealthDisadvantage`, `strength`, `armorGroup_id`)
  VALUES ('39', '12', '5', '0', '0', (SELECT `id` from `charactersheet`.`armorgroup` WHERE `name`='Light'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
  VALUES ('40', 'Hide', '', '12', '1', (SELECT `id` from `charactersheet`.`coin` WHERE `abbr`='pp'));
INSERT INTO `charactersheet`.`armormodel`(`id`, `armorClass`, `maxDexModifier`, `stealthDisadvantage`, `strength`, `armorGroup_id`)
  VALUES ('40', '12', '2', '0', '0', (SELECT `id` from `charactersheet`.`armorgroup` WHERE `name`='Medium'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
  VALUES ('41', 'Chain Shirt', '', '20', '5', (SELECT `id` from `charactersheet`.`coin` WHERE `abbr`='pp'));
INSERT INTO `charactersheet`.`armormodel`(`id`, `armorClass`, `maxDexModifier`, `stealthDisadvantage`, `strength`, `armorGroup_id`)
  VALUES ('41', '13', '2', '0', '0', (SELECT `id` from `charactersheet`.`armorgroup` WHERE `name`='Medium'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
  VALUES ('42', 'Scale Mail', '', '45', '5', (SELECT `id` from `charactersheet`.`coin` WHERE `abbr`='pp'));
INSERT INTO `charactersheet`.`armormodel`(`id`, `armorClass`, `maxDexModifier`, `stealthDisadvantage`, `strength`, `armorGroup_id`)
  VALUES ('42', '14', '2', '1', '0', (SELECT `id` from `charactersheet`.`armorgroup` WHERE `name`='Medium'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
  VALUES ('43', 'Breastplate', '', '20', '40', (SELECT `id` from `charactersheet`.`coin` WHERE `abbr`='pp'));
INSERT INTO `charactersheet`.`armormodel`(`id`, `armorClass`, `maxDexModifier`, `stealthDisadvantage`, `strength`, `armorGroup_id`)
  VALUES ('43', '14', '2', '0', '0', (SELECT `id` from `charactersheet`.`armorgroup` WHERE `name`='Medium'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
  VALUES ('44', 'Halfplate', '', '40', '75', (SELECT `id` from `charactersheet`.`coin` WHERE `abbr`='pp'));
INSERT INTO `charactersheet`.`armormodel`(`id`, `armorClass`, `maxDexModifier`, `stealthDisadvantage`, `strength`, `armorGroup_id`)
  VALUES ('44', '15', '2', '1', '0', (SELECT `id` from `charactersheet`.`armorgroup` WHERE `name`='Medium'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
  VALUES ('45', 'Ring mail', '', '40', '3', (SELECT `id` from `charactersheet`.`coin` WHERE `abbr`='pp'));
INSERT INTO `charactersheet`.`armormodel`(`id`, `armorClass`, `maxDexModifier`, `stealthDisadvantage`, `strength`, `armorGroup_id`)
  VALUES ('45', '14', '0', '1', '0', (SELECT `id` from `charactersheet`.`armorgroup` WHERE `name`='Heavy'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
  VALUES ('46', 'Chain mail', '', '75', '55', (SELECT `id` from `charactersheet`.`coin` WHERE `abbr`='pp'));
INSERT INTO `charactersheet`.`armormodel`(`id`, `armorClass`, `maxDexModifier`, `stealthDisadvantage`, `strength`, `armorGroup_id`)
  VALUES ('46', '16', '0', '1', '13', (SELECT `id` from `charactersheet`.`armorgroup` WHERE `name`='Heavy'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
  VALUES ('47', 'Splint', '', '60', '20', (SELECT `id` from `charactersheet`.`coin` WHERE `abbr`='pp'));
INSERT INTO `charactersheet`.`armormodel`(`id`, `armorClass`, `maxDexModifier`, `stealthDisadvantage`, `strength`, `armorGroup_id`)
  VALUES ('47', '17', '0', '1', '15', (SELECT `id` from `charactersheet`.`armorgroup` WHERE `name`='Heavy'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
  VALUES ('48', 'Plate', '', '65', '150', (SELECT `id` from `charactersheet`.`coin` WHERE `abbr`='pp'));
INSERT INTO `charactersheet`.`armormodel`(`id`, `armorClass`, `maxDexModifier`, `stealthDisadvantage`, `strength`, `armorGroup_id`)
  VALUES ('48', '18', '0', '1', '15', (SELECT `id` from `charactersheet`.`armorgroup` WHERE `name`='Heavy'));

INSERT INTO `charactersheet`.`equipmentmodel`(`id`, `name`, `description`, `itemweight`, `price`, `priceDenomination_id`)
  VALUES ('49', 'Shield', '', '6', '10', (SELECT `id` from `charactersheet`.`coin` WHERE `abbr`='gp'));
INSERT INTO `charactersheet`.`armormodel`(`id`, `armorClass`, `maxDexModifier`, `stealthDisadvantage`, `strength`, `armorGroup_id`)
  VALUES ('49', '2', '0', '1', '0', (SELECT `id` from `charactersheet`.`armorgroup` WHERE `name`='Shield'));
