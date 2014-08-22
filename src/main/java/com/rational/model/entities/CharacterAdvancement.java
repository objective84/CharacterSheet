package com.rational.model.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * Created by Andy on 8/19/2014.
 */
@Entity(name = "character_advancement")
public class CharacterAdvancement {
    @Id
    @GeneratedValue
    @Column(name = "id_character_advancement")
    private Long id;
    @Column(name = "total_level")
    private int totalLevel;
    @Column(name = "proficiency_bonus")
    private int proficiencyBonus;
    @Column(name = "experience_points")
    private int experiencePoints;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public int getTotalLevel() {
        return totalLevel;
    }

    public void setTotalLevel(int totalLevel) {
        this.totalLevel = totalLevel;
    }

    public int getProficiencyBonus() {
        return proficiencyBonus;
    }

    public void setProficiencyBonus(int proficiencyBonus) {
        this.proficiencyBonus = proficiencyBonus;
    }

    public int getExperiencePoints() {
        return experiencePoints;
    }

    public void setExperiencePoints(int experiencePoints) {
        this.experiencePoints = experiencePoints;
    }
}
