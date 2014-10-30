INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('124', #id
        'Fabricate', #name
        '10 minutes', #castingTime
        'You convert raw materials into products of the same material. For example, you can fabricate a wooden bridge from a clump of trees, a rope from a patch of hemp, and clothes from flax or wool. /nChoose raw materials that you can see within range. You can fabricate a Large or smaller object (contained within a 10-foot cube, or eight connected 5-foot cubes), given a sufficient quantity of raw material. If you are working with metal, stone, or another mineral substance, however, the fabricated object can be no larger than Medium (contained within a single 5-foot cube). The quality of objects made by the spell is commensurate with the quality of the raw materials. /nCreatures or magic items can’t be created or transmuted by this spell. You also can’t use it to create items that ordinarily require a high degree of craftsmanship, such as jewelry, weapons, glass, or armor, unless you have proficiency with the type of artisan’s tools used to craft such objects.', #description
        '4', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        'Instantaneous', #duration
        'raw materials', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Transmutation', #school
        '120' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('125', #id
        'Faerie Fire', #name
        '1 action', #castingTime
        'Each object in a 20-foot cube within range is outlined in blue, green, or violet light (your choice). Any creature in the area when the spell is cast is also outlined in light if it fails a Dexterity saving throw. For the duration, objects and affected creatures shed dim light in a 10-foot radius. /nAny attack roll against an affected creature or object has advantage if the attacker can see it, and the affected creature or object can’t benefit from being invisible.', #description
        '1', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Dexterity', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '0', #requiresSomaticComponent
        '', #materialComponent
        'Concentration, up to 1 minute', #duration
        'all objects in a 20-ft cube', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Evocation', #school
        '60' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('126', #id
        'False Life', #name
        '1 action', #castingTime
        'Bolstering yourself with a necromantic facsimile of life, you gain 1d4 + 4 temporary hit points for the duration. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 2nd level or higher, you gain 5 additional temporary hit points for each slot level above 1st.', #description
        '1', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a small amount of alcohol or distilled spirits', #materialComponent
        '1 hour', #duration
        'Self', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Necromancy', #school
        '0' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('127', #id
        'Fear', #name
        '1 action', #castingTime
        'You project a phantasmal image of a creature’s worst fears. Each creature in a 30-foot cone must succeed on a Wisdom saving throw or drop whatever it is holding and become frightened for the duration. /nWhile frightened by this spell, a creature must take the Dash action and move away from you by the safest available route on each of its turns, unless there is nowhere to move. If the creature ends its turn in a location where it doesn’t have line of sight to you, the creature can make a Wisdom saving throw. On a successful save, the spell ends for that creature.', #description
        '3', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Wisdom', #savingThrow
        'Afraid', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a white feather or the heart of a hen', #materialComponent
        'Concentration, up to 1 minute', #duration
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Illusion', #school
        '30' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('128', #id
        'Feather Fall', #name
        '1 reaction, which you take when you or a creature within 60 feet of you falls', #castingTime
        'Choose up tofive falling creatures within range. A falling creature''s rate of descent slows to 60 feet per round until the spell ends. If the creature lands before the spell ends, it takes no falling damage and can land on its feet, and the spell ends for that creature.', #description
        '1', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a small feature or piece of down', #materialComponent
        '1 minute', #duration
        'up to five willing creatures', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Transmutation', #school
        '60' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('129', #id
        'Feeblemind', #name
        '1 action', #castingTime
        'You blast the mind of a creature that you can see within range, attempting to shatter its intellect and personality. The target takes 4d6 psychic damage and must make an Intelligence saving throw. /nOn a failed save, the creature’s Intelligence and Charisma scores become 1. The creature can’t cast spells, activate magic items, understand language, or communicate in any intelligible way. The creature can, however, identify its friends, follow them, and even protect them. /nAt the end of every 30 days, the creature can repeat its saving throw against this spell. If it succeeds on its saving throw, the spell ends. The spell can also be ended by <span class="text-italic">greater restoration, heal</span>, or <span class="text-italic">wish</span>.', #description
        '8', #level
        '4', #damageDiceAmount
        '2', #damageDice ID
        '10', #damageType ID
        null, #damageBonus
        'Intelligence', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a handful of clay, crystal, glass, or mineral spheres', #materialComponent
        'Instantaneous', #duration
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Enchantment', #school
        '150' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('130', #id
        'Feign Death', #name
        '1 action', #castingTime
        'You touch a willing creature and put it into a cataleptic state that is indistinguishable from death. /nFor the spell’s duration, or until you use an action to touch the target and dismiss the spell, the target appears dead to all outward inspection and to spells used to determine the target’s status. The target is blinded and incapacitated, and its speed drops to 0. The target has resistance to all damage except psychic damage. If the target is diseased or poisoned when you cast the spell, or becomes diseased or poisoned while under the spell’s effect, the disease and poison have no effect until the spell ends.', #description
        '3', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a pinch of graveyard dirt', #materialComponent
        '1 hour', #duration
        'a willing creature', #target
        '0', #requiresAttackRoll
        '1', #ritual
        '0', #concentration
        'Necromancy', #school
        '0' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('131', #id
        'Find Familiar', #name
        '1 hour', #castingTime
        'You gain the service of a familiar, a spirit that takes an animal form you choose: bat, cat, crab, frog (toad), hawk, lizard, octopus, owl, poisonous snake, fish (quipper), rat, raven, sea horse, spider, or w easel. Appearing in an unoccupied space within range, the familiar has the statistics of the chosen form, though it is a celestial, fey, or fiend (your choice) instead of a beast. /nYour familiar acts independently of you, but it always obeys your commands. In combat, it rolls its own initiative and acts on its own turn. A familiar can’t attack, but it can take other actions as normal. /nWhen the familiar drops to 0 hit points, it disappears, leaving behind no physical form. It reappears after you cast this spell again /nWhile your familiar is within 100 feet of you, you can communicate with it telepathically. Additionally, as an action, you can see through your familiar’s eyes and hear what it hears until the start of your next turn, gaining the benefits of any special senses that the familiar has. During this time, you are deaf and blind with regard to your own senses. /nAs an action, you can temporarily dismiss your familiar. It disappears into a pocket dimension where it awaits your summons. Alternatively, you can dismiss it forever. As an action while it is temporarily dismissed, you can cause it to reappear in any unoccupied space within 30 feet of you. /nYou can’t have more than one familiar at a time. If you cast this spell while you already have a familiar, you instead cause it to adopt a new form. Choose one of the forms from the above list. Your familiar transforms into the chosen creature. /nFinally, when you cast a spell with a range of touch, your familiar can deliver the spell as if it had cast the spell. Your familiar must be within 100 feet of you, and it must use its reaction to deliver the spell when you cast it. If the spell requires an attack roll, you use your attack modifier for the roll.', #description
        '1', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '10 gp worth of charcoal', #materialComponent
        'Instantaneous', #duration
        '', #target
        '0', #requiresAttackRoll
        '1', #ritual
        '0', #concentration
        'Conjuration', #school
        '10' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('132', #id
        'Find Steed', #name
        '10 minutes', #castingTime
        'You summon a spirit that assumes the form  an unusually intelligent, strong, and loyal steed, creating a long-lasting bond with it. Appearing in an unoccupied space within range, the steed takes on a form that you choose, such as a warhorse, a pony, a camel, an elk, or a mastiff. (Your DM might allow other animals to be summoned as steeds.) The steed has the statistics  the chosen form, though it is a celestial, fey, or fiend (your choice) instead of its normal type. Additionally, if your steed has an Intelligence  5 or less, its Intelligence becomes 6, and it gains the ability to understand one language  your choice that you speak. /nYour steed serves you as a mount, both in combat and out, and you have an instinctive bond with it that allows you to fight as a seamless unit. While mounted on your steed, you can make any spell you cast that targets only you also target your steed. /nWhen the steed drops to 0 hit points, it disappears, leaving behind no physical form. You can also dismiss your steed at any time as an action, causing it to disappear. In either case, casting this spell again summons the same steed, restored to its hit point maximum. /nWhile your steed is within 1 mile  you, you can communicate with it telepathically. /nYou can’t have more than one steed bonded by this spell at a time. As an action, you can release the steed from its bond at any time, causing it to disappear.', #description
        '2', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        'Instantaneous', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Conjuration', #school
        '30' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('133', #id
        'Find The Path', #name
        '1 minute', #castingTime
        'This spell allows you to find the shortest, most direct physical route to a specific fixed location that you are familiar with on the same plane of existence. If you name a destination on another plane of existence, a destination that moves (such as a mobile fortress), or a destination that isn’t specific (such as "a green dragon’s lair"), the spell fails. /nFor the duration, as long as you are on the same plane of existence as the destination, you know how far it is and in what direction it lies. While you are traveling there, whenever you are presented with a choice of paths along the way, you automatically determine which path is the shortest and most direct route (but not necessarily the safest route) to the destination.', #description
        '6', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a set of divinatory tools—such as bones, ivory sticks, cards, teeth, or carved runes— worth 100 gp and an object from the location you wish to find', #materialComponent
        'Concentration, up to 1 day', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Divination', #school
        '0' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('134', #id
        'Find Traps', #name
        '1 action', #castingTime
        'You sense the presence of any trap within range that is within line of sight. A trap, for the purpose of this spell, includes anything that would inflict a sudden or unexpected effect you consider harmful or undesirable, which w as specifically intended as such by its creator. Thus, the spell would sense an area affected by the alarm spell, a glyph of warding, or a mechanical pit trap, but it would not reveal a natural weakness in the floor, an unstable ceiling, or a hidden sinkhole. /nThis spell merely reveals that a trap is present. You don’t learn the location of each trap, but you do learn the general nature of the danger posed by a trap you sense.', #description
        '2', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        'Instantaneous', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Divination', #school
        '120' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('135', #id
        'Finger of Death', #name
        '1 action', #castingTime
        'You send negative energy coursing through a creature that you can see within range, causing it searing pain. The target must make a Constitution saving throw. It takes 7d8 + 30 necrotic damage on a failed save, or half as much damage on a successful one. /nA humanoid killed by this spell rises at the start of your next turn as a zombie that is permanently under your command, following your verbal orders to the best of its ability.', #description
        '7', #level
        '7', #damageDiceAmount
        '2', #damageDice ID
        '7', #damageType ID
        '30', #damageBonus
        'Constitution', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        'Instantaneous', #duration
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Necromancy', #school
        '60' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('136', #id
        'Fireball', #name
        '1 action', #castingTime
        'A bright streak flashes from your pointing finger to a point you choose within range and then blossoms with a low roar into an explosion of flame. Each creature in a 20-foot-radius sphere centered on that point must make a Dexterity saving throw. A target takes 8d6 fire damage on a failed save, or half as much damage on a successful one. /nThe fire spreads around corners. It ignites flammable objects in the area that aren\'t being w orn or carried. At Higher Levels. When you cast this spell using a spell slot of 4th level or higher, the damage increases by 1d6 for each slot level above 3rd.', #description
        '3', #level
        '8', #damageDiceAmount
        '2', #damageDice ID
        '4', #damageType ID
        null, #damageBonus
        'Dexterity', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a tiny ball of bat guano and sulfur', #materialComponent
        'Instantaneous', #duration
        'all creatures in a 20-ft radius', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Evocation', #school
        '150' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('137', #id
        'Fire Bolt', #name
        '1 action', #castingTime
        'You hurl a mote of fire at a creature or object within range. Make a ranged spell attack against the target. On a hit, the target takes 1d10 fire damage. A flammable object hit by this spell ignites if it isn''t being worn or carried. /nThis spell’s damage increases by 1d10 when you reach 5th level (2d10), 11th level (3d10), and 17th level (4d10).', #description
        '0', #level
        '1', #damageDiceAmount
        '4', #damageDice ID
        '4', #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        'Instantaneous', #duration
        'a creature', #target
        '1', #requiresAttackRoll
        '1', #ritual
        '0', #concentration
        'Evocation', #school
        '120' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('138', #id
        'Fire Shield', #name
        '1 action', #castingTime
        'Thin and wispy flames wreathe your body for the duration, shedding bright light in a 10-foot radius and dim light for an additional 10 feet. You can end the spell early by using an action to dismiss it. /nThe flames provide you with a warm shield. The shield grants you resistance to cold damage. /nIn addition, whenever a creature within 5 feet of you hits you with a melee attack, the shield erupts with flame. The attacker takes 2d8 fire damage from a warm shield.', #description
        '4', #level
        '2', #damageDiceAmount
        '3', #damageDice ID
        '4', #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a bit of phosphorus or a firefly', #materialComponent
        '10 minutes', #duration
        'Self', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Evocation', #school
        '0' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('259', #id
        'Chill Shield', #name
        '1 action', #castingTime
        'A chill wind wreathe your body for the duration. You can end the spell early by using an action to dismiss it. /nThe chill shield grants you resistance to fire damage. /nIn addition, whenever a creature within 5 feet of you hits you with a melee attack, the winds envelop the attacker, who takes 2d8 cold damage.', #description
        '4', #level
        '2', #damageDiceAmount
        '3', #damageDice ID
        '3', #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a bit of phosphorus or a firefly', #materialComponent
        '10 minutes', #duration
        'Self', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Evocation', #school
        '0' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('139', #id
        'Flame Blade', #name
        '1 bonus action', #castingTime
        'You evoke a fiery blade in your free hand. The blade is similar in size and shape to a scimitar, and it lasts for the duration. If you let go of the blade, it disappears, but you can evoke the blade again as a bonus action. /nYou can use your action to make a melee spell attack with the fiery blade. On a hit, the target takes 3d6 fire damage. /nThe flaming blade sheds bright light in a 10-foot radius and dim light for an additional 10 feet. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 4th level or higher, the damage increases by 1d6 for every two slot levels above 2nd.', #description
        '2', #level
        '3', #damageDiceAmount
        '2', #damageDice ID
        '4', #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'leaf of sumac', #materialComponent
        'Concentration, up to 10 minutes', #duration
        'Self', #target
        '1', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Evocation', #school
        '0' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('140', #id
        'Flame Strike', #name
        '1 action', #castingTime
        'A vertical column of divine fire roars down from the heavens in a location you specify. Each creature in a 10-foot-radius, 40-foot-high cylinder centered on a point within range must make a Dexterity saving throw. A creature takes 4d6 fire damage and 4d6 radiant damage on a failed save, or half as much damage on a successful one. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 6th level or higher, the fire damage or the radiant damage (your choice) increases by 1d6 for each slot level above 5th.', #description
        '5', #level
        '4', #damageDiceAmount
        '2', #damageDice ID
        '4', #damageType ID
        null, #damageBonus
        'Dexterity', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'pinch of sulfur', #materialComponent
        'Instantaneous', #duration
        'all creatures in a 10-ft radius', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Evocation', #school
        '60' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('141', #id
        'Flaming Sphere', #name
        '1 action', #castingTime
        'A 5-foot-diameter sphere of fire appears in an unoccupied space of your choice within range and lasts for the duration. Any creature that ends its turn within 5 feet of the sphere must make a Dexterity saving throw. The creature takes 2d6 fire damage on a failed save, or half as much damage on a successful one. /nAs a bonus action, you can move the sphere up to 30 feet. If you ram the sphere into a creature, that creature must make the saving throw against the sphere’s damage, and the sphere stops moving this turn. /nWhen you move the sphere, you can direct it over barriers up to 5 feet tall and jump it across pits up to 10 feet w ide. The sphere ignites flammable objects not being worn or carried, and it sheds bright light in a 20-foot radius and dim light for an additional 20 feet. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 3rd level or higher, the damage increases by 1d6 for each slot level above 2nd.', #description
        '2', #level
        '2', #damageDiceAmount
        '2', #damageDice ID
        '4', #damageType ID
        null, #damageBonus
        'Dexterity', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a bit of tallow, a pinch of brimstone, and a dusting of powdered iron', #materialComponent
        'Concentration, up to 1 minute', #duration
        'all creatures within 5 feet', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Conjuration', #school
        '60' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('142', #id
        'Flesh to Stone', #name
        '1 action', #castingTime
        'You attempt to turn one creature that you can see within range into stone. If the target’s body is made of flesh, the creature must make a Constitution saving throw. On a failed save, it is restrained as its flesh begins to harden. On a successful save, the creature isn’t affected. /nA creature restrained by this spell must make another Constitution saving throw at the end of each of its turns. If it successfully saves against this spell three times, the spell ends. If it fails its saves three times, it is turned to stone and subjected to the petrified condition for the duration. The successes and failures don’t need to be consecutive; keep track of both until the target collects three of a kind. /nIf the creature is physically broken while petrified, it suffers from similar deformities if it reverts to its original state. /nIf you maintain your concentration on this spell for the entire possible duration, the creature is turned to stone until the effect is removed.', #description
        '6', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Constitution', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a pinch of lime, water, and earth', #materialComponent
        'Concentration, up to 1 minute', #duration
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Transmutation', #school
        '60' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('143', #id
        'Fly', #name
        '1 action', #castingTime
        'You touch a willing creature. The target gains a flying speed of 60 feet for the duration. When the spell ends, the target falls if it is still aloft, unless it can stop the fall. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 4th level or higher, you can target one additional creature for each slot level above 3rd.', #description
        '3', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a wing feather from any bird', #materialComponent
        'Concentration, up to 10 minutes', #duration
        'a willing creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Transmutation', #school
        '0' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('144', #id
        'Fog Cloud', #name
        '1 action', #castingTime
        'You create a 20-foot-radius sphere of fog centered on a point within range. The sphere spreads around corners, and its area is heavily obscured. It lasts for the duration or until a wind of moderate or greater speed (at least 10 miles per hour) disperses it. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 2nd level or higher, the radius of the fog increases by 20 feet for each slot level above 1st.', #description
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
        'Concentration, up to 1 hour', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Conjuration', #school
        '120' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('145', #id
        'Forbiddance', #name
        '10 minutes', #castingTime
        'You create a ward against magical travel that protects up to 40,000 square feet of floor space to a height of 30 feet above the floor. For the duration, creatures can’t teleport into the area or use portals, such as those created by the gate spell, to enter the area. The spell proofs the area against planar travel, and therefore prevents creatures from accessing the area by way of the Astral Plane, Ethereal Plane, Feywild, Shadowfell, or the plane shift spell. /nIn addition, the spell damages types of creatures that you choose when you cast it. Choose one or more of the following: celestials, elementals, fey, fiends, and undead. When a chosen creature enters the spell’s area for the first time on a turn or starts its turn there, the creature takes 5d10 radiant or necrotic damage (your choice when you cast this spell). /nWhen you cast this spell, you can designate a password. A creature that speaks the password as it enters the area takes no damage from the spell. /nThe spell’s area can''t overlap with the area of another forbiddance spell. If you cast forbiddance every day for 30 days in the same location, the spell lasts until it is dispelled, and the material components are consumed on the last casting.', #description
        '6', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a sprinkling of holy water, rare incense, and powdered ruby worth at least 1,000 gp', #materialComponent
        '1 day', #duration
        '', #target
        '0', #requiresAttackRoll
        '1', #ritual
        '0', #concentration
        'Abjuration', #school
        '0' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('146', #id
        'Forcecage', #name
        '', #castingTime
        'An immobile, invisible, cube-shaped prison composed of magical force springs into existence around an area you choose within range. The prison can be a cage or a solid box, as you choose. A prison in the shape of a cage can be up to 20 feet on a side and is made from 1/2-inch diameter bars spaced 1/2 inch apart. /nA prison in the shape of a box can be up to 10 feet on a side, creating a solid barrier that prevents any matter from passing through it and blocking any spells cast into or out from the area. /nWhen you cast the spell, any creature that is completely inside the cage''s area is trapped. Creatures only partially within the area, or those too large to fit inside the area, are pushed away from the center of the area until they are completely outside the area. /nA creature inside the cage can’t leave it by nonmagical means. If the creature tries to use teleportation or interplanar travel to leave the cage, it must first make a Charisma saving throw. On a success, the creature can use that magic to exit the cage. On a failure, the creature can''t exit the cage and wastes the use of the spell or effect. The cage also extends into the Ethereal Plane, blocking ethereal travel. /nThis spell can’t be dispelled by dispel <span class="text-italic>magic</span>.', #description
        '7', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Charisma', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'ruby dust worth 1,500 gp', #materialComponent
        '1 hour', #duration
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Evocation', #school
        '100' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('147', #id
        'Foresight', #name
        '1 minute', #castingTime
        'You touch a willing creature and bestow a limited ability to see into the immediate future. For the duration, the target can’t be surprised and has advantage on attack rolls, ability checks, and saving throws. Additionally, other creatures have disadvantage on attack rolls against the target for the duration. /nThis spell immediately ends if you cast it again before its duration ends.', #description
        '9', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a hummingbird feather', #materialComponent
        '8 hours', #duration
        'a willing creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Divination', #school
        '0' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('148', #id
        'Freedom of Movement', #name
        '1 action', #castingTime
        'You touch a willing creature. For the duration, the target’s movement is unaffected by difficult terrain, and spells and other magical effects can neither reduce the target’s speed nor cause the target to be paralyzed or restrained. /nThe target can also spend 5 feet of movement to automatically escape from nonmagical restraints, such as manacles or a creature that has it grappled. Finally, being underwater imposes no penalties on the target''s movement or attacks.', #description
        '4', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a leather strap, bound around the arm or a similar appendage', #materialComponent
        '1 hour', #duration
        'a willing creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Abjuration', #school
        '0' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('149', #id
        'Friends', #name
        '1 action', #castingTime
        'For the duration, you have advantage on all Charisma checks directed at one creature of your choice that isn’t hostile toward you. When the spell ends, the creature realizes that you used magic to influence its mood and becomes hostile toward you. A creature prone to violence might attack you. Another creature might seek retribution in other ways (at the DM’s discretion), depending on the nature of your interaction with it.', #description
        '0', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a small amount of makeup applied to the face as this spell is cast', #materialComponent
        'Concentration, up to 1 minute', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Enchantment', #school
        '0' #range in feet
);
