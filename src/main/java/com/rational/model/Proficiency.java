package com.rational.model;

import com.rational.model.entities.CharacterModel;
import com.rational.model.entities.ClassModel;
import com.rational.model.enums.ProficiencyTypeEnum;
import org.codehaus.jackson.annotate.JsonBackReference;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Andy on 7/23/2014.
 */
@Entity
public class Proficiency {


    @Id
    @GeneratedValue
    private Long id;

    @Column(name="name")
    private String name;

    @Column(name="description")
    private String description;

    private ProficiencyTypeEnum type;

    @Column(name="typeString")
    private String typeString;

    @JsonBackReference
    @ManyToMany(mappedBy = "proficiencies")
    private List<ClassModel> classes = new ArrayList<ClassModel>();

    @JsonBackReference
    @ManyToMany(mappedBy = "proficiencies")
    private List<CharacterModel> characters = new ArrayList<CharacterModel>();

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

    public ProficiencyTypeEnum getType() {
        return ProficiencyTypeEnum.valueOf(typeString);
    }

    public String getTypeString() {
        return typeString;
    }

    public void setTypeString(String typeString) {
        this.typeString = typeString;
    }

    public List<ClassModel> getClasses() {
        return classes;
    }

    public void setClasses(List<ClassModel> classes) {
        this.classes = classes;
    }

    public List<CharacterModel> getCharacters() {
        return characters;
    }

    public void setCharacters(List<CharacterModel> characters) {
        this.characters = characters;
    }
}
