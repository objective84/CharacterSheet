package com.rational.model;

import com.rational.model.entities.ClassModel;
import com.rational.model.equipment.WeaponModel;
import org.codehaus.jackson.annotate.JsonBackReference;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Andy on 7/23/2014.
 */
@Entity
@Table(name="dice")
public class Dice {

    private Long id;
    @Column(name="name")
    private String name;

    @Column(name="maxRoll")
    private int maxRoll;

    @Column(name="minRoll")
    private int minRoll = 1;

    private List<ClassModel> classes = new ArrayList<ClassModel>();
    private List<WeaponModel> weapons = new ArrayList<WeaponModel>();

    private List<ClassModel> classWealthDie = new ArrayList<ClassModel>();

    public Dice(){}

    @Id
    @GeneratedValue
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getMaxRoll() {
        return maxRoll;
    }

    public void setMaxRoll(int minimumValue) {
        this.maxRoll = minimumValue;
    }

    public Integer getMinRoll() {
        return minRoll;
    }

    public void setMinRoll(Integer minRoll) {
        this.minRoll = minRoll;
    }

    @OneToMany(mappedBy = "hitDie", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JsonBackReference
    public List<ClassModel> getClasses() {
        return classes;
    }

    public void setClasses(List<ClassModel> classes) {
        this.classes = classes;
    }

    @OneToMany(mappedBy = "damageDice", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JsonBackReference
    public List<WeaponModel> getWeapons() {
        return weapons;
    }
    public void setWeapons(List<WeaponModel> weapons) {
        this.weapons = weapons;
    }

    @JsonBackReference
    @OneToMany(mappedBy = "startingWealthDie", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    public List<ClassModel> getClassWealthDie() {
        return classWealthDie;
    }

    public void setClassWealthDie(List<ClassModel> classWealthDie) {
        this.classWealthDie = classWealthDie;
    }
}
