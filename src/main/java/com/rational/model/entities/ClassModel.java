package com.rational.model.entities;

import com.rational.model.Dice;
import com.rational.model.Proficiency;
import org.codehaus.jackson.annotate.JsonManagedReference;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by awest on 7/23/14.
 */
@Entity
public class ClassModel {

    @Id
    @GeneratedValue
    private Long id;

    private String name;

    @ManyToOne
    @JsonManagedReference
    private Dice hitDie;

    @ManyToMany
    @JsonManagedReference
    private List<Proficiency> proficiencies = new ArrayList<Proficiency>();

    @ManyToMany
    @JoinTable(name="classmodel_traitmodel",
            joinColumns = @JoinColumn(name="traitmodel_id"),
            inverseJoinColumns = @JoinColumn(name="classmodel_id"))
    private List<TraitModel> classTraits = new ArrayList<TraitModel>();

    @OneToMany(mappedBy = "baseClass", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JsonManagedReference
    private List<SubClassModel> subClasses = new ArrayList<SubClassModel>();

    @Column(name="skills_at_creation")
    private Integer skillsAtCreation;

    private Integer startingWealthDieAmount;

    @JsonManagedReference
    @ManyToOne
    private Dice startingWealthDie;

    @JsonManagedReference
    @ManyToMany
    @JoinTable(name="spellmodel_classmodel",
            joinColumns = @JoinColumn(name="spellmodel_id"),
            inverseJoinColumns = @JoinColumn(name="classmodel_id"))
    private List<SpellModel> spells = new ArrayList<SpellModel>();


    @Column(name="magic_ability")
    private String magicAbility;

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

    public Dice getHitDie() {
        return hitDie;
    }

    public void setHitDie(Dice hitDie) {
        this.hitDie = hitDie;
    }

    public List<Proficiency> getProficiencies() {
        return proficiencies;
    }

    public void setProficiencies(List<Proficiency> proficiencies) {
        this.proficiencies = proficiencies;
    }

    public List<TraitModel> getClassTraits() {
        return classTraits;
    }

    public void setClassTraits(List<TraitModel> classTraits) {
        this.classTraits = classTraits;
    }

    public List<SubClassModel> getSubClasses() {
        return subClasses;
    }

    public void setSubClasses(List<SubClassModel> subClasses) {
        this.subClasses = subClasses;
    }

    public Integer getSkillsAtCreation() {
        return skillsAtCreation;
    }

    public void setSkillsAtCreation(Integer skillsAtCreation) {
        this.skillsAtCreation = skillsAtCreation;
    }

    public Integer getStartingWealthDieAmount() {
        return startingWealthDieAmount;
    }

    public void setStartingWealthDieAmount(Integer startingWealthDieAmount) {
        this.startingWealthDieAmount = startingWealthDieAmount;
    }

    public Dice getStartingWealthDie() {
        return startingWealthDie;
    }

    public void setStartingWealthDie(Dice startingWealthDie) {
        this.startingWealthDie = startingWealthDie;
    }

    public List<SpellModel> getSpells() {
        return spells;
    }

    public void setSpells(List<SpellModel> spells) {
        this.spells = spells;
    }
    public String getMagicAbility() {
        return magicAbility;
    }

    public void setMagicAbility(String magicAbility) {
        this.magicAbility = magicAbility;
    }
}
