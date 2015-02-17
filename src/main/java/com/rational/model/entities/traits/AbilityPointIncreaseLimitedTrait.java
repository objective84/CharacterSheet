package com.rational.model.entities.traits;

import com.rational.model.entities.Abilities;
import com.rational.model.entities.CharacterModel;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="ability_point_increase_limited_trait")
public class AbilityPointIncreaseLimitedTrait extends AbilityPointIncreaseTrait {

    private Boolean str;
    private Boolean dex;
    private Boolean con;
    private Boolean intel;
    private Boolean wis;
    private Boolean cha;

    @Override
    public void applyTrait(CharacterModel character){
        Abilities abilities = character.getAbilities();
        abilities.setAbilityIncreasePoints(this.numAbilityPoints);
        abilities.setStrCanIncrease(str);
        abilities.setDexCanIncrease(dex);
        abilities.setConCanIncrease(con);
        abilities.setIntelCanIncrease(intel);
        abilities.setWisCanIncrease(wis);
        abilities.setChaCanIncrease(cha);
    }

    public Boolean getStr() {
        return str;
    }

    public void setStr(Boolean str) {
        this.str = str;
    }

    public Boolean getDex() {
        return dex;
    }

    public void setDex(Boolean dex) {
        this.dex = dex;
    }

    public Boolean getCon() {
        return con;
    }

    public void setCon(Boolean con) {
        this.con = con;
    }

    public Boolean getIntel() {
        return intel;
    }

    public void setIntel(Boolean intel) {
        this.intel = intel;
    }

    public Boolean getWis() {
        return wis;
    }

    public void setWis(Boolean wis) {
        this.wis = wis;
    }

    public Boolean getCha() {
        return cha;
    }

    public void setCha(Boolean cha) {
        this.cha = cha;
    }
}
