package java.com.rational.model;

import com.rational.model.entities.Ability;
import com.rational.model.enums.AbilityTypeEnum;
import org.junit.Test;

import static junit.framework.Assert.assertEquals;

/**
 * Created by Andy on 8/18/2014.
 */
public class TestAbility {

    @Test
    public void testAbilityModifier(){
        Ability ability = new Ability(AbilityTypeEnum.Cha);
        ability.setScore(18);
        assertEquals((int) ability.getScore(), 4);
    }
}
