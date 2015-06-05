INSERT INTO `charactersheet`.`saving_throw` (`id`, `ability`, `modifier`, `monster_id`) VALUES
  ('1', 'Con', '6', '1'),
  ('2', 'Int', '8', '1'),
  ('3', 'Wis', '6', '1'),
  ('4', 'Cha', '9', '2'),
  ('5', 'Wis', '9', '2');
INSERT INTO charactersheet.skill (id, modifier, name, monster_id) VALUES
  ('1', '12', 'History', '1'),
  ('2', '10', 'Perception', '1'),
  ('3', '9', 'Perception', '2'),
  ('4', '9', 'Insight', '2');
INSERT INTO charactersheet.trait (id, name, description, monster_id) VALUES
  ('1','Amphibious', 'The aboleth can breathe air and water.', '1'),
  ('2', 'Mucous Cloud', 'While underwater, the aboleth is surrounded by transformative mucus. A creature that touches the aboleth or that hits it with a melee attack while within 5 feet of it must make a DC 14 Constitution saving throw. On a failure, the creature is diseased for 1d4 hours. The diseased creature can breathe only underwater', '1'),
  ('3', 'Probing Telepathy','If a creature communicates telepathically with the aboleth, the aboleth learns the creature''s greatest desires if the aboleth can see the creature.', '1'),
  ('4', 'Angelic Weapons', 'The deva''s weapon attacks are magical. When the deva hits with any weapon, the weapon deals an extra 4d8 radiant damage (included in the attack).', '2'),
  ('5', 'Magic Resistance', 'The deva has advantage on saving throws against spells and other magical effects.', '2');
INSERT INTO charactersheet.monster_language (id, language_id, monster_id) VALUES
  ('1', '12', '1'),
  ('2', '1', '2'),
  ('3', '2', '2'),
  ('4', '3', '2'),
  ('5', '4', '2'),
  ('6', '5', '2'),
  ('7', '6', '2'),
  ('8', '7', '2'),
  ('9', '8', '2'),
  ('10', '9', '2');
INSERT INTO monster_actions (id, name, toHitBonus, target, `range`, type, description, monster_id, current_per_day_ability, max_per_day_ability) VALUES
  ('1', 'Multiattack', '0', NULL , null, null, 'The aboleth makes three tentacle attacks.', '1', null, null),
  ('2', 'Tentacle', '9', 'one target', 'reach 10 ft.', 'Melee Weapon Attack', 'If the target is a creature, it must succeed on a DC 14 Constitution saving throw or become diseased. THe disease has no effect for 1 minute and can be removed by any magic that cures disease. After 1 minute, the diseased creature''s skin becomes translucent and slimy, the creature can''t regain hit points unless it is underwater, and the disease can be removed only by heal or another di sease-curing spell of 6th level or higher. Wh en the creature is outside a body of water, it takes 6 (1d12) acid damage every 10 minutes unless moisture is applied to the skin before 10 minutes have passed.', '1', null, null),
  ('3', 'Tail', '9', 'one target', 'reach 10 ft.', 'Melee Weapon Attack', null, '1', null, null),
  ('4', 'Enslave', '0', NULL , null, null, 'The aboleth targets one creature it can see within 30 fe et of it. The target must succeed on a DC 14 Wisdom savin g throw or be magica lly charmed by th e aboleth until the aboleth dies or until it is on a different plane of existence from the target. The charmed target is under the aboleth''s control and can''t take reactions, and the aboleth and the target can com muni cate telepathically with each other over any distance./nWhenever the charm ed target takes damage, the target can repeat the saving throw. On a success, the effect ends. No more than once every 24 hours, the target ca n also repeat the saving throw when it is at least 1 mile away from the aboleth.', '1', '3', '3');
INSERT INTO monster_damage (id, dice_amount, damage_type_id, dice_id, damage_modifier, monster_actions_id) VALUES
  ('1', '2', '2', '2', '5', '2'),
  ('2', '3', '2', '2', '5', '3');