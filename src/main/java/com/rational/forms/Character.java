package com.rational.forms;

import com.rational.model.enums.AbilityTypeEnum;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Character {

    private Long id;
    private String name = "";
    private Integer level = 0;
    private Long clazz = 0l;
    private Long race = 0l;
    private Integer speed = 0;
    private Integer maxHealth = 0;
    private Integer currentHealth = 0;
    private Map<AbilityTypeEnum, Integer> abilityScores = new HashMap<AbilityTypeEnum, Integer>();
    private List<Long> languages = new ArrayList<Long>();
    private List<Long> proficiencies = new ArrayList<Long>();
    private Map<String, Integer> coinPurse = new HashMap<String, Integer>();
    private List<Long> inventory = new ArrayList<Long>();
    private Long equippedArmor = 0l;
    private Long equippedMainHand = 0l;
    private Long equippedOffHand = 0l;

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

    public Integer getMaxHealth() {
        return maxHealth;
    }

    public void setMaxHealth(Integer maxHealth) {
        this.maxHealth = maxHealth;
    }

    public Integer getCurrentHealth() {
        return currentHealth;
    }

    public void setCurrentHealth(Integer currentHealth) {
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

    public Long getEquippedArmor() {
        return equippedArmor;
    }

    public void setEquippedArmor(Long equippedArmor) {
        this.equippedArmor = equippedArmor;
    }

    public Long getEquippedMainHand() {
        return equippedMainHand;
    }

    public void setEquippedMainHand(Long equippedMainHand) {
        this.equippedMainHand = equippedMainHand;
    }

    public Long getEquippedOffHand() {
        return equippedOffHand;
    }

    public void setEquippedOffHand(Long equippedOffHand) {
        this.equippedOffHand = equippedOffHand;
    }

    public List<Long> getInventory() {
        return inventory;
    }

    public void setInventory(List<Long> inventory) {
        this.inventory = inventory;
    }

    public Map<String, Integer> getCoinPurse() {
        return coinPurse;
    }

    public void setCoinPurse(Map<String, Integer> coinPurse) {
        this.coinPurse = coinPurse;
    }

    public Integer getSpeed() {
        return speed;
    }

    public void setSpeed(Integer speed) {
        this.speed = speed;
    }
}
