package com.rational.model.entities;

import com.rational.model.enums.AbilityTypeEnum;

import javax.persistence.*;
import java.lang.reflect.InvocationTargetException;

/**
 * Created by Andy on 8/18/2014.
 */
@Entity
public class Abilities {

    @Transient private Integer maxAbilityPoints = 27;
    @Transient private Integer maxAbilityScore = 15;
    @Transient private Integer minAbilityScore = 8;

    @Id
    @GeneratedValue
    private Long id;
    private Integer str = minAbilityScore;
    private Integer dex = minAbilityScore;
    private Integer con = minAbilityScore;
    private Integer intel = minAbilityScore;
    private Integer wis = minAbilityScore;
    private Integer cha = minAbilityScore;
    @Column(name="available_ability_points")
    private Integer availableAbilityPoints = 27;
    @Column(name="ability_increase_points")
    private Integer abilityIncreasePoints = 0;



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
            this.getClass().getMethod("set" + ability.name(), Integer.class).invoke(this, score);
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
            return (Integer)this.getClass().getMethod("get" + ability.name()).invoke(this);
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
            score = (Integer)Abilities.class.getMethod("get" + ability.name()).invoke(this);
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

    public Integer getScoreCost(Integer score){
        return score - 8 + (score - 13 > 0 ? score - 13: 0);
    }

    public Integer getPointsSpent(){
        Integer pointsSpent = 0;

        pointsSpent = pointsSpent + getScoreCost(str);
        pointsSpent = pointsSpent + getScoreCost(dex);
        pointsSpent = pointsSpent + getScoreCost(con);
        pointsSpent = pointsSpent + getScoreCost(intel);
        pointsSpent = pointsSpent + getScoreCost(wis);
        pointsSpent = pointsSpent + getScoreCost(cha);

        return pointsSpent;
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

    public Integer getAvailableAbilityPoints() {
        return availableAbilityPoints;
    }

    public void setAvailableAbilityPoints(Integer availableAbilityPoints) {
        this.availableAbilityPoints = availableAbilityPoints;
    }

    public Integer getMaxAbilityPoints() {
        return maxAbilityPoints;
    }

    public Integer getMaxAbilityScore() {
        return maxAbilityScore;
    }

    public Integer getMinAbilityScore() {
        return minAbilityScore;
    }

    public void setMaxAbilityPoints(Integer maxAbilityPoints) {
    }

    public void setMaxAbilityScore(Integer maxAbilityScore) {
    }

    public void setMinAbilityScore(Integer minAbilityScore) {
    }

    public void setPointsSpent(Integer pointsSpent){}

    public Integer getAbilityIncreasePoints() {
        return abilityIncreasePoints;
    }

    public void setAbilityIncreasePoints(Integer abilityIncreasePoints) {
        this.abilityIncreasePoints = abilityIncreasePoints;
    }
}
