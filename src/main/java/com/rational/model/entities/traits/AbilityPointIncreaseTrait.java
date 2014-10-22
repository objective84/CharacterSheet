package com.rational.model.entities.traits;

import com.rational.model.entities.Abilities;
import com.rational.model.entities.CharacterModel;
import com.rational.model.entities.TraitModel;
import com.rational.model.playing.Event;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="ability_point_increase_trait")
public class AbilityPointIncreaseTrait extends TraitModel {

    @Column(name="num_ability_points")
    protected Integer numAbilityPoints;

    @Override
    public void processTrait(CharacterModel character) {
        return;
    }

    @Override
    public void applyTrait(CharacterModel character) {
        Abilities abilities = character.getAbilities();
        abilities.setAbilityIncreasePoints(abilities.getAbilityIncreasePoints() + numAbilityPoints);
        abilities.setStrCanIncrease(true);
        abilities.setDexCanIncrease(true);
        abilities.setConCanIncrease(true);
        abilities.setIntelCanIncrease(true);
        abilities.setWisCanIncrease(true);
        abilities.setChaCanIncrease(true);
    }

    @Override
    public void traitInterrupt(CharacterModel character, Event event) {

    }

    public Integer getNumAbilityPoints(){
        return this.numAbilityPoints;
    }

    public void setNumAbilityPoints(Integer numAbilityPoints) {
        this.numAbilityPoints = numAbilityPoints;
    }
}
