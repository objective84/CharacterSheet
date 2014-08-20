package com.rational.model;

import com.rational.model.enums.ProficiencyTypeEnum;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * Created by Andy on 7/23/2014.
 */
@Entity
public class Proficiency {

    private String name;
    private String description;
    private ProficiencyTypeEnum proficiencyType;
    private String proficiencyTypeString;

    @Id @GeneratedValue private Long id;

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

    public ProficiencyTypeEnum getProficiencyType() {
        return ProficiencyTypeEnum.valueOf(proficiencyTypeString);
    }

    public String getProficiencyTypeString() {
        return proficiencyTypeString;
    }

    public void setProficiencyTypeString(String proficiencyTypeString) {
        this.proficiencyTypeString = proficiencyTypeString;
    }

}
