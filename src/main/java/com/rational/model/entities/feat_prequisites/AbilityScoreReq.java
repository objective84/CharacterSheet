package com.rational.model.entities.feat_prequisites;

import com.rational.model.entities.CharacterModel;
import com.rational.model.entities.FeatPrerequisite;
import com.rational.model.enums.AbilityTypeEnum;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="ability_score_req")
public class AbilityScoreReq extends FeatPrerequisite {

    @Column(name="ability_one") private String abilityOne;
    @Column(name="ability_two") private String abilityTwo;
    private int requirement;

    @Override
    public Boolean hasPrerequisites(CharacterModel character) {
        boolean hasPrereqs = false;
        if(character.getAbilities().getAbilityScore(AbilityTypeEnum.valueOf(abilityOne)) > requirement){
            hasPrereqs = true;
        }else if(abilityTwo != null && character.getAbilities().getAbilityScore(AbilityTypeEnum.valueOf(abilityTwo)) > requirement){
            hasPrereqs = true;
        }
        return hasPrereqs;
    }

    public String getAbilityOne() {
        return abilityOne;
    }

    public void setAbilityOne(String abilityOne) {
        this.abilityOne = abilityOne;
    }

    public String getAbilityTwo() {
        return abilityTwo;
    }

    public void setAbilityTwo(String abilityTwo) {
        this.abilityTwo = abilityTwo;
    }

    public int getRequirement() {
        return requirement;
    }

    public void setRequirement(int requirement) {
        this.requirement = requirement;
    }
}
