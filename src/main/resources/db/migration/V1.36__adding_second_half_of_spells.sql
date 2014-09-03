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
INSERT INTO `charactersheet`.`spellmodel` (
    `id`,
    `name`,
    `level`,
    `school`,
    `ritual`,
    `castingTime`,
    `range`,
    `requiresVerbalComponent`,
    `requiresSomaticComponent`,
    `materialComponent`,
    `duration`,
    `concentration`,
    `description`,
    `damageDiceAmount`,
    `damageDice_id`,
    `damageType_id`,
    `savingThrow`,
    `condition`,
    `target`,
    `requiresAttackRoll`)
  VALUES ('292', #id
          'Identify', #name
          '1', #level
          'divination', #school
          '1', #ritual
          '1 minute', #castingTime
          '5', #range
          '1', #requiresVerbalComponent
          '1', #requiresSomaticComponent
          'a pearl worth at least 100 gp and an owl feather', #materialComponent
          'Instantaneous', #duration
          '0', #concentration
          'You choose one object that you must touch throughout the casting o f the spell. If it is a magic item or some other magic-imbued object, you learn its properties and how to use them, whether it requires attunement to use, and how many charges it has, if any. You learn whether any spells are affecting the item and what they are. If the item w as created by a spell, you learn which spell created it./nIf you instead touch a creature throughout the casting, you learn what spells, if any, are currently affecting it.', #description
          '', #damageDiceAmount
          '',#damageDice_id
          '',#damageType_id
          '',#savingThrow
          '0',#condition
          'one object that you must touch throughout the casting',#target
          '0'#requiresAttackRoll
          );
  INSERT INTO `charactersheet`.`spellmodel` (
      `id`,
      `name`,
      `level`,
      `school`,
      `ritual`,
      `castingTime`,
      `range`,
      `requiresVerbalComponent`,
      `requiresSomaticComponent`,
      `materialComponent`,
      `duration`,
      `concentration`,
      `description`,
      `damageDiceAmount`,
      `damageDice_id`,
      `damageType_id`,
      `savingThrow`,
      `condition`,
      `target`,
      `requiresAttackRoll`)
    VALUES ('291', #id
            'Illusory Script', #name
            '1', #level
            'illusion', #school
            '1', #ritual
            '1 minute', #castingTime
            '5', #range
            '0', #requiresVerbalComponent
            '1', #requiresSomaticComponent
            'a lead-based ink worth at least 10gp, which the spell consumes', #materialComponent
            '10 days', #duration
            '0', #concentration
            'You write on parchment, paper, or some other suitable writing material and imbue it with a potent illusion that lasts for the duration. To you and any creatures you designate when you cast the spell, the writing appears normal, written in your hand, and conveys whatever meaning you intended when you wrote the text. To all others, the writing appears as if it were written in an unknown or magical script that is unintelligible. Alternatively, you can cause the writing to appear to be an entirely different message, written in a different hand and language, though the language must be one you know. Should the spell be dispelled, the original script and the illusion both disappear. A creature with truesight can read the hidden message.', #description
            '', #damageDiceAmount
            '',#damageDice_id
            '',#damageType_id
            '',#savingThrow
            '0',#condition
            'one object that you must touch throughout the casting',#target
            '0'#requiresAttackRoll
            );
