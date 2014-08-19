package com.rational.model.entities.traits;

import com.rational.model.entities.CharacterModel;
import com.rational.model.entities.TraitModel;
import com.rational.model.enums.AbilityTypeEnum;

import java.lang.reflect.InvocationTargetException;

public class ModifyAbilityTrait extends TraitModel {

    private Integer modAmount;
    private AbilityTypeEnum ability;

    @Override
    public void processTrait(CharacterModel character) {
        try {
            CharacterModel.class.getMethod("set"+ability.toString(), Integer.class).invoke(CharacterModel.class.getMethod("get"+ability.toString()));
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }
    }

    public Integer getModAmount() {
        return modAmount;
    }

    public void setModAmount(Integer modAmount) {
        this.modAmount = modAmount;
    }

    public AbilityTypeEnum getAbility(){
        return ability;
    }

    public void setAbility(AbilityTypeEnum ability) {
        this.ability = ability;
    }
}
