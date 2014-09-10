
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('42', #id
        'Call Lightning', #name
        '1 action', #castingTime
        'A storm cloud appears in the shape of a cylinder that is 10 feet tall with a 60-foot radius, centered on a point you can see 100 feet directly above you. The spell fails if you can’t see a point in the air where the storm cloud could appear (for example, if you are in a room that can’t accommodate the cloud). /nWhen you cast the spell, choose a point you can see within range. A bolt of lightning flashes down from the cloud to that point. Each creature within 5 feet of that point must make a Dexterity saving throw. A creature takes 3d10 lightning damage on a failed save, or half as much damage on a successful one. On each of your turns until the spell ends, you can use your action to call down lightning in this way again, targeting the same point or a different one. /nIf you are outdoors in stormy conditions when you cast this spell, the spell gives you control over the existing storm instead of creating a new one. Under such conditions, the spell’s damage increases by 1d10. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 4th or higher level, the damage increases by 1d10 for each slot level above 3rd.', #description
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
        'You attempt to suppress strong emotions in a group of people. Each humanoid in a 20-foot-radius sphere centered on a point you choose within range must make a Charisma saving throw; a creature can choose tofail this saving throw if it wishes. If a creature fails its saving throw, choose one of the following two effects. You can suppress any effect causing a target to be charmed or frightened. When this spell ends, any suppressed effect resumes, provided that its duration has not expired in the meantime. /nAlternatively, you can make a target indifferent about creatures of your choice that it is hostile toward. This indifference ends if the target is attacked or harmed by a spell or if it w itnesses any of its friends being harmed. When the spell ends, the creature becomes hostile again, unless the DM rules otherwise.', #description
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
        'You create an invisible sensor within range in a location familiar to you (a place you have visited or seen before) or in an obvious location that is unfamiliar to you (such as behind a door, around a corner, or in a grove of trees). The sensor remains in place for the duration, and it can’t be attacked or otherwise interacted with. /nWhen you cast the spell, you choose seeing or hearing. You can use the chosen sense through the sensor as if you were in its space. /nAs your action, you can switch between seeing and hearing. /nA creature that can see the sensor (such as a creature benefiting from see invisibility or truesight) sees a luminous, intangible orb about the size of your fist.', #description
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
        'You speak a one-word command to a creature you can see within range. The target must succeed on a Wisdom saving throw or follow the command on its next turn. The spell has no effect if the target is undead, if it doesn’t understand your language, or if your command is directly harmful to it. /nSome typical commands and their effects follow. You might issue a command other than one described here. If you do so, the DM determines how the target behaves. If the target can’t follow your command, the spell ends. /bullets• /bApproach./b The target moves toward you by the shortest and most direct route, ending its turn if it moves within 5 feet of you. /bt• /bDrop./b The target drops whatever it is holding and then ends its turn. /bt• /bFlee./b The target spends its turn moving away from you by the fastest available means. /bt• /bGrovel./b The target falls prone and then ends its turn. /bt• /bHalt./b The target doesn’t move and takes no actions. A flying creature stays aloft, provided that it is able to do so. If it must move to stay aloft, it flies the minimum distance needed to remain in the air./bullets /n/bAt Higher Levels./b When you cast this spell using a spell slot of 2nd level or higher, you can affect one additional creature for each slot level above 1st. The creatures must be within 30 feet of each other when you target them.', #description
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
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('61', #id
        'Cone of Cold', #name
        '1 action', #castingTime
        'A blast of cold air erupts from your hands. Each creature in a 60-foot cone must make a Constitution saving throw. A creature takes 8d8 cold damage on a failed save, or half as much damage on a successful one. A creature killed by this spell becomes a frozen statue until it thaws. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 6th level or higher, the damage increases by 1d8 for each slot level above 5th.', #description
        '5', #level
        '8', #damageDiceAmount
        '3', #damageDice ID
        '3', #damageType ID
        'Constitution', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a small crystal or glass cone', #materialComponent
        'Instantaneous', #duration
        'all creatures in a 60 ft cone', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Evocation', #school
        '60' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('62', #id
        'Confusion', #name
        '1 action', #castingTime
        'This spell assaults and twists creatures'' minds, spawning delusions and provoking uncontrolled action. Each creature in a 10-foot-radius sphere centered on a point you choose within range must succeed on a Wisdom saving throw when you cast this spell or be affected by it. An affected target can’t take reactions and must roll a d10 at the start of each of its turns to determine its behavior for that turn. /bullets1 The creature uses all its movement to move in a random direction. To determine the direction, roll a d8 and assign a direction to each die face. The creature doesn’t take an action this turn. /bt2-6 The creature doesn’t move or take actions this turn. /bt7-8 The creature uses its action to make a melee attack against a randomly determined creature within its reach. If there is no creature within its reach, the creature does nothing this turn. /bt9-10 The creature can act and move normally./bullets At the end of each of its turns, an affected target can make a Wisdom saving throw. If it succeeds, this effect ends for that target. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 5th level or higher, the radius of the sphere increases by 5 feet for each slot level above 4th.', #description
        '1', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        'Wisdom', #savingThrow
        'Confused', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'three nut shells', #materialComponent
        'Concentration, up to 1 minute', #duration
        'all creatures in a 10 ft radius', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Enchantment', #school
        '90' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('63', #id
        'Conjure Animals', #name
        '1 action', #castingTime
        'You summon fey spirits that take the form of beasts and appear in unoccupied spaces that you can see within range. Choose one of the following options for what appears: /bullets• One beast of challenge rating 2 or lower /bt• Two beasts of challenge rating 1 or lower /bt• Four beasts of challenge rating 1/2 or lower /bt• Eight beasts of challenge rating 1/4 or lower/bullets Each beast is also considered fey, and it disappears when it drops to 0 hit points or when the spell ends. /nThe summoned creatures are friendly to you and your companions. Roll initiative for the summoned creatures as a group, which has its own turns. They obey any verbal commands that you issue to them (no action required by you). If you don’t issue any commands to them, they defend themselves from hostile creatures, but otherwise take no actions. /nThe DM has the creatures’ statistics. /n/bAt Higher Levels./b When you cast this spell using certain higher-level spell slots, you choose one of the summoning options above, and more creatures appear: twice as many with a 5th-level slot, three times as many with a 7th-level slot, and four times as many with a 9th-level slot.', #description
        '3', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
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
        '60' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('64', #id
        'Conjure Barrage', #name
        '1 action', #castingTime
        'You throw a nonmagical weapon or fire a piece of nonmagical ammunition into the air to create a cone of identical weapons that shoot forward and then disappear. Each creature in a 60-foot cone must succeed on a Dexterity saving throw. A creature takes 3d8 damage on a failed save, or half as much damage on a successful one. The damage type is the same as that of the weapon or ammunition used as a component.', #description
        '3', #level
        '3', #damageDiceAmount
        '3', #damageDice ID
        null, #damageType ID
        'Dexterity', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'one piece of ammunition or a thrown weapon', #materialComponent
        'Instantaneous', #duration
        'all creatures in a 60 ft cone', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Conjuration', #school
        '60' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('65', #id
        'Conjure Celestial', #name
        '1 minute', #castingTime
        'You summon a celestial  challenge rating 4 or lower, which appears in an unoccupied space that you can see within range. The celestial disappears when it drops to 0 hit points or when the spell ends. /nThe celestial is friendly to you and your companions for the duration. Roll initiative for the celestial, which has its own turns. It obeys any verbal commands that you issue to it (no action required by you), as long as they don’t violate its alignment. If you don’t issue any commands to the celestial, it defends itself from hostile creatures but otherwise takes no actions. /nThe DM has the celestial’s statistics. /n/bAt Higher Levels./b When you cast this spell using a 9th-level spell slot, you summon a celestial  challenge rating 5 or lower.', #description
        '7', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
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
        '90' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('66', #id
        'Conjure Elemental', #name
        '1 minute', #castingTime
        'You call forth an elemental servant. Choose an area of air, earth, fire, or water that fills a 10-foot cube within range. An elemental of challenge rating 5 or lower appropriate to the area you chose appears in an unoccupied space within 10 feet of it. For example, a fire elemental emerges from a bonfire, and an earth elemental rises up from the ground. The elemental disappears when it drops to 0 hit points or when the spell ends. /nThe elemental is friendly to you and your companions for the duration. Roll initiative for the elemental, which has its own turns. It obeys any verbal commands that you issue to it (no action required by you). If you don’t issue any commands to the elemental, it defends itself from hostile creatures but otherwise takes no actions. If your concentration is broken, the elemental doesn’t disappear. Instead, you lose control of the elemental, it becomes hostile toward you and your companions, and it might attack. An uncontrolled elemental can’t be dismissed by you, and it disappears 1 hour after you summoned it. /nThe DM has the elemental’s statistics. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 6th level or higher, the challenge rating increases by 1 for each slot level above 5th. ', #description
        '5', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'burning incense for air, soft clay for earth, sulfur and phosphorus for fire, or water and sand for water', #materialComponent
        'Concentration, up to 1 hour', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Conjuration', #school
        '90' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('67', #id
        'Conjure Fey', #name
        '1 minute', #castingTime
        'You summon a fey creature of challenge rating 6 or lower, or a fey spirit that takes the form of a beast of challenge rating 6 or lower. It appears in an unoccupied space that you can see within range. The fey creature disappears when it drops to 0 hit points or when the spell ends. /nThe fey creature is friendly to you and your companions for the duration. Roll initiative for the creature, which has its own turns. It obeys any verbal commands that you issue to it (no action required by you), as long as they don''t violate its alignment. If you don’t issue any commands to the fey creature, it defends itself from hostile creatures but otherwise takes no actions. /nIf your concentration is broken, the fey creature doesn’t disappear. Instead, you lose control of the fey creature, it becomes hostile toward you and your companions, and it might attack. An uncontrolled fey creature can''t be dismissed by you, and it disappears 1 hour after you summoned it. /nThe DM has the fey creature’s statistics. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 7th level or higher, the challenge rating increases by 1 for each slot level above 6th.', #description
        '6', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
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
        '90' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('68', #id
        'Conjure Minor Elemental', #name
        '1 minute', #castingTime
        'You summon elementals that appear in unoccupied spaces that you can see within range. You choose one the following options for what appears: /bullets• One elemental of challenge rating 2 or lower /bt• Two elementals of challenge rating 1 or lower /bt• Four elementals of challenge rating 1/2 or lower /bt• Eight elementals of challenge rating 1/4 or lower./bullets An elemental summoned by this spell disappears when it drops to 0 hit points or when the spell ends. /nThe summoned creatures are friendly to you and your companions. Roll initiative for the summoned creatures as a group, which has its own turns. They obey any verbal commands that you issue to them (no action required by you). If you don’t issue any commands to them, they defend themselves from hostile creatures, but otherwise take no actions. /nThe DM has the creatures'' statistics. /n/bAt Higher Levels./b When you cast this spell using certain higher-level spell slots, you choose one of the summoning options above, and more creatures appear: twice as many with a 6th-level slot and three times as many with an 8th-level slot.', #description
        '4', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
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
        '90' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('69', #id
        'Conjure Volley', #name
        '1 minute', #castingTime
        'You fire a piece of nonmagical ammunition from a ranged weapon or throw a nonmagical weapon into the air and choose a point within range. Hundreds of duplicates of the ammunition or weapon fall in a volley from above and then disappear. Each creature in a 40-foot-radius. 20-foot-high cylinder centered on that point must make a Dexterity saving throw. A creature takes 8d8 damage on a failed save, or half as much damage on a successful one. The damage type is the same as that of the ammunition or weapon.', #description
        '5', #level
        '8', #damageDiceAmount
        '3', #damageDice ID
        null, #damageType ID
        'Dexterity', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'one piece of ammunition or one thrown weapon', #materialComponent
        'Instantaneous', #duration
        'all creatures in a 40 ft radius', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Conjuration', #school
        '150' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('70', #id
        'Conjure Woodland Beings', #name
        '1 action', #castingTime
        'You summon fey creatures that appear in unoccupied spaces that you can see within range. Choose one of the following options for what appears: /bullets• One fey creature of challenge rating 2 or lower /bt• Twofey creatures of challenge rating 1 or lower /bt• Four fey creatures of challenge rating 1/2 or lower /bt• Eight fey creatures of challenge rating 1/4 or lower/bullets A summoned creature disappears when it drops to 0 hit points or when the spell ends. /nThe summoned creatures are friendly to you and your companions. Roll initiative for the summoned creatures as a group, which have their own turns. They obey any verbal commands that you issue to them (no action required by you). If you don''t issue any commands to them, they defend themselves from hostile creatures, but otherwise take no actions. /nThe DM has the creatures’ statistics. /n/bAt Higher Levels./b When you cast this spell using certain higher-level spell slots, you choose one of the summoning options above, and more creatures appear: twice as many with a 6th-level slot and three times as many with an 8th-level slot.', #description
        '4', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'one holly berry per creature summoned', #materialComponent
        'Concentration, up to 1 hour', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Conjuration', #school
        '60' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('72', #id
        'Contact Other Plane', #name
        '1 minute', #castingTime
        'You mentally contact a demigod, the spirit of a long-dead sage, or some other mysterious entity from another plane. Contacting this extraplanar intelligence can strain or even break your mind. When you cast this spell, make a DC 15 Intelligence saving throw. On a failure, you take 6d6 psychic damage and are insane until you finish a long rest. While insane, you can’t take actions, can’t understand what other creatures say, can’t read, and speak only in gibberish. A greater restoration spell cast on you ends this effect. /nOn a successful save, you can ask the entity up tofive questions. You must ask your questions before the spell ends. The DM answers each question with one word, such as “yes,” “no,” “maybe,” “never,” “irrelevant,” or “unclear” (if the entity doesn’t know the answer to the question). If a one-word answer would be misleading, the DM might instead offer a short phrase as an answer.', #description
        '5', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '0', #requiresSomaticComponent
        '', #materialComponent
        '1 minute', #duration
        '', #target
        '0', #requiresAttackRoll
        '1', #ritual
        '0', #concentration
        'Divination', #school
        '0' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('73', #id
        'Contagion', #name
        '1 action', #castingTime
        'Your touch inflicts disease. Make a melee spell attack against a creature within your reach. On a hit, you afflict the creature with a disease of your choice from any of the ones described below. /nAt the end of each of the target’s turns, it must make a Constitution saving throw. After failing three of these saving throws, the disease’s effects last for the duration, and the creature stops making these saves. After succeeding on three of these saving throws, the creature recovers from the disease, and the spell ends. /nSince this spell induces a natural disease in its target, any effect that removes a disease or otherwise ameliorates a disease’s effects apply to it. /n/bBlinding Sickness./b Pain grips the creature’s mind, and its eyes turn milky white. The creature has disadvantage on Wisdom checks and W isdom saving throws and is blinded. /n/bFilth Fever./b A raging fever sweeps through the creature’s body. The creature has disadvantage on Strength checks, Strength saving throws, and attack rolls that use Strength. /n/bFlesh Rot./b The creature’s flesh decays. The creature has disadvantage on Charisma checks and vulnerability to all damage. /n/bMindfire./b The creature’s mind becomes feverish. The creature has disadvantage on Intelligence checks and Intelligence saving throws, and the creature behaves as if under the effects of the confusion spell during combat. /n/bSeizure./b The creature is overcome with shaking. The creature has disadvantage on Dexterity checks, Dexterity saving throws, and attack rolls that use Dexterity. /n/bSlimy Doom./b The creature begins to bleed uncontrollably. The creature has disadvantage on Constitution checks and Constitution saving throws. In addition, whenever the creature takes damage, it is stunned until the end of its next turn.', #description
        '5', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        'Constitution', #savingThrow
        'Diseased', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        '7 days', #duration
        'a creature', #target
        '1', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Necromancy', #school
        '5' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('74', #id
        'Contingency', #name
        '10 minutes', #castingTime
        'Choose a spell of 5th level or lower that you can cast, that has a casting time of 1 action, and that can target you. You cast that spell—called the contingent spell—as part of casting contingency, expending spell slots for both, but the contingent spell doesn\'t come into effect. Instead, it takes effect when a certain circumstance occurs. You describe that circumstance when you cast the two spells. For example, a contingency cast with water breathing might stipulate that water breathing comes into effect when you are engulfed in water or a similar liquid. /nThe contingent spell takes effect immediately after the circumstance is met for the first time, whether or not you want it to. and then contingency ends. /nThe contingent spell takes effect only on you, even if it can normally target others. You can use only one contingency spell at a time. If you cast this spell again, the effect of another contingency spell on you ends. Also, contingency ends on you if its material component is ever not on your person.', #description
        '6', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a statuette of yourself carved from ivory and decorated with gems worth at least 1,500 gp', #materialComponent
        '10 days', #duration
        'Self', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Evocation', #school
        '0' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('75', #id
        'Continual Flame', #name
        '1 action', #castingTime
        'A flame, equivalent in brightness to a torch, springs forth from an object that you touch. The effect looks like a regular flame, but it creates no heat and doesn’t use oxygen. A continual flame can be covered or hidden but not smothered or quenched.', #description
        '2', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'ruby dust worth 50 gp, which the spell consumes', #materialComponent
        'Until Dispelled', #duration
        'an object', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Evocation', #school
        '0' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('76', #id
        'Control Water', #name
        '1 action', #castingTime
        'Until the spell ends, you control any freestanding water inside an area you choose that is a cube up to 100 feet on a side. You can choose from any of the following effects when you cast this spell. As an action on your turn, you can repeat the same effect or choose a different one. /n/bFlood./b You cause the water level of all standing water in the area to rise by as much as 20 feet. If the area includes a shore, the flooding water spills over onto dry land. /nIf you choose an area in a large body of water, you instead create a 20-foot tall wave that travels from one side of the area to the other and then crashes down. Any Huge or smaller vehicles in the wave’s path are carried with it to the other side. Any Huge or smaller vehicles struck by the wave have a 25 percent chance of capsizing. /nThe water level remains elevated until the spell ends or you choose a different effect. If this effect produced a wave, the wave repeats on the start of your next turn while the flood effect lasts. /n/bPart Water./b You cause water in the area to move apart and create a trench. The trench extends across the spell’s area, and the separated water forms a wall to either side. The trench remains until the spell ends or you choose a different effect. The water then slowly fills in the trench over the course of the next round until the normal water level is restored. /n/bRedirect Flow./b You cause flowing water in the area to move in a direction you choose, even if the water has toflow over obstacles, up walls, or in other unlikely directions. The water in the area moves as you direct it, but once it moves beyond the spell’s area, it resumes its flow based on the terrain conditions. The water continues to move in the direction you chose until the spell ends or you choose a different effect. /n/bWhirlpool./b This effect requires a body of water at least 50 feet square and 25 feet deep. You cause a whirlpool to form in the center of the area. The whirlpool forms a vortex that is 5 feet w ide at the base, up to 50 feet w ide at the top, and 25 feet tall. Any creature or object in the water and within 25 feet of the vortex is pulled 10 feet toward it. A creature can swim away from the vortex by making a Strength (Athletics) check against your spell save DC. /nWhen a creature enters the vortex for the first time on a turn or starts its turn there, it must make a Strength saving throw. On a failed save, the creature takes 2d8 bludgeoning damage and is caught in the vortex until the spell ends. On a successful save, the creature takes half damage, and isn’t caught in the vortex. A creature caught in the vortex can use its action to try to swim away from the vortex as described above, but has disadvantage on the Strength (Athletics) check to do so. /nThe first time each turn that an object enters the vortex, the object takes 2d8 bludgeoning damage; this damage occurs each round it remains in the vortex.', #description
        '4', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'drop of water and a pinch of dust', #materialComponent
        'Concentration, up to 10 minutes', #duration
        'freestanding water in a cube up to 100 feet', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Transmutation', #school
        '300' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('77', #id
        'Control Weather', #name
        '10 minutes', #castingTime
        'You take control of the weather within 5 miles of you for the duration. You must be outdoors to cast this spell. Moving to a place where you don’t have a clear path to the sky ends the spell early. /nWhen you cast the spell, you change the current weather conditions, which are determined by the DM based on the climate and season. You can change precipitation, temperature, and wind. It takes 1d4 x 10 minutes for the new conditions to take effect. Once they do so, you can change the conditions again. When the spell ends, the weather gradually returns to normal. /nWhen you change the weather conditions, find a current condition on the following tables and change its stage by one, up or down. When changing the wind, you can change its direction. /n/bPrecipitation/b /n/bStage/b*tab10*/bCondition/b /n1*tab25*Clear /n2*tab25*Light clouds /n3*tab25*Overcast or ground fog /n4*tab25*Rain, hail, or snow /n5*tab25*Torrential rain, driving hail, or blizzard /n/bTemperature/b /n/bStage*tab10*Condition/b/n1*tab25*Unbearable heat/n2*tab25*Hot/n3*tab25*Warm/n4*tab25*Cool /n5*tab25*Cold /n6*tab25*Arctic cold /n/bWind/b /n/bStage*tab10*/bCondition /n1*tab25*Calm /n2*tab25*Moderate wind /n3*tab25*Strong wind /n4*tab25*Gale /n5*tab25*Storm', #description
        '8', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '0', #requiresSomaticComponent
        'burning incense and bits of earth and wood mixed in water', #materialComponent
        'Concentration, up to 8 hours', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Transmutation', #school
        '26400' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('78', #id
        'Cordon of Arrows', #name
        '1 action', #castingTime
        'You plant four pieces of nonmagical ammunition— arrows or crossbow bolts—in the ground within range and lay m agic upon them to protect an area. Until the spell ends, whenever a creature other than you comes within 30 feet of the ammunition for the first time on a turn or ends its turn there, one piece of ammunition flies up to strike it. The creature must succeed on a Dexterity saving throw or take 1d6 piercing damage. The piece of ammunition is then destroyed. The spell ends when no ammunition remains. /nWhen you cast this spell, you can designate any creatures you choose, and the spell ignores them. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 3rd level or higher, the amount of ammunition that can be affected increases by two for each slot level above 2nd.', #description
        '2', #level
        '1', #damageDiceAmount
        '2', #damageDice ID
        '8', #damageType ID
        'Dexterity', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'four or more arrows or bolts', #materialComponent
        '8 hours', #duration
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Transmutation', #school
        '5' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('79', #id
        'Counterspell', #name
        '1 reaction, which you take when you see a creature within 60 feet of you casting a spell', #castingTime
        'You attempt to interrupt a creature in the process of casting a spell. If the creature is casting a spell of 3rd level or lower, its spell fails and has no effect. If it is casting a spell of 4th level or higher, make an ability check using your spellcasting ability. The DC equals 10 + the spell’s level. On a success, the creature’s spell fails and has no effect. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 4th level or higher, the interrupted spell has no effect if its level is less than or equal to the level of the spell slot you used.', #description
        '3', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        '', #savingThrow
        '', #condition
        '0', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        'Instantaneous', #duration
        'a creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Abjuration', #school
        '60' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('80', #id
        'Create Food and Water', #name
        '1 action', #castingTime
        'You create 45 pounds of food and 30 gallons of water on the ground or in containers within range, enough to sustain up to fifteen humanoids or five steeds for 24 hours. The food is bland but nourishing, and spoils if uneaten after 24 hours. The water is clean and doesn’t go bad.', #description
        '3', #level
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
        '0', #ritual
        '0', #concentration
        'Conjuration', #school
        '30' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('81', #id
        'Create or Destroy Water', #name
        '1 action', #castingTime
        'You either create or destroy water. /n/bCreate Water./b You create up to 10 gallons of clean water within range in an open container. Alternatively, the water falls as rain in a 30-foot cube within range, extinguishing exposed flames in the area. /n/bDestroy Water./b You destroy up to 10 gallons of water in an open container within range. Alternatively, you destroy fog in a 30-foot cube within range. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 2nd level or higher, you create or destroy 10 additional gallons of water, or the size of the cube increases by 5 feet, for each slot level above 1st.', #description
        '1', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a drop of water if creating water or a few grains of sand if destroying it', #materialComponent
        'Instantaneous', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Transmutation', #school
        '30' #range in feet
);
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('82', #id
        'Create Undead', #name
        '1 minute', #castingTime
        'You can cast this spell only at night. Choose up to three corpses of Medium or Small humanoids within range. Each corpse becomes a ghoul under your control. (The DM has game statistics for these creatures.) /nAs a bonus action on each of your turns, you can mentally command any creature you animated with this spell if the creature is within 120 feet of you (if you control multiple creatures, you can command any or all of them at the same time, issuing the same command to each one). You decide what action the creature w ill take and where it will move during its next turn, or you can issue a general command, such as to guard a particular chamber or corridor. If you issue no commands, the creature only defends itself against hostile creatures. Once given an order, the creature continues tofollow it until its task is complete. /nThe creature is under your control for 24 hours, after which it stops obeying any command you have given it. To maintain control of the creature for another 24 hours, you must cast this spell on the creature before the current 24-hour period ends. This use of the spell reasserts your control over up to three creatures you have animated with this spell, rather than animating new ones. /n/bAt Higher Levels./b When you cast this spell using a 7th-level spell slot, you can animate or reassert control over four ghouls. When you cast this spell using an 8th-level spell slot, you can animate or reassert control over five ghouls or two ghasts or wights. When you cast this spell using a 9th-level spell slot, you can animate or reassert control over six ghouls, three ghasts or wights, or two mummies.', #description
        '6', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'one clay pot filled with grave dirt, one clay pot filled with brackish water, and one 150 gp black onyx stone for each corpse', #materialComponent
        'Instantaneous', #duration
        'up to 3 corpses of Medium or Small humanoids', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Necromancy', #school
        '10' #range in feet
);

INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('83', #id
        'Creation', #name
        '1 minute', #castingTime
        'You pull wisps of shadow material from the Shadowfell to create a nonliving object of vegetable matter within range: soft goods, rope, wood, or something similar. You can also use this spell to create mineral objects such as stone, crystal, or metal. The object created must be no larger than a 5-foot cube, and the object must be of a form and material that you have seen before. /nThe duration depends on the object’s material. If the object is composed of multiple materials, use the shortest duration. <table><tr><th>Material</th><th>Duration</th></tr> <tr><td>Vegetable matter</td><td>1 day</td></tr> <tr><td>Stone or crystal</td><td>12 hours</th></tr> <tr><td>Precious metals</td><td>1 hour</th></tr> <tr><td>Gems</td><td>10 minutes</th></tr> <tr><td>Adamantine or mithral</td><td>1 minute</th></tr></table> /nUsing any material created by this spell as another spell’s material component causes that spell to fail. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 6th level or higher, the cube increases by 5 feet for each slot level above 5th.', #description
        '5', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        'a tiny piece of matter of the same type of the item you plan to create', #materialComponent
        'Special', #duration
        '', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '0', #concentration
        'Illusion', #school
        '30' #range in feet
);

INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('84', #id
        'Crown of Madness', #name
        '1 action', #castingTime
        'One humanoid of your choice that you can see within range must succeed on a W isdom saving throw or become charmed by you for the duration. While the target is charmed in this way, a twisted crown of jagged iron appears on its head, and a madness glows in its eyes. /nThe charmed target must use its action before moving on each of its turns to make a melee attack against a creature other than itself that you mentally choose. /nThe target can act normally on its turn if you choose no creature or if none are within its reach. /nOn your subsequent turns, you must use your action to maintain control over the target, or the spell ends. Also, the target can make a Wisdom saving throw at the end of each of its turns. On a success, the spell ends.', #description
        '2', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        'Wisdom', #savingThrow
        'Charmed', #condition
        '1', #requiresVerbalComponent
        '1', #requiresSomaticComponent
        '', #materialComponent
        'Concentration, up to 1 minute', #duration
        'one humanoid creature', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Enchantment', #school
        '120' #range in feet
);

INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('85', #id
        'Crusader\'s Mantle', #name
        '', #castingTime
        'Holy power radiates from you in an aura with a 30-foot radius, awakening boldness in friendly creatures. Until the spell ends, the aura moves with you, centered on you. While in the aura, each nonhostile creature in the aura (including you) deals an extra 1d4 radiant damage when it hits with a weapon attack.', #description
        '3', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
        '', #savingThrow
        '', #condition
        '1', #requiresVerbalComponent
        '0', #requiresSomaticComponent
        '', #materialComponent
        'Concentration, up to 1 minute', #duration
        'all friendly creatures in a 30 ft radius', #target
        '0', #requiresAttackRoll
        '0', #ritual
        '1', #concentration
        'Evocation', #school
        '30' #range in feet
);

INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
VALUES ('86', #id
        'Cure Wounds', #name
        '1 action', #castingTime
        'A creature you touch regains a number of hit points equal to 1d8 + your spellcasting ability modifier. This spell has no effect on undead or constructs. /n/bAt Higher Levels./b When you cast this spell using a spell slot of 2nd level or higher, the healing increases by 1d8 for each slot level above 1st.', #description
        '1', #level
        null, #damageDiceAmount
        null, #damageDice ID
        null, #damageType ID
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
        'Evocation', #school
        '0' #range in feet
);