INSERT INTO `charactersheet`.`spellmodel` (
      `id`,
      `name`,
      `level`,
      `school`,
      `ritual`,
      `castingTime`,
      `range`,
      `requiresVerbalComponent`,
      `requiresSomaticComponent`,
      `materialComponent`,
      `duration`,
      `concentration`,
      `description`,
      `damageDiceAmount`,
      `damageDice_id`,
      `damageType_id`,
      `savingThrow`,
      `condition`,
      `target`,
      `requiresAttackRoll`)
    VALUES ('290', #id
            'Imprisonment', #name
            '9', #level
            'abjuration', #school
            '0', #ritual
            '1 minute', #castingTime
            '30', #range
            '1', #requiresVerbalComponent
            '1', #requiresSomaticComponent
            'a vellum depiction or a carved statuette in the likeness of the target, and a special component that varies according to the version of the spell you choose, worth at least 500 gp per Hit Die of the target', #materialComponent
            'Until dispelled', #duration
            '0', #concentration
            'You create a magical restraint to hold a creature that you can see within range. The target must succeed on a W isdom saving throw or be bound by the spell; if it succeeds, it is immune to this spell if you cast it again. While affected by this spell, the creature doesn''t need to breathe, eat, or drink, and it doesn''t age. Divination spells can''t locate or perceive the target. When you cast the spell, you choose one of the following forms of imprisonment. Burial. The target is entombed far beneath the earth in a sphere o f magical force that is just large enough to contain the target. Nothing can pass through the sphere, nor can any creature teleport or use planar travel to get into or out o f it. The special component for this version o f the spell is a small mithral orb. Chaining. Heavy chains, firmly rooted in the ground, hold the target in place. The target is restrained until the spell ends, and it can't move or be moved by any means until then. The special component for this version o f the spell is a fine chain o f precious metal. Hedged Prison. The spell transports the target into a tiny demiplane that is warded against teleportation and planar travel. The demiplane can be a labyrinth, a cage, a tower, or any similar confined structure or area o f your choice. The special component for this version o f the spell is a miniature representation o f the prison made from jade. Minimus Containment. The target shrinks to a height o f 1 inch and is imprisoned inside a gemstone or similar object. Light can pass through the gemstone normally (allowing the target to see out and other creatures to see in), but nothing else can pass through, even by means of teleportation or planar travel. The gemstone can't be cut or broken while the spell remains in effect. The special component for this version o f the spell is a large, transparent gemstone, such as a corundum, diamond, or ruby. Slumber. The target falls asleep and can't be awoken. The special component for this version o f the spell consists o f rare soporific herbs. Ending the Spell. During the casting o f the spell, in any o f its versions, you can specify a condition that will cause the spell to end and release the target. The condition can be as specific or as elaborate as you choose, but the DM must agree that the condition is reasonable and has a likelihood o f coming to pass. The conditions can be based on a creature's name, identity, or deity but otherwise must be based on observable actions or qualities and not based on intangibles such as level, class, or hit points. A dispel magic spell can end the spell only if it is cast as a 9th-level spell, targeting either the prison or the special component used to create it. You can use a particular special component to create only one prison at a time. If you cast the spell again using the same component, the target of the first casting is immediately freed from its binding.', #description
            '', #damageDiceAmount
            '',#damageDice_id
            '',#damageType_id
            '',#savingThrow
            '0',#condition
            'one object that you must touch throughout the casting',#target
            '0'#requiresAttackRoll
            );
INSERT INTO `charactersheet`.`spellmodel` (
      `id`,
      `name`,
      `level`,
      `school`,
      `ritual`,
      `castingTime`,
      `range`,
      `requiresVerbalComponent`,
      `requiresSomaticComponent`,
      `materialComponent`,
      `duration`,
      `concentration`,
      `description`,
      `damageDiceAmount`,
      `damageDice_id`,
      `damageType_id`,
      `savingThrow`,
      `condition`,
      `target`,
      `requiresAttackRoll`)
    VALUES ('289', #id
            'Incendiary Cloud', #name
            '5', #level
            'conjuration', #school
            '0', #ritual
            '1 action', #castingTime
            '150', #range
            '1', #requiresVerbalComponent
            '1', #requiresSomaticComponent
            '', #materialComponent
            'Concentration, up to 1 minute', #duration
            '1', #concentration
            'A swirling cloud of smoke shot through with white-hot embers appears in a 20-foot-radius sphere centered on a point within range. The cloud spreads around corners and is heavily obscured. It lasts for the duration or until a wind o f moderate or greater speed (at least 10 miles per hour) disperses it. When the cloud appears, each creature in it must make a Dexterity saving throw. A creature takes 10d8 fire damage on a failed save, or half as much damage on a successful one. A creature must also make this saving throw when it enters the spell''s area for the first time on a turn or ends its turn there. The cloud moves 10 feet directly away from you in a direction that you choose at the start of each of your turns.', #description
            '10',#damageDiceAmount
            '3',#damageDice_id
            '4',#damageType_id
            'Dexterity',#savingThrow
            '0',#condition
            '20-foot-radius sphere centered on a point within range',#target
            '0'#requiresAttackRoll
            );
