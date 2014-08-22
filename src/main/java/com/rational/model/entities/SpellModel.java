package com.rational.model.entities;

import com.rational.model.Dice;
import org.codehaus.jackson.annotate.JsonBackReference;
import org.codehaus.jackson.annotate.JsonManagedReference;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
public class SpellModel {

    @Id
    @GeneratedValue
    private Long id;

    private String name;
    private String description;
    private Integer level;
    private Integer damageDiceAmount;

    @ManyToOne
    @JsonManagedReference
    private Dice damageDice;

    private String savingThrow;
    private String condition;

    @JsonBackReference
    @ManyToMany
    @JoinTable(name="spellmodel_classmodel",
            joinColumns = @JoinColumn(name="spellmodel_id"),
            inverseJoinColumns = @JoinColumn(name="classmodel_id"))
    private List<ClassModel> classes = new ArrayList<ClassModel>();

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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public Integer getDamageDiceAmount() {
        return damageDiceAmount;
    }

    public void setDamageDiceAmount(Integer damageDiceAmount) {
        this.damageDiceAmount = damageDiceAmount;
    }
    public Dice getDamageDice() {
        return damageDice;
    }

    public void setDamageDice(Dice damageDice) {
        this.damageDice = damageDice;
    }

    public String getSavingThrow() {
        return savingThrow;
    }

    public void setSavingThrow(String savingThrow) {
        this.savingThrow = savingThrow;
    }

    public String getCondition() {
        return condition;
    }

    public void setCondition(String condition) {
        this.condition = condition;
    }

    public List<ClassModel> getClasses() {
        return classes;
    }

    public void setClasses(List<ClassModel> classes) {
        this.classes = classes;
    }
}
