package com.rational.model.entities;


import javax.persistence.*;

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

    @Column(name="classType")
    private Long classType;

    @Column(name="race")
    private Long race;

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

    public Long getRace() {
        return race;
    }

    public void setRace(Long race) {
        this.race = race;
    }

    public Long getClassType() {
        return classType;
    }

    public void setClassType(Long classType) {
        this.classType = classType;
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
}
