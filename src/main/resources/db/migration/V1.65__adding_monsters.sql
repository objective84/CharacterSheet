INSERT INTO `charactersheet`.`monster` (`id`, `name`, `size`,`alignment`, `armor_class`, `armor_type`,`cha`, `con`, `current_hit_points`, `dex`, `intel`,`max_hit_points`,`str`,`type`, `wis`,  `hit_dice`,`hit_dice_modifier`,`challenge_rating`,`xp`, `passive_perception`)
VALUES ('1', #id
        'ABOLETH', #name
        'Large', #size
        'lawful evil', #alignment
        '17', #AC
        'natural armor', #armor type
        '18', #cha
        '15', #con
        '135', #current HP
        '9', #dex
        '18', #intel
        '135', #Max HP
        '21', #str
        'aberration', #type
        '15', #wis
        '18d10', #hit Dice
        '36', #hit dice mod
        '10',#CR
        '5900',#XP
        '20'#passive perception
);
INSERT INTO charactersheet.saving_throw (id, ability, modifier, monster_id) VALUES
  ('1', 'Con', '6', '1'),
  ('2', 'Int', '8', '1'),
  ('3', 'Wis', '6', '1');
INSERT INTO charactersheet.skill (id, modifier, name, monster_id) VALUES
  ('1', '12', 'History', '1'),
  ('2', '10', 'Perception', '1');
INSERT INTO charactersheet.trait (id, name, description, monster_id) VALUES
  ('1','Amphibious', 'The aboleth can breathe air and water.', '1'),
  ('2', 'Mucous Cloud', 'While underwater, the aboleth is surrounded by transformative mucus. A creature that touches the aboleth or that hits it with a melee attack while within 5 feet of it must make a DC 14 Constitution saving throw. On a failure, the creature is diseased for 1d4 hours. The diseased creature can breathe only underwater', '1'),
  ('3', 'Probing Telepathy','If a creature communicates telepathically with the aboleth, the aboleth learns the creature''s greatest desires if the aboleth can see the creature.', '1');
INSERT INTO charactersheet.monster_language (id, language_id, monster_id) VALUES
  ('1', '12', '1');