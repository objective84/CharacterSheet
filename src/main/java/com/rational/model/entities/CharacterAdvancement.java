package com.rational.model.entities;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Andy on 8/19/2014.
 */
@Entity
public class CharacterAdvancement {

    @Id @GeneratedValue private Long id;

    @Column(name = "total_level") private int totalLevel;
    @Column(name = "proficiency_bonus") private int proficiencyBonus;
    @Column(name = "experience_points") private int experiencePoints;

    @OneToMany(mappedBy = "characterAdvancement", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<CharacterModel> characters = new ArrayList<CharacterModel>();

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

    public List<CharacterModel> getCharacters() {
        return characters;
    }

    public void setCharacters(List<CharacterModel> characters) {
        this.characters = characters;
    }
}
