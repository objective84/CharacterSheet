package com.rational.model.enums;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.List;

public enum ClassEnum {
    BARBARIAN("Barbarian"),
    BARD("Bard"),
    CLERIC("Cleric"),
    DRUID("Druid"),
    FIGHTER("Fighter"),
    MONK("Monk"),
    PALADIN("Paladin"),
    RANGER("Ranger"),
    ROGUE("Rogue"),
    WIZARD("Wizard");
    private String type;

    private ClassEnum(String type){
        this.type = type;
    }

    public static String[] getAllClasses(){
        return new String[]{BARBARIAN.type, BARD.type, CLERIC.type, DRUID.type,
                FIGHTER.type, MONK.type, PALADIN.type, RANGER.type, ROGUE.type, WIZARD.type};
    }
};
