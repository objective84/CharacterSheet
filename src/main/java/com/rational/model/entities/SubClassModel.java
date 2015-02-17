package com.rational.model.entities;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
public class SubClassModel {

    @Id
    @GeneratedValue
    private Long id;

    @Column(name="name")
    private String name;

    @Column(name="description")
    private String description;

    @ManyToOne
    private ClassModel baseClass;

    @ManyToMany
    @JoinTable(name="sub_class_level", joinColumns = @JoinColumn(name="sub_class_id"), inverseJoinColumns = @JoinColumn(name="level_id"))
    private List<Level> levels = new ArrayList<Level>();

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

    public ClassModel getBaseClass() {
        return baseClass;
    }

    public void setBaseClass(ClassModel clazz) {
        this.baseClass = clazz;
    }

    public List<Level> getLevels() {
        return levels;
    }

    public void setLevels(List<Level> levels) {
        this.levels = levels;
    }

    public Level getLevelOfNum(int num){
        for(Level level : this.levels){
            if(level.getLevelNumber() == num){
                return level;
            }
        }
        return null;
    }
}
