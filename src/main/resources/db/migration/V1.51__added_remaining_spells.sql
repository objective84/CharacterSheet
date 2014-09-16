INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('270', #id
        'Lightning Arrow', #name
        '1 bonus action', #castingTime
        'The next time you make a ranged weapon attack during the spell’s duration, the weapon’s ammunition, or the weapon itself if it’s a thrown weapon, transforms into a bolt  lightning. Make the attack roll as normal. The target takes 4d8 lightning damage on a hit, or half as much damage on a miss, instead  the weapon’s normal damage. /nWhether you hit or miss, each creature within 10 feet the target must make a Dexterity saving throw. Each these creatures takes 2d8 lightning damage on a failed save, or half as much damage on a successful one. /nThe piece  ammunition or weapon then returns to its normal form. /n/bAt Higher Levels./b When you cast this spell using a spell slot  4th level or higher, the damage for both effects  the spell increases by 1d8 for each slot level above 3rd.', #description
        '3', #level
        '4', #damageDiceAmount
        '3', #damageDice ID
        '6', #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        'Concentration, up to 1 minute', #duration
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Transmutation', #school
        'Self' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('271', #id
        'Lightning Bolt', #name
        '1 action', #castingTime
        'A stroke of lightning forming a line 100 feet long and 5 feet wide blasts out from you in a direction you choose. Each creature in the line must make a Dexterity saving throw. A creature takes 8d6 lightning damage on a failed save, or half as much damage on a successful one. The lightning ignites flammable objects in the area that aren’t being w orn or carried. /n/bA t Higher Levels./b When you cast this spell using a spell slot  4th level or higher, the damage increases by 1d6 for each slot level above 3rd.', #description
        '3', #level
        '8', #damageDiceAmount
        '2', #damageDice ID
        '6', #damageType ID
        null, #damageBonus
        'Dexterity', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a bit  fur and a rod  amber, crystal, or glass', #materialComponent
        'Instantaneous', #duration
        'all creatures in a line 100-ft long, 5-ft wide', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Evocation', #school
        'Self' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('360', #id
        'Locate Creature', #name
        '1 action', #castingTime
        'Describe or name a creature that is familiar to you. You sense the direction to the creature’s location, as long as that creature is within 1,000 feet of you. If the creature is moving, you know the direction of its movement. /nThe spell can locate a specific creature known to you, or the nearest creature of a specific kind (such as a human or a unicorn), so long as you have seen such a creature up close—within 30 feet—at least once. If the creature you described or named is in a different form, such as being under the effects of a polymorph spell, this spell doesn’t locate the creature. /nThis spell can’t locate a creature if running water at least 10 feet w ide blocks a direct path between you and the creature.', #description
        '4', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a bit of fur from a bloodhound', #materialComponent
        'Concentration, up to 1 hour', #duration
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Divination', #school
        'Self' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('272', #id
        'Magic Circle', #name
        '1 minute', #castingTime
        'You create a 10-foot-radius, 20-foot-tall cylinder of magical energy centered on a point on the ground that you can see within range. Glowing runes appear wherever the cylinder intersects with the floor or other surface. /nChoose one or more of the following types of creatures: celestials, elementals, fey, fiends, or undead. The circle affects a creature of the chosen type in the following ways: /bullets• The creature can’t willingly enter the cylinder by nonmagical means. If the creature tries to use teleportation or interplanar travel to do so, it must first succeed on a Charisma saving throw. /bt• The creature has disadvantage on attack rolls against targets within the cylinder. /bt• Targets within the cylinder can’t be charmed, frightened, or possessed by the creature. When you cast this spell, you can elect to cause its magic to operate in the reverse direction, preventing a creature of the specified type from leaving the cylinder and protecting targets outside it. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 4th level or higher, the duration increases by 1 hour for each slot level above 3rd.', #description
        '3', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Charisma', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'holy water or powdered silver and iron worth at least 100 gp, which the spell consumes', #materialComponent
        '1 hour', #duration
        'all creatures of the chosen type', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Abjuration', #school
        '10' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('273', #id
        'Magic Jar', #name
        '1 minute', #castingTime
        'Your body falls into a catatonic state as your soul leaves it and enters the container you used for the spell’s material component. While your soul inhabits the container, you are aware of your surroundings as if you were in the container’s space. You can’t move or use reactions. The only action you can take is to project your soul up to 100 feet out of the container, either returning to your living body (and ending the spell) or attempting to possess a humanoids body. /nYou can attempt to possess any humanoid within 100 feet of you that you can see (creatures warded by a protection from evil and good or magic circle spell can’t be possessed). The target must make a Charisma saving throw. On a failure, your soul moves into the target’s body, and the target’s soul becomes trapped in the container. On a success, the target resists your efforts to possess it, and you can’t attempt to possess it again for 24 hours. /nOnce you possess a creature’s body, you control it. Your game statistics are replaced by the statistics of the creature, though you retain your alignment and your Intelligence, Wisdom, and Charisma scores. You retain the benefit of your own class features. If the target has any class levels, you can’t use any of its class features. /nMeanwhile, the possessed creature’s soul can perceive from the container using its own senses, but it can’t move or take actions at all. /nWhile possessing a body, you can use your action to return from the host body to the container if it is within 100 feet of you, returning the host creature’s soul to its body. If the host body dies while you’re in it, the creature dies, and you must make a Charisma saving throw against your own spellcasting DC. On a success, you return to the container if it is within 100 feet of you. Otherwise, you die. /nIf the container is destroyed or the spell ends, your soul immediately returns to your body. If your body is more than 100 feet away from you or if your body is dead when you attempt to return to it, you die. If another creature’s soul is in the container when it is destroyed, the creature’s soul returns to its body if the body is alive and within 100 feet. Otherwise, that creature dies. When the spell ends, the container is destroyed.', #description
        '6', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Charisma', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a gem, crystal, reliquary, or some other ornamental container worth at least 500 gp', #materialComponent
        'Until Dispelled', #duration
        'a humanoid creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Necromancy', #school
        'Self' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('274', #id
        'Major Image', #name
        '1 action', #castingTime
        'You create the image of an object, a creature, or some other visible phenomenon that is no larger than a 20-foot cube. The image appears at a spot that you can see within range and lasts for the duration. It seems completely real, including sounds, smells, and temperature appropriate to the thing depicted. You can’t create sufficient heat or cold to cause damage, a sound loud enough to deal thunder damage or deafen a creature, or a smell that might sicken a creature (like a troglodyte’s stench). /nAs long as you are within range of the illusion, you can use your action to cause the image to move to any other spot within range. As the image changes location, you can alter its appearance so that its movements appear natural for the image. For example, if you create an image of a creature and move it, you can alter the image so that it appears to be walking. Similarly, you can cause the illusion to make different sounds at different times, even making it carry on a conversation, for example. /nPhysical interaction with the image reveals it to be an illusion, because things can pass through it. A creature that uses its action to examine the image can determine that it is an illusion with a successful Intelligence (Investigation) check against your spell save DC. If a creature discerns the illusion for what it is, the creature can see through the image, and its other sensory qualities become faint to the creature. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 6th level or higher, the spell lasts until dispelled, without requiring your concentration.', #description
        '3', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a bit of fleece', #materialComponent
        'Concentration, up to 10 minutes', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Illusion', #school
        '120' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('275', #id
        'Mass Cure Wounds', #name
        '1 action', #castingTime
        'A wave of healing energy washes out from a point of your choice within range. Choose up to six creatures in a 30-foot-radius sphere centered on that point. Each target regains hit points equal to 3d8 + your spellcasting ability modifier. This spell has no effect on undead or constructs. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 6th level or higher, the healing increases by 1d8 for each slot level above 5th.', #description
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
        'Instantaneous', #duration
        'up to six creatures', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Conjuration', #school
        '60' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('276', #id
        'Mass Heal', #name
        '1 action', #castingTime
        'A flood of healing energy flows from you into injured creatures around you. You restore up to 700 hit points, divided as you choose among any number of creatures that you can see within range. Creatures healed by this spell are also cured of all diseases and any effect making them blinded or deafened. This spell has no effect on undead or constructs.', #description
        '9', #level
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
        'any creatures', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Conjuration', #school
        '60' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('277', #id
        'Mass Healing Word', #name
        '1 bonus action', #castingTime
        'As you call out words of restoration, up to six creatures of your choice that you can see within range regain hit points equal to 1d4 + your spellcasting ability modifier. This spell has no effect on undead or constructs. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 4th level or higher, the healing increases by 1d4 for each slot level above 3rd.', #description
        '3', #level
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
        'up to six creatures', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Evocation', #school
        '60' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('278', #id
        'Mass Suggestion', #name
        '1 action', #castingTime
        'You suggest a course of activity (limited to a sentence or two) and magically influence up to twelve creatures of your choice that you can see within range and that can hear and understand you. Creatures that can’t be charmed are immune to this effect. The suggestion must be worded in such a manner as to make the course of action sound reasonable. Asking the creature to stab itself, throw itself onto a spear, immolate itself, or do some other obviously harmful act automatically negates the effect of the spell. /nEach target must make a Wisdom saving throw. On a failed save, it pursues the course of action you described to the best of its ability. The suggested course of action can continue for the entire duration. If the suggested activity can be completed in a shorter time, the spell ends w hen the subject finishes what it w as asked to do. /nYou can also specify conditions that w ill trigger a special activity during the duration. For example, you might suggest that a group of soldiers give all their money to the first beggar they meet. If the condition isn’t met before the spell ends, the activity isn’t performed. /nIf you or any of your companions damage a creature affected by this spell, the spell ends for that creature. /n/bAt Higher Levels./b When you cast this spell using a 7th-level spell slot, the duration is 10 days. When you use an 8th-level spell slot, the duration is 30 days. When you use a 9th-level spell slot, the duration is a year and a day.', #description
        '6', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Wisdom', #savingThrow
        'charmed', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a snake’s tongue and either a bit of honeycomb or a drop of sweet oil', #materialComponent
        '24 hours', #duration
        'up to twelve creatures', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Enchantment', #school
        '60' #range in feet
);

INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('301', #id
        'Maze', #name
        '1 action', #castingTime
        'You banish a creature that you can see within range into a labyrinthine demiplane. The target remains there for the duration or until it escapes the maze. /nThe target can use its action to attempt to escape. When it does so, it makes a DC 20 Intelligence check. If it succeeds, it escapes, and the spell ends (a minotaur or goristro demon automatically succeeds). /nWhen the spell ends, the target reappears in the space it left or, if that space is occupied, in the nearest unoccupied space.', #description
        '8', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Intelligence', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        'Concentration, up to 10 minutes', #duration
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Conjuration', #school
        '60' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('302', #id
        'Meld into Stone', #name
        '1 action', #castingTime
        'You step into a stone object or surface large enough tofully contain your body, melding yourself and all the equipment you carry with the stone for the duration. Using your movement, you step into the stone at a point you can touch. Nothing of your presence remains visible or otherwise detectable by nonmagical senses. /nWhile merged with the stone, you can’t see what occurs outside it, and any Wisdom (Perception) checks you make to hear sounds outside it are made with disadvantage. You remain aware of the passage of time and can cast spells on yourself while merged in the stone. You can use your movement to leave the stone where you entered it, which ends the spell. You otherwise can’t move. /nMinor physical damage to the stone doesn’t harm you, but its partial destruction or a change in its shape (to the extent that you no longer fit w ithin it) expels you and deals 6d6 bludgeoning damage to you. The stone’s complete destruction (or transmutation into a different substance) expels you and deals 50 bludgeoning damage to you. If expelled, you fall prone in an unoccupied space closest to where you first entered.', #description
        '3', #level
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
        '1', #ritual
        '0', #concentration
        'Transmutation', #school
        'Touch' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('303', #id
        'Meteor Swarm', #name
        '1 action', #castingTime
        'Blazing orbs of fire plummet to the ground at four different points you can see within range. Each creature in a 40-foot-radius sphere centered on each point you choose must make a Dexterity saving throw. The sphere spreads around corners. A creature takes 20d6 fire damage and 20d6 bludgeoning damage on a failed save, or half as much damage on a successful one. A creature in the area of more than one fiery burst is affected only once. /nThe spell damages objects in the area and ignites flammable objects that aren’t being worn or carried.', #description
        '9', #level
        '20', #damageDiceAmount
        '2', #damageDice ID
        '4', #damageType ID
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
        'Evocation', #school
        '1 mile' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('304', #id
        'Mind Blank', #name
        '1 action', #castingTime
        'Until the spell ends, one willing creature you touch is immune to psychic damage, any effect that would sense its emotions or read its thoughts, divination spells, and the charmed condition. The spell even foils wish spells and spells or effects of similar power used to affect the target’s mind or to gain information about the target.', #description
        '8', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        '24 hours', #duration
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Abjuration', #school
        'Touch' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('305', #id
        'Mirage Arcane', #name
        '10 minutes', #castingTime
        'You make terrain in an area up to 1 mile square look, sound, smell, and even feel like some other sort of terrain. The terrain’s general shape remains the same, however. Open fields or a road could be made to resemble a swamp, hill, crevasse, or some other difficult or impassable terrain. A pond can be made to seem like a grassy meadow, a precipice like a gentle slope, or a rock-strewn gully like a wide and smooth road. /nSimilarly, you can alter the appearance of structures, or add them where none are present. The spell doesn’t disguise, conceal, or add creatures. /nThe illusion includes audible, visual, tactile, and olfactory elements, so it can turn clear ground into difficult terrain (or vice versa) or otherwise impede movement through the area. Any p iece of the illusory terrain (such as a rock or stick) that is removed from the spell’s area disappears immediately. /nCreatures with truesight can see through the illusion to the terrain’s true form; however, all other elements of the illusion remain, so while the creature is aware of the illusion’s presence, the creature can still physically interact with the illusion.', #description
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
        '10 days', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Illusion', #school
        'Sight' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('307', #id
        'Mislead', #name
        '1 action', #castingTime
        'You become invisible at the same time that an illusory double of you appears where you are standing. The double lasts for the duration, but the invisibility ends if you attack or cast a spell. /nYou can use your action to move your illusory double up to twice your speed and make it gesture, speak, and behave in whatever way you choose. /nYou can see through its eyes and hear through its ears as if you w ere located where it is. On each of your turns as a bonus action, you can switch from using its senses to using your own, or back again. While you are using its senses, you are blinded and deafened in regard to your own surroundings.', #description
        '5', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '0', #requiresSomaticComponent
        '', #materialComponent
        'Concentration, up to 1 hour', #duration
        'Self', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Illusion', #school
        'Self' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('308', #id
        'Modify Memory', #name
        '', #castingTime
        'You attempt to reshape another creature’s memories. One creature that you can see must make a W isdom saving throw. If you are fighting the creature, it has advantage on the saving throw. On a failed save, the target becomes charmed by you for the duration. The charmed target is incapacitated and unaware of its surroundings, though it can still hear you. If it takes any damage or is targeted by another spell, this spell ends, and none of the target’s m emories are modified. /nWhile this charm lasts, you can affect the target’s memory of an event that it experienced within the last 24 hours and that lasted no more than 10 minutes. You can permanently eliminate all memory of the event, allow the target to recall the event with perfect clarity and exacting detail, change its memory of the details of the event, or create a memory of some other event. /nYou must speak to the target to describe how its memories are affected, and it must be able to understand your language for the modified memories to take root. Its mind fills in any gaps in the details of your description. If the spell ends before you have finished describing the modified memories, the creature’s memory isn’t altered. Otherwise, the modified memories take hold when the spell ends. /nA modified memory doesn’t necessarily affect how a creature behaves, particularly if the memory contradicts the creature’s natural inclinations, alignment, or beliefs. An illogical modified memory, such as implanting a memory of how much the creature enjoyed dousing itself in acid, is dismissed, perhaps as a bad dream. The DM might deem a modified memory too nonsensical to affect a creature in a significant manner. /bA <span class="text-italic">remove curse</span> or <span class="text-italic">greater restoration</span>, spell cast on the target restores the creature’s true memory. /n/bAt Higher Levels./b If you cast this spell using a spell slot of 6th level or higher, you can alter the target’s memories of an event that took place up to 7 days ago (6th level), 30 days ago (7th level), 1 year ago (8th level), or any time in the creature’s past (9th level).', #description
        '5', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Wisdom', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        'Concentration, up to 1 minute', #duration
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Enchantment', #school
        '30' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('309', #id
        'Mordenkainen''s Faithful Hound', #name
        '4', #castingTime
        'You conjure a phantom watchdog in an unoccupied space that you can see within range, where it remains for the duration, until you dismiss it as an action, or until you move more than 100 feet away from it. /nThe hound is invisible to all creatures except you and can''t be harmed. When a Small or larger creature comes within 30 feet of it without first speaking the password that you specify when you cast this spell, the hound starts barking loudly. The hound sees invisible creatures and can see into the Ethereal Plane. It ignores illusions. /nAt the start of each of your turns, the hound attempts to bite one creature within 5 feet of it that is hostile to you. The hound’s attack bonus is equal to your spellcasting ability modifier + your proficiency bonus. On a hit, it deals 4d8 piercing damage.', #description
        '4', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '0', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a tiny silver whistle, a piece of bone, and a thread', #materialComponent
        '8 hours', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Conjuration', #school
        '30' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('310', #id
        'Mordenkainen''s Magnificent Mansion', #name
        '1 minute', #castingTime
        'You conjure an extradimensional dwelling in range that lasts for the duration. You choose where its one entrance is located. The entrance shimmers faintly and is 5 feet w ide and 10 feet tall. You and any creature you designate when you cast the spell can enter the extradimensional dwelling as long as the portal remains open. You can open or close the portal if you are within 30 feet of it. While closed, the portal is invisible. /nBeyond the portal is a magnificent foyer with numerous chambers beyond. The atmosphere is clean, fresh, and warm. /nYou can create any floor plan you like, but the space can’t exceed 50 cubes, each cube being 10 feet on each side. The place is furnished and decorated as you choose. It contains sufficient food to serve a ninecourse banquet for up to 100 people. A staff of 100 near-transparent servants attends all who enter. You decide the visual appearance of these servants and their attire. They are completely obedient to your orders. Each servant can perform any task a normal human servant could perform, but they can’t attack or take any action that would directly harm another creature. Thus the servants can fetch things, clean, mend, fold clothes, light fires, serve food, pour wine, and so on. The servants can go anywhere in the mansion but can’t leave it. Furnishings and other objects created by this spell dissipate into smoke if removed from the mansion. When the spell ends, any creatures inside the extradimensional space are expelled into the open spaces nearest to the entrance.', #description
        '7', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a miniature portal carved from ivory, a small piece of polished marble, and a tiny silver spoon, each item worth at least 5 gp)', #materialComponent
        '24 hours', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Conjuration', #school
        '300' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('311', #id
        'Mordenkainen''s Private Sanctum', #name
        '10 minutes', #castingTime
        'You make an area within range magically secure. The area is a cube that can be as small as 5 feet to as large as 100 feet on each side. The spell lasts for the duration or until you use an action to dismiss it. /nWhen you cast the spell, you decide what sort of security the spell provides, choosing any or all of the following properties: /bullets• Sound can''t pass through the barrier at the edge of the warded area. /bt• The barrier of the warded area appears dark and foggy, preventing vision (including darkvision) through it. /bt• Sensors created by divination spells can’t appear inside the protected area or pass through the barrier at its perimeter. /bt• Creatures in the area can’t be targeted by divination spells. /bt• Nothing can teleport into or out of the warded area. /bt• Planar travel is blocked within the warded area./bullets Casting this spell on the same spot every day for a year makes this effect permanent. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 5th level or higher, you can increase the size of the cube by 100 feet for each slot level beyond 4th. Thus you could protect a cube that can be up to 200 feet on one side by using a spell slot of 5th level.', #description
        '10', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'thin sheet of lead, a piece of opaque glass, a wad of cotton or cloth, and powdered chrysolite', #materialComponent
        '24 hours', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Abjuration', #school
        '120' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('312', #id
        'Mordenkainen''s Sword', #name
        '1 action', #castingTime
        'You create a sword-shaped plane of force that hovers within range. It lasts for the duration. /nWhen the sword appears, you make a melee spell attack against a target of your choice within 5 feet of the sword. On a hit. the target takes 3d10 force damage. decide the visual appearance of these servants and their attire. They are completely obedient to your orders. Each servant can perform any task a normal human servant could perform, but they can’t attack or take any action that would directly harm another creature. Thus the servants can fetch things, clean, mend, fold clothes, light fires, serve food, pour wine, and so on. The servants can go anywhere in the mansion but can’t leave it. Furnishings and other objects created by this spell dissipate into smoke if removed from the mansion. When the spell ends, any creatures inside the extradimensional space are expelled into the open spaces nearest to the entrance. /nUntil the spell ends, you can use a bonus action on each of your turns to move the sword up to 20 feet to a spot you can see and repeat this attack against the same target or a different one.', #description
        '7', #level
        '3', #damageDiceAmount
        '4', #damageDice ID
        '5', #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a miniature platinum sword with a grip and pommel of copper and zinc, worth 250 gp', #materialComponent
        'Concentration, up to 1 minute', #duration
        '', #target
        '1', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Evocation', #school
        '60' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('313', #id
        'Move Earth', #name
        '1 action', #castingTime
        'Choose an area of terrain no larger than 40 feet on a side within range. You can reshape dirt, sand, or clay in the area in any manner you choose for the duration. You can raise or lower the area’s elevation, create or fill in a trench, erect or flatten a wall, or form a pillar. The extent of any such changes can’t exceed half the area’s largest dimension. So, if you affect a 40-foot square, you can create a pillar up to 20 feet high, raise or lower the square’s elevation by up to 20 feet, dig a trench up to 20 feet deep, and so on. It takes 10 minutes for these changes to complete. /nAt the end of every 10 minutes you spend concentrating on the spell, you can choose a new area of terrain to affect. /nBecause the terrain’s transformation occurs slowly, creatures in the area can’t usually be trapped or injured by the ground’s movement. /nThis spell can’t manipulate natural stone or stone construction. Rocks and structures shift to accommodate the new terrain. If the way you shape the terrain would make a structure unstable, it might collapse. /nSimilarly, this spell doesn’t directly affect plant growth. The moved earth carries any plants along with it.', #description
        '6', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '(an iron blade and a small bag containing a mixture of soils—clay, loam, and sand', #materialComponent
        'Concentration, up to 2 hours', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Transmutation', #school
        '120' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('314', #id
        'Nondetection', #name
        '1 action', #castingTime
        'For the duration, you hide a target that you touch from divination magic. The target can be a willing creature or a place or an object no larger than 10 feet in any dimension. The target can’t be targeted by any divination magic or perceived through magical scrying sensors.', #description
        '3', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a pinch of diamond dust worth 25 gp sprinkled over the target, which the spell consumes', #materialComponent
        '8 hours', #duration
        'a willing creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Abjuration', #school
        'Touch' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('315', #id
        'Otiluke''s Freezing Sphere', #name
        '6', #castingTime
        'A frigid globe of cold energy streaks from your fingertips to a point of your choice within range, where it explodes in a 60-foot-radius sphere. Each creature within the area must make a Constitution saving throw. On a failed save, a creature takes 10d6 cold damage. On a successful save, it takes half as much damage. /nIf the globe strikes a body of water or a liquid that is principally water (not including water-based creatures), it freezes the liquid to a depth of 6 inches over an area 30 feet square. This ice lasts for 1 minute. Creatures that w ere swimming on the surface of frozen water are trapped in the ice. A trapped creature can use an action to make a Strength check against your spell save DC to break free. /nYou can refrain from firing the globe after completing the spell, if you wish. A small globe about the size of a sling stone, cool to the touch, appears in your hand. At any time, you or a creature you give the globe to can throw the globe (to a range of 40 feet) or hurl it with a sling (to the sling’s normal range). It shatters on impact, with the same effect as the normal casting of the spell. You can also set the globe down without shattering it. After 1 minute, if the globe hasn’t already shattered, it explodes. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 7th level or higher, the damage increases by 1d6 for each slot level above 6th.', #description
        '6', #level
        '10', #damageDiceAmount
        '2', #damageDice ID
        '3', #damageType ID
        null, #damageBonus
        'Constitution', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a small crystal sphere', #materialComponent
        'Instantaneous', #duration
        'a creatures within a 60-ft radius', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Evocation', #school
        '300' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('316', #id
        'Otiluke''s Resilient Sphere', #name
        '4', #castingTime
        'A sphere of shimmering force encloses a creature or object of Large size or smaller within range. An unwilling creature must make a Dexterity saving throw. On a failed save, the creature is enclosed for the duration. /nNothing—not physical objects, energy, or other spell effects—can pass through the barrier, in or out, though a creature in the sphere can breathe there. The sphere is immune to all damage, and a creature or object inside can’t be damaged by attacks or effects originating from outside, nor can a creature inside the sphere damage anything outside it. /nThe sphere is weightless and just large enough to contain the creature or object inside. An enclosed creature can use its action to push against the sphere’s walls and thus roll the sphere at up to half the creature’s speed. Similarly, the globe can be picked up and moved by other creatures. /nA disintegrate spell targeting the globe destroys it without harming anything inside it.', #description
        '4', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Dexterity', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a hemispherical piece of clear crystal and a matching hemispherical piece of gum arabic', #materialComponent
        'Concentration, up to 1 minute', #duration
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Evocation', #school
        '30' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('317', #id
        'Otto''s Irresistible Dance', #name
        '6', #castingTime
        'Choose one creature that you can see within range. The target begins a comic dance in place: shuffling, tapping its feet, and capering for the duration. Creatures that can’t be charmed are immune to this spell. /nA dancing creature must use all its movement to dance without leaving its space and has disadvantage on Dexterity saving throws and attack rolls. While the target is affected by this spell, other creatures have advantage on attack rolls against it. As an action, a dancing creature makes a W isdom saving throw to regain control of itself. On a successful save, the spell ends.', #description
        '6', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '0', #requiresSomaticComponent
        '', #materialComponent
        'Concentration, up to 1 minute', #duration
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Enchantment', #school
        '30' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('318', #id
        'Passwall', #name
        '1 action', #castingTime
        'A passage appears at a point of your choice that you can see on a wooden, plaster, or stone surface (such as a wall, a ceiling, or a floor) within range, and lasts for the duration. You choose the opening’s dimensions: up to 5 feet wide, 8 feet tall, and 20 feet deep. The passage creates no instability in a structure surrounding it. When the opening disappears, any creatures or objects still in the passage created by the spell are safely ejected to an unoccupied space nearest to the surface on which you cast the spell.', #description
        '5', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a pinch of sesame seeds', #materialComponent
        '1 hour', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Transmutation', #school
        '30' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('319', #id
        'Phantasmal Killer', #name
        '4', #castingTime
        'You tap into the nightmares of a creature you can see within range and create an illusory manifestation of its deepest fears, visible only to that creature. The target must make a Wisdom saving throw. On a failed save, the target becomes frightened for the duration. At the start of each of the target’s turns before the spell ends, the target must succeed on a Wisdom saving throw or take 4d10 psychic damage. On a successful save, the spell ends. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 5th level or higher, the damage increases by 1dlofor each slot level above 4th.', #description
        '4', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Wisdom', #savingThrow
        'frightened', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        'Concentration, up to 1 minute', #duration
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Illusion', #school
        '120' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('320', #id
        'Phantom Steed', #name
        '1 minute', #castingTime
        'A Large quasi-real, horselike creature appears on the ground in an unoccupied space of your choice within range. You decide the creature’s appearance, but it is equipped with a saddle, bit, and bridle. Any of the equipment created by the spell vanishes in a puff of smoke if it is carried more than 10 feet away from the steed. /nFor the duration, you or a creature you choose can ride the steed. The creature uses the statistics for a riding horse, except it has a speed of 100 feet and can travel 10 miles in an hour, or 13 miles at a fast pace. When the spell ends, the steed gradually fades, giving the rider 1 minute to dismount. The spell ends if you use an action to dismiss it or if the steed takes any damage.', #description
        '3', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        '1 hour', #duration
        '', #target
        '0', #requiresAttackRoll
        '1', #ritual
        '0', #concentration
        'Illusion', #school
        '30' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('321', #id
        'Planar Ally', #name
        '10 minutes', #castingTime
        'You beseech an otherworldly entity for aid. The being must be known to you: a god, a primordial, a demon prince, or some other being of cosmic power. That entity sends a celestial, an elemental, or a fiend loyal to it to aid you, making the creature appear in an unoccupied space within range. If you know a specific creature’s name, you can speak that name when you cast this spell to request that creature, though you might get a different creature anyway (DM’s choice). /nWhen the creature appears, it is under no compulsion to behave in any particular way. You can ask the creature to perform a service in exchange for payment, but it isn’t obliged to do so. The requested task could range from simple (fly us across the chasm, or help us fight a battle) to complex (spy on our enemies, or protect us during our foray into the dungeon). You must be able to communicate with the creature to bargain for its services. /nPayment can take a variety of forms. A celestial might require a sizable donation of gold or m agic items to an allied temple, while a fiend might demand a living sacrifice or a gift of treasure. Some creatures might exchange their service for a quest undertaken by you. /nAs a rule of thumb, a task that can be measured in minutes requires a payment worth 100 gp per minute. A task measured in hours requires 1,000 gp per hour. And a task m easured in days (up to 10 days) requires 10,000 gp per day. The DM can adjust these payments based on the circumstances under which you cast the spell. If the task is aligned with the creature’s ethos, the payment might be halved or even waived. Nonhazardous tasks typically require only half the suggested payment, while especially dangerous tasks might require a greater gift. Creatures rarely accept tasks that seem suicidal. /nAfter the creature completes the task, or when the agreed-upon duration of service expires, the creature returns to its home plane after reporting back to you, if appropriate to the task and if possible. If you are unable to agree on a price for the creature’s service, the creature immediately returns to its home plane. /nA creature enlisted to join your group counts as a member of it, receiving a full share of experience', #description
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
        'Instantaneous', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Conjuration', #school
        '60' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('322', #id
        'Planar Binding', #name
        '1 hour', #castingTime
        'With this spell, you attempt to bind a celestial, an elemental, a fey, or a fiend to your service. The creature must be within range for the entire casting of the spell. (Typically, the creature is first summoned into the center of an inverted magic circle in order to keep it trapped while this spell is cast.) At the completion of the casting, the target must make a Charisma saving throw. On a failed save, it is bound to serve you for the duration. If the creature w as summoned or created by another spell, that spell’s duration is extended to match the duration of this spell. /nA bound creature must follow your instructions to the best of its ability. You might command the creature to accompany you on an adventure, to guard a location, or to deliver a message. The creature obeys the letter of your instructions, but if the creature is hostile to you, it strives to twist your w ords to achieve its own objectives. If the creature carries out your instructions completely before the spell ends, it travels to you to report this fact if you are on the same plane of existence. If you are on a different plane of existence, it returns to the place where you bound it and remains there until the spell ends. /nAt Higher Levels. When you cast this spell using a spell slot of a higher level, the duration increases to 10 days with a 6th-level slot, to 30 days with a 7th-level slot, to 180 days with an 8th-level slot, and to a year and a day with a 9th-level spell slot.', #description
        '5', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Charisma', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a jewel worth at least 1,000 gp, which the spell consumes', #materialComponent
        '24 hours', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Abjuration', #school
        '60' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('323', #id
        'Plane Shift', #name
        '1 action', #castingTime
        'You and up to eight willing creatures who link hands in a circle are transported to a different plane of existence. You can specify a target destination in general terms, such as the City of Brass on the Elemental Plane of Fire or the palace of Dispater on the second level of the Nine Hells, and you appear in or near that destination. If you are trying to reach the City of Brass, for example, you might arrive in its Street of Steel, before its Gate of Ashes, or looking at the city from across the Sea of Fire, at the DM’s discretion. /nAlternatively, if you know the sigil sequence of a teleportation circle on another plane of existence, this spell can take you to that circle. If the teleportation circle is too small to hold all the creatures you transported, they appear in the closest unoccupied spaces next to the circle. /nYou can use this spell to banish an unwilling creature to another plane. Choose a creature within your reach and make a melee spell attack against it. On a hit, the creature must make a Charisma saving throw. If the creature fails this save, it is transported to a random location on the plane of existence you specify. A creature so transported must find its own way back to your current plane of existence.', #description
        '4', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Wisdom', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a caterpillar cocoon', #materialComponent
        'Concentration, up to 1 hour', #duration
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Transmutation', #school
        '60' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('306', #id
        'Plant Growth', #name
        '1 action', #castingTime
        'This spell channels vitality into plants within a specific area. There are two possible uses for the spell, granting either immediate or long-term benefits. /nIf you cast this spell using 1 action, choose a point within range. All normal plants in a 100-foot radius centered on that point become thick and overgrown. A creature moving through the area must spend 4 feet of movement for every 1 foot it moves. /nYou can exclude one or more areas of any size within the spell’s area from being affected. /nIf you cast this spell over 8 hours, you enrich the land. All plants in a half-mile radius centered on a point within range become enriched for 1 year. The plants yield twice the normal amount of food when harvested.', #description
        '3', #level
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
        'Transmutation', #school
        '150' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('324', #id
        'Power Word Heal', #name
        '1 action', #castingTime
        'A wave of healing energy washes over the creature you touch. The target regains all its hit points. If the creature is charmed, frightened, paralyzed, or stunned, the condition ends. If the creature is prone, it can use its reaction to stand up. This spell has no effect on undead or constructs.', #description
        '9', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '0', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        'Instantaneous', #duration
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Evocation', #school
        'Touch' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('325', #id
        'Power Word Kill', #name
        '1 action', #castingTime
        'You utter a word of power that can compel one creature you can see within range to die instantly. If the creature you choose has 100 hit points or fewer, it dies. Otherwise, the spell has no effect.', #description
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
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Enchantment', #school
        '60' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('326', #id
        'Power Word Stun', #name
        '1 action', #castingTime
        'You speak a word of power that can overwhelm the mind of one creature you can see within range, leaving it dumbfounded. If the target has 150 hit points or fewer, it is stunned. Otherwise, the spell has no effect. /nThe stunned target must make a Constitution saving throw at the end of each of its turns. On a successful save, this stunning effect ends.', #description
        '8', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Constitution', #savingThrow
        'stunned', #condition
        '1', #requiresVerbalComponent
        '0', #requiresSomaticComponent
        '', #materialComponent
        'Instantaneous', #duration
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Enchantment', #school
        '60' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('327', #id
        'Prismatic Spray', #name
        '1 action', #castingTime
        'Eight multicolored rays of light flash from your hand. Each ray is a different color and has a different power and purpose. Each creature in a 60-foot cone must make a Dexterity saving throw. For each target, roll a d8 to determine which color ray affects it. /n/b1. Red./b The target takes 10d6 fire damage on a failed save, or half as much damage on a successful one. /n/b2. Orange./b The target takes 10d6 acid damage on a failed save, or half as much damage on a successful one. /n/b3. Yellow./b The target takes 10d6 lightning damage on a failed save, or half as much damage on a successful one. /n/b4. Green./b The target takes 10d6 poison damage on a failed save, or half as much damage on a successful one. /n/b5. Blue./b The target takes 10d6 cold damage on a failed save, or half as much damage on a successful one. /n/b6. Indigo./b On a failed save, the target is restrained. It must then make a Constitution saving throw at the end of each of its turns. If it successfully saves three times, the spell ends. If it fails its save three times, it permanently turns to stone and is subjected to the petrified condition. The successes and failures don’t need to be consecutive; keep track of both until the target collects three of a kind. /n/b7. Violet./b On a failed save, the target is blinded. It must then make a W isdom saving throw at the start of your next turn. A successful save ends the blindness. If it fails that save, the creature is transported to another plane of existence of the DM’s choosing and is no longer blinded. (Typically, a creature that is on a plane that isn’t its home plane is banished home, while other creatures are usually cast into the Astral or Ethereal planes.) /n/b8. Special./b The target is struck by two rays. Roll twice more, rerolling any 8.', #description
        '8', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Dexterity', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        '', #duration
        'all creatures in a 60-ft cone', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Evocation', #school
        'Self' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('328', #id
        'Prismatic Wall', #name
        '1 action', #castingTime
        'A shimmering, multicolored plane of light forms a vertical opaque wall—up to 90 feet long, 30 feet high, and 1 inch thick—centered on a point you can see within range. Alternatively, you can shape the wall into a sphere up to 30 feet in diameter centered on a point you choose within range. The wall remains in place for the duration. If you position the wall so that it passes through a space occupied by a creature, the spell fails, and your action and the spell slot are wasted. /nThe wall sheds bright light out to a range of 100 feet and dim light for an additional 100 feet. You and creatures you designate at the time you cast the spell can pass through and remain near the wall without harm. If another creature that can see the wall moves to within 20 feet of it or starts its turn there, the creature must succeed on a Constitution saving throw or become blinded for 1 minute. /nThe wall consists of seven layers, each with a different color. When a creature attempts to reach into or pass through the wall, it does so one layer at a time through all the wall’s layers. As it passes or reaches through each layer, the creature must make a Dexterity saving throw or be affected by that layer’s properties as described below. /nThe wall can be destroyed, also one layer at a time, in order from red to violet, by means specific to each layer. Once a layer is destroyed, it remains sofor the duration of the spell. A rod of cancellation destroys a prismatic wall, but an antimagic field has no effect on it. /n/b1. Red./b The creature takes 10d6 fire damage on a failed save, or half as much damage on a successful one. While this layer is in place, nonmagical ranged attacks can’t pass through the wall. The layer can be destroyed by dealing at least 25 cold damage to it. /n/b2. Orange./b The creature takes 10d6 acid damage on a failed save, or half as much damage on a successful one. While this layer is in place, magical ranged attacks can’t pass through the wall. The layer is destroyed by a strong wind. /n/b3. Yellow./b The creature takes 10d6 lightning damage on a failed save, or half as much damage on a successful one. This layer can be destroyed by dealing at least 60 force damage to it. /n/b4. Green. The creature takes 10d6 poison damage on a failed save, or half as much damage on a successful one. A passwall spell, or another spell of equal or greater level that can open a portal on a solid surface, destroys this layer. /n/b5. Blue./b The creature takes 10d6 cold damage on a failed save, or half as much damage on a successful one. This layer can be destroyed by dealing at least 25 fire damage to it. /n/b6. Indigo./b On a failed save, the creature is restrained. It must then make a Constitution saving throw at the end of each of its turns. If it successfully saves three times, the spell ends. If it fails its save three times, it permanently turns to stone and is subjected to the petrified condition. The successes and failures don’t need to be consecutive; keep track of both until the creature collects three of a kind. /nWhile this layer is in place, spells can’t be cast through the wall. The layer is destroyed by bright light shed by a daylight spell or a similar spell of equal or higher level. /n/b7. Violet./b On a failed save, the creature is blinded. It must then make a W isdom saving throw at the start of your next turn. A successful save ends the blindness. If it fails that save, the creature is transported to another plane of the DM’s choosing and is no longer blinded. (Typically, a creature that is on a plane that isn’t its home plane is banished home, while other creatures are usually cast into the Astral or Ethereal planes.) This layer is destroyed by a dispel magic spell or a similar spell of equal or higher level that can end spells and magical effects.', #description
        '9', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Dexterity', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        '10 minutes', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Abjuration', #school
        '60' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('329', #id
        'Programmed Illusion', #name
        '1 action', #castingTime
        'You create an illusion of an object, a creature, or some other visible phenomenon within range that activates when a specific condition occurs. The illusion is imperceptible until then. It must be no larger than a 30-foot cube, and you decide when you cast the spell how the illusion behaves and what sounds it makes. This scripted performance can last up to 5 minutes. /nWhen the condition you specify occurs, the illusion springs into existence and performs in the manner you described. Once the illusion finishes performing, it disappears and remains dormant for 10 minutes. After this time, the illusion can be activated again. /nThe triggering condition can be as general or as detailed as you like, though it must be based on visual or audible conditions that occur within 30 feet of the area. For example, you could create an illusion of yourself to appear and warn off others who attempt to open a trapped door, or you could set the illusion to trigger only when a creature says the correct w ord or phrase. /nPhysical interaction with the image reveals it to be an illusion, because things can pass through it. A creature that uses its action to examine the image can determine that it is an illusion with a successful Intelligence (Investigation) check against your spell save DC. If a creature discerns the illusion for what it is, the creature can see through the image, and any noise it makes sounds hollow to the creature.', #description
        '6', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a bit of fleece and jade dust worth at least 25 gp', #materialComponent
        'Until dispelled', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Illusion', #school
        '120' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('330', #id
        'Project Image', #name
        '1 action', #castingTime
        'You create an illusory copy of yourself that lasts for the duration. The copy can appear at any location within range that you have seen before, regardless of intervening obstacles. The illusion looks and sounds like you but is intangible. If the illusion takes any damage, it disappears, and the spell ends. /nYou can use your action to move this illusion up to twice your speed, and make it gesture, speak, and behave in whatever way you choose. It mimics your mannerisms perfectly. /nYou can see through its eyes and hear through its ears as if you were in its space. On your turn as a bonus action, you can switch from using its senses to using your own, or back again. While you are using its senses, you are blinded and deafened in regard to your own surroundings. /nPhysical interaction with the image reveals it to be an illusion, because things can pass through it. A creature that uses its action to examine the image can determine that it is an illusion with a successful Intelligence (Investigation) check against your spell save DC. If a creature discerns the illusion for what it is, the creature can see through the image, and any noise it makes sounds hollow to the creature.', #description
        '7', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a small replica of you made from materials worth at least 5 gp', #materialComponent
        'Concentration, up to 1 day', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Illusion', #school
        '2640000' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('331', #id
        'Protection from Energy', #name
        '1 action', #castingTime
        'For the duration, the willing creature you touch has resistance to one damage type of your choice: acid, cold, fire, lightning, or thunder.', #description
        '3', #level
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
        'a willing creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Abjuration', #school
        'Touch' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('332', #id
        'Raise Dead', #name
        '5', #castingTime
        'You return a dead creature you touch to life, provided that it has been dead no longer than 10 days. If the creature’s soul is both willing and at liberty to rejoin the body, the creature returns to life with 1 hit point. /nThis spell also neutralizes any poisons and cures nonmagical diseases that affected the creature at the time it died. This spell doesn’t, however, remove magical diseases, curses, or similar effects; if these aren’t first removed prior to casting the spell, they take effect when the creature returns to life. The spell can’t return an undead creature to life. /nThis spell closes all mortal wounds, but it doesn’t restore missing body parts. If the creature is lacking body parts or organs integral for its survival—its head, for instance—the spell automatically fails. /nComing back from the dead is an ordeal. The target takes a - 4 penalty to all attack rolls, saving throws, and ability checks. Every time the target finishes a long rest, the penalty is reduced by 1 until it disappears.', #description
        '5', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a diamond worth at least 500 gp, which the spell consumes', #materialComponent
        'Instantaneous', #duration
        'a dead creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Necromancy', #school
        'Touch' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('333', #id
        'Rary''s Telepathic Bond', #name
        '1 action', #castingTime
        'You forge a telepathic link among up to eight willing creatures of your choice within range, psychically linking each creature to all the others for the duration. Creatures with Intelligence scores of 2 or less aren’t affected by this spell. Until the spell ends, the targets can communicate telepathically through the bond whether or not they have a common language. The communication is possible over any distance, though it can’t extend to other planes of existence.', #description
        '5', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'pieces of eggshell from two different kinds of creatures', #materialComponent
        '1 hour', #duration
        'up to eight willing creatures', #target
        '0', #requiresAttackRoll
        '1', #ritual
        '0', #concentration
        'Divination', #school
        '30' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('334', #id
        'Reincarnate', #name
        '1 hour', #castingTime
        'You touch a dead humanoid or a piece of a dead humanoid. Provided that the creature has been dead no longer than 10 days, the spell forms a new adult body for it and then calls the soul to enter that body. If the target’s soul isn’t free or willing to do so, the spell fails. /nThe magic fashions a new body for the creature to inhabit, which likely causes the creature’s race to change. The DM rolls a d 100 and consults the following table to determine what form the creature takes when restored to life, or the DM chooses a form. <table style="margin-left:10px;"><tr><th>d100</th><th>Race</th></tr> <tr><td>01-04</td><td style="padding-left: 24px;> Dragonborn</td></tr> <tr><td>05-13</td><td style="padding-left: 24px;> Dwarf, hill</td></tr> <tr><td>14-21</td><td style="padding-left: 24px;> Dwarf, mountain</td></tr> <tr><td>22-25</td><td style="padding-left: 24px;> Elf, dark</td></tr> <tr><td>26-34</td><td style="padding-left: 24px;> Elf, high</td></tr> <tr><td>35-42</td><td style="padding-left: 24px;> Elf, wood</td></tr> <tr><td>43-46</td><td style="padding-left: 24px;> Gnome, forest</td></tr> <tr><td>47-52</td><td style="padding-left: 24px;> Gnome, rock</td></tr> <tr><td>53-56</td><td style="padding-left: 24px;> Half-elfv <tr><td>57-60</td><td style="padding-left: 24px;> Half-orc</td></tr> <tr><td>61-68</td><td style="padding-left: 24px;> Halfling, lightfoot</td></tr> <tr><td>69-76</td><td style="padding-left: 24px;> Halfling, stout</td></tr> <tr><td>77-96</td><td style="padding-left: 24px;> Human</td></tr> <tr><td>97-00</td><td style="padding-left: 24px;> Tiefling</td></tr></table> The reincarnated creature recalls its former life and experiences. It retains the capabilities it had in its original form, except it exchanges its original race for the new one and changes its racial traits accordingly.', #description
        '5', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'rare oils and unguents worth at least 1,000 gp, which the spell consumes', #materialComponent
        'Instantaneous', #duration
        'a dead humanoid', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Transmutation', #school
        'Touch' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('335', #id
        'Regenerate', #name
        '1 minute', #castingTime
        'You touch a creature and stimulate its natural healing ability. The target regains 4d8 + 15 hit points. For the duration of the spell, the target regains 1 hit point at the start of each of its turns (10 hit points each minute). The target’s severed body members (fingers, legs, tails, and so on), if any, are restored after 2 minutes. If you have the severed part and hold it to the stump, the spell instantaneously causes the limb to knit to the stump.', #description
        '7', #level
        '4', #damageDiceAmount
        '3', #damageDice ID
        '14', #damageType ID
        '15', #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a prayer wheel and holy water', #materialComponent
        '1 hour', #duration
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Transmutation', #school
        'Touch' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('336', #id
        'Remove Curse', #name
        '1 action', #castingTime
        'At your touch, all curses affecting one creature or object end. If the object is a cursed magic item, its curse remains, but the spell breaks its owner’s attunement to the object so it can be removed or discarded.', #description
        '3', #level
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
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Abjuration', #school
        'Touch' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('337', #id
        'Resurrection', #name
        '1 hour', #castingTime
        'You touch a dead creature that has been dead for no more than a century, that didn’t die of old age, and that isn’t undead. If its soul is free and willing, the target returns to life with all its hit points. /nThis spell neutralizes any p oisons and cures normal diseases afflicting the creature when it died. It doesn’t, however, remove magical diseases, curses, and the like; if such effects aren''t removed prior to casting the spell, they afflict the target on its return to life. /nThis spell closes all mortal w ounds and restores any missing body parts. /nComing back from the dead is an ordeal. The target takes a - 4 penalty to all attack rolls, saving throws, and ability checks. Every time the target finishes a long rest, the penalty is reduced by 1 until it disappears. /nCasting this spell to restore life to a creature that has been dead for one year or longer taxes you greatly. Until you finish a long rest, you can’t cast spells again, and you have disadvantage on all attack rolls, ability checks, and saving throws.', #description
        '7', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a diamond worth at least 1,000', #materialComponent
        'Instantaneous', #duration
        'a dead creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Necromancy', #school
        'Touch' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('338', #id
        'Revivify', #name
        '1 action', #castingTime
        'You touch a creature that has died within the last minute. That creature returns to life with 1 hit point. This spell can’t return to life a creature that has died of old age, nor can it restore any missing body parts.', #description
        '3', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'diamonds worth 300 gp, which the spell consumes', #materialComponent
        'Instantaneous', #duration
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Conjuration', #school
        'Touch' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('339', #id
        'Reverse Gravity', #name
        '1 action', #castingTime
        'This spell reverses gravity in a 50-foot-radius, 100- foot high cylinder centered on a point within range. All creatures and objects that aren’t somehow anchored to the ground in the area fall upward and reach the top of the area when you cast this spell. A creature can make a Dexterity saving throw to grab onto a fixed object it can reach, thus avoiding the fall. /nIf some solid object (such as a ceiling) is encountered in this fall, falling objects and creatures strike it just as they would during a normal downward fall. If an object or creature reaches the top of the area without striking anything, it remains there, oscillating slightly, for the duration. /nAt the end of the duration, affected objects and creatures fall back down.', #description
        '7', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Dexterity', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a lodestone and iron filings', #materialComponent
        'Concentration, up to 1 minute', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Transmutation', #school
        '100' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('340', #id
        'Scrying', #name
        '10 minutes', #castingTime
        'You can see and hear a particular creature you choose that is on the same plane of existence as you. The target must make a Wisdom saving throw, which is modified by how well you know the target and the sort of physical connection you have to it. If a target knows you''re casting this spell, it can fail the saving throw voluntarily if it wants to be observed. <table><tr><th style="float:left">Knowledge</th> <th style="padding-left: 15px;">Save Modifier</th></tr> <tr><td>Secondhand (you have heard of the target)</td><td style="padding-left: 34px;">+5</td></tr> <tr><td>Firsthand (you have met the target)</td><td style="padding-left: 34px;">+0</td></tr> <tr><td>Familiar (you know the target well)</td><td style="padding-left: 36px;">-5</td></tr><table> <table><tr><th style="float:left">Connection</th><th>Save Modifier</th></tr> <tr><td>Likeness or picture</td><td style="padding-left:19px;">-2</td></tr> <tr><td>Possession or garment</td><td style="padding-left:19px;">-4</td></tr> <tr><td>Body part, lock of hair, bit of nail, or the like</td><td style="padding-left:18px;">-10</td></tr></table> /nOn a successful save, the target isn’t affected, and you can’t use this spell against it again for 24 hours. /nOn a failed save, the spell creates an invisible sensor within 10 feet of the target. You can see and hear through the sensor as if you w ere there. The sensor moves with the target, remaining within 10 feet of it for the duration. A creature that can see invisible objects sees the sensor as a luminous orb about the size of your fist. /nInstead of targeting a creature, you can choose a location you have seen before as the target of this spell. When you do, the sensor appears at that location and doesn’t move.', #description
        '5', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a focus worth at least 1,000 gp, such as a crystal ball, a silver mirror, or a font filled with holy water', #materialComponent
        'Concentration, up to 10 minutes', #duration
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Divination', #school
        'Self' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('341', #id
        'Sending', #name
        '1 action', #castingTime
        'You send a short message of twenty-five words or less to a creature with which you are familiar. The creature hears the message in its mind, recognizes you as the sender if it knows you, and can answer in a like manner immediately. The spell enables creatures with Intelligence scores of at least 1 to understand the meaning of your message. /nYou can send the message across any distance and even to other planes of existence, but if the target is on a different plane than you, there is a 5 percent chance that the message doesn’t arrive.', #description
        '3', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a short piece of fine copper wire', #materialComponent
        '1 round', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Evocation', #school
        'Unlimited' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('342', #id
        'Sequester', #name
        '1 action', #castingTime
        'By means of this spell, a willing creature or an object can be hidden away, safe from detection for the duration. When you cast the spell and touch the target, it becomes invisible and can’t be targeted by divination spells or perceived through scrying sensors created by divination spells. /nIf the target is a creature, it falls into a state of suspended animation. Time ceases toflow for it, and it doesn’t grow older. /nYou can set a condition for the spell to end early. The condition can be anything you choose, but it must occur or be visible within 1 mile of the target. Examples include “after 1,000 years” or “when the tarrasque awakens.” This spell also ends if the target takes any damage.', #description
        '7', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a powder composed of diamond, emerald, ruby, and sapphire dust worth at least 5,000 gp, which the spell consumes)', #materialComponent
        'Until dispelled', #duration
        'a willing creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Transmutation', #school
        'Touch' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('343', #id
        'Seeming', #name
        '1 action', #castingTime
        'This spell allows you to change the appearance of any number of creatures that you can see within range. You give each target you choose a new, illusory appearance. An unwilling target can make a Charisma saving throw, and if it succeeds, it is unaffected by this spell. /nThe spell disguises physical appearance as w ell as clothing, armor, weapons, and equipment. You can make each creature seem 1 foot shorter or taller and appear thin, fat, or in between. You can’t change a target’s body type, so you must choose a form that has the same basic arrangement of limbs. Otherwise, the extent of the illusion is up to you. The spell lasts for the duration, unless you use your action to dismiss it sooner. /nThe changes wrought by this spell fail to hold up to physical inspection. For example, if you use this spell to add a hat to a creature’s outfit, objects pass through the hat, and anyone who touches it would feel nothing or would feel the creature’s head and hair. If you use this spell to appear thinner than you are, the hand of someone w ho reaches out to touch you would bump into you while it was seemingly still in midair. /nA creature can use its action to inspect a target and make an Intelligence (Investigation) check against your spell save DC. If it succeeds, it becomes aware that the target is disguised.', #description
        '5', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Charisma', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        '8 hours', #duration
        'any number of creatures', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Illusion', #school
        '30' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('344', #id
        'Shapechange', #name
        '1 action', #castingTime
        'You assume the form of a different creature for the duration. The new form can be of any creature with a challenge rating equal to your level or lower. The creature can’t be a construct or an undead, and you must have seen the sort of creature at least once. You transform into an average example of that creature, one without any c lass levels or the Spellcasting trait. /nYour game statistics are replaced by the statistics of the chosen creature, though you retain your alignment and Intelligence, Wisdom, and Charisma scores. You also retain all of your skill and saving throw proficiencies, in addition to gaining those of the creature. If the creature has the same proficiency as you and the bonus listed in its statistics is higher than yours, use the creature’s bonus in place of yours. You can’t use any legendary actions or lair actions of the new form. /nYou assume the hit points and Hit Dice of the new form. When you revert to your normal form, you return to the number of hit points you had before you transformed. If you revert as a result of dropping to 0 hit points, any excess damage carries over to your normal form. As long as the excess damage doesn’t reduce your normal form to 0 hit points, you aren’t knocked unconscious. /nYou retain the benefit of any features from your class, race, or other source and can use them, provided that your new form is physically capable of doing so. You can’t use any special senses you have (for example, darkvision) unless your new form also has that sense. You can only speak if the creature can normally speak. /nWhen you transform, you choose whether your equipment falls to the ground, merges into the new form, or is worn by it. Worn equipment functions as normal. The DM determines whether it is practical for the new form to w ear a piece of equipment, based on the creature’s shape and size. Your equipment doesn’t change shape or size to match the new form, and any equipment that the new form can’t wear must either fall to the ground or merge into your new form. Equipment that merges has no effect in that state. /nDuring this spell’s duration, you can use your action to assume a different form following the same restrictions and rules for the original form, with one exception: if your new form has more hit points than your current one, your hit points remain at their current value.', #description
        '9', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a jade circlet worth at least 1,500 gp, which you must place on your head before you cast the spell)', #materialComponent
        'Concentration, up to 1 hour', #duration
        'Self', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Transmutation', #school
        'Self' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('345', #id
        'Simulacrum', #name
        '12 hours', #castingTime
        'You shape an illusory duplicate of one beast or humanoid that is within range for the entire casting time of the spell. The duplicate is a creature, partially real and formed from ice or snow, and it can take actions and otherwise be affected as a normal creature. It appears to be the same as the original, but it has half the creature’s hit point maximum and is formed without any equipment. Otherwise, the illusion uses all the statistics of the creature it duplicates. /nThe simulacrum is friendly to you and creatures you designate. It obeys your spoken commands, moving and acting in accordance with your wishes and acting on your turn in combat. The simulacrum lacks the ability to learn or become more powerful, so it never increases its level or other abilities, nor can it regain expended spell slots. /nIf the simulacrum is damaged, you can repair it in an alchemical laboratory, using rare herbs and minerals worth 100 gp per hit point it regains. The simulacrum lasts until it drops to 0 hit points, at which point it reverts to snow and melts instantly. /nIf you cast this spell again, any currently active duplicates you created with this spell are instantly destroyed.', #description
        '7', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'snow or ice in quantities sufficient to made a life-size copy of the duplicated creature; some hair, fingernail clippings, or other piece of that creature’s body placed inside the snow or ice; and powdered ruby worth 1,500 gp, sprinkled over the duplicate and consumed by the spell', #materialComponent
        '', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Illusion', #school
        'Touch' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('346', #id
        'Sleet Storm', #name
        '1 action', #castingTime
        'Until the spell ends, freezing rain and sleet fall in a 20-foot-tall cylinder with a 40-foot radius centered on a point you choose within range. The area is heavily obscured, and exposed flames in the area are doused. /nThe ground in the area is covered with slick ice, making it difficult terrain. When a creature enters the spell’s area for the first time on a turn or starts its turn there, it must make a Dexterity saving throw. On a failed save, it falls prone. /nIf a creature is concentrating in the spell’s area, the creature must make a successful Constitution saving throw against your spell save DC or lose concentration.', #description
        '3', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Dexterity', #savingThrow
        'prone', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a pinch of dust and a few drops of water', #materialComponent
        'Concentration, up to 1 minute', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Conjuration', #school
        '150' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('347', #id
        'Slow', #name
        '1 action', #castingTime
        'You alter time around up to six creatures of your choice in a 40-foot cube within range. Each target must succeed on a Wisdom saving throw or be affected by this spell for the duration. /nAn affected target’s speed is halved, it takes a -2 penalty to AC and Dexterity saving throws, and it can’t use reactions. On its turn, it can use either an action or a bonus action, not both. Regardless of the creature’s abilities or magic items, it can’t make more than one melee or ranged attack during its turn. /nIf the creature attempts to cast a spell with a casting time of 1 action, roll a d20. On an 11 or higher, the spell doesn’t take effect until the creature’s next turn, and the creature must use its action on that turn to complete the spell. If it can’t, the spell is wasted. /nA creature affected by this spell makes another Wisdom saving throw at the end of its turn. On a successful save, the effect ends for it.', #description
        '3', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Wisdom', #savingThrow
        'slow', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a drop of molasses', #materialComponent
        'Concentration, up to 1 minute', #duration
        'up to six creatures', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Transmutation', #school
        '120' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('348', #id
        'Speak with Plants', #name
        '1 action', #castingTime
        'You imbue plants within 30 feet of you with limited sentience and animation, giving them the ability to communicate with you and follow your simple commands. You can question plants about events in the spell’s area within the past day, gaining information about creatures that have passed, weather, and other circumstances. /nYou can also turn difficult terrain caused by plant growth (such as thickets and undergrowth) into ordinary terrain that lasts for the duration. Or you can turn ordinary terrain where plants are present into difficult terrain that lasts for the duration, causing v ines and branches to hinder pursuers, for example. /nPlants might be able to perform other tasks on your behalf, at the DM’s discretion. The spell doesn’t enable plants to uproot themselves and move about, but they can freely move branches, tendrils, and stalks. /nIf a plant creature is in the area, you can communicate with it as if you shared a common language, but you gain no magical ability to influence it. /nThis spell can cause the plants created by the entangle spell to release a restrained creature.', #description
        '3', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        '10 minutes', #duration
        'Self', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Transmutation', #school
        'Self' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('349', #id
        'Speak with Dead', #name
        '3', #castingTime
        'You grant the semblance of life and intelligence to a corpse of your choice within range, allowing it to answer the questions you pose. The corpse must still have a mouth and can’t be undead. The spell fails if the corpse was the target of this spell within the last 10 days. /nUntil the spell ends, you can ask the corpse up tofive questions. The corpse knows only what it knew in life, including the languages it knew. Answers are usually brief, cryptic, or repetitive, and the corpse is under no compulsion to offer a truthful answer if you are hostile to it or it recognizes you as an enemy. This spell doesn’t return the creature’s soul to its body, only its animating spirit. Thus, the corpse can’t learn new information, doesn’t comprehend anything that has happened since it died, and can’t speculate about future events.', #description
        '3', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'burning incense', #materialComponent
        '10 minutes', #duration
        'a corpse', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Necromancy', #school
        '10' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('350', #id
        'Spirit Guardians', #name
        '1 action', #castingTime
        'You call forth spirits to protect you. They flit around you to a distance of 15 feet for the duration. If you are good or neutral, their spectral form appears angelic or fey (your choice). If you are evil, they appear fiendish. /nWhen you cast this spell, you can designate any number of creatures you can see to be unaffected by it. An affected creature’s speed is halved in the area, and when the creature enters the area for the first time on a turn or starts its turn there, it must make a Wisdom saving throw. On a failed save, the creature takes 3d8 radiant damage (if you are good or neutral) or 3d8 necrotic damage (if you are evil). On a successful save, the creature takes half as much damage. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 4th level or higher, the damage increases by 1d8 for each slot level above 3rd.', #description
        '3', #level
        '3', #damageDiceAmount
        '3', #damageDice ID
        '11', #damageType ID
        null, #damageBonus
        'Wisdom', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a holy symbol', #materialComponent
        'Concentration, up to 10 minutes', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Conjuration', #school
        'Self' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('351', #id
        'Stinking Cloud', #name
        '1 action', #castingTime
        'You create a 20-foot-radius sphere of yellow, nauseating gas centered on a point within range. The cloud spreads around corners, and its area is heavily obscured. The cloud lingers in the air for the duration. /nEach creature that is completely within the cloud at the start of its turn must make a Constitution saving throw against poison. On a failed save, the creature spends its action that turn retching and reeling. Creatures that don’t need to breathe or are immune to poison automatically succeed on this saving throw. /nA moderate wind (at least 10 miles per hour) disperses the cloud after 4 rounds. A strong wind (at least 20 miles per hour) disperses it after 1 round.', #description
        '3', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Constitution', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'rotten egg or several skunk cabbage leaves', #materialComponent
        'Concentration, up to 1 minute', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Conjuration', #school
        '90' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('352', #id
        'Stone Shape', #name
        '1 action', #castingTime
        'You touch a stone object of Medium size or smaller or a section of stone no more than 5 feet in any dimension and form it into any shape that suits your purpose. So, for example, you could shape a large rock into a weapon, idol, or coffer, or make a small passage through a wall, as long as the wall is less than 5 feet thick. You could also shape a stone door or its frame to seal the door shut. The object you create can have up to two hinges and a latch, but finer mechanical detail isn’t possible.', #description
        '4', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'soft clay, which must be worked into roughly the desired shape of the stone object', #materialComponent
        'Instantaneous', #duration
        'a stone object', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Transmutation', #school
        'Touch' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('353', #id
        'Stoneskin', #name
        '1 action', #castingTime
        'This spell turns the flesh of a willing creature you touch as hard as stone. Until the spell ends, the target has resistance to nonmagical bludgeoning, piercing, and slashing damage.', #description
        '4', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'diamond dust worth 100 gp, which the spell consumes', #materialComponent
        'Concentration, up to 1 hour', #duration
        'a willing creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Abjuration', #school
        'Touch' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('354', #id
        'Storm of Vengeance', #name
        '1 action', #castingTime
        'A churning storm cloud forms, centered on a point you can see and spreading to a radius of 360 feet. Lightning flashes in the area, thunder booms, and strong winds roar. Each creature under the cloud (no more than 5,000 feet beneath the cloud) when it appears must make a Constitution saving throw. On a failed save, a creature takes 2d6 thunder damage and becomes deafened for 5 minutes. /nEach round you maintain concentration on this spell, the storm produces additional effects on your turn. /n/bRound 2./b Acidic rain falls from the cloud. Each creature and object under the cloud takes 1d6 acid damage. /n/bRound 3./b You call six bolts of lightning from the cloud to strike six creatures or objects of your choice beneath the cloud. A given creature or object can’t be struck by m ore than one bolt. A struck creature must make a Dexterity saving throw. The creature takes 10d6 lightning damage on a failed save, or half as much damage on a successful one. /n/bRound 4./b Hailstones rain down from the cloud. Each creature under the cloud takes 2d6 bludgeoning damage. /n/bRound 5-10./b Gusts and freezing rain assail the area under the cloud. The area becomes difficult terrain and is heavily obscured. Each creature there takes 1d6 cold damage. Ranged w eapon attacks in the area are impossible. The w ind and rain count as a severe distraction for the purposes of maintaining concentration on spells. Finally, gusts of strong wind (ranging from 20 to 50 miles per hour) automatically disperse fog, mists, and similar phenomena in the area, whether mundane or magical.', #description
        '9', #level
        '2', #damageDiceAmount
        '2', #damageDice ID
        '13', #damageType ID
        null, #damageBonus
        'Constitution', #savingThrow
        'deafened', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        'Concentration, up to 1 minute', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Conjuration', #school
        'Sight' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('355', #id
        'Sunbeam', #name
        '1 action', #castingTime
        'A beam of brilliant light flashes out from your hand in a 5-foot-wide, 60-foot-long line. Each creature in the line must make a Constitution saving throw. On a failed save, a creature takes 6d8 radiant damage and is blinded until your next turn. On a successful save, it takes half as much damage and isn’t blinded by this spell. Undead and oozes have disadvantage on this saving throw. /nYou can create a new line of radiance as your action on any turn until the spell ends. /nFor the duration, a mote of brilliant radiance shines in your hand. It sheds bright light in a 30-foot radius and dim light for an additional 30 feet. This light is sunlight.', #description
        '6', #level
        '6', #damageDiceAmount
        '3', #damageDice ID
        '11', #damageType ID
        null, #damageBonus
        'Constitution', #savingThrow
        'blind', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a magnifying glass', #materialComponent
        'Concentration, up to 1 minute', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Evocation', #school
        'Self' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('356', #id
        'Sunburst', #name
        '1 action', #castingTime
        'Brilliant sunlight flashes in a 60-foot radius centered on a point you choose within range. Each creature in that light must make a Constitution saving throw. On a failed save, a creature takes 12d6 radiant damage and is blinded for 1 minute. On a successful save, it takes half as much damage and isn’t blinded by this spell. Undead and oozes have disadvantage on this saving throw. /nA creature blinded by this spell makes another Constitution saving throw at the end of each of its turns. On a successful save, it is no longer blinded. /nThis spell dispels any darkness in its area that was created by a spell.', #description
        '8', #level
        '12', #damageDiceAmount
        '2', #damageDice ID
        '11', #damageType ID
        null, #damageBonus
        'Constitution', #savingThrow
        'blind', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'fire and a piece of sunstone', #materialComponent
        'Instantaneous', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Evocation', #school
        '150' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('357', #id
        'Swift Quiver', #name
        '1 bonus action', #castingTime
        'You transmute your quiver so it produces an endless supply of nonmagical ammunition, which seems to leap into your hand when you reach for it. /nOn each of your turns until the spell ends, you can use a bonus action to make two attacks with a weapon that uses ammunition from the quiver. Each time you make such a ranged attack, your quiver magically replaces the piece of ammunition you used with a similar piece of nonmagical ammunition. Any pieces of ammunition created by this spell disintegrate when the spell ends. If the quiver leaves your possession, the spell ends.', #description
        '5', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a quiver containing at least one piece of ammunition', #materialComponent
        'Concentration, up to 1 minute', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Transmutation', #school
        'Touch' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('358', #id
        'Symbol', #name
        '2 minutes', #castingTime
        'When you cast this spell, you inscribe a harmful glyph either on a surface (such as a section of floor, a wall, or a table) or within an object that can be closed to conceal the glyph (such as a book, a scroll, or a treasure chest). If you choose a surface, the glyph can cover an area of the surface no larger than 10 feet in diameter. If you choose an object, that object must remain in its place; if the object is moved more than 10 feet from where you cast this spell, the glyph is broken, and the spell ends without being triggered. /nThe glyph is nearly invisible, requiring an Intelligence (Investigation) check against your spell save DC tofind it. /nYou decide what triggers the glyph when you cast the spell. For glyphs inscribed on a surface, the most typical triggers include touching or stepping on the glyph, removing another object covering it, approaching within a certain distance of it, or manipulating the object that holds it. For glyphs inscribed within an object, the most common triggers are opening the object, approaching within a certain distance of it, or seeing or reading the glyph. /nYou can further refine the trigger so the spell is activated only under certain circumstances or according to a creature’s physical characteristics (such as height or weight), or physical kind (for example, the ward could be set to affect hags or shapechangers). You can also specify creatures that don’t trigger the glyph, such as those who say a certain password. /nWhen you inscribe the glyph, choose one of the options below for its effect. Once triggered, the glyph glows, filling a 60-foot-radius sphere with dim light for 10 minutes, after which time the spell ends. Each creature in the sphere when the glyph activates is targeted by its effect, as is a creature that enters the sphere for the first time on a turn or ends its turn there. /n/bDeath./b Each target must make a Constitution saving throw, taking 10d 10 necrotic damage on a failed save, or half as much damage on a successful save. /n/bDiscord. Each target must make a Constitution saving throw. On a failed save, a target bickers and argues with other creatures for 1 minute. During this time, it is incapable of meaningful communication and has disadvantage on attack rolls and ability checks. /n/bFear./b Each target must make a Wisdom saving throw and becomes frightened for 1 minute on a failed save. While frightened, the target drops whatever it is holding and must move at least 30 feet away from the glyph on each of its turns, if able. /n/bHopelessness./b Each target must make a Charisma saving throw. On a failed save, the target is overwhelmed with despair for 1 minute. During this time, it can’t attack or target any creature with harmful abilities, spells, or other magical effects. /n/bInsanity./b Each target must make an Intelligence saving throw. On a failed save, the target is driven insane for 1 minute. An insane creature can’t take actions, can''t understand what other creatures say, can’t read, and speaks only in gibberish. The DM controls its movement, which is erratic. /n/bPain./b Each target must make a Constitution saving throw and becomes incapacitated with excruciating pain for 1 minute on a failed save. /n/bSleep./b Each target must make a Wisdom saving throw and falls unconscious for 10 minutes on a failed save. A creature awakens if it takes damage or if someone uses an action to shake or slap it awake. /n/bStunning./b Each target must make a Wisdom saving throw and becomes stunned for 1 minute on a failed save.', #description
        '7', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'mercury, phosphorus, and powdered diamond and opal with a total value of at least 1,000 gp, which the spell consumes', #materialComponent
        'Until dispelled or triggered', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Abjuration', #school
        'Touch' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('361', #id
        'Polymorph', #name
        '1 action', #castingTime
        'This spell transforms a creature that you can see within range into a new form. An unwilling creature must make a Wisdom saving throw to avoid the effect. A shapechanger automatically succeeds on this saving throw. /nThe transformation lasts for the duration, or until the target drops to 0 hit points or dies. The new form can be any beast whose challenge rating is equal to or less than the target’s (or the target’s level, if it doesn''t have a challenge rating). The target’s game statistics, including mental ability scores, are replaced by the statistics of the chosen beast. It retains its alignment and personality. /nThe target assumes the hit points of its new form. When it reverts to its normal form, the creature returns to the number of hit points it had before it transformed. If it reverts as a result of dropping to 0 hit points, any excess damage carries over to its normal form. As long as the excess damage doesn’t reduce the creature’s normal form to 0 hit points, it isn’t knocked unconscious. /nThe creature is limited in the actions it can perform by the nature of its new form, and it can’t speak, cast spells, or take any other action that requires hands or speech. /nThe target’s gear melds into the new form. The creature can’t activate, use, wield, or otherwise benefit from any of its equipment.', #description
        '4', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Wisdom', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a caterpillar cocoon', #materialComponent
        'Concentration, up to 1 hour', #duration
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Transmutation', #school
        '60' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('362', #id
        'Divination', #name
        '1 action', #castingTime
        'Your magic and an offering put you in contact with a god or a god’s servants. You ask a single question concerning a specific goal, event, or activity to occur within 7 days. The DM offers a truthful reply. The reply might be a short phrase, a cryptic rhyme, or an omen. /nThe spell doesn’t take into account any possible circumstances that might change the outcome, such as the casting of additional spells or the loss or gain of a companion. /nIf you cast the spell two or more times before finishing your next long rest, there is a cumulative 25 percent chance for each casting after the first that you get a random reading. The DM makes this roll in secret.', #description
        '4', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'incense and a sacrificial offering appropriate to your religion, together worth at least 25 gp, which the spell consumes', #materialComponent
        'Instantaneous', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Divination', #school
        'Self' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('363', #id
        'Fire Storm', #name
        '1 action', #castingTime
        'A storm made up of sheets of roaring flame appears in a location you choose within range. The area of the storm consists of up to ten 10-foot cubes, which you can arrange as you wish. Each cube must have at least one face adjacent to the face of another cube. Each creature in the area must make a Dexterity saving throw. It takes 7d10 fire damage on a failed save, or half as much damage on a successful one. /nThe fire damages objects in the area and ignites flammable objects that aren''t being worn or carried. If you choose, plant life in the area is unaffected by this spell.', #description
        '7', #level
        '7', #damageDiceAmount
        '4', #damageDice ID
        '4', #damageType ID
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
        'Evocation', #school
        '150' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('364', #id
        'Staggering Smite', #name
        '1 bonus action', #castingTime
        'The next time you hit a creature with a melee weapon attack during this spell’s duration, your w eapon pierces both body and mind, and the attack deals an extra 4d6 psychic damage to the target. The target must make a Wisdom saving throw. On a failed save, it has disadvantage on attack rolls and ability checks, and can''t take reactions, until the end of its next turn.', #description
        '4', #level
        '4', #damageDiceAmount
        '2', #damageDice ID
        '10', #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '0', #requiresSomaticComponent
        '', #materialComponent
        'Concentration, up to 1 minute', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Evocation', #school
        'Self' #range in feet
);

# INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
# VALUES ('364', #id
#         'Destructive Smite', #name
#         '1 bonus action', #castingTime
#         'The next time you hit a creature with a melee weapon attack during this spell’s duration, your w eapon pierces both body and mind, and the attack deals an extra 4d6 psychic damage to the target. The target must make a Wisdom saving throw. On a failed save, it has disadvantage on attack rolls and ability checks, and can''t take reactions, until the end of its next turn.', #description
#         '4', #level
#         '4', #damageDiceAmount
#         '2', #damageDice ID
#         '10', #damageType ID
#         null, #damageBonus
#         '', #savingThrow
#         '', #condition
#         '1', #requiresVerbalComponent
#         '0', #requiresSomaticComponent
#         '', #materialComponent
#         'Concentration, up to 1 minute', #duration
#         '', #target
#         '0', #requiresAttackRoll
#         '0', #ritual
#         '1', #concentration
#         'Evocation', #school
#         'Self' #range in feet
# );
