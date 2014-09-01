INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
  VALUES ('300', #id
          'Hex', #name
          '1 bonus action', #castingTime
          'You place a curse on a creature that you can see within range. Until the spell ends, you deal an extra 1d6 necrotic damage to the target whenever you hit it with an attack. Also, choose one ability when you cast the spell. The target has disadvantage on ability checks made with the cho se n ability. If the target drops to 0 hit points before this spell ends, you can use a bonus action on a subsequent turn of yours to curse a new creature. A rem ove cu rsecast on the target ends this spell early. At Higher Levels. When you cast this spell using a spell slot of 3rd or 4th level, you can maintain your concentration on the spell for up to 8 hours. When you use a spell slot of 5th level or higher, you can maintain your concentration on the spell for up to 24 hours.',
          '1', #level
          '1', #damageDiceAmount
          '2', #damageDice ID
          '7', #damageType ID
          '', #savingThrow
          '', #condition
          '1', #requiresVerbalComponent
          '1', #requiresSomaticComponent
          'the petrified eye of a newt', #materialComponent
          'Concentration, up to 1 hour', #duration
          'creature you can see', #target
          '0', #requiresAttackRoll
          '0', #ritual
          '1', #concentration
          'Enchantment', #school
          '90' #range in feet
          );
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
  VALUES ('299', #id
          'Hold Person', #name
          '1 action', #castingTime
          'Choose a humanoid that you can see within range. The target must succeed on a Wisdom saving throw or be paralyzed for the duration. At the end of each of its turns, the target can make another Wisdom saving throw. On a su cce ss, the spell ends on the target. At Higher Levels. When you cast this spell using a spell slot of 3rd level or higher, you can target one additional humanoid for each slot level above 2nd. The humanoids must be within 30 feet of each other when you target them.',
          '2', #level
          null, #damageDiceAmount
          null, #damageDice ID
          null, #damageType ID
          'Wisdom', #savingThrow
          'paralyzed', #condition
          '1', #requiresVerbalComponent
          '1', #requiresSomaticComponent
          'a small, straight piece of iron', #materialComponent
          'Concentration, up to 1 minute', #duration
          'humanoid you can see per spell slot', #target
          '0', #requiresAttackRoll
          '0', #ritual
          '1', #concentration
          'Enchantment', #school
          '60' #range in feet
          );
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
  VALUES ('298', #id
          'Hold Monster', #name
          '1 action', #castingTime
          'Choose a creature that you can see within range. The target must succeed on a Wisdom saving throw or be paralyzed for the duration. This spell has no effect on undead. At the end of each of its turns, the target can make another Wisdom saving throw. On a success, the spell ends on the target. At Higher Levels. When you cast this spell using a spell slot of 6th level or higher, you can target one additional creature for each slot level above 5th. The creatures must be within 30 feet of each other when you target them.',
          '5', #level
          null, #damageDiceAmount
          null, #damageDice ID
          null, #damageType ID
          'Wisdom', #savingThrow
          'paralyzed', #condition
          '1', #requiresVerbalComponent
          '1', #requiresSomaticComponent
          'a small, straight piece of iron', #materialComponent
          'Concentration, up to 1 minute', #duration
          'humanoid you can see per spell slot', #target
          '0', #requiresAttackRoll
          '0', #ritual
          '1', #concentration
          'Enchantment', #school
          '90' #range in feet
          );
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
  VALUES ('297', #id
          'Holy Aura', #name
          '1 action', #castingTime
          'Divine light washes out from you and coalesces in a soft radiance in a 30-foot radius around you. Creatures of your choice in that radius when you cast this spell shed dim light in a 5-foot radius and have advantage on all saving throws, and other creatures have disadvantage on attack rolls against them until the spell ends. In addition, when a fiend or an undead hits an affected creature with a melee attack, the aura flashes with brilliant light. The attacker must succeed on a Constitution saving throw or be blinded until the spell ends.',
          '8', #level
          null, #damageDiceAmount
          null, #damageDice ID
          null, #damageType ID
          'Constitution', #savingThrow
          'blinded', #condition
          '1', #requiresVerbalComponent
          '1', #requiresSomaticComponent
          'a tiny reliquary worth at least 1,000 gp containing a sacred relic, such as a scrap of cloth from a saint''s robe or a pie ce of parchment from a religious text', #materialComponent
          'Concentration, up to 1 minute', #duration
          'humanoid you can see per spell slot', #target
          '0', #requiresAttackRoll
          '0', #ritual
          '1', #concentration
          'abjuration', #school
          '0' #range in feet
          );
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
  VALUES ('296', #id
          'Hunger of Hadar', #name
          '1 action', #castingTime
          'You open a gateway to the dark between the stars, a region infested with unknown horrors. A 20-foot-radius sphere of blackness and bitter cold appears, centered on a point with range and lasting for the duration. This void is filled with a cacophony of soft whispers and slurping noises that can be heard up to 30 feet away. No light, magical or otherwise, can illuminate the area, and creatures fully within the area are blinded. The void creates a warp in the fabric of space, and the area is difficult terrain. Any creature that starts its turn in the area takes 2d6 cold damage. Any creature that ends its turn in the area must succeed on a Dexterity saving throw or take 2d6 acid damage as milky, otherworldly tentacles rub against it.',
          '3', #level
          '2', #damageDiceAmount
          '2', #damageDice ID
          '1', #damageType ID
          'Dexterity', #savingThrow
          'blinded', #condition
          '1', #requiresVerbalComponent
          '1', #requiresSomaticComponent
          'a pickled octopus tentacle', #materialComponent
          'Concentration, up to 1 minute', #duration
          'humanoid you can see per spell slot', #target
          '0', #requiresAttackRoll
          '0', #ritual
          '1', #concentration
          'conjuration', #school
          '150' #range in feet
          );
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
  VALUES ('295', #id
          'Hunter''s Mark', #name
          '1 bonus action', #castingTime
          'You choose a creature you can see within range and mystically mark it as your quarry. Until the spell ends, you deal an extra 1d6 damage to the target whenever you hit it with a weapon attack, and you have advantage on any Wisdom (Perception) or Wisdom (Survival) check you make to find it. If the target drops to 0 hit points before this spell ends, you can use a bonus action on a subsequent turn of yours to mark a new creature. At Higher Levels. When you cast this spell using a spell slot of 3rd or 4th level, you can maintain your concentration on the spell for up to 8 hours. When you use a spell slot of 5th level or higher, you can maintain your concentration on the spell for up to 24 hours.',
          '1', #level
          '1', #damageDiceAmount
          '2', #damageDice ID
          null, #damageType ID
          '', #savingThrow
          '', #condition
          '1', #requiresVerbalComponent
          '0', #requiresSomaticComponent
          '', #materialComponent
          'Concentration, up to 1 hour', #duration
          'humanoid you can see per spell slot', #target
          '0', #requiresAttackRoll
          '0', #ritual
          '1', #concentration
          'divination', #school
          '90' #range in feet
          );
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
  VALUES ('294', #id
          'Hypnotic Pattern', #name
          '1 action', #castingTime
          'You create a twisting pattern of colors that weaves through the air inside a 30-foot cube within range. The pattern appears for a moment and vanishes. Each creature in the area who sees the pattern must make a Wisdom saving throw. On a failed save, the creature becomes charmed for the duration. While charmed by this spell, the creature is incapacitated and has a speed of 0. The spell ends for an affected creature if it takes any damage or if someone else uses an action to shake the creature out of its stupor.',
          '3', #level
          null, #damageDiceAmount
          null, #damageDice ID
          null, #damageType ID
          'Wisdom', #savingThrow
          'incapacitated', #condition
          '0', #requiresVerbalComponent
          '1', #requiresSomaticComponent
          'a glowing stick of incense or a crystal vial filled with phosphorescent material', #materialComponent
          'Concentration, up to 1 minute', #duration
          'humanoid you can see per spell slot', #target
          '0', #requiresAttackRoll
          '0', #ritual
          '1', #concentration
          'illusion', #school
          '120' #range in feet
          );
