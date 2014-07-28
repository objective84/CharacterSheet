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

};
