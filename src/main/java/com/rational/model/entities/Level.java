package com.rational.model.entities;

import javax.persistence.ManyToOne;
import java.util.List;

/**
 * Created by Andy on 8/19/2014.
 */
public class Level {
    private int levelNumber;
    private List<TraitModel> traits;
    private int proficiencyBonus;
    private Integer cantripsKnown;
    private Integer spellsKnown;
    private Integer firstLevelSpellSlots;
    private Integer secondLevelSpellSlots;
    private Integer thirdLevelSpellSlots;
    private Integer fourthLevelSpellSlots;
    private Integer fifthLevelSpellSlots;
    private Integer sixthLevelSpellSlots;
    private Integer seventhLevelSpellSlots;
    private Integer eighthLevelSpellSlots;
    private Integer ninthLevelSpellSlots;

    @ManyToOne
    private ClassModel clazz;

    public int getLevelNumber() {
        return levelNumber;
    }

    public void setLevelNumber(int levelNumber) {
        this.levelNumber = levelNumber;
    }

    public List<TraitModel> getTraits() {
        return traits;
    }

    public void setTraits(List<TraitModel> traits) {
        this.traits = traits;
    }

    public int getProficiencyBonus() {
        return proficiencyBonus;
    }

    public void setProficiencyBonus(int proficiencyBonus) {
        this.proficiencyBonus = proficiencyBonus;
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
}