INSERT INTO `charactersheet`.`spellmodel` (`id`, `name`, `castingTime`,`description`, `level`, `damageDiceAmount`,`damageDice_id`, `damageType_id`, `savingThrow`, `condition`,`requiresVerbalComponent`,`requiresSomaticComponent`,`materialComponent`, `duration`, `target`,`requiresAttackRoll`,`ritual`,`concentration`,`school`, `range`)
  VALUES ('293', #id
          'Ice Storm', #name
          '1 action', #castingTime
          'A hail of rock-hard ice pounds to the ground in a 20-foot-radius, 40-foot-high cylinder centered on a point within range. Each creature in the cylinder must make a Dexterity saving throw. A creature takes 2d8 bludgeoning damage and 4d6 cold damage on a failed save, or half as much damage on a successful one. Hailstones turn the storm''s area of effect into difficult terrain until the end of your next turn. At Higher Levels. When you cast this spell using a spell slot of 5th level or higher, the bludgeoning damage increases by 1d8 for each slot level above 4th.',
          '4', #level
          '2', #damageDiceAmount
          '3', #damageDice ID
          '3', #damageType ID
          'Dexterity', #savingThrow
          '', #condition
          '1', #requiresVerbalComponent
          '1', #requiresSomaticComponent
          'a pinch of dust and a few drops of water', #materialComponent
          'Instantaneous', #duration
          'humanoid you can see per spell slot', #target
          '0', #requiresAttackRoll
          '0', #ritual
          '0', #concentration
          'evocation', #school
          '300' #range in feet
          );
