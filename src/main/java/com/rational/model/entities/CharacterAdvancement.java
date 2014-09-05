package com.rational.model.entities;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Andy on 8/19/2014.
 */
@Entity(name = "character_advancement")
public class CharacterAdvancement {

    @Id @GeneratedValue @Column(name = "id_character_advancement")
    private Long id;
    @Column(name = "proficiency_bonus")
    private int proficiencyBonus;
    @Column(name = "experience_points")
    private int experiencePoints;

    @ManyToMany
    @JoinTable(name = "character_advancement_level",
            joinColumns = @JoinColumn(name = "character_advancement_id"), inverseJoinColumns = @JoinColumn(name = "level_id"))
    private List<Level> levels = new ArrayList<Level>();

    public CharacterAdvancement(){

    }

    public CharacterAdvancement(CharacterAdvancement advancement){
        this.setProficiencyBonus(advancement.getProficiencyBonus());
        this.setExperiencePoints(advancement.getExperiencePoints());
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public int getTotalLevel() {
        return levels.size();
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

    public List<Level> getLevels() {
        return levels;
    }

    public void setLevels(List<Level> levels) {
        this.levels = levels;
    }

    public int getLevelsOfClass(ClassModel clazz) {
        int total = 0;
        for(Level level : this.levels){
            if(level.getClazz().getId() == clazz.getId()){
                total++;
            }
        }
        return total;
    }
}
