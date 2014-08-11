package com.rational.model.equipment;

import com.rational.model.entities.CharacterModel;
import org.codehaus.jackson.annotate.JsonBackReference;
import org.codehaus.jackson.annotate.JsonManagedReference;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by awest on 7/23/14.
 */

@Entity
@DiscriminatorValue("A")
public class ArmorModel extends EquipmentModel{

    private ArmorGroup armorGroup;
    private Integer armorClass;
    private Integer maxDexModifier;
    private Integer strength;
    private boolean stealthDisadvantage;

    private List<CharacterModel> equippedBy = new ArrayList<CharacterModel>();

    @JsonManagedReference
    @ManyToOne
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

    @JsonBackReference
    @OneToMany(mappedBy = "equippedArmor", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    public List<CharacterModel> getEquippedBy() {
        return equippedBy;
    }

    public void setEquippedBy(List<CharacterModel> equippedBy) {
        this.equippedBy = equippedBy;
    }
}
