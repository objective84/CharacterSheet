INSERT INTO `charactersheet`.`traitmodel` (`id`, `name`, `description`) VALUES ('1', '+1 Str', '');
INSERT INTO `charactersheet`.`modifyabilitytrait` (`modAmount`, `ability`) VALUES ('1', '');

INSERT INTO `charactersheet`.`abilities`(`id`, `str`, `dex`, `con`, `intel`, `wis`, `cha`) VALUES (1, 8, 8, 8, 8, 8, 8);

# INSERT INTO `charactersheet`.`charactermodel`(`id`, `currentHealth`, `maxHealth`, `name`, `clazz_id`, `race_id`, `abilities_id`, `encumbered`)
# VALUES ('1', '12', '12', 'Test', '1', '1', (SELECT id from `charactersheet`.`abilities` WHERE `id`='1'), '0' );
#
# INSERT INTO `charactersheet`.`traitmodel_charactermodel`(`traitmodel_id`, `charactermodel_id`) VALUES ('1', '1');
