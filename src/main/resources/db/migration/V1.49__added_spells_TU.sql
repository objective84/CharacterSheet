ALTER TABLE `charactersheet`.`spellmodel`
CHANGE COLUMN `range` `range` VARCHAR(10) NULL DEFAULT NULL ;

INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('198', #id
        'Tasha\'s Hideous Laughter', #name
        '1 action', #castingTime
        'A creature of your choice that you can see within range perceives everything as hilariously funny and falls into fits of laughter if this spell affects it. The target must succeed on a Wisdom saving throw or fall prone, becoming incapacitated and unable to stand up for the duration. A creature with an Intelligence score of 4 or less isn’t affected. /nAt the end of each of its turns, and each time it takes damage, the target can make another Wisdom saving throw. The target has advantage on the saving throw if it’s triggered by damage. On a success, the spell ends.', #description
        '1', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Wisdom', #savingThrow
        'incapacitated', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'tiny tarts and a feather that is waved in the air', #materialComponent
        'Concentration, up to 1 minute', #duration
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Enchantment', #school
        '30' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('199', #id
        'Telekinesis', #name
        '1 action', #castingTime
        'You gain the ability to move or manipulate creatures or objects by thought. When you cast the spell, and as your action each round for the duration, you can exert your will on one creature or object that you can see within range, causing the appropriate effect below. You can affect the same target round after round, or choose a new one at any time. If you switch targets, the prior target is no longer affected by the spell. /n/bCreature./b You can try to move a Huge or smaller creature. Make an ability check with your spellcasting ability contested by the creature’s Strength check. If you win the contest, you move the creature up to 30 feet in any direction, including upward but not beyond the range of this spell. Until the end of your next turn, the creature is restrained in your telekinetic grip. A creature lifted upward is suspended in mid-air. /nOn subsequent rounds, you can use your action to attempt to maintain your telekinetic grip on the creature by repeating the contest. /n/bObject./b You can try to move an object that weighs up to 1,000 pounds. If the object isn’t being worn or carried, you automatically move it up to 30 feet in any direction, but not beyond the range of this spell. /nIf the object is w orn or carried by a creature, you must make an ability check with your spellcasting ability contested by that creature’s Strength check. If you succeed, you pull the object away from that creature and can move it up to 30 feet in any direction but not beyond the range of this spell. /nYou can exert fine control on objects with your telekinetic grip, such as manipulating a simple tool, opening a door or a container, stowing or retrieving an item from an open container, or pouring the contents from a vial.', #description
        '5', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Strength', #savingThrow
        'restrained', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        'Concentration, up to 10 minutes', #duration
        'a creature or object', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Transmutation', #school
        '60' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('200', #id
        'Telepathy', #name
        '1 action', #castingTime
        'You create a telepathic link between yourself and a willing creature with which you are familiar. The creature can be anywhere on the same plane of existence as you. The spell ends if you or the target are no longer on the same plane. /nUntil the spell ends, you and the target can instantaneously share words, images, sounds, and other sensory messages with one another through the link, and the target recognizes you as the creature it is communicating with. The spell enables a creature with an Intelligence score of at least 1 to understand the meaning of your words and take in the scope of any sensory messages you send to it.', #description
        '8', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a pair of linked silver rings', #materialComponent
        '24 hours', #duration
        'a willing creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Evocation', #school
        '9999999' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('201', #id
        'Teleport', #name
        '1 action', #castingTime
        'This spell instantly transports you and up to eight willing creatures of your choice that you can see within range, or a single object that you can see within range, to a destination you select. If you target an object, it must be able to fit entirely inside a 10-foot cube, and it can’t be held or carried by an unwilling creature. /nThe destination you choose must be known to you, and it must be on the same plane of existence as you. Your familiarity with the destination determines whether you arrive there successfully. The DM rolls d 100 and consults the table. /n*tab88*/bSimilar/b*tab14*/bOff/b*tab24*/bOn/b /n/bFamiliarity/b*tab20* /bMishap/b*tab10* /bArea/b*tab10* /bTarget/b*tab10* /bTarget/b*tab10* /nPermanent circle*tab12*—*tab26*—*tab25*—*tab22*01-100 /nAssociated object*tab10*—*tab26*—*tab25*—*tab23*01-100 /nVery familiar*tab20*01-05*tab14*06-13*tab13*14-24*tab15*25-100 /nSeen casually*tab19*01-33*tab14*34-43*tab14*44-53*tab14*54-100 /nViewed once*tab22*01-43*tab13*44-53*tab14*54-73*tab14*74-100 /nDescription*tab26*01-43*tab14*44-53*tab13*54-73*tab14*74-100 /nFalse destination*tab8*01-50*tab14*51-100*tab16*—*tab29*—/n*tab100* /n/bFamiliarity./b “Permanent circle” means a permanent teleportation circle whose sigil sequence you know. “Associated object” means that you possess an object taken from the desired destination within the last six months, such as a book from a wizard’s library, bed linen from a royal suite, or a chunk of marble from a lich’s secret tomb. “Very familiar” is a place you have been very often, a place you have carefully studied, or a place you can see when you cast the spell. “Seen casually” is someplace you have seen more than once but with which you aren’t very familiar. “Viewed once” is a place you have seen once, possibly using magic. “Description” is a place whose location and appearance you know through someone else’s description, perhaps from a map. “False destination” is a place that doesn’t exist. Perhaps you tried to scry an enemy’s sanctum but instead viewed an illusion, or you are attempting to teleport to a familiar location that no longer exists. /n/bOn Target./b You and your group (or the target object) appear where you want to. /n/bOff Target./b You and your group (or the target object) appear a random distance away from the destination in a random direction. Distance off target is 1d10 x 1d10 percent of the distance that was to be traveled. For example, if you tried to travel 120 miles, landed off target, and rolled a 5 and 3 on the two d 10s, then you would be off target by 15 percent, or 18 miles. The DM determines the direction off target randomly by rolling a d8 and designating 1 as north, 2 as northeast, 3 as east, and so on around the points of the compass. If you w ere teleporting to a coastal city and wound up 18 miles out at sea, you could be in trouble. Similar Area. You and your group (or the target object) wind up in a different area that’s visually or thematically similar to the target area. If you are heading for your home laboratory, for example, you might wind up in another wizard’s laboratory or in an alchemical supply shop that has many of the same tools and implements as your laboratory. Generally, you appear in the closest similar place, but since the spell has no range limit, you could conceivably wind up anywhere on the plane. /n/bMishap./b The spell’s unpredictable magic results in a difficult journey. Each teleporting creature (or the target object) takes 3d10 force damage, and the DM rerolls on the table to see where you wind up (multiple mishaps can occur, dealing damage each time).', #description
        '8', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a pair of linked silver rings', #materialComponent
        'Instantaneous', #duration
        'you and up to eight willing creatures', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Conjuration', #school
        '10' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('202', #id
        'Teleportation Circle', #name
        '1 minute', #castingTime
        'As you cast the spell, you draw a 10-foot-diameter circle on the ground inscribed with sigils that link your location to a permanent teleportation circle of your choice w hose sigil sequence you know and that is on the same plane of existence as you. A shimmering portal opens within the circle you drew and remains open until the end of your next turn. Any creature that enters the portal instantly appears within 5 feet of the destination circle or in the nearest unoccupied space if that space is occupied. /nMany major temples, guilds, and other important places have permanent teleportation circles inscribed somewhere within their confines. Each such circle includes a unique sigil sequence—a string of magical runes arranged in a particular pattern. When you first gain the ability to cast this spell, you learn the sigil sequences for two destinations on the Material Plane, determined by the DM. You can learn additional sigil sequences during your adventures. You can commit a new sigil sequence to memory after studying it for 1 minute. /nYou can create a permanent teleportation circle by casting this spell in the same location every day for one year. You need not use the circle to teleport when you cast the spell in this way.', #description
        '5', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'rare chalks and inks infused with precious gems with 50 gp, which the spell consumes', #materialComponent
        '1 round', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Conjuration', #school
        '10' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('203', #id
        'Tenser\'s Floating Disk', #name
        '1 action', #castingTime
        'This spell creates a circular, horizontal plane of force, 3 feet in diameter and 1 inch thick, that floats 3 feet above the ground in an unoccupied space of your choice that you can see within range. The disk remains for the duration, and can hold up to 500 pounds. If more weight is placed on it, the spell ends, and everything on the disk falls to the ground. /nThe disk is immobile while you are within 20 feet of it. If you move more than 20 feet away from it, the disk follows you so that it remains within 20 feet of you. It can move across uneven terrain, up or down stairs, slopes and the like, but it can’t cross an elevation change of 10 feet or more. For example, the disk can’t move across a 10-foot-deep pit, nor could it leave such a pit if it was created at the bottom. /nIf you move more than 100 feet from the disk (typically because it can’t move around an obstacle to follow you), the spell ends.', #description
        '1', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a drop of mercury', #materialComponent
        '', #duration
        '', #target
        '0', #requiresAttackRoll
        '1', #ritual
        '0', #concentration
        'Conjuration', #school
        '30' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('204', #id
        'Thaumaturgy', #name
        '1 action', #castingTime
        'You manifest a minor wonder, a sign of supernatural power, within range. You create one of the following magical effects within range: /bullets• Your voice booms up to three times as loud as normal for 1 minute. /bt• You cause flames to flicker, brighten, dim, or change color for 1 minute. /bt• You cause harmless tremors in the ground for 1 minute. /bt• You create an instantaneous sound that originates from a point of your choice within range, such as a rumble of thunder, the cry of a raven, or ominous whispers. /bt• You instantaneously cause an unlocked door or window to fly open or slam shut. /bt• You alter the appearance of your eyes for 1 minute./bullets If you cast this spell multiple times, you can have up to three of its 1-minute effects active at a time, and you can dismiss such an effect as an action.', #description
        '0', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '0', #requiresSomaticComponent
        '', #materialComponent
        'Up to 1 minute', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Transmutation', #school
        '30' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('205', #id
        'Thorn Whip', #name
        '1 action', #castingTime
        'You create a long, vine-like whip covered in thorns that lashes out at your command toward a creature in range. Make a melee spell attack against the target. If the attack hits, the creature takes 1d6 piercing damage, and if the creature is Large or smaller, you pull the creature up to 10 feet closer to you. /nThis spell’s damage increases by 1d6 w hen you reach 5th level (2d6), 11th level (3d6), and 17th level (4d6).', #description
        '0', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'the stem of a plant with thorns', #materialComponent
        'Instantaneous', #duration
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Transmutation', #school
        '30' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('206', #id
        'Thunderous Smite', #name
        '1 bonus action', #castingTime
        'The first time you hit with a melee weapon attack during this spell’s duration, your weapon rings with thunder that is audible within 300 feet of you, and the attack deals an extra 2d6 thunder damage to the target. Additionally, if the target is a creature, it must succeed on a Strength saving throw or be pushed 10 feet away from you and knocked prone.', #description
        '1', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Strength', #savingThrow
        'prone', #condition
        '1', #requiresVerbalComponent
        '0', #requiresSomaticComponent
        '', #materialComponent
        'Concentration, up to 1 minute', #duration
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Evocation', #school
        '0' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('207', #id
        'Thunderwave', #name
        '1 action', #castingTime
        'A wave of thunderous force sweeps out from you. Each creature in a 15-foot cube originating from you must make a Constitution saving throw. On a failed save, a creature takes 2d8 thunder damage and is pushed 10 feet away from you. On a successful save, the creature takes half as much damage and isn’t pushed. /nIn addition, unsecured objects that are completely within the area of effect are automatically pushed 10 feet away from you by the spell’s effect, and the spell emits a thunderous boom audible out to 300 feet. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d8 for each slot level above 1st.', #description
        '1', #level
        '2', #damageDiceAmount
        '3', #damageDice ID
        '13', #damageType ID
        null, #damageBonus
        'Constitution', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        'Instantaneous', #duration
        'all creatures in a 15-ft cube', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Evocation', #school
        '15' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('208', #id
        'Time Stop', #name
        '1 action', #castingTime
        'You briefly stop the flow of time for everyone but yourself. No time passes for other creatures, while you take 1d4 + 1 turns in a row, during which you can use actions and move as normal. /nThis spell ends if one of the actions you use during this period, or any effects that you create during this period, affects a creature other than you or an object being worn or carried by someone other than you. In addition, the spell ends if you move to a place more than 1,000 feet from the location where you cast it.', #description
        '9', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '0', #requiresSomaticComponent
        '', #materialComponent
        'Instantaneous', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Transmutation', #school
        '0' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('209', #id
        'Tongues', #name
        '1 action', #castingTime
        'This spell grants the creature you touch the ability to understand any spoken language it hears. Moreover, when the target speaks, any creature that knows at least one language and can hear the target understands what it says.', #description
        '3', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '0', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a small clay model of a ziggurat', #materialComponent
        '1 hour', #duration
        'Self', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Divination', #school
        '5' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('210', #id
        'Transport via Plants', #name
        '1 action', #castingTime
        'This spell creates a magical link between a Large or larger inanimate plant within range and another plant, at any distance, on the same plane  existence. You must have seen or touched the destination plant at least once before. For the duration, any creature can step into the target plant and exit from the destination plant by using 5 feet  movement.', #description
        '6', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        '1 round', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Conjuration', #school
        '10' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('211', #id
        'Tree Stride', #name
        '1 action', #castingTime
        'You gain the ability to enter a tree and move from inside it to inside another tree  the same kind within 500 feet. Both trees must be living and at least the same size as you. You must use 5 feet of movement to enter a tree. You instantly know the location  all other trees  the same kind within 500 feet and, as part  the move used to enter the tree, can either pass into one  those trees or step out  the tree you’re in. You appear in a spot of your choice within 5 feet  the destination tree, using another 5 feet  movement. If you have no movement left, you appear within 5 feet  the tree you entered. /nYou can use this transportation ability once per round for the duration. You must end each turn outside a tree.', #description
        '5', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        'Concentration, up to 1 minute', #duration
        'Self', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Conjuration', #school
        '0' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('212', #id
        'True Polymorph', #name
        '1 action', #castingTime
        'Choose one creature or nonmagical object that you can see within range. You transform the creature into a different creature, the creature into an object, or the object into a creature (the object must be neither worn nor carried by another creature). The transformation lasts for the duration, or until the target drops to 0 hit points or dies. If you concentrate on this spell for the full duration, the transformation becomes permanent. /nShapechangers aren’t affected by this spell. An unwilling creature can make a Wisdom saving throw, and if it succeeds, it isn’t affected by this spell. /n/bCreature into Creature./b If you turn a creature into another kind of creature, the new form can be any kind you choose whose challenge rating is equal to or less than the target’s (or its level, if the target doesn’t have a challenge rating). The target’s game statistics, including mental ability scores, are replaced by the statistics of the new form. It retains its alignment and personality. /nThe target assumes the hit points of its new form, and when it reverts to its normal form, the creature returns to the number of hit points it had before it transformed. If it reverts as a result of dropping to 0 hit points, any excess damage carries over to its normal form. As long as the excess damage doesn’t reduce the creature’s normal form to 0 hit points, it isn’t knocked unconscious. /nThe creature is limited in the actions it can perform by the nature of its new form, and it can’t speak, cast spells, or take any other action that requires hands or speech unless its new form is capable of such actions. /nThe target’s gear melds into the new form. The creature can’t activate, use, wield, or otherwise benefit from any of its equipment. /n/bObject into Creature./b You can turn an object into any kind of creature, as long as the creature’s size is no larger than the object’s size and the creature’s challenge rating is 9 or lower. The creature is friendly to you and your companions. It acts on each of your turns. You decide what action it takes and how it moves. The DM has the creature’s statistics and resolves all of its actions and movement. /nIf the spell becomes permanent, you no longer control the creature. It might remain friendly to you, depending on how you have treated it. /n/bCreature into Object./b If you turn a creature into an object, it transforms along with whatever it is wearing and carrying into that form. The creature’s statistics become those of the object, and the creature has no memory of time spent in this form, after the spell ends and it returns to its normal form.', #description
        '9', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Wisdom', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a drop of mercury, a dollop of gum arabic, and a wisp of smoke', #materialComponent
        'Concentration, up to 1 hour', #duration
        'a creature or nonmagical object', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Transmutation', #school
        '30' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('213', #id
        'True Resurrection', #name
        '1 hour', #castingTime
        'You touch a creature that has been dead for no longer than 200 years and that died for any reason except old age. If the creature’s soul is free and willing, the creature is restored to life with all its hit points. This spell closes all wounds, neutralizes any poison, cures all diseases, and lifts any curses affecting the creature when it died. The spell replaces damaged or missing organs and limbs. /nThe spell can even provide a new body if the original no longer exists, in which case you must speak the creature’s name. The creature then appears in an unoccupied space you choose within 10 feet of you.', #description
        '9', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a sprinkle of holy water and diamonds worth at least 25,000 gp, which the spell consumes', #materialComponent
        'Instantaneous', #duration
        'a creature that has been dead for no longer than 200 years and that died for any reason except old age', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Necromancy', #school
        '5' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('214', #id
        'True Seeing', #name
        '1 action', #castingTime
        'This spell gives the willing creature you touch the ability to see things as they actually are. For the duration, the creature has truesight, notices secret doors hidden by magic, and can see into the Ethereal Plane, all out to a range of 120 feet.', #description
        '6', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'an ointment for the eyes that costs 25 gp; is made from mushroom powder, saffron, and fat; and is consumed by the spell', #materialComponent
        '1 hour', #duration
        'a willing creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Divination', #school
        '5' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('215', #id
        'True Strike', #name
        '1 action', #castingTime
        'You extend your hand and point a finger at a target in range. Your magic grants you a brief insight into the target’s defenses. On your next turn, you gain advantage on your first attack roll against the target, provided that this spell hasn’t ended.', #description
        '0', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '0', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        'Concentration, up to 1 round', #duration
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Divination', #school
        '30' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('216', #id
        'Tsunami', #name
        '1 minute', #castingTime
        'A wall of water springs into existence at a point you choose within range. You can make the wall up to 300 feet long, 300 feet high, and 50 feet thick. The wall lasts for the duration. /nWhen the wall appears, each creature within its area must make a Strength saving throw. On a failed save, a creature takes 6d10 bludgeoning damage, or half as much damage on a successful save. /nAt the start of each of your turns after the wall appears, the wall, along with any creatures in it, moves 50 feet away from you. Any Huge or smaller creature inside the wall or whose space the wall enters when it moves must succeed on a Strength saving throw or take 5d10 bludgeoning damage. A creature can take this damage only once per round. At the end of the turn, the wall’s height is reduced by 50 feet, and the damage creatures take from the spell on subsequent rounds is reduced by 1d10. When the wall reaches 0 feet in height, the spell ends. /nA creature caught in the wall can move by swimming. Because of the force of the wave, though, the creature must make a successful Strength (Athletics) check against your spell save DC in order to move at all. If it fails the check, it can’t move. A creature that moves out of the area falls to the ground.', #description
        '8', #level
        '6', #damageDiceAmount
        '4', #damageDice ID
        '2', #damageType ID
        null, #damageBonus
        'Strength', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        'Concentration, up to 6 rounds', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Conjuration', #school
        'Sight' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('217', #id
        'Unseen Servant', #name
        '1 action', #castingTime
        'This spell creates an invisible, mindless, shapeless force that performs simple tasks at your command until the spell ends. The servant springs into existence in an unoccupied space on the ground within range. It has AC 10, 1 hit point, and a Strength of 2, and it can’t attack. If it drops to 0 hit points, the spell ends. /nOnce on each of your turns as a bonus action, you can mentally command the servant to move up to 15 feet and interact with an object. The servant can perform simple tasks that a human servant could do, such as fetching things, cleaning, mending, folding clothes, lighting fires, serving food, and pouring wine. Once you give the command, the servant performs the task to the best of its ability until it completes the task, then waits for your next command. /nIf you command the servant to perform a task that would move it more than 60 feet away from you, the spell ends.', #description
        '1', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a piece of string and a bit of wood', #materialComponent
        '1 hour', #duration
        '', #target
        '0', #requiresAttackRoll
        '1', #ritual
        '0', #concentration
        'Conjuration', #school
        '60' #range in feet
);
