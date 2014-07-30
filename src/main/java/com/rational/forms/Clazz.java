package com.rational.forms;

import com.rational.model.enums.DieTypeEnum;

import java.util.ArrayList;
import java.util.List;

public class Clazz {

    private Long id;
    private String name;
    private DieTypeEnum hitDie;
    private List<Long> proficiencies = new ArrayList<Long>();
    private List<Long> classTraits = new ArrayList<Long>();
    private List<Long> subClasses = new ArrayList<Long>();

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

    public DieTypeEnum getHitDie() {
        return hitDie;
    }

    public void setHitDie(DieTypeEnum hitDie) {
        this.hitDie = hitDie;
    }

    public List<Long> getProficiencies() {
        return proficiencies;
    }

    public void setProficiencies(List<Long> proficiencies) {
        this.proficiencies = proficiencies;
    }

    public List<Long> getClassTraits() {
        return classTraits;
    }

    public void setClassTraits(List<Long> classTraits) {
        this.classTraits = classTraits;
    }

    public List<Long> getSubClasses() {
        return subClasses;
    }

    public void setSubClasses(List<Long> subClasses) {
        this.subClasses = subClasses;
    }
}
