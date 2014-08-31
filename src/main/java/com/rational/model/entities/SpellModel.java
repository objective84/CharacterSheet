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
    @ManyToOne
    private DamageType damageType;
    private String savingThrow;
    private String condition;
    private Boolean requiresVerbalComponent;
    private Boolean requiresSomaticComponent;
    private String materialComponent;
    private String duration;
    private String target;
    private Boolean requiresAttackRoll;
    private Boolean ritual;

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

    public Boolean isRequiresVerbalComponent() {
        return requiresVerbalComponent;
    }

    public void setRequiresVerbalComponent(Boolean requiresVerbalComponent) {
        this.requiresVerbalComponent = requiresVerbalComponent;
    }

    public Boolean isRequiresSomaticComponent() {
        return requiresSomaticComponent;
    }

    public void setRequiresSomaticComponent(Boolean requiresSomaticComponent) {
        this.requiresSomaticComponent = requiresSomaticComponent;
    }

    public String getMaterialComponent() {
        return materialComponent;
    }

    public void setMaterialComponent(String materialComponent) {
        this.materialComponent = materialComponent;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getTarget() {
        return target;
    }

    public void setTarget(String target) {
        this.target = target;
    }

    public Boolean isRequiresAttackRoll() {
        return requiresAttackRoll;
    }

    public void setRequiresAttackRoll(Boolean requiresAttackRoll) {
        this.requiresAttackRoll = requiresAttackRoll;
    }

    public Boolean isRitual() {
        return ritual;
    }

    public void setRitual(Boolean ritual) {
        this.ritual = ritual;
    }

    public DamageType getDamageType() {
        return damageType;
    }

    public void setDamageType(DamageType damageType) {
        this.damageType = damageType;
    }
}
