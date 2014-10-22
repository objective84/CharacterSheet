package com.rational.model.entities.feat_prequisites;

import com.rational.model.Proficiency;
import com.rational.model.entities.CharacterModel;
import com.rational.model.entities.FeatPrerequisite;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

//@Entity
//@Table(name="proficiency_req")
public class ProficiencyReq  {

//    @ManyToOne @JoinColumn(name="proficiency_id") private Proficiency proficiency;
//
//    @Override
//    public Boolean hasPrerequisites(CharacterModel character) {
//        boolean hasPrereqs = false;
//        if(character.getProficiencies().contains(proficiency)){
//            hasPrereqs = true;
//        }
//        return hasPrereqs;
//    }
//
//    public Proficiency getProficiency() {
//        return proficiency;
//    }
//
//    public void setProficiency(Proficiency proficiency) {
//        this.proficiency = proficiency;
//    }
}