INSERT INTO `charactersheet`.`spellmodel` (
      `id`,
      `name`,
      `level`,
      `school`,
      `ritual`,
      `castingTime`,
      `range`,
      `requiresVerbalComponent`,
      `requiresSomaticComponent`,
      `materialComponent`,
      `duration`,
      `concentration`,
      `description`,
      `damageDiceAmount`,
      `damageDice_id`,
      `damageType_id`,
      `savingThrow`,
      `condition`,
      `target`,
      `requiresAttackRoll`)
    VALUES ('288', #id
            'Inflict Wounds', #name
            '1', #level
            'necromancy', #school
            '0', #ritual
            '1 action', #castingTime
            '5', #range
            '1', #requiresVerbalComponent
            '1', #requiresSomaticComponent
            '', #materialComponent
            'Instantancous', #duration
            '0', #concentration
            '', #description
            '3',#damageDiceAmount
            '4',#damageDice_id
            '7',#damageType_id
            '',#savingThrow
            '0',#condition
            'creature you can reach',#target
            '1'#requiresAttackRoll
            );
INSERT INTO `charactersheet`.`spellmodel` (
      `id`,
      `name`,
      `level`,
      `school`,
      `ritual`,
      `castingTime`,
      `range`,
      `requiresVerbalComponent`,
      `requiresSomaticComponent`,
      `materialComponent`,
      `duration`,
      `concentration`,
      `description`,
      `damageDiceAmount`,
      `damageDice_id`,
      `damageType_id`,
      `savingThrow`,
      `condition`,
      `target`,
      `requiresAttackRoll`)
    VALUES ('287', #id
            'Insect Plague', #name
            '5', #level
            'conjuration', #school
            '0', #ritual
            '1 action', #castingTime
            '300', #range
            '1', #requiresVerbalComponent
            '1', #requiresSomaticComponent
            'a few grains of suger, some kernels of grain, and a smear of fat', #materialComponent
            'Concentration, up to 10 minutes', #duration
            '1', #concentration
            'Swarming, biting locusts fill a 20-foot-radius sphere centered on a point you choose within range. The sphere spreads around corners. The sphere remains for the duration, and its area is lightly obscured. The sphere's area is difficult terrain. When the area appears, each creature in it must make a Constitution saving throw. A creature takes 4 d10 piercing damage on a failed save, or half as much damage on a successful one. A creature must also make this saving throw when it enters the spell's area for the first time on a turn or ends its turn there. At Higher Levels. When you cast this spell using a spell slot o f 6th level or higher, the damage increases by 1d10 for each slot level above 5th.', #description
            '4',#damageDiceAmount
            '4',#damageDice_id
            '8',#damageType_id
            'Constitution',#savingThrow
            '0',#condition
            '20-foot-radius sphere centered on a point you choose within range',#target
            '0'#requiresAttackRoll
            );
