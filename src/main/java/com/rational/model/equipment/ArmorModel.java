package com.rational.model.equipment;

import org.codehaus.jackson.annotate.JsonManagedReference;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;

/**
 * Created by awest on 7/23/14.
 */

@Entity
@DiscriminatorValue("A")
public class ArmorModel extends EquipmentModel{

    private Integer armorClass;
    private Integer maxDexModifier;
    private Integer strength;
    private boolean stealthDisadvantage;

    @JsonManagedReference @ManyToOne private ArmorGroup armorGroup;

    public ArmorGroup getArmorGroup() {
        return armorGroup;
    }

    public void setArmorGroup(ArmorGroup armorGroup) {
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
