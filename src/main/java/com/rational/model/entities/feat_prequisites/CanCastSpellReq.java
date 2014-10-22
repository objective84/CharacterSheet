package com.rational.model.entities.feat_prequisites;

import com.rational.model.entities.CharacterModel;
import com.rational.model.entities.ClassModel;
import com.rational.model.entities.FeatPrerequisite;
import com.rational.model.entities.SpellModel;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="can_cast_spell_req")
public class CanCastSpellReq extends FeatPrerequisite{

    @ManyToOne @JoinColumn(name="clazz_id") private ClassModel clazz;

    @Override
    public Boolean hasPrerequisites(CharacterModel character) {
        boolean hasPrereqs = false;
        if(null != clazz){
            for(SpellModel spell : character.getSpellsKnown()){
                if(spell.getClasses().contains(clazz)){
                    hasPrereqs = true;
                    break;
                }
            }
        }else if(character.getCharacterAdvancement().getNumSpellsAllowed() > 0 || character.getSpellsKnown().size() > 0){
            hasPrereqs = true;
        }
        return hasPrereqs;
    }

    public ClassModel getClazz() {
        return clazz;
    }

    public void setClazz(ClassModel clazz) {
        this.clazz = clazz;
    }
}