INSERT INTO `charactersheet`.`spellmodel` (
      `id`,
      `name`,
      `level`,
      `school`,
      `ritual`,
      `castingTime`,
      `range`,
      `requiresVerbalComponent`,
      `requiresSomaticComponent`,
      `materialComponent`,
      `duration`,
      `concentration`,
      `description`,
      `damageDiceAmount`,
      `damageDice_id`,
      `damageType_id`,
      `savingThrow`,
      `condition`,
      `target`,
      `requiresAttackRoll`)
    VALUES ('286', #id
            'Invisibility', #name
            '2', #level
            'illusion', #school
            '0', #ritual
            '1 action', #castingTime
            '5', #range
            '1', #requiresVerbalComponent
            '1', #requiresSomaticComponent
            'an eyelash encased in gum arabic', #materialComponent
            'Concentration, up to 1 hour', #duration
            '1', #concentration
            'A creature you touch becomes invisible until the spell ends. Anything the target is wearing or carrying is invisible as long as it is on the target''s person. The spell ends for a target that attacks or casts a spell. At Higher Levels. When you cast this spell using a spell slot of 3rd level or higher, you can target one additional creature for each slot level above 2nd.', #description
            '',#damageDiceAmount
            '',#damageDice_id
            '',#damageType_id
            '',#savingThrow
            '',#condition
            'creature you touch',#target
            '0'#requiresAttackRoll
            );
INSERT INTO `charactersheet`.`spellmodel` (
      `id`,
      `name`,
      `level`,
      `school`,
      `ritual`,
      `castingTime`,
      `range`,
      `requiresVerbalComponent`,
      `requiresSomaticComponent`,
      `materialComponent`,
      `duration`,
      `concentration`,
      `description`,
      `damageDiceAmount`,
      `damageDice_id`,
      `damageType_id`,
      `savingThrow`,
      `condition`,
      `target`,
      `requiresAttackRoll`)
    VALUES ('285', #id
            'Jump', #name
            '1', #level
            'transmutation', #school
            '0', #ritual
            '1 action', #castingTime
            '5', #range
            '1', #requiresVerbalComponent
            '1', #requiresSomaticComponent
            'a grasshopper''s hind leg', #materialComponent
            '1 minute', #duration
            '0', #concentration
            'You touch a creature. The creature''jump distance is tripled until the spell ends.', #description
            '',#damageDiceAmount
            '',#damageDice_id
            '',#damageType_id
            '',#savingThrow
            '',#condition
            'creature you touch',#target
            '0'#requiresAttackRoll
            );
INSERT INTO `charactersheet`.`spellmodel` (
      `id`,
      `name`,
      `level`,
      `school`,
      `ritual`,
      `castingTime`,
      `range`,
      `requiresVerbalComponent`,
      `requiresSomaticComponent`,
      `materialComponent`,
      `duration`,
      `concentration`,
      `description`,
      `damageDiceAmount`,
      `damageDice_id`,
      `damageType_id`,
      `savingThrow`,
      `condition`,
      `target`,
      `requiresAttackRoll`)
    VALUES ('284', #id
            'Knock', #name
            '2', #level
            'transmutation', #school
            '0', #ritual
            '1 action', #castingTime
            '60', #range
            '1', #requiresVerbalComponent
            '0', #requiresSomaticComponent
            '', #materialComponent
            'Instantaneous', #duration
            '0', #concentration
            'Choose an object that you can see within range. The object can be a door, a box, a chest, a set o f manacles, a padlock, or another object that contains a mundane or magical means that prevents access. A target that is held shut by a mundane lock or that is stuck or barred becomes unlocked, unstuck, or unbarred. If the object has multiple locks, only one of them is unlocked. If you choose a target that is held shut with arcane lock, that spell is suppressed for 10 minutes, during which time the target can be opened and shut normally. When you cast the spell, a loud knock, audible from as far away as 300 feet, emanates from the target object.', #description
            '',#damageDiceAmount
            '',#damageDice_id
            '',#damageType_id
            '',#savingThrow
            '',#condition
            'object that you can see',#target
            '0'#requiresAttackRoll
            );
