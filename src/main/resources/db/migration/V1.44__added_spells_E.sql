INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('112', #id
        'Earthquake', #name
        '1 action', #castingTime
        'You create a seismic disturbance at a point on the ground that you can see within range. For the duration, an intense tremor rips through the ground in a 100-foot-radius circle centered on that point and shakes creatures and structures in contact with the ground in that area. /nThe ground in the area becomes difficult terrain. /nEach creature on the ground that is concentrating must make a Constitution saving throw. On a failed save, the creature’s concentration is broken. /nWhen you cast this spell and at the end of each turn you spend concentrating on it, each creature on the ground in the area must make a Dexterity saving throw. On a failed save, the creature is knocked prone. /nThis spell can have additional effects depending on the terrain in the area, as determined by the DM. /n/bFissures./b Fissures open throughout the spell’s area at the start of your next turn after you cast the spell. A total of 1d6 such fissures open in locations chosen by the DM. Each is 1d10 x 10 feet deep, 10 feet wide, and extends from one edge of the spell’s area to the opposite side. A creature standing on a spot where a fissure opens must succeed on a Dexterity saving throw or fall in. A creature that successfully saves moves with the fissure’s edge as it opens. /nA fissure that opens beneath a structure causes it to automatically collapse (see below). /n/bStructures./b The tremor deals 50 bludgeoning damage to any structure in contact with the ground in the area when you cast the spell and at the start of each of your turns until the spell ends. If a structure drops to 0 hit points, it collapses and potentially damages nearby creatures. A creature within half the distance of a structure’s height must make a Dexterity saving throw. /nOn a failed save, the creature takes 5d6 bludgeoning damage, is knocked prone, and is buried in the rubble, requiring a DC 20 Strength (Athletics) check as an action to escape. The DM can adjust the DC higher or lower, depending on the nature of the rubble. On a successful save, the creature takes half as much damage and doesn’t fall prone or become buried.', #description
        '8', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Dexterity', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a pinch of dirt, a piece of rock, and a lump of clay', #materialComponent
        'Concentration, up to 1 minute', #duration
        'a point on the ground', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Evocation', #school
        '500' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('113', #id
        'Eldritch Blast', #name
        '1 action', #castingTime
        'A beam of crackling energy streaks toward a creature within range. Make a ranged spell attack against the target. On a hit, the target takes 1dlO force damage. /nThe spell creates more than one beam when you reach higher levels: two beams at 5th level, three beams at 11th level, and four beams at 17th level. You can direct the beams at the same target or at different ones. Make a separate attack roll for each beam.', #description
        '0', #level
        '1', #damageDiceAmount
        '4', #damageDice ID
        '5', #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        'Instantaneous', #duration
        'a creature', #target
        '1', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Evocation', #school
        '120' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('114', #id
        'Elemental Weapon', #name
        '1 action', #castingTime
        'A nonmagical weapon you touch becomes a magic weapon. Choose one of the following damage types: acid, cold, fire, lightning, or thunder. For the duration, the weapon has a +1 bonus to attack rolls and deals an extra 1d4 damage of the chosen type when it hits. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 5th or 6th level, the bonus to attack rolls increases to +2 and the extra damage increases to 2d4. When you use a spell slot of 7th level or higher, the bonus increases to +3 and the extra damage increases to 3d4.', #description
        '3', #level
        '1', #damageDiceAmount
        '1', #damageDice ID
        '15', #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        'Concentration, up to 1 hour', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Transmutation', #school
        '0' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('115', #id
        'Enhance Ability', #name
        '1 action', #castingTime
        'You touch a creature and bestow upon it a magical enhancement. Choose one of the following effects; the target gains that effect until the spell ends. /n/bBear’s Endurance./b The target has advantage on Constitution checks. It also gains 2d6 temporary hit points, which are lost when the spell ends. /n/bBull’s Strength./b The target has advantage on Strength checks, and his or her carrying capacity doubles. /n/bCat’s Grace./b The target has advantage on Dexterity checks. It also doesn’t take damage from falling 20 feet or less if it isn’t incapacitated. /n/bEagle’s Splendor./b The target has advantage on Charisma checks. /n/bFox’s Cunning./b The target has advantage on Intelligence checks. /n/bOwl’s Wisdom./b The target has advantage on Wisdom checks. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 3rd level or higher, you can target one additional creature for each slot level above 2nd.', #description
        '2', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'fur or a feather from a beast', #materialComponent
        'Concentration, up to 1 hour.', #duration
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Transmutation', #school
        '0' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('116', #id
        'Enlarge/Reduce', #name
        '1 action', #castingTime
        'You cause a creature or an object you can see within range to grow larger or smaller for the duration. Choose either a creature or an object that is neither w orn nor carried. If the target is unwilling, it can make a Constitution saving throw. On a success, the spell has no effect. /nIf the target is a creature, everything it is w earing and carrying changes size with it. Any item dropped by an affected creature returns to normal size at once. /n/bEnlarge./b The target’s size doubles in all dimensions, and its weight is multiplied by eight. This growth increases its size by one category—from Medium to Large, for example. If there isn’t enough room for the target to double its size, the creature or object attains the maximum possible size in the space available. Until the spell ends, the target also has advantage on Strength checks and Strength saving throws. The target’s weapons also grow to match its new size. While these weapons are enlarged, the target’s attacks with them deal 1d4 extra damage. /n/bReduce./b The target’s size is halved in all dimensions, and its weight is reduced to one-eighth of normal. This reduction decreases its size by one category—from Medium to Small, for example. Until the spell ends, the target also has disadvantage on Strength checks and Strength saving throws. The target’s weapons also shrink to match its new size. While these weapons are reduced, the target’s attacks with them deal 1d4 less damage (this can’t reduce the damage below 1).', #description
        '2', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Constitution', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a pinch of powdered iron', #materialComponent
        'Concentration, up to 1 minute', #duration
        'a creature or object', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Transmutation', #school
        '30' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('117', #id
        'Ensnaring Strike', #name
        '1 bonus action', #castingTime
        'The next time you hit a creature with a weapon attack before this spell ends, a writhing mass of thorny vines appears at the point of impact, and the target must succeed on a Strength saving throw or be restrained by the magical vines until the spell ends. A Large or larger creature has advantage on this saving throw. If the target succeeds on the save, the vines shrivel away. /nWhile restrained by this spell, the target takes 1d6 piercing damage at the start of each of its turns. A creature restrained by the vines or one that can touch the creature can use its action to make a Strength check against your spell save DC. On a success, the target is freed. /n/bAt Higher Levels./b If you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d6 for each slot level above 1st.', #description
        '1', #level
        '1', #damageDiceAmount
        '2', #damageDice ID
        '8', #damageType ID
        null, #damageBonus
        'Strength', #savingThrow
        'Restrained', #condition
        '1', #requiresVerbalComponent
        '0', #requiresSomaticComponent
        '', #materialComponent
        'Concentration, up to 1 minute', #duration
        'Self', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Conjuration', #school
        '0' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('118', #id
        'Entangle', #name
        '1 action', #castingTime
        'Grasping weeds and vines sprout from the ground in a 20-foot square starting from a point within range. For the duration, these plants turn the ground in the area into difficult terrain. /nA creature in the area when you cast the spell must succeed on a Strength saving throw or be restrained by the entangling plants until the spell ends. A creature restrained by the plants can use its action to make a Strength check against your spell save DC. On a success, it frees itself. /nWhen the spell ends, the conjured plants wilt away.', #description
        '1', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Strength', #savingThrow
        'Restrained', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        'Concentration, up to 1 minute', #duration
        'a 20-ft square of ground', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Conjuration', #school
        '90' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('119', #id
        'Enthrall', #name
        '1 action', #castingTime
        'You weave a distracting string of words, causing creatures of your choice that you can see within range and that can hear you to make a Wisdom saving throw. Any creature that can’t be charmed succeeds on this saving throw automatically, and if you or your companions are fighting a creature, it has advantage on the save. On a failed save, the target has disadvantage on Wisdom (Perception) checks made to perceive any creature other than you until the spell ends or until the target can no longer hear you. The spell ends if you are incapacitated or can no longer speak.', #description
        '2', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Wisdom', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        '1 minute', #duration
        'creatures of your choice within range', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Enchantment', #school
        '60' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('120', #id
        'Etherealness', #name
        '1 action', #castingTime
        'You step into the border regions of the Ethereal Plane, in the area where it overlaps with your current plane. You remain in the Border Ethereal for the duration or until you use your action to dismiss the spell. During this time, you can move in any direction. If you move up or down, every foot of movement costs an extra foot. You can see and hear the plane you originated from, but everything there looks gray, and you can’t see anything more than 60 feet away. /nWhile on the Ethereal Plane, you can only affect and be affected by other creatures on that plane. Creatures that aren’t on the Ethereal Plane can’t perceive you and can’t interact with you, unless a special ability or magic has given them the ability to do so. /nYou ignore all objects and effects that aren’t on the Ethereal Plane, allowing you to move through objects you perceive on the plane you originated from. /nWhen the spell ends, you immediately return to the plane you originated from in the spot you currently occupy. If you occupy the same spot as a solid object or creature when this happens, you are immediately shunted to the nearest unoccupied space that you can occupy and take force damage equal to twice the number of feet you are moved. /nThis spell has no effect if you cast it while you are on the Ethereal Plane or a plane that doesn’t border it, such as one of the Outer Planes. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 8th level or higher, you can target up to three willing creatures (including you) for each slot level above 7th. The creatures must be within 10 feet of you when you cast the spell.', #description
        '7', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        '8 hours', #duration
        'Self', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Transmutation', #school
        '0' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('121', #id
        'Evard''s Black Tentacles', #name
        '1 action', #castingTime
        'Squirming, ebony tentacles fill a 20-foot square on ground that you can see within range. For the duration, these tentacles turn the ground in the area into difficult terrain. /nWhen a creature enters the affected area for the first time on a turn or starts its turn there, the creature must succeed on a Dexterity saving throw or take 3d6 bludgeoning damage and be restrained by the tentacles until the spell ends. A creature that starts its turn in the area and is already restrained by the tentacles takes 3d6 bludgeoning damage. /nA creature restrained by the tentacles can use its action to make a Strength or Dexterity check (its choice) against your spell save DC. On a success, it frees itself.', #description
        '4', #level
        '3', #damageDiceAmount
        '2', #damageDice ID
        '2', #damageType ID
        null, #damageBonus
        'Dexterity', #savingThrow
        'Restrained', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '(a piece of tentacle from a giant octopus or a giant squid', #materialComponent
        'Concentration, up to 1 minute', #duration
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Conjuration', #school
        '90' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('122', #id
        'Expeditious Retreat', #name
        '1 bonus action', #castingTime
        'This spell allows you to move at an incredible pace. When you cast this spell, and then as a bonus action on each of your turns until the spell ends, you can take the Dash action.', #description
        '1', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        'Concentration, up to 10 minutes', #duration
        'Self', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Transmutation', #school
        '0' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('123', #id
        'Eyebite', #name
        '1 action', #castingTime
        'For the spell’s duration, your eyes become an inky void imbued with dread power. One creature of your choice within 60 feet of you that you can see must succeed on a Wisdom saving throw or be affected by one of the following effects of your choice for the duration. On each of your turns until the spell ends, you can use your action to target another creature but can’t target a creature again if it has succeeded on a saving throw against this casting of eyebite. /n/bAsleep./b The target falls unconscious. It wakes up if it takes any damage or if another creature uses its action to shake the sleeper awake. /n/bPanicked./b The target is frightened of you. On each of its turns, the frightened creature must take the Dash action and move away from you by the safest and shortest available route, unless there is nowhere to move. If the target moves to a place at least 60 feet away from you where it can no longer see you, this effect ends. /n/bSickened./b The target has disadvantage on attack rolls and ability checks. At the end of each of its turns, it can make another Wisdom saving throw. If it succeeds, the effect ends.', #description
        '6', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Wisdom', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        'Concentration, up to 10 minutes', #duration
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Necromancy', #school
        '0' #range in feet
);
