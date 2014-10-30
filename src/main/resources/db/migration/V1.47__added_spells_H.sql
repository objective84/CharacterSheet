INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('168', #id
        'Hail of Thorns', #name
        '1 bonus action', #castingTime
        'The next time you hit a creature with a ranged weapon attack before the spell ends, this spell creates a rain of thorns that sprouts from your ranged w eapon or ammunition. In addition to the normal effect of the attack, the target of the attack and each creature within 5 feet of it must make a Dexterity saving throw. A creature takes 1dlO piercing damage on a failed save, or half as much damage on a successful one. /n/bAt Higher Levels./b If you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d10 for each slot level above 1st (to a maximum of 6d10).', #description
        '1', #level
        '1', #damageDiceAmount
        '4', #damageDice ID
        '8', #damageType ID
        null, #damageBonus
        'Dexterity', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '0', #requiresSomaticComponent
        '', #materialComponent
        'Concentration, up to 1 minute', #duration
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Conjuration', #school
        '0' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('169', #id
        'Hallow', #name
        '24 hours', #castingTime
        'You touch a point and infuse an area around it with holy (or unholy) power. The area can have a radius up to 60 feet, and the spell fails if the radius includes an area already under the effect a hallow spell. The affected area is subject to the following effects. /nFirst, celestials, elementals, fey, fiends, and undead can’t enter the area, nor can such creatures charm, frighten, or p os sess creatures within it. Any creature charmed, frightened, or possessed by such a creature is no longer charmed, frightened, or possessed upon entering the area. You can exclude one or more of those types of creatures from this effect. /nSecond, you can bind an extra effect to the area. Choose the effect from the following list, or choose an effect offered by the DM. Some of these effects apply to creatures in the area; you can designate whether the effect applies to all creatures, creatures that follow a specific deity or leader, or creatures of a specific sort, such as ores or trolls. When a creature that would be affected enters the spell’s area for the first time on a turn or starts its turn there, it can make a Charisma saving throw. On a success, the creature ignores the extra effect until it leaves the area. /n/bCourage./b Affected creatures can’t be frightened while in the area. /n/bDarkness./b Darkness fills the area. Normal light, as well as magical light created by spells of a lower level than the slot you used to cast this spell, can’t illuminate the area. /n/bDaylight./b Bright light fills the area. Magical darkness created by spells of a lower level than the slot you used to cast this spell can’t extinguish the light. /n/bEnergy Protection./b Affected creatures in the area have resistance to one damage type of your choice, except for bludgeoning, piercing, or slashing. /n/bEnergy Vulnerability./b Affected creatures in the area have vulnerability to one damage type of your choice, except for bludgeoning, piercing, or slashing. /n/bEverlasting Rest./n Dead bodies interred in the area can’t be turned into undead. /n/bExtradimensional Interference. Affected creatures can’t move or travel using teleportation or by extradimensional or interplanar means. /n/bFear./b Affected creatures are frightened while in the area. /n/bSilence./b No sound can emanate from within the area, and no sound can reach into it. /n/bTongues./b Affected creatures can communicate with any other creature in the area, even if they don’t share a common language.', #description
        '5', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'herbs, oils, and incense worth at least 1,000 gp, which the spell consumes', #materialComponent
        'Until dispelled', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Evocation', #school
        '0' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('170', #id
        'Hallucinatory Terrain', #name
        '10 minutes', #castingTime
        'You make natural terrain in a 150-foot cube in range look, sound, and smell like some other sort of natural terrain. Thus, open fields or a road can be made to resemble a swamp, hill, crevasse, or some other difficult or impassable terrain. A pond can be made to seem like a grassy meadow, a precipice like a gentle slope, or a rock-strewn gully like a wide and smooth road. Manufactured structures, equipment, and creatures within the area aren’t changed in appearance. //nThe tactile characteristics of the terrain are unchanged, so creatures entering the area are likely to see through the illusion. If the difference isn’t obvious by touch, a creature carefully examining the illusion can attempt an Intelligence (Investigation) check against your spell save DC to disbelieve it. A creature who discerns the illusion for what it is, sees it as a vague image superimposed on the terrain.', #description
        '4', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        'Intelligence', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '(a stone, a twig, and a bit of green plant', #materialComponent
        '24 hours', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Illusion', #school
        '300' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('171', #id
        'Harm', #name
        '1 action', #castingTime
        'You unleash a virulent disease on a creature that you can see within range. The target must make a Constitution saving throw. On a failed save, it takes 14d6 necrotic damage, or half as much damage on a successful save. The damage can’t reduce the target’s hit points below 1. If the target fails the saving throw, its hit point maximum is reduced for 1 hour by an amount equal to the necrotic damage it took. Any effect that removes a disease allows a creature’s hit point maximum to return to normal before that time passes.', #description
        '6', #level
        '14', #damageDiceAmount
        '2', #damageDice ID
        '7', #damageType ID
        null, #damageBonus
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
VALUES ('172', #id
        'Haste', #name
        '1 action', #castingTime
        'Choose a willing creature that you can see within range. Until the spell ends, the target’s speed is doubled, it gains a +2 bonus to AC, it has advantage on Dexterity saving throws, and it gains an additional action on each of its turns. That action can be used only to take the Attack (one weapon attack only), Dash, Disengage, Hide, or Use an Object action. /nWhen the spell ends, the target can’t move or take actions until after its next turn, as a wave of lethargy sweeps over it.', #description
        '3', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a shaving of licorice root', #materialComponent
        'Concentration, up to 1 minute', #duration
        'a willing creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Transmutation', #school
        '30' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('173', #id
        'Heal', #name
        '1 action', #castingTime
        'Choose a creature that you can see within range. A surge of positive energy washes through the creature, causing it to regain 70 hit points. This spell also ends blindness, deafness, and any diseases affecting the target. This spell has no effect on constructs or undead. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 7th level or higher, the amount of healing increases by 10 for each slot level above 6th.', #description
        '6', #level
        '0', #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        null, #savingThrow
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
        '60' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('174', #id
        'Healing Word', #name
        '1 bonus action', #castingTime
        'A creature of your choice that you can see within range regains hit points equal to 1d4 + your spellcasting ability modifier. This spell has no effect on undead or constructs. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 2nd level or higher, the healing increases by 1d4 for each slot level above 1st.', #description
        '1', #level
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
        'Evocation', #school
        '30' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('175', #id
        'Heat Metal', #name
        '1 action', #castingTime
        'Choose a manufactured metal object, such as a metal weapon or a suit of heavy or medium metal armor, that you can see within range. You cause the object to glow red-hot. Any creature in physical contact with the object takes 2d8 fire damage when you cast the spell. Until the spell ends, you can use a bonus action on each of your subsequent turns to cause this damage again. /nIf a creature is holding or wearing the object and takes the damage from it, the creature must succeed on a Constitution saving throw or drop the object if it can. If it doesn’t drop the object, it has disadvantage on attack rolls and ability checks until the start of your next turn. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 3rd level or higher, the damage increases by 1d8 for each slot level above 2nd.', #description
        '2', #level
        '2', #damageDiceAmount
        '3', #damageDice ID
        '4', #damageType ID
        null, #damageBonus
        'Constitution', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a piece of iron and a flame', #materialComponent
        'Concentration, up to 1 minute', #duration
        'a manufactured metal object', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Transmutation', #school
        '60' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('176', #id
        'Hellish Rebuke', #name
        '1 reaction, which you take in response to being damaged by a creature within 60 feet of you that you can see', #castingTime
        'You point your finger, and the creature that damaged you is momentarily surrounded by hellish flames. The creature must make a Dexterity saving throw. It takes 2d10 fire damage on a failed save, or half as much damage on a successful one. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1dl0 for each slot level above 1st.', #description
        '1', #level
        '2', #damageDiceAmount
        '4', #damageDice ID
        '4', #damageType ID
        null, #damageBonus
        'Dexterity', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        'Instantaneous', #duration
        'a creature that damaged you', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Evocation', #school
        '60' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('177', #id
        'Heroes\' Feast', #name
        '10 minutes', #castingTime
        'gem-encrusted bowl worth at least 1,000 gp, which the spell consumes', #description
        '6', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        null, #damageBonus
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'gem-encrusted bowl worth at least 1,000 gp, which the spell consumes', #materialComponent
        'Instantaneous', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Conjuration', #school
        '30' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `damageBonus`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('178', #id
        'Heroism', #name
        '1 action', #castingTime
        'A willing creature you touch is imbued with bravery. Until the spell ends, the creature is immune to being frightened and gains temporary hit points equal to your spellcasting ability modifier at the start of each of its turns. When the spell ends, the target loses any remaining temporary hit points from this spell.', #description
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
        'Concentration, up to 1 minute', #duration
        'a willing creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Enchantment', #school
        '0' #range in feet
);