INSERT INTO `charactersheet`.`spellmodel` (
      `id`,
      `name`,
      `level`,
      `school`,
      `ritual`,
      `castingTime`,
      `range`,
      `requiresVerbalComponent`,
      `requiresSomaticComponent`,
      `materialComponent`,
      `duration`,
      `concentration`,
      `description`,
      `damageDiceAmount`,
      `damageDice_id`,
      `damageType_id`,
      `savingThrow`,
      `condition`,
      `target`,
      `requiresAttackRoll`)
    VALUES ('283', #id
            'Legend Lore', #name
            '5', #level
            'divination', #school
            '0', #ritual
            '10 minutes', #castingTime
            '0', #range
            '1', #requiresVerbalComponent
            '1', #requiresSomaticComponent
            'incense worth at least 250 gp, which the spell consumes, and four ivory strips worth at least 50 gp each', #materialComponent
            'Instantaneous', #duration
            '0', #concentration
            'Name or describe a person, place, or object. The spell brings to your mind a brief summary of the significant lore about the thing you named. The lore might consist of current tales, forgotten stories, or even secret lore that has never been widely known. If the thing you named isn''t of legendary importance, you gain no information. The more information you already have about the thing, the more precise and detailed the information you receive is. The information you learn is accurate but might be couched in figurative language. For example, if you have a mysterious magic axe on hand, the spell might yield this information: "Woe to the evildoer whose hand touches the axe, for even the haft slices the hand of the evil ones. Only a true Child of Stone, lover and beloved of Moradin, may awaken the true powers of the axe, and only with the sacred word Rudnogg on the lips."', #description
            '',#damageDiceAmount
            '',#damageDice_id
            '',#damageType_id
            '',#savingThrow
            '',#condition
            'object that you can see',#target
            '0'#requiresAttackRoll
            );
INSERT INTO `charactersheet`.`spellmodel` (
      `id`,
      `name`,
      `level`,
      `school`,
      `ritual`,
      `castingTime`,
      `range`,
      `requiresVerbalComponent`,
      `requiresSomaticComponent`,
      `materialComponent`,
      `duration`,
      `concentration`,
      `description`,
      `damageDiceAmount`,
      `damageDice_id`,
      `damageType_id`,
      `savingThrow`,
      `condition`,
      `target`,
      `requiresAttackRoll`)
    VALUES ('282', #id
            'Leomund''s Secert Chest', #name
            '4', #level
            'conjuration', #school
            '0', #ritual
            '1 action', #castingTime
            '5', #range
            '1', #requiresVerbalComponent
            '1', #requiresSomaticComponent
            'an exquisite chest, 3 feet by 2 feet by 2 feet, constructed from rare materials worth at least 5,000 gp, and a Tiny replica made from the same materials worth at least 50 gp', #materialComponent
            'Instantaneous', #duration
            '0', #concentration
            'You hide a chest, and all its contents, on the Ethereal Plane. You must touch the chest and the miniature replica that serves as a material component for the spell. The chest can contain up to 12 cubic feet o f nonliving material (3 feet by 2 feet by 2 feet). While the chest remains on the Ethereal Plane, you can use an action and touch the replica to recall the chest. It appears in an unoccupied space on the ground within 5 feet o f you. You can send the chest back to the Ethereal Plane by using an action and touching both the chest and the replica. After 60 days, there is a cumulative 5 percent chance per day that the spell''s effect ends. This effect ends if you cast this spell again, if the smaller replica chest is destroyed, or if you choose to end the spell as an action. If the spell ends and the larger chest is on the Ethereal Plane, it is irretrievably lost.', #description
            '',#damageDiceAmount
            '',#damageDice_id
            '',#damageType_id
            '',#savingThrow
            '',#condition
            '',#target
            '0'#requiresAttackRoll
            );
