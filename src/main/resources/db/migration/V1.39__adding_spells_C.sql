
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('42', #id
        'Call Lightning', #name
        '1 action', #castingTime
        'A storm cloud appears in the shape of a cylinder that is 10 feet tall with a 60-foot radius, centered on a point you can see 100 feet directly above you. The spell fails if you can’t see a point in the air where the storm cloud could appear (for example, if you are in a room that can’t accommodate the cloud). /nWhen you cast the spell, choose a point you can see within range. A bolt of lightning flashes down from the cloud to that point. Each creature within 5 feet of that point must make a Dexterity saving throw. A creature takes 3d10 lightning damage on a failed save, or half as much damage on a successful one. On each of your turns until the spell ends, you can use your action to call down lightning in this way again, targeting the same point or a different one. /nIf you are outdoors in stormy conditions when you cast this spell, the spell gives you control over the existing storm instead of creating a new one. Under such conditions, the spell’s damage increases by 1d10. /n/n/bAt Higher Levels./b When you cast this spell using a spell slot of 4th or higher level, the damage increases by 1d10 for each slot level above 3rd.', #description
        '3', #level
        '3', #damageDiceAmount
        '4', #damageDice ID
        '6', #damageType ID
        'Dexterity', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        'Concentration, up to 10 minutes', #duration
        'all creatures within 5 feet of a given point', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Conjuration', #school
        '120' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('43', #id
        'Calm Emotions', #name
        '1 action', #castingTime
        'You attempt to suppress strong emotions in a group of people. Each humanoid in a 20-foot-radius sphere centered on a point you choose within range must make a Charisma saving throw; a creature can choose tofail this saving throw if it w ishes. If a creature fails its saving throw, choose one of the following two effects. You can suppress any effect causing a target to be charmed or frightened. When this spell ends, any suppressed effect resumes, provided that its duration has not expired in the meantime. /nAlternatively, you can make a target indifferent about creatures of your choice that it is hostile toward. This indifference ends if the target is attacked or harmed by a spell or if it w itnesses any of its friends being harmed. When the spell ends, the creature becomes hostile again, unless the DM rules otherwise.', #description
        '2', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        'Charisma', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        'Concentration, up to 1 minute', #duration
        'all creatures within a 20 ft radius', #target
        '0', #requiresAttackRoll
        '1', #ritual
        '1', #concentration
        'Enchantment', #school
        '60' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('44', #id
        'Chain Lightning', #name
        '1 action', #castingTime
        'You create a bolt of lightning that arcs toward a target of your choice that you can see within range. Three bolts then leap from that target to as many as three other targets, each of which must b e within 30 feet of the first target. A target can be a creature or an object and can be targeted by only one of the bolts. /nA target must make a Dexterity saving throw. The target takes 10d8 lightning damage on a failed save, or half as much damage on a successful one. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 7th level or higher, one additional bolt leaps from the first target to another target for each slot level above 6th.', #description
        '6', #level
        '10', #damageDiceAmount
        '3', #damageDice ID
        '6', #damageType ID
        'Dexterity', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a bit of fur; a piece of amber, glass, or a crystal rod; and three silver pins', #materialComponent
        'Instantaneous', #duration
        '3 targets within 30 feet of each other', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Evocation', #school
        '150' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('45', #id
        'Charm Person', #name
        '1 action', #castingTime
        'You attempt to charm a humanoid you can see within range. It must make a Wisdom saving throw, and does so with advantage if you or your companions are fighting it. If it fails the saving throw, it is charmed by you until the spell ends or until you or your companions do anything harmful to it. The charmed creature regards you as a friendly acquaintance. When the spell ends, the creature knows it w as charmed by you. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 2nd level or higher, you can target one additional creature for each slot level above 1st. The creatures must be within 30 feet of each other when you target them.', #description
        '1', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        'Wisdom', #savingThrow
        'Charmed', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        '1 hour', #duration
        'a humanoid', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Enchantment', #school
        '30' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('46', #id
        'Chill Touch', #name
        '1 action', #castingTime
        'You create a ghostly, skeletal hand in the space of a creature within range. Make a ranged spell attack against the creature to assail it with the chill of the grave. On a hit, the target takes 1d8 necrotic damage, and it can’t regain hit points until the start of your next turn. Until then, the hand clings to the target. If you hit an undead target, it also has disadvantage on attack rolls against you until the end of your next turn. /nThis spell’s damage increases by 1d8 when you reach 5th level (2d8), 11th level (3d8), and 17th level (4d8).', #description
        '0', #level
        '1', #damageDiceAmount
        '3', #damageDice ID
        '7', #damageType ID
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        '1 round', #duration
        'a creature', #target
        '1', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Necromancy', #school
        '120' #range in feet
);

INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('47 ', #id
        'Chromatic Orb', #name
        '1 action', #castingTime
        'You hurl a 4-inch-diameter sphere of energy at a creature that you can see within range. You choose acid, cold, fire, lightning, poison, or thunder for the type of orb you create, and then make a ranged spell attack against the target. If the attack hits, the creature takes 3d8 damage of the type you chose. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d8 for each slot level above 1st.', #description
        '1', #level
        '3', #damageDiceAmount
        '3', #damageDice ID
        '15', #damageType ID
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a diamond worth at least 50 gp', #materialComponent
        'Instantaneous', #duration
        'a creature', #target
        '1', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Evocation', #school
        '90' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('48', #id
        'Circle of Death', #name
        '1 action', #castingTime
        'A sphere of negative energy ripples out in a 60-foot radius sphere from a point within range. Each creature in that area must make a Constitution saving throw. A target takes 8d6 necrotic damage on a failed save, or half as much damage on a successful one. A t Higher Levels. When you cast this spell using a spell slot of 7th level or higher, the damage increases by 2d6 for each slot level above 6th.', #description
        '6', #level
        '8', #damageDiceAmount
        '2', #damageDice ID
        '7', #damageType ID
        'Constitution', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'the powder of a crushed black pearl worth at least 500 gp', #materialComponent
        'Instantaneous', #duration
        'all creatures in a 60 ft. sphere', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Necromancy', #school
        '150' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('49', #id
        'Circle of Power', #name
        '1 action', #castingTime
        'Divine energy radiates from you, distorting and diffusing magical energy within 30 feet of you. Until the spell ends, the sphere moves with you, centered on you. For the duration, each friendly creature in the area (including you) has advantage on saving throws against spells and other magical effects. Additionally, when an affected creature succeeds on a saving throw made against a spell or magical effect that allows it to make a saving throw to take only half damage, it instead takes no damage if it succeeds on the saving throw.', #description
        '5', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '0', #requiresSomaticComponent
        '', #materialComponent
        'Concentration, up to 10 minutes', #duration
        'all friendly creatures in a 30 ft radius', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Abjuration', #school
        '30' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('50', #id
        'Clairvoyance', #name
        '10', #castingTime
        'You create an invisible sensor within range in a location familiar to you (a place you have visited or seen before) or in an obvious location that is unfamiliar to you (such as behind a door, around a corner, or in a grove of trees). The sensor remains in place for the duration, and it can’t be attacked or otherwise interacted with. When you cast the spell, you choose seeing or hearing. You can use the chosen sense through the sensor as if you were in its space. A s your action, you can switch between seeing and hearing. A creature that can see the sensor (such as a creature benefiting from see invisibility or truesight) sees a luminous, intangible orb about the size of your fist.', #description
        '3', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a focus worth at least 100 gp, either a jeweled horn for hearing or a glass eye for seeing', #materialComponent
        'Concentration, up to 10 minutes', #duration
        'Self', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Divination', #school
        '5280' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('51', #id
        'Clone', #name
        '1 hour', #castingTime
        'This spell grows an inert duplicate of a living creature as a safeguard against death. This clone forms inside a sealed vessel and grows tofull size and maturity after 120 days; you can also choose to have the clone be a younger version of the same creature. It remains inert and endures indefinitely, as long as its vessel remains undisturbed. /nAt any time after the clone matures, if the original creature dies, its soul transfers to the clone, provided that the soul is free and willing to return. The clone is physically identical to the original and has the same personality, memories, and abilities, but none of the original’s equipment. The original creature’s physical remains, if they still exist, become inert and can’t thereafter be restored to life, since the creature’s soul is elsewhere.', #description
        '6', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a diamond worth at least 1,000 gp and at least 1 cubic inch of flesh of the creature that is to be cloned, which the spell consumes, and a vessel worth at least 2,000 gp that has a sealable lid and is large enough to hold a Medium creature, such as a huge urn, coffin, mud-filled cyst in the ground, or crystal container filled with salt water', #materialComponent
        'Instantaneous', #duration
        'a living creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Necromancy', #school
        '0' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('52', #id
        'Cloud of Daggers', #name
        '1 action', #castingTime
        'You fill the air with spinning daggers in a cube 5 feet on each side, centered on a point you choose within range. A creature takes 4d4 slashing damage when it enters the spell’s area for the first time on a turn or starts its turn there. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 3rd level or higher, the damage increases by 2d4 for each slot level above 2nd.', #description
        '2', #level
        '4', #damageDiceAmount
        '2', #damageDice ID
        '12', #damageType ID
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a sliver of glass', #materialComponent
        'Concentration, up to 1 minute', #duration
        'a creature that enters the spell\'s area for the first time on a turn or starts its turn there', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Conjuration', #school
        '60' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('53', #id
        'Cloudkill', #name
        '1 action', #castingTime
        'You create a 20-foot-radius sphere of poisonous, yellow-green fog centered on a point you choose within range. The fog spreads around corners. It lasts for the duration or until strong wind disperses the fog, ending the spell. Its area is heavily obscured. /nWhen a creature enters the spell’s area for the first time on a turn or starts its turn there, that creature must make a Constitution saving throw. The creature takes 5d8 poison damage on a failed save, or half as much damage on a successful one. Creatures are affected even if they hold their breath or don’t need to breathe. The fog moves 10 feet away from you at the start of each of your turns, rolling along the surface of the ground. The vapors, being heavier than air, sink to the lowest level of the land, even pouring down openings. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 6th level or higher, the damage increases by 1d8 for each slot level above 5th.', #description
        '5', #level
        '5', #damageDiceAmount
        '3', #damageDice ID
        '9', #damageType ID
        'Constitution', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        'Concentration, up to 10 minutes', #duration
        'a creature enters the spell’s area for the first time on a turn or starts its turn there', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Conjuration', #school
        '120' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('54', #id
        'Color Spray', #name
        '1 action', #castingTime
        'A dazzling array of flashing, colored light springs from your hand. Roll 6 d10; the total is how many hit points of creatures this spell can effect. Creatures in a 15-foot cone originating from you are affected in ascending order of their current hit points (ignoring unconscious creatures and creatures that can’t see). Starting with the creature that has the lowest current hit points, each creature affected by this spell is blinded until the spell ends. Subtract each creature’s hit points from the total before moving on to the creature with the next lowest hit points. A creature’s hit points must be equal to or less than the remaining total for that creature to be affected. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 2nd level or higher, roll an additional 2d10 for each slot level above 1st.', #description
        '1', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        '', #savingThrow
        'Blinded', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a pinch of powder or sand that is colored red, yellow, and blue', #materialComponent
        '1 round', #duration
        '6d10 creatures in a 15 foot cone', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Illusion', #school
        '15' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('55', #id
        'Command', #name
        '1 action', #castingTime
        'You speak a one-word command to a creature you can see within range. The target must succeed on a W isdom saving throw or follow the command on its next turn. The spell has no effect if the target is undead, if it doesn’t understand your language, or if your command is directly harmful to it. /nSome typical commands and their effects follow. You might issue a command other than one described here. If you do so, the DM determines how the target behaves. If the target can’t follow your command, the spell ends. /nApproach. The target moves toward you by the shortest and most direct route, ending its turn if it moves within 5 feet of you. Drop. The target drops whatever it is holding and then ends its turn. /nFlee. The target spends its turn moving away from you by the fastest available means. Grovel. The target falls prone and then ends its turn. /nHalt. The target doesn’t move and takes no actions. A flying creature stays aloft, provided that it is able to do so. If it must move to stay aloft, it flies the minimum distance needed to remain in the air. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 2nd level or higher, you can affect one additional creature for each slot level above 1st. The creatures must be within 30 feet of each other when you target them.', #description
        '1', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        'Wisdom', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '0', #requiresSomaticComponent
        '', #materialComponent
        '1 round', #duration
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Enchantment', #school
        '60' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('56', #id
        'Commune', #name
        '1 minute', #castingTime
        'You contact your deity or a divine proxy and ask up to three questions that can be answered with a yes or no. You must ask your questions before the spell ends. You receive a correct answer for each question. Divine beings aren’t necessarily omniscient, so you might receive “unclear” as an answer if a question pertains to information that lies beyond the deity’s knowledge. In a case where a one-word answer could be misleading or contrary to the deity’s interests, the DM might offer a short phrase as an answer instead. If you cast the spell two or more times before finishing your next long rest, there is a cumulative 25 percent chance for each casting after the first that you get no answer. The DM makes this roll in secret.', #description
        '5', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'incense and a vial of holy or unholy water', #materialComponent
        '1 minute', #duration
        '', #target
        '0', #requiresAttackRoll
        '1', #ritual
        '0', #concentration
        'Divination', #school
        '0' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('57', #id
        'Commune with Nature', #name
        '', #castingTime
        'You briefly become one with nature and gain knowledge of the surrounding territory. In the outdoors, the spell gives you knowledge of the land within 3 miles of you. In caves and other natural underground settings, the radius is limited to 300 feet. The spell doesn’t function where nature has been replaced by construction, such as in dungeons and towns. /nYou instantly gain knowledge of up to three facts of your choice about any of the following subjects as they relate to the area: /n• terrain and bodies of water /n• prevalent plants, minerals, animals, or peoples /n• powerful celestials, fey, fiends, elementals, or undead /n• influence from other planes of existence /n• buildings /nFor example, you could determine the location of powerful undead in the area, the location of major sources of safe drinking water, and the location of any nearby towns.', #description
        '5', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        'Instantaneous', #duration
        '', #target
        '0', #requiresAttackRoll
        '1', #ritual
        '0', #concentration
        'Divination', #school
        '0' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('58', #id
        'Compelled Duel', #name
        '1 bonus action', #castingTime
        'You attempt to compel a creature into a duel. One creature that you can see within range must make a Wisdom saving throw. On a failed save, the creature is drawn to you, compelled by your divine demand. For the duration, it has disadvantage on attack rolls against creatures other than you, and must make a Wisdom saving throw each time it attempts to move to a space that is more than 30 feet away from you; if it succeeds on this saving throw, this spell doesn’t restrict the target’s movement for that turn. /nThe spell ends if you attack any other creature, if you cast a spell that targets a hostile creature other than the target, if a creature friendly to you damages the target or casts a harmful spell on it, or if you end your turn more than 30 feet away from the target.', #description
        '1', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
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
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('59', #id
        'Comprehend Languages', #name
        '1 action', #castingTime
        'For the duration, you understand the literal meaning of any spoken language that you hear. You also understand any written language that you see, but you must be touching the surface on which the words are written. It takes about 1 minute to read one page of text. This spell doesn’t decode secret messages in a text or a glyph, such as an arcane sigil, that isn’t part of a written language.', #description
        '1', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a pinch of soot and sal', #materialComponent
        '1 hour', #duration
        'Self', #target
        '0', #requiresAttackRoll
        '1', #ritual
        '0', #concentration
        'Divination', #school
        '0' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('60', #id
        'Compulsion', #name
        '1 action', #castingTime
        'Creatures of your choice that you can see within range and that can hear you must make a Wisdom saving throw. A target automatically succeeds on this saving throw if it can’t be charmed. On a failed save, a target is affected by this spell. Until the spell ends, you can use a bonus action on each of your turns to designate a direction that is horizontal to you. Each affected target must use as much of its movement as possible to move in that direction on its next turn. It can take its action before it moves. After moving in this way, it can make another Wisdom saving to try to end the effect. /nA target isn’t compelled to move into an obviously deadly hazard, such as a fire or pit, but it will provoke opportunity attacks to move in the designated direction.', #description
        '4', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        'Wisdom', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        'Concentration, up to 1 minute', #duration
        'any creatures that can hear you', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Enchantment', #school
        '30' #range in feet
);
# INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
# VALUES ('61', #id
#         '', #name
#         '', #castingTime
#         '', #description
#         '', #level
#         null, #damageDiceAmount
#         null, #damageDice ID
#         null, #damageType ID
#         '', #savingThrow
#         '', #condition
#         '1', #requiresVerbalComponent
#         '0', #requiresSomaticComponent
#         '', #materialComponent
#         '', #duration
#         '', #target
#         '0', #requiresAttackRoll
#         '', #ritual
#         '', #concentration
#         '', #school
#         '' #range in feet
# );
# INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
# VALUES ('62', #id
#         '', #name
#         '', #castingTime
#         '', #description
#         '', #level
#         null, #damageDiceAmount
#         null, #damageDice ID
#         null, #damageType ID
#         '', #savingThrow
#         '', #condition
#         '', #requiresVerbalComponent
#         '0', #requiresSomaticComponent
#         '', #materialComponent
#         '', #duration
#         '', #target
#         '0', #requiresAttackRoll
#         '', #ritual
#         '', #concentration
#         '', #school
#         '' #range in feet
# );
# INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
# VALUES ('63', #id
#         '', #name
#         '', #castingTime
#         '', #description
#         '', #level
#         null, #damageDiceAmount
#         null, #damageDice ID
#         null, #damageType ID
#         '', #savingThrow
#         '', #condition
#         '', #requiresVerbalComponent
#         '0', #requiresSomaticComponent
#         '', #materialComponent
#         '', #duration
#         '', #target
#         '0', #requiresAttackRoll
#         '', #ritual
#         '', #concentration
#         '', #school
#         '' #range in feet
# );
# INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
# VALUES ('64', #id
#         '', #name
#         '', #castingTime
#         '', #description
#         '', #level
#         null, #damageDiceAmount
#         null, #damageDice ID
#         null, #damageType ID
#         '', #savingThrow
#         '', #condition
#         '', #requiresVerbalComponent
#         '0', #requiresSomaticComponent
#         '', #materialComponent
#         '', #duration
#         '', #target
#         '0', #requiresAttackRoll
#         '', #ritual
#         '', #concentration
#         '', #school
#         '' #range in feet
# );
# INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
# VALUES ('65', #id
#         '', #name
#         '', #castingTime
#         '', #description
#         '', #level
#         null, #damageDiceAmount
#         null, #damageDice ID
#         null, #damageType ID
#         '', #savingThrow
#         '', #condition
#         '', #requiresVerbalComponent
#         '0', #requiresSomaticComponent
#         '', #materialComponent
#         '', #duration
#         '', #target
#         '0', #requiresAttackRoll
#         '', #ritual
#         '', #concentration
#         '', #school
#         '' #range in feet
# );
# INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
# VALUES ('66', #id
#         '', #name
#         '', #castingTime
#         '', #description
#         '', #level
#         null, #damageDiceAmount
#         null, #damageDice ID
#         null, #damageType ID
#         '', #savingThrow
#         '', #condition
#         '', #requiresVerbalComponent
#         '0', #requiresSomaticComponent
#         '', #materialComponent
#         '', #duration
#         '', #target
#         '0', #requiresAttackRoll
#         '', #ritual
#         '', #concentration
#         '', #school
#         '' #range in feet
# );
# INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
# VALUES ('67', #id
#         '', #name
#         '', #castingTime
#         '', #description
#         '', #level
#         null, #damageDiceAmount
#         null, #damageDice ID
#         null, #damageType ID
#         '', #savingThrow
#         '', #condition
#         '', #requiresVerbalComponent
#         '0', #requiresSomaticComponent
#         '', #materialComponent
#         '', #duration
#         '', #target
#         '0', #requiresAttackRoll
#         '', #ritual
#         '', #concentration
#         '', #school
#         '' #range in feet
# );
# INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
# VALUES ('68', #id
#         '', #name
#         '', #castingTime
#         '', #description
#         '', #level
#         null, #damageDiceAmount
#         null, #damageDice ID
#         null, #damageType ID
#         '', #savingThrow
#         '', #condition
#         '', #requiresVerbalComponent
#         '0', #requiresSomaticComponent
#         '', #materialComponent
#         '', #duration
#         '', #target
#         '0', #requiresAttackRoll
#         '', #ritual
#         '', #concentration
#         '', #school
#         '' #range in feet
# );
# INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
# VALUES ('69', #id
#         '', #name
#         '', #castingTime
#         '', #description
#         '', #level
#         null, #damageDiceAmount
#         null, #damageDice ID
#         null, #damageType ID
#         '', #savingThrow
#         '', #condition
#         '', #requiresVerbalComponent
#         '0', #requiresSomaticComponent
#         '', #materialComponent
#         '', #duration
#         '', #target
#         '0', #requiresAttackRoll
#         '', #ritual
#         '', #concentration
#         '', #school
#         '' #range in feet
# );
# INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
# VALUES ('70', #id
#         '', #name
#         '', #castingTime
#         '', #description
#         '', #level
#         null, #damageDiceAmount
#         null, #damageDice ID
#         null, #damageType ID
#         '', #savingThrow
#         '', #condition
#         '', #requiresVerbalComponent
#         '0', #requiresSomaticComponent
#         '', #materialComponent
#         '', #duration
#         '', #target
#         '0', #requiresAttackRoll
#         '', #ritual
#         '', #concentration
#         '', #school
#         '' #range in feet
# );
# INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
# VALUES ('', #id
#         '', #name
#         '', #castingTime
#         '', #description
#         '', #level
#         null, #damageDiceAmount
#         null, #damageDice ID
#         null, #damageType ID
#         '', #savingThrow
#         '', #condition
#         '', #requiresVerbalComponent
#         '0', #requiresSomaticComponent
#         '', #materialComponent
#         '', #duration
#         '', #target
#         '0', #requiresAttackRoll
#         '', #ritual
#         '', #concentration
#         '', #school
#         '' #range in feet
# );
# INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
# VALUES ('', #id
#         '', #name
#         '', #castingTime
#         '', #description
#         '', #level
#         null, #damageDiceAmount
#         null, #damageDice ID
#         null, #damageType ID
#         '', #savingThrow
#         '', #condition
#         '', #requiresVerbalComponent
#         '0', #requiresSomaticComponent
#         '', #materialComponent
#         '', #duration
#         '', #target
#         '0', #requiresAttackRoll
#         '', #ritual
#         '', #concentration
#         '', #school
#         '' #range in feet
# );
# INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
# VALUES ('', #id
#         '', #name
#         '', #castingTime
#         '', #description
#         '', #level
#         null, #damageDiceAmount
#         null, #damageDice ID
#         null, #damageType ID
#         '', #savingThrow
#         '', #condition
#         '', #requiresVerbalComponent
#         '0', #requiresSomaticComponent
#         '', #materialComponent
#         '', #duration
#         '', #target
#         '0', #requiresAttackRoll
#         '', #ritual
#         '', #concentration
#         '', #school
#         '' #range in feet
# );
# INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
# VALUES ('', #id
#         '', #name
#         '', #castingTime
#         '', #description
#         '', #level
#         null, #damageDiceAmount
#         null, #damageDice ID
#         null, #damageType ID
#         '', #savingThrow
#         '', #condition
#         '', #requiresVerbalComponent
#         '0', #requiresSomaticComponent
#         '', #materialComponent
#         '', #duration
#         '', #target
#         '0', #requiresAttackRoll
#         '', #ritual
#         '', #concentration
#         '', #school
#         '' #range in feet
# );
# INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
# VALUES ('', #id
#         '', #name
#         '', #castingTime
#         '', #description
#         '', #level
#         null, #damageDiceAmount
#         null, #damageDice ID
#         null, #damageType ID
#         '', #savingThrow
#         '', #condition
#         '', #requiresVerbalComponent
#         '0', #requiresSomaticComponent
#         '', #materialComponent
#         '', #duration
#         '', #target
#         '0', #requiresAttackRoll
#         '', #ritual
#         '', #concentration
#         '', #school
#         '' #range in feet
# );
# INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
# VALUES ('', #id
#         '', #name
#         '', #castingTime
#         '', #description
#         '', #level
#         null, #damageDiceAmount
#         null, #damageDice ID
#         null, #damageType ID
#         '', #savingThrow
#         '', #condition
#         '', #requiresVerbalComponent
#         '0', #requiresSomaticComponent
#         '', #materialComponent
#         '', #duration
#         '', #target
#         '0', #requiresAttackRoll
#         '', #ritual
#         '', #concentration
#         '', #school
#         '' #range in feet
# );
# INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
# VALUES ('', #id
#         '', #name
#         '', #castingTime
#         '', #description
#         '', #level
#         null, #damageDiceAmount
#         null, #damageDice ID
#         null, #damageType ID
#         '', #savingThrow
#         '', #condition
#         '', #requiresVerbalComponent
#         '0', #requiresSomaticComponent
#         '', #materialComponent
#         '', #duration
#         '', #target
#         '0', #requiresAttackRoll
#         '', #ritual
#         '', #concentration
#         '', #school
#         '' #range in feet
# );
# INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
# VALUES ('', #id
#         '', #name
#         '', #castingTime
#         '', #description
#         '', #level
#         null, #damageDiceAmount
#         null, #damageDice ID
#         null, #damageType ID
#         '', #savingThrow
#         '', #condition
#         '', #requiresVerbalComponent
#         '0', #requiresSomaticComponent
#         '', #materialComponent
#         '', #duration
#         '', #target
#         '0', #requiresAttackRoll
#         '', #ritual
#         '', #concentration
#         '', #school
#         '' #range in feet
# );
# INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
# VALUES ('', #id
#         '', #name
#         '', #castingTime
#         '', #description
#         '', #level
#         null, #damageDiceAmount
#         null, #damageDice ID
#         null, #damageType ID
#         '', #savingThrow
#         '', #condition
#         '', #requiresVerbalComponent
#         '0', #requiresSomaticComponent
#         '', #materialComponent
#         '', #duration
#         '', #target
#         '0', #requiresAttackRoll
#         '', #ritual
#         '', #concentration
#         '', #school
#         '' #range in feet
# );
# INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
# VALUES ('', #id
#         '', #name
#         '', #castingTime
#         '', #description
#         '', #level
#         null, #damageDiceAmount
#         null, #damageDice ID
#         null, #damageType ID
#         '', #savingThrow
#         '', #condition
#         '', #requiresVerbalComponent
#         '0', #requiresSomaticComponent
#         '', #materialComponent
#         '', #duration
#         '', #target
#         '0', #requiresAttackRoll
#         '', #ritual
#         '', #concentration
#         '', #school
#         '' #range in feet
# );
