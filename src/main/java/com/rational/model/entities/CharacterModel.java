package com.rational.model.entities;


import com.rational.model.Proficiency;
import com.rational.model.enums.AbilityTypeEnum;
import com.rational.model.equipment.ArmorModel;
import com.rational.model.equipment.EquipmentModel;
import com.rational.model.equipment.WeaponModel;
import org.codehaus.jackson.annotate.JsonManagedReference;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
public class CharacterModel {

    @Id
    @GeneratedValue
    private Long id;

    private String name;

    private Integer level;

    private boolean encumbered;

    private Integer speed = 0;

    @ManyToOne
    private RaceModel race;

    @ManyToOne
    private SubRaceModel subrace;

    @ManyToOne
    private CharacterAdvancement characterAdvancement;

    @ManyToMany
    @JoinTable(name="", inverseJoinColumns = @JoinColumn(name = "character_id"))
    private List<ClassModel> clazzes;

    @ManyToMany
    @JoinTable(name="character_language",
            joinColumns = @JoinColumn(name="character_id"), inverseJoinColumns = @JoinColumn(name="language_id"))
    private Set<LanguageModel> languages = new HashSet<LanguageModel>();

    @ManyToMany
    @JoinTable(name="character_proficiency",
            joinColumns = @JoinColumn(name="character_id"), inverseJoinColumns = @JoinColumn(name="proficiency_id"))
    private Set<Proficiency> proficiencies = new HashSet<Proficiency>();

    @ManyToMany
    @JoinTable(name="character_traits",
            joinColumns = @JoinColumn(name="character_id"), inverseJoinColumns = @JoinColumn(name="trait_id"))
    private Set<TraitModel> traits = new HashSet<TraitModel>();

    private int maxHealth;
    private int currentHealth;
    private Ability str = new Ability(AbilityTypeEnum.Str);
    private Ability dex = new Ability(AbilityTypeEnum.Dex);
    private Ability con = new Ability(AbilityTypeEnum.Con);
    private Ability intel = new Ability(AbilityTypeEnum.Int);
    private Ability wis = new Ability(AbilityTypeEnum.Wis);
    private Ability cha = new Ability(AbilityTypeEnum.Cha);

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

    private Long inventoryWeight;

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

    public List<ClassModel> getClazzes() {
        return clazzes;
    }

    public void setClazzes(List<ClassModel> clazzes) {
        this.clazzes = clazzes;
    }

    public void addClazz(ClassModel clazz){
        getClazzes().add(clazz);
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Ability getStr() {
        return str;
    }

    public void setStr(Ability str) {
        this.str = str;
    }

    public Ability getDex() {
        return dex;
    }

    public void setDex(Ability dex) {
        this.dex = dex;
    }

    public Ability getCon() {
        return con;
    }

    public void setCon(Ability con) {
        this.con = con;
    }

    public Ability getIntel() {
        return intel;
    }

    public void setIntel(Ability intel) {
        this.intel = intel;
    }

    public Ability getWis() {
        return wis;
    }

    public void setWis(Ability wis) {
        this.wis = wis;
    }

    public Ability getCha() {
        return cha;
    }

    public void setCha(Ability cha) {
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

    public Set<Proficiency> getProficiencies() { return this.proficiencies;}

//    public Set<Proficiency> getAllProficiencies() {
//        Set<Proficiency> allProficiencies = new HashSet<Proficiency>();
//        allProficiencies.addAll(this.proficiencies);
//        allProficiencies.addAll(this.race.getProficiencies());
//        allProficiencies.addAll(this.clazz.getProficiencies());
//        return allProficiencies;
//    }

    public void setProficiencies(Set<Proficiency> proficiencies) {
        this.proficiencies = proficiencies;
    }
    public Set<LanguageModel> getLanguages() {return this.languages;}

//    public Set<LanguageModel> getAllLanguageModels() {
//        Set<LanguageModel> allLanguages = new HashSet<LanguageModel>();
//        allLanguages.addAll(this.languages);
//        allLanguages.addAll(this.race.getLanguages());
//        return allLanguages;
//    }

    public void setLanguages(Set<LanguageModel> languages) {
        this.languages = languages;
    }

    public Set<TraitModel> getTraits() {return this.traits;}


//    public Set<TraitModel> getAllTraits() {
//        Set<TraitModel> allTraits = new HashSet<TraitModel>();
//        allTraits.addAll(this.traits);
//        allTraits.addAll(this.race.getTraits());
//        allTraits.addAll(this.getClazz().getClassTraits());
//        return allTraits;
//    }

    public void setTraits(Set<TraitModel> traits) {
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

    public SubRaceModel getSubrace() {
        return subrace;
    }

    public void setSubrace(SubRaceModel subrace) {
        this.subrace = subrace;
    }

    public Long getInventoryWeight() {
        return inventoryWeight;
    }

    public void setInventoryWeight(Long inventoryWeight) {
        this.inventoryWeight = inventoryWeight;
    }

    public boolean isEncumbered() {
        return encumbered;
    }

    public void setEncumbered(boolean encumbered) {
        this.encumbered = encumbered;
    }

    public CharacterAdvancement getCharacterAdvancement() {
        return characterAdvancement;
    }

    public void setCharacterAdvancement(CharacterAdvancement characterAdvancement) {
        this.characterAdvancement = characterAdvancement;
    }

    public Ability getAbilityByType(AbilityTypeEnum type){
        switch (type){
            case Str: return getStr();
            case Dex: return getDex();
            case Con: return getCon();
            case Int: return getIntel();
            case Wis: return getWis();
            case Cha: return getCha();
        }
        return null;
    }

    public Integer getSaveDC(){
        if(getClazzes() != null){
            Ability magicAbility = null;

            //Get the highest magic ability
            for(ClassModel clazz : getClazzes()){
                if(magicAbility == null){
                    magicAbility = getAbilityByType(clazz.getMagicAbility());
                }else if(clazz.getMagicAbility() != null && magicAbility.getScore() < getAbilityByType(clazz.getMagicAbility()).getScore()){
                    magicAbility = getAbilityByType(clazz.getMagicAbility());
                }
            }
            if(magicAbility != null && getCharacterAdvancement() != null){
                return 8 + magicAbility.getScore() + getCharacterAdvancement().getProficiencyBonus();
            }
        }
        return null;
    };

    public Integer getSpeed() {
        return speed;
    }

    public void setSpeed(Integer speed) {
        this.speed = speed;
    }
}