INSERT INTO `charactersheet`.`spellmodel` (
      `id`,
      `name`,
      `level`,
      `school`,
      `ritual`,
      `castingTime`,
      `range`,
      `requiresVerbalComponent`,
      `requiresSomaticComponent`,
      `materialComponent`,
      `duration`,
      `concentration`,
      `description`,
      `damageDiceAmount`,
      `damageDice_id`,
      `damageType_id`,
      `savingThrow`,
      `condition`,
      `target`,
      `requiresAttackRoll`)
    VALUES ('281', #id
            'Leomund''s Tiny Hut', #name
            '3', #level
            'evocation', #school
            '1', #ritual
            '1 minute', #castingTime
            '0', #range
            '1', #requiresVerbalComponent
            '1', #requiresSomaticComponent
            'a small crystal ball', #materialComponent
            '8 hours', #duration
            '0', #concentration
            'A 10-foot-radius immobile dome o f force springs into existence around and above you and remains stationary for the duration. The spell ends if you leave its area. Nine creatures o f Medium size or smaller can fit inside the dome with you. The spell fails if its area includes a larger creature or more than nine creatures. Creatures and objects within the dome when you cast this spell can move through it freely. All other creatures and objects are barred from passing through it. Spells and other magical effects can''t extend through the dome or be cast through it. The atmosphere inside the space is comfortable and dry, regardless of the weather outside. Until the spell ends, you can command the interior to become dimly lit or dark. The dome is opaque from the outside, of any color you choose, but it is transparent from the inside.', #description
            '',#damageDiceAmount
            '',#damageDice_id
            '',#damageType_id
            '',#savingThrow
            '',#condition
            '',#target
            '0'#requiresAttackRoll
            );
INSERT INTO `charactersheet`.`spellmodel` (
            `id`,
            `name`,
            `level`,
            `school`,
            `ritual`,
            `castingTime`,
            `range`,
            `requiresVerbalComponent`,
            `requiresSomaticComponent`,
            `materialComponent`,
            `duration`,
            `concentration`,
            `description`,
            `damageDiceAmount`,
            `damageDice_id`,
            `damageType_id`,
            `savingThrow`,
            `condition`,
            `target`,
            `requiresAttackRoll`)
  VALUES ('280', #id
          'Lesser Restoration', #name
          '2', #level
          'abjuration', #school
          '0', #ritual
          '1 action', #castingTime
          '0', #range
          '1', #requiresVerbalComponent
          '1', #requiresSomaticComponent
          '', #materialComponent
          'Instantaneous', #duration
          '0', #concentration
          'You touch a creature and can end either one disease or one condition afflicting it. The condition can be blinded, deafened, paralyzed, or poisoned.', #description
          '',#damageDiceAmount
          '',#damageDice_id
          '',#damageType_id
          '',#savingThrow
          '',#condition
          'touch a creature',#target
          '0'#requiresAttackRoll
          );
INSERT INTO `charactersheet`.`spellmodel` (
      `id`,
      `name`,
      `level`,
      `school`,
      `ritual`,
      `castingTime`,
      `range`,
      `requiresVerbalComponent`,
      `requiresSomaticComponent`,
      `materialComponent`,
      `duration`,
      `concentration`,
      `description`,
      `damageDiceAmount`,
      `damageDice_id`,
      `damageType_id`,
      `savingThrow`,
      `condition`,
      `target`,
      `requiresAttackRoll`)
    VALUES ('279', #id
            'Levitate', #name
            '2', #level
            'transmutation', #school
            '0', #ritual
            '1 action', #castingTime
            '60, #range
            '1', #requiresVerbalComponent
            '1', #requiresSomaticComponent
            '', #materialComponent
            'Instantaneous', #duration
            '0', #concentration
            'You touch a creature and can end either one disease or one condition afflicting it. The condition can be blinded, deafened, paralyzed, or poisoned.', #description
            '',#damageDiceAmount
            '',#damageDice_id
            '',#damageType_id
            '',#savingThrow
            '',#condition
            'touch a creature',#target
            '0'#requiresAttackRoll
            );