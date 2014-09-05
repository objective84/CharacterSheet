package com.rational.model.entities;

import org.codehaus.jackson.annotate.JsonBackReference;

import javax.persistence.*;

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
//    @ManyToMany
//    @JoinTable(name="level_traitmodel", joinColumns = @JoinColumn(name="level_id"), inverseJoinColumns = @JoinColumn(name="traitmodel_id"))
//    private List<TraitModel> traits;
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

    @JsonBackReference
    @ManyToOne
    private ClassModel clazz;

    public int getLevelNumber() {
        return levelNumber;
    }

    public void setLevelNumber(int levelNumber) {
        this.levelNumber = levelNumber;
    }

//    public List<TraitModel> getTraits() {
//        return traits;
//    }
//
//    public void setTraits(List<TraitModel> traits) {
//        this.traits = traits;
//    }

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
}
