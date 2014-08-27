INSERT INTO `charactersheet`.`traitmodel` (`id`, `name`, `description`) VALUES ('2', '+1 Dex', '');
INSERT INTO `charactersheet`.`modifyabilitytrait` (`id`, `modAmount`, `ability`) VALUES ('2', '1', 'Dex');

INSERT INTO `charactersheet`.`traitmodel` (`id`, `name`, `description`) VALUES ('3', '+1 Con', '');
INSERT INTO `charactersheet`.`modifyabilitytrait` (`id`, `modAmount`, `ability`) VALUES ('3', '1', 'Con');

INSERT INTO `charactersheet`.`traitmodel` (`id`, `name`, `description`) VALUES ('4', '+1 Int', '');
INSERT INTO `charactersheet`.`modifyabilitytrait` (`id`, `modAmount`, `ability`) VALUES ('4', '1', 'Int');

INSERT INTO `charactersheet`.`traitmodel` (`id`, `name`, `description`) VALUES ('5', '+1 Wis', '');
INSERT INTO `charactersheet`.`modifyabilitytrait` (`id`, `modAmount`, `ability`) VALUES ('5', '1', 'Wis');

INSERT INTO `charactersheet`.`traitmodel` (`id`, `name`, `description`) VALUES ('6', '+1 Cha', '');
INSERT INTO `charactersheet`.`modifyabilitytrait` (`id`, `modAmount`, `ability`) VALUES ('6', '1', 'Cha');

INSERT INTO `charactersheet`.`traitmodel` (`id`, `name`, `description`) VALUES ('7', '+2 Str', '');
INSERT INTO `charactersheet`.`modifyabilitytrait` (`id`, `modAmount`, `ability`) VALUES ('7', '2', 'Str');

INSERT INTO `charactersheet`.`traitmodel` (`id`, `name`, `description`) VALUES ('8', '+2 Dex', '');
INSERT INTO `charactersheet`.`modifyabilitytrait` (`id`, `modAmount`, `ability`) VALUES ('8', '2', 'Dex');

INSERT INTO `charactersheet`.`traitmodel` (`id`, `name`, `description`) VALUES ('9', '+2 Con', '');
INSERT INTO `charactersheet`.`modifyabilitytrait` (`id`, `modAmount`, `ability`) VALUES ('9', '2', 'Con');

INSERT INTO `charactersheet`.`traitmodel` (`id`, `name`, `description`) VALUES ('10', '+2 Int', '');
INSERT INTO `charactersheet`.`modifyabilitytrait` (`id`, `modAmount`, `ability`) VALUES ('10', '2', 'Int');

INSERT INTO `charactersheet`.`traitmodel` (`id`, `name`, `description`) VALUES ('11', '+2 Wis', '');
INSERT INTO `charactersheet`.`modifyabilitytrait` (`id`, `modAmount`, `ability`) VALUES ('11', '2', 'Wis');

INSERT INTO `charactersheet`.`traitmodel` (`id`, `name`, `description`) VALUES ('12', '+2 Cha', '');
INSERT INTO `charactersheet`.`modifyabilitytrait` (`id`, `modAmount`, `ability`) VALUES ('12', '2', 'Cha');

INSERT INTO `charactersheet`.`racemodel_traitmodel`(`racemodel_id`, `traitmodel_id`) VALUES ('1', '9');
INSERT INTO `charactersheet`.`racemodel_traitmodel`(`racemodel_id`, `traitmodel_id`) VALUES ('2', '8');
INSERT INTO `charactersheet`.`racemodel_traitmodel`(`racemodel_id`, `traitmodel_id`) VALUES ('3', '8');
INSERT INTO `charactersheet`.`racemodel_traitmodel`(`racemodel_id`, `traitmodel_id`) VALUES ('5', '12');
INSERT INTO `charactersheet`.`racemodel_traitmodel`(`racemodel_id`, `traitmodel_id`) VALUES ('6', '10');
INSERT INTO `charactersheet`.`racemodel_traitmodel`(`racemodel_id`, `traitmodel_id`) VALUES ('7', '12');
INSERT INTO `charactersheet`.`racemodel_traitmodel`(`racemodel_id`, `traitmodel_id`) VALUES ('8', '3');
INSERT INTO `charactersheet`.`racemodel_traitmodel`(`racemodel_id`, `traitmodel_id`) VALUES ('8', '7');
INSERT INTO `charactersheet`.`racemodel_traitmodel`(`racemodel_id`, `traitmodel_id`) VALUES ('10', '12');
INSERT INTO `charactersheet`.`racemodel_traitmodel`(`racemodel_id`, `traitmodel_id`) VALUES ('10', '4');
