package com.rational.forms;

import com.rational.model.enums.AbilityTypeEnum;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Character {

    private Long id;
    private String name;
    private Integer level;
    private Long clazz;
    private Long race;
    private int maxHealth;
    private int currentHealth;
    private Map<AbilityTypeEnum, Integer> abilityScores;
    private List<Long> languages;
    private List<Long> proficiencies;

    public Character(){
        abilityScores = new HashMap<AbilityTypeEnum, Integer>();
        abilityScores.put(AbilityTypeEnum.Str, 8);
        abilityScores.put(AbilityTypeEnum.Dex, 8);
        abilityScores.put(AbilityTypeEnum.Con, 8);
        abilityScores.put(AbilityTypeEnum.Int, 8);
        abilityScores.put(AbilityTypeEnum.Wis, 8);
        abilityScores.put(AbilityTypeEnum.Cha, 8);
        level=1;
        maxHealth= 0;
        currentHealth = 0;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getRace() {
        return race;
    }

    public void setRace(Long race) {
        this.race = race;
    }

    public Long getClazz() {
        return clazz;
    }

    public void setClazz(Long classType) {
        this.clazz = classType;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
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

    public List<Long> getLanguages() {
        return languages;
    }

    public void setLanguages(List<Long> languages) {
        this.languages = languages;
    }

    public List<Long> getProficiencies() {
        return proficiencies;
    }

    public void setProficiencies(List<Long> proficiencies) {
        this.proficiencies = proficiencies;
    }
}
