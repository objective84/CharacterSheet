package com.rational.forms;

public class Armor extends Equipment {

    private Long armorGroup;
    private Integer armorClass;
    private Integer maxDexModifier;
    private Integer strength;
    private boolean stealthDisadvantage;

    public Long getArmorGroup() {
        return armorGroup;
    }

    public void setArmorGroup(Long armorGroup) {
        this.armorGroup = armorGroup;
    }

    public Integer getArmorClass() {
        return armorClass;
    }

    public void setArmorClass(Integer armorClass) {
        this.armorClass = armorClass;
    }

    public Integer getMaxDexModifier() {
        return maxDexModifier;
    }

    public void setMaxDexModifier(Integer maxDexModifier) {
        this.maxDexModifier = maxDexModifier;
    }

    public Integer getStrength() {
        return strength;
    }

    public void setStrength(Integer strength) {
        this.strength = strength;
    }

    public boolean isStealthDisadvantage() {
        return stealthDisadvantage;
    }

    public void setStealthDisadvantage(boolean stealthDisadvantage) {
        this.stealthDisadvantage = stealthDisadvantage;
    }
}
