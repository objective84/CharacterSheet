package com.rational.model.equipment;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;

/**
 * Created by awest on 7/23/14.
 */

@Entity
@DiscriminatorValue("A")
public class ArmorModel extends EquipmentModel{

    private ArmorGroup armorGroup;
    private int armorClass;
    private int maxDexModifier;
    private int strength;
    private boolean stealthDisadvantage;

    @ManyToOne
    public ArmorGroup getArmorGroup() {
        return armorGroup;
    }

    public void setArmorGroup(ArmorGroup armorGroup) {
        this.armorGroup = armorGroup;
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
