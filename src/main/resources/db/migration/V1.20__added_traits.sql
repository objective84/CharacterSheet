INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `description`, `level`, `damageDiceAmount`, `savingThrow`, `saveDC`, `condition`, `damageDice_id`)
  VALUES ('1', 'TestSpell', 'Test', '1', '1', 'Strength', '15', 'Stunned', '3');
INSERT INTO `charactersheet`.`spellmodel_classmodel` (`spellmodel_id`, `classmodel_id`) VALUES (1, 1);
