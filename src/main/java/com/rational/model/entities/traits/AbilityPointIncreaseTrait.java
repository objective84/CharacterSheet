package com.rational.model.entities.traits;

import com.rational.model.entities.CharacterModel;
import com.rational.model.entities.TraitModel;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="ability_point_increase_trait")
public class AbilityPointIncreaseTrait extends TraitModel {

    @Column(name="num_ability_points")
    private Integer numAbilityPoints;

    @Override
    public void processTrait(CharacterModel character) {
        return;
    }

    @Override
    public void applyTrait(CharacterModel character) {
        character.getAbilities().setAbilityIncreasePoints(character.getAbilities().getAbilityIncreasePoints() + numAbilityPoints);
    }

    public Integer getNumAbilityPoints(){
        return this.numAbilityPoints;
    }

    public void setNumAbilityPoints(Integer numAbilityPoints) {
        this.numAbilityPoints = numAbilityPoints;
    }
}
