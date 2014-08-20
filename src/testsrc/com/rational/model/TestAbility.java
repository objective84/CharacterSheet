package com.rational.model;

import com.rational.model.entities.Abilities;
import com.rational.model.enums.AbilityTypeEnum;
import org.junit.Test;

import static junit.framework.Assert.assertEquals;

/**
 * Created by Andy on 8/18/2014.
 */
public class TestAbility {

    @Test
    public void testAbilitiesModifier(){
        Abilities ability = new Abilities(16, 14, 12, 10, 10, 8);
        assertEquals((int) ability.getAbilityModifier(AbilityTypeEnum.Str), 3);

    }
}
