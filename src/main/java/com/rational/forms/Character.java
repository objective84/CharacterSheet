package com.rational.forms;

import com.rational.model.enums.AbilityTypeEnum;

import java.util.HashMap;
import java.util.Map;

public class Character {

    private Long id;
    private String name;
    private String level;
    private String classType;
    private String race;
    private int maxHealth;
    private int currentHealth;
    Map<AbilityTypeEnum, Integer> abilityScores;

    public Character(){
        abilityScores = new HashMap<AbilityTypeEnum, Integer>();
        abilityScores.put(AbilityTypeEnum.Str, 8);
        abilityScores.put(AbilityTypeEnum.Dex, 8);
        abilityScores.put(AbilityTypeEnum.Con, 8);
        abilityScores.put(AbilityTypeEnum.Int, 8);
        abilityScores.put(AbilityTypeEnum.Wis, 8);
        abilityScores.put(AbilityTypeEnum.Cha, 8);
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getRace() {
        return race;
    }

    public void setRace(String race) {
        this.race = race;
    }

    public String getClassType() {
        return classType;
    }

    public void setClassType(String classType) {
        this.classType = classType;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public int getMaxHealth() {
        return maxHealth;
    }

    public void setMaxHealth(int maxHealth) {
        this.maxHealth = maxHealth;
    }

    public int getCurrentHealth() {
        return currentHealth;
    }

    public void setCurrentHealth(int currentHealth) {
        this.currentHealth = currentHealth;
    }

    public Map<AbilityTypeEnum, Integer> getAbilityScores() {
        return abilityScores;
    }

    public void setAbilityScores(Map<AbilityTypeEnum, Integer> abilityScores) {
        this.abilityScores = abilityScores;
    }
}
