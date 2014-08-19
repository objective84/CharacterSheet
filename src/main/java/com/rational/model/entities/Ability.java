package com.rational.model.entities;

import com.rational.model.enums.AbilityTypeEnum;

/**
 * Created by Andy on 8/18/2014.
 */
public class Ability {
    private AbilityTypeEnum abilityType;
    private Integer score;

    public Ability(AbilityTypeEnum type, Integer score){
        setAbilityType(type);
        setScore(score);
    }
    public Ability(AbilityTypeEnum type){
        setAbilityType(type);
    }
    public AbilityTypeEnum getAbilityType() {
        return abilityType;
    }

    public void setAbilityType(AbilityTypeEnum abilityType) {
        this.abilityType = abilityType;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public Integer getAbilityModifier(){
        if(getScore() != null)
            return Math.round(getScore()/2 - 5);
        else
            return null;
    }
}
