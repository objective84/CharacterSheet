package com.rational.model.equipment;

/**
 * Created by awest on 7/23/14.
 */
public class Armor extends Equipment{

    private String armorType;
    private int armorClass;
    private int maxDexModifier;
    private int strength;
    private boolean stealthDisadvantage;

    public String getArmorType() {
        return armorType;
    }

    public void setArmorType(String armorType) {
        this.armorType = armorType;
    }

    public int getArmorClass() {
        return armorClass;
    }

    public void setArmorClass(int armorClass) {
        this.armorClass = armorClass;
    }

    public int getMaxDexModifier() {
        return maxDexModifier;
    }

    public void setMaxDexModifier(int maxDexModifier) {
        this.maxDexModifier = maxDexModifier;
    }

    public int getStrength() {
        return strength;
    }

    public void setStrength(int strength) {
        this.strength = strength;
    }

    public boolean isStealthDisadvantage() {
        return stealthDisadvantage;
    }

    public void setStealthDisadvantage(boolean stealthDisadvantage) {
        this.stealthDisadvantage = stealthDisadvantage;
    }
}
