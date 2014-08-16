package com.rational.model;

import com.rational.model.entities.CharacterModel;
import com.rational.model.entities.ClassModel;
import com.rational.model.enums.ProficiencyTypeEnum;
import com.rational.model.equipment.EquipmentModel;
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

    private ProficiencyTypeEnum proficiencyType;

    @Column(name="proficiencyTypeString")
    private String proficiencyTypeString;

    @JsonBackReference
    @ManyToMany(mappedBy = "proficiencies", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<ClassModel> classes = new ArrayList<ClassModel>();

    @JsonBackReference
    @ManyToMany(mappedBy = "proficiencies", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<CharacterModel> characters = new ArrayList<CharacterModel>();

    @JsonBackReference
    @ManyToMany(mappedBy = "proficiencies", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<EquipmentModel> equipment = new ArrayList<EquipmentModel>();

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

    public List<EquipmentModel> getEquipment() {
        return equipment;
    }

    public void setEquipment(List<EquipmentModel> equipment) {
        this.equipment = equipment;
    }
}
