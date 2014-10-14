package com.rational.model.entities;

import org.codehaus.jackson.annotate.JsonBackReference;
import org.codehaus.jackson.annotate.JsonManagedReference;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Andy on 8/19/2014.
 */
@Entity
public class Level {
    @Id
    @GeneratedValue
    @Column(name = "id_level")
    private Long id_level;
    @Column(name = "level_number")
    private int levelNumber;
    @Column(name = "cantrips_known")
    private Integer cantripsKnown;
    @Column(name = "spells_known")
    private Integer spellsKnown;
    @Column(name = "first_level_spell_slots")
    private Integer firstLevelSpellSlots;
    @Column(name = "second_level_spell_slots")
    private Integer secondLevelSpellSlots;
    @Column(name = "third_level_spell_slots")
    private Integer thirdLevelSpellSlots;
    @Column(name = "fourth_level_spell_slots")
    private Integer fourthLevelSpellSlots;
    @Column(name = "fifth_level_spell_slots")
    private Integer fifthLevelSpellSlots;
    @Column(name = "sixth_level_spell_slots")
    private Integer sixthLevelSpellSlots;
    @Column(name = "seventh_level_spell_slots")
    private Integer seventhLevelSpellSlots;
    @Column(name = "eighth_level_spell_slots")
    private Integer eighthLevelSpellSlots;
    @Column(name = "ninth_level_spell_slots")
    private Integer ninthLevelSpellSlots;


    @Column(name="choose_sub_class") private Boolean chooseSubclass;


    @JoinTable(name="level_spell", joinColumns = @JoinColumn(name="level_id"), inverseJoinColumns = @JoinColumn(name="spell_id"))
    @JsonManagedReference
    @ManyToMany private List<SpellModel> spells = new ArrayList<SpellModel>();

    @JsonBackReference
    @ManyToOne
    private ClassModel clazz;

    @JoinTable(name="sub_class_level", joinColumns = @JoinColumn(name="level_id"), inverseJoinColumns = @JoinColumn(name="sub_class_id"))
    @JsonBackReference @ManyToOne private SubClassModel subClass;

    @ManyToMany
    @JoinTable(name= "level_trait", joinColumns = @JoinColumn(name="level_id"), inverseJoinColumns = @JoinColumn(name="trait_id"))
    private List<TraitModel> traits = new ArrayList<TraitModel>();

    public int getLevelNumber() {
        return levelNumber;
    }

    public void setLevelNumber(int levelNumber) {
        this.levelNumber = levelNumber;
    }

    public Integer getCantripsKnown() {
        return cantripsKnown;
    }

    public void setCantripsKnown(Integer cantripsKnown) {
        this.cantripsKnown = cantripsKnown;
    }

    public Integer getSpellsKnown() {
        return spellsKnown;
    }

    public void setSpellsKnown(Integer spellsKnown) {
        this.spellsKnown = spellsKnown;
    }

    public Integer getFirstLevelSpellSlots() {
        return firstLevelSpellSlots;
    }

    public void setFirstLevelSpellSlots(Integer firstLevelSpellSlots) {
        this.firstLevelSpellSlots = firstLevelSpellSlots;
    }

    public Integer getSecondLevelSpellSlots() {
        return secondLevelSpellSlots;
    }

    public void setSecondLevelSpellSlots(Integer secondLevelSpellSlots) {
        this.secondLevelSpellSlots = secondLevelSpellSlots;
    }

    public Integer getThirdLevelSpellSlots() {
        return thirdLevelSpellSlots;
    }

    public void setThirdLevelSpellSlots(Integer thirdLevelSpellSlots) {
        this.thirdLevelSpellSlots = thirdLevelSpellSlots;
    }

    public Integer getFourthLevelSpellSlots() {
        return fourthLevelSpellSlots;
    }

    public void setFourthLevelSpellSlots(Integer fourthLevelSpellSlots) {
        this.fourthLevelSpellSlots = fourthLevelSpellSlots;
    }

    public Integer getFifthLevelSpellSlots() {
        return fifthLevelSpellSlots;
    }

    public void setFifthLevelSpellSlots(Integer fifthLevelSpellSlots) {
        this.fifthLevelSpellSlots = fifthLevelSpellSlots;
    }

    public Integer getSixthLevelSpellSlots() {
        return sixthLevelSpellSlots;
    }

    public void setSixthLevelSpellSlots(Integer sixthLevelSpellSlots) {
        this.sixthLevelSpellSlots = sixthLevelSpellSlots;
    }

    public Integer getSeventhLevelSpellSlots() {
        return seventhLevelSpellSlots;
    }

    public void setSeventhLevelSpellSlots(Integer seventhLevelSpellSlots) {
        this.seventhLevelSpellSlots = seventhLevelSpellSlots;
    }

    public Integer getEighthLevelSpellSlots() {
        return eighthLevelSpellSlots;
    }

    public void setEighthLevelSpellSlots(Integer eighthLevelSpellSlots) {
        this.eighthLevelSpellSlots = eighthLevelSpellSlots;
    }

    public Integer getNinthLevelSpellSlots() {
        return ninthLevelSpellSlots;
    }

    public void setNinthLevelSpellSlots(Integer ninthLevelSpellSlots) {
        this.ninthLevelSpellSlots = ninthLevelSpellSlots;
    }

    public ClassModel getClazz() {
        return clazz;
    }

    public void setClazz(ClassModel clazz) {
        this.clazz = clazz;
    }

    public List<TraitModel> getTraits() {
        return traits;
    }

    public void setTraits(List<TraitModel> traits) {
        this.traits = traits;
    }

    public SubClassModel getSubClass() {
        return subClass;
    }

    public void setSubClass(SubClassModel subClass) {
        this.subClass = subClass;
    }

    public List<SpellModel> getSpells() {
        return spells;
    }

    public void setSpells(List<SpellModel> spells) {
        this.spells = spells;
    }

    public Boolean getChooseSubclass() {
        return chooseSubclass;
    }

    public void setChooseSubclass(Boolean chooseSubclass) {
        this.chooseSubclass = chooseSubclass;
    }

    public Long getId_level() {
        return id_level;
    }

    public void setId_level(Long id_level) {
        this.id_level = id_level;
    }
}
