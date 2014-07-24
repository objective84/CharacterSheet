package com.rational.model.enums;

public enum RaceEnum {
    DWARF("Dwarf"),
    ELF("Elf"),
    DRAGONBORN("Dragonborn"),
    DROW("Drow"),
    HALFLING("Halfling"),
    HUMAN("Human"),
    GNOME("Gnome"),
    HALF_ELF("Half-Elf"),
    HALF_ORC("Half-Orc"),
    KENDER("Kender"),
    TIEFLING("Tiefling"),
    WARFORGED("Warforged");
    private String type;

    private RaceEnum(String type){
        this.type = type;
    }

    public static String[] getAllClasses(){
        return new String[]{DWARF.type, ELF.type, DRAGONBORN.type, DROW.type,
                HALFLING.type, HUMAN.type, GNOME.type, HALF_ELF.type, HALF_ORC.type,
                KENDER.type, TIEFLING.type, WARFORGED.type};
    }
}
