package com.rational.model;


import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="characters")
public class Character {

    @Id
    @GeneratedValue
    @Column(name="CHARACTER_ID")
    private Long id;

    @Column(name="CHARACTER_NAME")
    private String name;

    @Column(name="CHARACTER_LEVEL")
    private String level;

    @Column(name="CHARACTER_CLASS")
    private String classType;

    @Column(name="CHARACTER_RACE")
    private String race;

    @Column(name="CHARACTER_STR")
    private int str;

    @Column(name="CHARACTER_DEX")
    private int dex;

    @Column(name="CHARACTER_CON")
    private int con;

    @Column(name="CHARACTER_INT")
    private int intel;

    @Column(name="CHARACTER_WIS")
    private int wis;

    @Column(name="CHARACTER_CHA")
    private int cha;

    public Character(){

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

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }
}
