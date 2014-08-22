ALTER TABLE `charactersheet`.`spellmodel` ADD (
    requiresVerbalComponent TINYINT(1),
    requiresSomaticComponent TINYINT(1),
    materialComponent varchar(255),
    duration varchar(255),
    target varchar(255),
    requiresAttackRoll TINYINT(1),
    ritual TINYINT(1)
    );