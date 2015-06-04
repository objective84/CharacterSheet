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
),(
  '2', #id
  'Deva', #name
  'Medium', #size
  'lawful good', #alignment
  '17', #AC
  'natural armor', #armor type
  '20', #cha
  '18', #con
  '136', #current HP
  '18', #dex
  '17', #intel
  '136', #Max HP
  '18', #str
  'celestial', #type
  '20', #wis
  '16d8', #hit Dice
  '64', #hit dice mod
  '10',#CR
  '5900',#XP
  '19'#passive perception
);