package com.rational.model.entities;


import com.rational.model.Proficiency;
import org.codehaus.jackson.annotate.JsonBackReference;
import org.codehaus.jackson.annotate.JsonManagedReference;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name="characters")
public class CharacterModel {

    @Id
    @GeneratedValue
    private Long id;

    @Column(name="name")
    private String name;

    @Column(name="level")
    private Integer level;

    @JsonBackReference
    @ManyToOne
    private ClassModel clazz;

    @JsonBackReference
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

    @Column(name="maxHealth")
    private int maxHealth;

    @Column(name="currentHealth")
    private int currentHealth;

    @Column(name="str")
    private int str;

    @Column(name="dex")
    private int dex;

    @Column(name="con")
    private int con;

    @Column(name="intel")
    private int intel;

    @Column(name="wis")
    private int wis;

    @Column(name="cha")
    private int cha;

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
}
