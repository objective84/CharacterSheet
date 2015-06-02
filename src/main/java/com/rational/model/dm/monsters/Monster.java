package com.rational.model.dm.monsters;

import com.rational.model.entities.DamageType;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Andy on 5/1/2015.
 */
@Entity(name = "monster")
public class Monster {
    @Id
    @GeneratedValue
    private int id;

    private String name;
    private String size;
    private String type;
    private String alignment;
    @Column(name = "armor_class")
    private int armorClass;
    @Column(name = "armor_type")
    private String armorType;
    @Column(name = "max_hit_points")
    private int maxHitPoints;
    @Column(name = "current_hit_points")
    private int currentHitPoints;
    @Column(name = "hit_dice")
    private String hitDice;
    @Column(name = "hit_dice_modifier")
    private String hitDiceModifier;
    private String str;
    private String dex;
    private String con;
    private String intel;
    private String wis;
    private String cha;
    @OneToMany
    @JoinColumn(name="monster_id")
    private List<SavingThrow> savingThrows;
    @OneToMany
    @JoinColumn(name = "monster_id")
    private List<Skill> skills;
//    @ManyToMany
//    @JoinTable(
//            name="monster_resistance",
//            joinColumns = {
//                    @JoinColumn(name = "monster_id", referencedColumnName = "id"),
//                    @JoinColumn(name = "damage_type_id", referencedColumnName = "id")
//            }
//    )
//    private List<DamageType> resistances;
//    @ManyToMany
//    @JoinTable(
//            name="monster_damage_immunities",
//            joinColumns = {
//                    @JoinColumn(name = "monster_id", referencedColumnName = "id"),
//                    @JoinColumn(name = "damage_type_id", referencedColumnName = "id")
//            }
//    )
//    private List<DamageType> damageImmunities;
//    private List<String> conditionImmunities;
//    private List<String> senses;
//    private List<String> languages;
    @Column(name="challenge_rating")
    private int challengeRating;
    private int xp;
    @OneToMany
    @JoinColumn(name = "monster_id")
    private List<Trait> traits;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getAlignment() {
        return alignment;
    }

    public void setAlignment(String alignment) {
        this.alignment = alignment;
    }

    public int getArmorClass() {
        return armorClass;
    }

    public void setArmorClass(int armorClass) {
        this.armorClass = armorClass;
    }

    public String getArmorType() {
        return armorType;
    }

    public void setArmorType(String amrorType) {
        this.armorType = amrorType;
    }

    public String getHitDice() {
        return hitDice;
    }

    public void setHitDice(String hitDice) {
        this.hitDice = hitDice;
    }

    public String getHitDiceModifier() {
        return hitDiceModifier;
    }

    public void setHitDiceModifier(String hitDiceModifier) {
        this.hitDiceModifier = hitDiceModifier;
    }

    public String getStr() {
        return str;
    }

    public void setStr(String str) {
        this.str = str;
    }

    public String getDex() {
        return dex;
    }

    public void setDex(String dex) {
        this.dex = dex;
    }

    public String getCon() {
        return con;
    }

    public void setCon(String con) {
        this.con = con;
    }

    public String getIntel() {
        return intel;
    }

    public void setIntel(String intel) {
        this.intel = intel;
    }

    public String getWis() {
        return wis;
    }

    public void setWis(String wis) {
        this.wis = wis;
    }

    public String getCha() {
        return cha;
    }

    public void setCha(String cha) {
        this.cha = cha;
    }

//    public List<SavingThrow> getSavingThrows() {
//        return savingThrows;
//    }
//
//    public void setSavingThrows(List<SavingThrow> savingThrows) {
//        this.savingThrows = savingThrows;
//    }

//    public void addSavingThrow(SavingThrow savingThrow){
//        if(getSavingThrows() == null){
//            setSavingThrows(new ArrayList<SavingThrow>());
//        }
//        getSavingThrows().add(savingThrow);
//    }

//    public List<Skill> getSkills() {
//        return skills;
//    }
//
//    public void setSkills(List<Skill> skills) {
//        this.skills = skills;
//    }
//
//    public void addSkill(Skill skill){
//        if(getSkills() == null){
//            setSkills(new ArrayList<Skill>());
//        }
//        getSkills().add(skill);
//    }

//    public List<DamageType> getResistances() {
//        return resistances;
//    }
//
//    public void setResistances(List<DamageType> resistances) {
//        this.resistances = resistances;
//    }
//
//    public List<DamageType> getDamageImmunities() {
//        return damageImmunities;
//    }
//
//    public void setDamageImmunities(List<DamageType> damageImmunities) {
//        this.damageImmunities = damageImmunities;
//    }
//
//    public List<String> getConditionImmunities() {
//        return conditionImmunities;
//    }
//
//    public void setConditionImmunities(List<String> conditionImmunities) {
//        this.conditionImmunities = conditionImmunities;
//    }

//    public List<String> getSenses() {
//        return senses;
//    }
//
//    public void setSenses(List<String> senses) {
//        this.senses = senses;
//    }
//
//    public List<String> getLanguages() {
//        return languages;
//    }
//
//    public void setLanguages(List<String> languages) {
//        this.languages = languages;
//    }

    public int getChallengeRating() {
        return challengeRating;
    }

    public void setChallengeRating(int challengeRating) {
        this.challengeRating = challengeRating;
    }

    public int getXp() {
        return xp;
    }

    public void setXp(int xp) {
        this.xp = xp;
    }

    public List<Trait> getTraits() {
        return traits;
    }

    public void setTraits(List<Trait> traits) {
        this.traits = traits;
    }

    public void addTrait(Trait trait){
        if(getTraits() == null){
            setTraits(new ArrayList<Trait>());
        }
        getTraits().add(trait);
    }

    public int getCurrentHitPoints() {
        return currentHitPoints;
    }

    public void setCurrentHitPoints(int currentHitPoints) {
        this.currentHitPoints = currentHitPoints;
    }

    public void setMaxHitPoints(int maxHitPoints) {
        this.maxHitPoints = maxHitPoints;
    }

    public int getMaxHitPoints() {
        return maxHitPoints;
    }
}
