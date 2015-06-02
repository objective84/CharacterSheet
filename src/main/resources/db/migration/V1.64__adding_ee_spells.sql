INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('365', #id
        'Abi-Dalzim’s Horrid Wilting', #name
        '1 action', #castingTime
        'You draw the moisture from every creature in a 30-foot cube centered on a point you choose within range. Each creature in that area must make a Constitution saving throw. Constructs and undead aren’t affected, and plants and water elementals make this saving throw with disadvantage. A creature takes 10d8 necrotic damage on a failed save, or half as much damage on a successful one.', #description
        '8', #level
        '10', #damageDiceAmount
        '3', #damageDice ID
        '7', #damageType ID
        null, #damageBonus
        'Constitution', #savingThrow
        null, #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a bit of sponge', #materialComponent
        'Instantaneous', #duration
        null, #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Necromancy', #school
        '150' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('366', #id
        'Absorb Elements', #name
        '1 reaction, which you take when you take acid, cold, fire, lightning, or thunder damage', #castingTime
        'The spell captures some of the incoming energy, lessening its effect on you and storing it for your next melee attack. You have resistance to the triggering damage type until the start of your next turn. Also, the first time you hit with a melee attack on your next turn, the target takes an extra 1d6 damage of the triggering type, and the spell ends. At Higher Levels. When you cast this spell using a spell slot of 2nd level or higher, the extra damage increases by 1d6 for each slot level above 1st.', #description
        '1', #level
        '0', #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        null, #savingThrow
        null, #condition
        '0', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        null, #materialComponent
        '1 round', #duration
        null, #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Abjuration', #school
        'Self' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('367', #id
        'Aganazzar’s Scorcher', #name
        '1 action', #castingTime
        'A line of roaring flame 30 feet long and 5 feet wide emanates from you in a direction you choose. Each creature in the line must make a Dexterity saving throw. A creature takes 3d8 fire damage on a failed save, or half as much damage on a successful one. At Higher Levels. When you cast this spell using a spell slot of 3rd level or higher, the damage increases by 1d8 for each slot level above 2nd.', #description
        '2', #level
        '3', #damageDiceAmount
        '4', #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Dexterity', #savingThrow
        null, #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a red dragon\'s scale', #materialComponent
        'Concentration, up to 10 minutes', #duration
        '30 feet long and 5 feet wide', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Evocation', #school
        '30' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('368', #id
        'Beast Bond', #name
        '1 action', #castingTime
        'You establish a telepathic link with one beast you touch that is friendly to you or charmed by you. The spell fails if the beast’s Intelligence is 4 or higher. Until the spell ends, the link is active while you and the beast are within line of sight of each other. Through the link, the beast can understand your telepathic messages to it, and it can telepathically communicate simple emotions and concepts back to you. While the link is active, the beast gains advantage on attack rolls against any creature within 5 feet of you that you can see.', #description
        '1', #level
        '0', #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        null, #savingThrow
        null, #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a bit of fur wrapped in a cloth', #materialComponent
        'Concentration, up to 10 minutes', #duration
        'one beast you touch', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Divination', #school
        'Touch' #range in feet
);

INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('369', #id
        'Bones of the Earth', #name
        '1 action', #castingTime
        'You cause up to six pillars of stone to burst from places on the ground that you can see within range. Each pillar is a cylinder that has a diameter of 5 feet and a height of up to 30 feet. The ground where a pillar appears must be wide enough for its diameter, and you can target ground under a creature if that creature is Medium or smaller. Each pillar has AC 5 and 30 hit points. When reduced to 0 hit points, a pillar crumbles into rubble, which creates an area of difficult terrain with a 10-foot radius. The rubble lasts until cleared. If a pillar is created under a creature, that creature must succeed on a Dexterity saving throw or be lifted by the pillar. A creature can choose to fail the save. If a pillar is prevented from reaching its full height because of a ceiling or other obstacle, a creature on the pillar takes 6d6 bludgeoning damage and is restrained, pinched between the pillar and the obstacle. The restrained creature can use an action to make a Strength or Dexterity check (the creature’s choice) against the spell’s saving throw DC. On a success, the creature is no longer restrained and must either move off the pillar or fall off it. At Higher Levels. When you cast this spell using a spell slot of 7th level or higher, you can create two additional pillars for each slot level above 6th.', #description
        '6', #level
        '6', #damageDiceAmount
        '2', #damageDice ID
        '2', #damageType ID
        null, #damageBonus
        'Dexterity', #savingThrow
        'restrained', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        null, #materialComponent
        'Instantaneous', #duration
        null, #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Transmutation', #school
        '120' #range in feet
);

INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('370', #id
        'Catapult', #name
        '1 action', #castingTime
        'Choose one object weighing 1 to 5 pounds within range that isn’t being worn or carried. The object flies in a straight line up to 90 feet in a direction you choose before falling to the ground, stopping early if it impacts against a solid surface. If the object would strike a creature, that creature must make a Dexterity saving throw. On a failed save, the object strikes the target and stops moving. In either case, both the object and the creature or solid surface take 3d8 bludgeoning damage. At Higher Levels. When you cast this spell using a spell slot of 2nd level or higher, the maximum weight of objects that you can target with this spell increases by 5 pounds, and the damage increases by 1d8, for each slot level above 1st.', #description
        '1', #level
        '3', #damageDiceAmount
        '3', #damageDice ID
        '2', #damageType ID
        null, #damageBonus
        'Dexterity', #savingThrow
        null, #condition
        '0', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        null, #materialComponent
        'Instantaneous', #duration
        'one object weighing 1 to 5 pounds', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Transmutation', #school
        '150' #range in feet
);

INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('371', #id
        'Create Bonfire', #name
        '1 action', #castingTime
        'You create a bonfire on ground that you can see within range. Until the spells ends, the bonfire fills a 5-foot cube. Any creature in the bonfire’s space when you cast the spell must succeed on a Dexterity saving throw or take 1d8 fire damage. A creature must also make the saving throw when it enters the bonfire’s space for the first time on a turn or ends its turn there. The spell’s damage increases by 1d8 when you reach 5th level (2d8), 11th level (3d8), and 17th level (4d8).', #description
        '0', #level
        '1', #damageDiceAmount
        '3', #damageDice ID
        '4', #damageType ID
        null, #damageBonus
        'Dexterity', #savingThrow
        null, #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        null, #materialComponent
        'Concentration, up to 1 minute', #duration
        '5 foot cube on the ground within range', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Conjuration', #school
        '60' #range in feet
);

INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('372', #id
        'Control Flames', #name
        '1 action', #castingTime
        'You choose nonmagical flame that you can see within range and that fits within a 5-foot cube. You affect it in one of the following ways: • You instantaneously expand the flame 5 feet in one direction, provided that wood or other fuel is present in the new location. • You instantaneously extinguish the flames within the cube. • You double or halve the area of bright light and dim light cast by the flame, change its color, or both. The change lasts for 1 hour. • You cause simple shapes—such as the vague form of a creature, an inanimate object, or a location—to appear within the flames and animate as you like. The shapes last for 1 hour. If you cast this spell multiple times, you can have up to three of its non-instantaneous effects active at a time, and you can dismiss such an effect as an action.', #description
        '0', #level
        '0', #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        null, #savingThrow
        null, #condition
        '0', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        null, #materialComponent
        'instantaneous or 1 hour', #duration
        'nonmagical flame that you can see within range and that fits within a 5-foot cube', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Transmutation', #school
        '60' #range in feet
);

INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('373', #id
        'Control Winds', #name
        '1 action', #castingTime
        'You take control of the air in a 100-foot cube that you can see within range. Choose one of the following effects when you cast the spell. The effect lasts for the spell’s duration, unless you use your action on a later turn to switch to a different effect. You can also use your action to temporarily halt the effect or to restart one you’ve halted. Gusts. A wind picks up within the cube, continually blowing in a horizontal direction that you choose. You choose the intensity of the wind: calm, moderate, or strong. If the wind is moderate or strong, ranged weapon attacks that pass through it or that are made against targets within the cube have disadvantage on their attack rolls. If the wind is strong, any creature moving against the wind must spend 1 extra foot of movement for each foot moved. Downdraft. You cause a sustained blast of strong wind to blow downward from the top of the cube. Ranged weapon attacks that pass through the cube or that are made against targets within it have disadvantage on their attack rolls. A creature must make a Strength saving throw if it flies into the cube for the first time on a turn or starts its turn there flying. On a failed save, the creature is knocked prone. Updraft. You cause a sustained updraft within the cube, rising upward from the cube’s bottom edge. Creatures that end a fall within the cube take only half damage from the fall. When a creature in the cube makes a vertical jump, the creature can jump up to 10 feet higher than normal.', #description
        '5', #level
        '0', #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        null, #savingThrow
        null, #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        null, #materialComponent
        'Concentration, up to 1 hour', #duration
        'air in a 100-foot cube that you can see in range', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Transmutation', #school
        '300' #range in feet
);

INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('374', #id
        'Dust Devil', #name
        '1 action', #castingTime
        'Choose an unoccupied 5-foot cube of air that you can see within range. An elemental force that resembles a dust devil appears in the cube and lasts for the spell’s duration. Any creature that ends its turn within 5 feet of the dust devil must make a Strength saving throw. On a failed save, the creature takes 1d8 bludgeoning damage and is pushed 10 feet away. On a successful save, the creature takes half as much damage and isn’t pushed. As a bonus action, you can move the dust devil up to 30 feet in any direction. If the dust devil moves over sand, dust, loose dirt, or small gravel, it sucks up the material and forms a 10-foot-radius cloud of debris around itself that lasts until the start of your next turn. The cloud heavily obscures its area. At Higher Levels. When you cast this spell using a spell slot of 3rd level or higher, the damage increases by 1d8 for each slot level above 2nd.', #description
        '2', #level
        '1', #damageDiceAmount
        '3', #damageDice ID
        '2', #damageType ID
        null, #damageBonus
        'Strength', #savingThrow
        null, #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a pinch of dust', #materialComponent
        'Concentration, up to 1 minute', #duration
        'unoccupied 5-foot cube of air that you can see within range', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Conjuration', #school
        '60' #range in feet
);

INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('375', #id
        'Earthbind', #name
        '1 action', #castingTime
        'Choose one creature you can see within range. Yellow strips of magical energy loop around the creature. The target must succeed on a Strength saving throw or its flying speed (if any) is reduced to 0 feet for the spell’s duration. An airborne creature affected by this spell descends at 60 feet per round until it reaches the ground or the spell ends.', #description
        '2', #level
        '0', #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Strength', #savingThrow
        null, #condition
        '1', #requiresVerbalComponent
        '0', #requiresSomaticComponent
        null, #materialComponent
        'Concentration, up to 1 minute', #duration
        'one creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Transmutation', #school
        '300' #range in feet
);

INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('376', #id
        'Earth Tremor', #name
        '1 action', #castingTime
        'You cause a tremor in the ground in a 10-foot radius.  Each creature other than you in that area must make a Dexterity saving throw. On a failed save, a creature  takes 1d6 bludgeoning damage and is knocked prone.  If the ground in that area is loose earth or stone, it  becomes difficult terrain until cleared.  At Higher Levels. When you cast this spell using a  spell slot of 2nd level or higher, the damage increases by  1d6 for each slot level above 1st.', #description
        '1', #level
        '1', #damageDiceAmount
        '2', #damageDice ID
        '2', #damageType ID
        null, #damageBonus
        'Dexterity', #savingThrow
        'prone', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        null, #materialComponent
        'Instantaneous', #duration
        'Self (10-foot radius)', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Evocation', #school
        '10' #range in feet
);

INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('377', #id
        'Elemental Bane', #name
        '1 action', #castingTime
        'Choose one creature you can see within range, and choose one of the following damage types: acid, cold, fire, lightning, or thunder. The target must succeed on a Constitution saving throw or be affected by the spell for its duration. The first time each turn the affected target takes damage of the chosen type, the target takes an extra 2d6 damage of that type. Moreover, the target loses any resistance to that damage type until the spell ends. At Higher Levels. When you cast this spell using a spell slot of 5th level or higher, you can target one additional creature for each slot level above 4th. The creatures must be within 30 feet of each other when you target them.', #description
        '4', #level
        '2', #damageDiceAmount
        '2', #damageDice ID
        '1', #damageType ID
        null, #damageBonus
        'Constitution', #savingThrow
        null, #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        null, #materialComponent
        'Concentration, up to 1 minute', #duration
        'one creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Evocation', #school
        '90' #range in feet
);

INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('378', #id
        'Erupting Earth', #name
        '1 action', #castingTime
        'Choose a point you can see on the ground within range. A fountain of churned earth and stone erupts in a 20-foot cube centered on that point. Each creature in that area must make a Dexterity saving throw. A creature takes 3d12 bludgeoning damage on a failed save, or half as much damage on a successful one. Additionally, the ground in that area becomes difficult terrain until cleared away. Each 5-foot-square portion of the area requires at least 1 minute to clear by hand. At Higher Levels. When you cast this spell using a spell slot of 3rd level or higher, the damage increases by 1d12 for each slot level above 2nd.', #description
        '3', #level
        '3', #damageDiceAmount
        '5', #damageDice ID
        '2', #damageType ID
        null, #damageBonus
        'Dexterity', #savingThrow
        null, #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a piece of obsidian', #materialComponent
        'Instantaneous', #duration
        'point you can see on the ground', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Transmutation', #school
        '120' #range in feet
);

INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('379', #id
        'Flame Arrows', #name
        '1 action', #castingTime
        'You touch a quiver containing arrows or bolts. When a target is hit by a ranged weapon attack using a piece of ammunition drawn from the quiver, the target takes an extra 1d6 fire damage. The spell’s magic ends on the piece of ammunition when it hits or misses, and the spell ends when twelve pieces of ammunition have been drawn from the quiver. At Higher Levels. When you cast this spell using a spell slot of 4th level or higher, the number of pieces of ammunition you can affect with this spell increases by two for each slot level above 3rd.', #description
        '3', #level
        '1', #damageDiceAmount
        '2', #damageDice ID
        '4', #damageType ID
        null, #damageBonus
        null, #savingThrow
        null, #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        null, #materialComponent
        'Concentration, up to 1 hour', #duration
        'a quiver containing arrows or bolts', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Transmutation', #school
        'Touch' #range in feet
);

INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('380', #id
        'Frostbite', #name
        '1 action', #castingTime
        'You cause numbing frost to form on one creature that you can see within range. The target must make a Constitution saving throw. On a failed save, the target takes 1d6 cold damage, and it has disadvantage on the next weapon attack roll it makes before the end of its next turn. The spell’s damage increases by 1d6 when you reach 5th level (2d6), 11th level (3d6), and 17th level (4d6).', #description
        '0', #level
        '1', #damageDiceAmount
        '2', #damageDice ID
        '3', #damageType ID
        null, #damageBonus
        'Constitution', #savingThrow
        null, #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        null, #materialComponent
        'Instantaneous', #duration
        'one creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Evocation', #school
        '60' #range in feet
);

INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('381', #id
        'Gust', #name
        '1 action', #castingTime
        'You seize the air and compel it to create one of the following effects at a point you can see within range: • One Medium or smaller creature that you choose must succeed on a Strength saving throw or be pushed up to 5 feet away from you. • You create a small blast of air capable of moving one object that is neither held nor carried and that weighs no more than 5 pounds. The object is pushed up to 10 feet away from you. It isn’t pushed with enough force to cause damage. • You create a harmless sensory affect using air, such as causing leaves to rustle, wind to slam shutters shut, or your clothing to ripple in a breeze.', #description
        '0', #level
        '0', #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        null, #savingThrow
        null, #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        null, #materialComponent
        'Instantaneous', #duration
        null, #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Transmutation', #school
        '30' #range in feet
);

INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('382', #id
        'Ice Knife', #name
        '1 action', #castingTime
        'You create a shard of ice and fling it at one creature within range. Make a ranged spell attack against the target. On a hit, the target takes 1d10 piercing damage. Hit or miss, the shard then explodes. The target and each creature within 5 feet of the point where the ice exploded must succeed on a Dexterity saving throw or take 2d6 cold damage. At Higher Levels. When you cast this spell using a spell slot of 2nd level or higher, the cold damage increases by 1d6 for each slot level above 1st.', #description
        '1', #level
        '1', #damageDiceAmount
        '4', #damageDice ID
        null, #damageType ID
        null, #damageBonus
        null, #savingThrow
        null, #condition
        '0', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a drop of water or piece of ice', #materialComponent
        'Instantaneous', #duration
        'one creature', #target
        '1', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Conjuration', #school
        '60' #range in feet
);

INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('383', #id
        'Immolation', #name
        '1 action', #castingTime
        'Flames wreathe one creature you can see within range. The target must make a Dexterity saving throw. It takes 7d6 fire damage on a failed save, or half as much damage on a successful one. On a failed save, the target also burns for the spell’s duration. The burning target sheds bright light in a 30-foot radius and dim light for an additional 30 feet. At the end of each of its turns, the target repeats the saving throw. It takes 3d6 fire damage on a failed save, and the spell ends on a successful one. These magical flames can’t be extinguished through nonmagical means. If damage from this spell reduces a target to 0 hit points, the target is turned to ash.', #description
        '5', #level
        '7', #damageDiceAmount
        '2', #damageDice ID
        '3', #damageType ID
        null, #damageBonus
        'Dexterity', #savingThrow
        null, #condition
        '1', #requiresVerbalComponent
        '0', #requiresSomaticComponent
        null, #materialComponent
        'Concentration, up to 1 minute', #duration
        'one creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Evocation', #school
        '90' #range in feet
);

INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('384', #id
        'Investiture of Flame', #name
        '1 action', #castingTime
        'Flames race across your body, shedding bright light in a 30-foot radius and dim light for an additional 30 feet for the spell’s duration. The flames don’t harm you. Until the spell ends, you gain the following benefits: • You are immune to fire damage and have resistance to cold damage. • Any creature that moves within 5 feet of you for the first time on a turn or ends its turn there takes 1d10 fire damage. • You can use your action to create a line of fire 15 feet long and 5 feet wide extending from you in a direction you choose. Each creature in the line must make a Dexterity saving throw. A creature takes 4d8 fire damage on a failed save, or half as much damage on a successful one.', #description
        '6', #level
        '4', #damageDiceAmount
        '3', #damageDice ID
        '4', #damageType ID
        null, #damageBonus
        'Dexterity', #savingThrow
        null, #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        null, #materialComponent
        'Concentration, up to 10 minute', #duration
        'Self', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Transmutation', #school
        '0' #range in feet
);

INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('385', #id
        'Investiture of Ice', #name
        '1 action', #castingTime
        'Until the spell ends, ice rimes your body, and you gain the following benefits: • You are immune to cold damage and have resistance to fire damage. • You can move across difficult terrain created by ice or snow without spending extra movement. • The ground in a 10-foot radius around you is icy and is difficult terrain for creatures other than you. The radius moves with you. • You can use your action to create a 15-foot cone of freezing wind extending from your outstretched hand in a direction you choose. Each creature in the cone must make a Constitution saving throw. A creature takes 4d6 cold damage on a failed save, or half as much damage on a successful one. A creature that fails its save against this effect has its speed halved until the start of your next turn.', #description
        '6', #level
        '4', #damageDiceAmount
        '3', #damageDice ID
        '4', #damageType ID
        null, #damageBonus
        'Constitution', #savingThrow
        null, #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        null, #materialComponent
        'Concentration, up to 10 minute', #duration
        'Self', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Transmutation', #school
        '0' #range in feet
);

INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('386', #id
        'Investiture of Stone', #name
        '1 action', #castingTime
        'Until the spell ends, bits of rock spread across your body, and you gain the following benefits: • You have resistance to bludgeoning, piercing, and slashing damage from nonmagical weapons. • You can use your action to create a small earthquake on the ground in a 15-foot radius centered on you. Other creatures on that ground must succeed on a Dexterity saving throw or be knocked prone. • You can move across difficult terrain made of earth or stone without spending extra movement. You can move through solid earth or stone as if it was air and without destabilizing it, but you can’t end your movement there. If you do so, you are ejected to the nearest unoccupied space, this spell ends, and you are stunned until the end of your next turn.', #description
        '6', #level
        '0', #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Constitution', #savingThrow
        null, #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        null, #materialComponent
        'Concentration, up to 10 minute', #duration
        'Self', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Transmutation', #school
        '0' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('387', #id
        'Investiture of Wind', #name
        '1 action', #castingTime
        'Until the spell ends, wind whirls around you, and you gain the following benefits: • Ranged weapon attacks made against you have disadvantage on the attack roll. • You gain a flying speed of 60 feet. If you are still flying when the spell ends, you fall, unless you can somehow prevent it. • You can use your action to create a 15-foot cube of swirling wind centered on a point you can see within 60 feet of you. Each creature in that area must make a Constitution saving throw. A creature takes 2d10 bludgeoning damage on a failed save, or half as much damage on a successful one. If a Large or smaller creature fails the save, that creature is also pushed up to 10 feet away from the center of the cube.', #description
        '6', #level
        '2', #damageDiceAmount
        '4', #damageDice ID
        '2', #damageType ID
        null, #damageBonus
        'Constitution', #savingThrow
        null, #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        null, #materialComponent
        'Concentration, up to 10 minute', #duration
        'Self', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Transmutation', #school
        '0' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('388', #id
        'Maelstrom', #name
        '1 action', #castingTime
        'A mass of 5-foot-deep water appears and swirls in a 30-foot radius centered on a point you can see within range. The point must be on ground or in a body of water. Until the spell ends, that area is difficult terrain, and any creature that starts its turn there must succeed on a Strength saving throw or take 6d6 bludgeoning damage and be pulled 10 feet toward the center.', #description
        '5', #level
        '6', #damageDiceAmount
        '2', #damageDice ID
        '2', #damageType ID
        '0', #damageBonus
        'Strength', #savingThrow
        null, #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'paper or leaf in the shape of a funnel', #materialComponent
        'Concentration, up to 1 minute', #duration
        'Point you can see in range', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Transmutation', #school
        '0' #range in feet
);