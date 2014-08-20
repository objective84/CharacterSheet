package com.rational.model.entities.traits;

import com.rational.model.entities.Abilities;
import com.rational.model.entities.CharacterModel;
import com.rational.model.entities.TraitModel;
import com.rational.model.enums.AbilityTypeEnum;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import java.lang.reflect.InvocationTargetException;

@Entity
@DiscriminatorValue("mod_ability")
public class ModifyAbilityTrait extends TraitModel {

    private Integer modAmount;
    private AbilityTypeEnum ability;

    @Override
    public void processTrait(CharacterModel character) {
        try {
            Abilities abilities = (Abilities)CharacterModel.class.getMethod("getAbilities").invoke(character);
            abilities.getClass().getMethod("setAbilityScore", AbilityTypeEnum.class, Integer.class).invoke(
                    abilities, ability, getAbilityAmount(character) + modAmount);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }
    }

    private Integer getAbilityAmount(CharacterModel character) throws NoSuchMethodException, InvocationTargetException, IllegalAccessException {
        Abilities abilities = (Abilities)CharacterModel.class.getMethod("getAbilities").invoke(character);
        return (Integer)abilities.getClass().getMethod("getAbilityScore", AbilityTypeEnum.class).invoke(abilities, ability);
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