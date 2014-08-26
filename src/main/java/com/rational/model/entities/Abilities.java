package com.rational.model.entities;

import com.rational.model.enums.AbilityTypeEnum;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.lang.reflect.InvocationTargetException;

/**
 * Created by Andy on 8/18/2014.
 */
@Entity
public class Abilities {

    @Id
    @GeneratedValue
    private Long id;
    private Integer str;
    private Integer dex;
    private Integer con;
    private Integer intel;
    private Integer wis;
    private Integer cha;

    public Abilities(){}

    public Abilities(Integer str, Integer dex, Integer con, Integer intel, Integer wis, Integer cha){
        this.str = str;
        this.dex = dex;
        this.con = con;
        this.intel = intel;
        this.wis = wis;
        this.cha = cha;
    }

    public Abilities(String str, String dex, String con, String intel, String wis, String cha){
        this.str = Integer.decode(str);
        this.dex = Integer.decode(dex);
        this.con = Integer.decode(con);
        this.intel = Integer.decode(intel);
        this.wis = Integer.decode(wis);
        this.cha = Integer.decode(cha);
    }

    public void setAbilityScore(AbilityTypeEnum ability, Integer score){
        try {
            this.getClass().getMethod("set" + ability.toString(), Integer.class).invoke(this, score);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }
    }

    public Integer getAbilityScore(AbilityTypeEnum ability){
        try {
            return (Integer)this.getClass().getMethod("get" + ability.getType()).invoke(this);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }
        return null;
    }

    public Integer getAbilityModifier(AbilityTypeEnum ability){
        Integer score = 0;
        try {
            score = (Integer)Abilities.class.getMethod("get" + ability.toString()).invoke(this);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }

        if(score != null)
            return Math.round(score/2 - 5);
        else
            return null;
    }

    public Integer getTotalAbilityCost(){
        return getScoreCost(str) + getScoreCost(dex) + getScoreCost(con) + getScoreCost(intel) + getScoreCost(wis) + getScoreCost(cha);
    }

    public Integer getScoreCost(Integer score){
        return score - 8 + (score - 13 > 0 ? score - 13: 0);
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getStr() {
        return str;
    }

    public void setStr(Integer str) {
        this.str = str;
    }

    public Integer getDex() {
        return dex;
    }

    public void setDex(Integer dex) {
        this.dex = dex;
    }

    public Integer getCon() {
        return con;
    }

    public void setCon(Integer con) {
        this.con = con;
    }

    public Integer getIntel() {
        return intel;
    }

    public void setIntel(Integer intel) {
        this.intel = intel;
    }

    public Integer getWis() {
        return wis;
    }

    public void setWis(Integer wis) {
        this.wis = wis;
    }

    public Integer getCha() {
        return cha;
    }

    public void setCha(Integer cha) {
        this.cha = cha;
    }
}
