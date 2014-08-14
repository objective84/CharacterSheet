package com.rational.model.entities;


import com.rational.model.Proficiency;
import com.rational.model.equipment.ArmorModel;
import com.rational.model.equipment.EquipmentModel;
import com.rational.model.equipment.WeaponModel;
import org.codehaus.jackson.annotate.JsonManagedReference;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
public class CharacterModel {

    @Id
    @GeneratedValue
    private Long id;

    private String name;

    private Integer level;

    @JsonManagedReference
    @ManyToOne
    private ClassModel clazz;

    @JsonManagedReference
    @ManyToOne
    private RaceModel race;

    @JsonManagedReference
    @ManyToMany
    @JoinTable(name="character_language",
            joinColumns = @JoinColumn(name="character_id"), inverseJoinColumns = @JoinColumn(name="language_id"))
    private List<LanguageModel> languages = new ArrayList<LanguageModel>();

    @JsonManagedReference
    @ManyToMany
    @JoinTable(name="character_proficiency",
            joinColumns = @JoinColumn(name="character_id"), inverseJoinColumns = @JoinColumn(name="proficiency_id"))
    private List<Proficiency> proficiencies = new ArrayList<Proficiency>();

    @JsonManagedReference
    @ManyToMany
    @JoinTable(name="character_traits",
            joinColumns = @JoinColumn(name="character_id"), inverseJoinColumns = @JoinColumn(name="trait_id"))
    private List<TraitModel> traits = new ArrayList<TraitModel>();

    private int maxHealth;
    private int currentHealth;
    private int str;
    private int dex;
    private int con;
    private int intel;
    private int wis;
    private int cha;

    @JsonManagedReference
    @ManyToMany
    @JoinTable(name="character_equipment", joinColumns = @JoinColumn(name="character_id"),
            inverseJoinColumns = @JoinColumn(name="equipment_id"))
    private List<EquipmentModel> inventory = new ArrayList<EquipmentModel>();

    @JsonManagedReference
    @ManyToOne
    private ArmorModel equippedArmor;

    @JsonManagedReference
    @ManyToOne
    private WeaponModel equippedMainHand;

    @JsonManagedReference
    @ManyToOne
    private EquipmentModel equippedOffHand;

    @JsonManagedReference
    @OneToOne(cascade = CascadeType.ALL)
    private CoinPurse coinPurse;

    public CharacterModel(){}

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public RaceModel getRace() {
        return race;
    }

    public void setRace(RaceModel race) {
        this.race = race;
    }

    public ClassModel getClazz() {
        return clazz;
    }

    public void setClazz(ClassModel clazz) {
        this.clazz = clazz;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getStr() {
        return str;
    }

    public void setStr(int str) {
        this.str = str;
    }

    public int getDex() {
        return dex;
    }

    public void setDex(int dex) {
        this.dex = dex;
    }

    public int getCon() {
        return con;
    }

    public void setCon(int con) {
        this.con = con;
    }

    public int getIntel() {
        return intel;
    }

    public void setIntel(int intel) {
        this.intel = intel;
    }

    public int getWis() {
        return wis;
    }

    public void setWis(int wis) {
        this.wis = wis;
    }

    public int getCha() {
        return cha;
    }

    public void setCha(int cha) {
        this.cha = cha;
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

    public List<Proficiency> getProficiencies() {
        return proficiencies;
    }

    public void setProficiencies(List<Proficiency> proficiencies) {
        this.proficiencies = proficiencies;
    }

    public List<LanguageModel> getLanguageModels() {
        return languages;
    }

    public void setLanguageModels(List<LanguageModel> languages) {
        this.languages = languages;
    }

    public List<TraitModel> getTraits() {
        return traits;
    }

    public void setTraits(List<TraitModel> traits) {
        this.traits = traits;
    }

    public List<EquipmentModel> getInventory() {
        return inventory;
    }

    public void setInventory(List<EquipmentModel> inventory) {
        this.inventory = inventory;
    }

    public ArmorModel getEquippedArmor() {
        return equippedArmor;
    }

    public void setEquippedArmor(ArmorModel equippedArmor) {
        this.equippedArmor = equippedArmor;
    }

    public WeaponModel getEquippedMainHand() {
        return equippedMainHand;
    }

    public void setEquippedMainHand(WeaponModel equippedMainHand) {
        this.equippedMainHand = equippedMainHand;
    }

    public EquipmentModel getEquippedOffHand() {
        return equippedOffHand;
    }

    public void setEquippedOffHand(EquipmentModel equippedOffHand) {
        this.equippedOffHand = equippedOffHand;
    }

    public CoinPurse getCoinPurse() {
        return coinPurse;
    }

    public void setCoinPurse(CoinPurse coinPurse) {
        this.coinPurse = coinPurse;
    }
}
