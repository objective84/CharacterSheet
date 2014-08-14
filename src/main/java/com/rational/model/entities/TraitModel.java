package com.rational.model.entities;

import com.rational.model.equipment.EquipmentModel;
import org.codehaus.jackson.annotate.JsonBackReference;
import org.codehaus.jackson.annotate.JsonManagedReference;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
public class TraitModel {

    @Id
    @GeneratedValue
    private Long id;

    private String name;
    private String description;
    private Integer traitModifier;
//    private TraitModTypeEnum modType;



    @JsonBackReference
    @ManyToMany
    @JoinTable(name="race_trait", joinColumns = @JoinColumn(name="race_id"),
            inverseJoinColumns = @JoinColumn(name="trait_id"))
    private List<RaceModel> races= new ArrayList<RaceModel>();

    @JsonBackReference
    @ManyToMany
    @JoinTable(name="subrace_trait", joinColumns = @JoinColumn(name="subrace_id"),
            inverseJoinColumns = @JoinColumn(name="trait_id"))
    private List<SubRaceModel> subRaces= new ArrayList<SubRaceModel>();

    @JsonBackReference
    @ManyToMany
    @JoinTable(name="class_trait", joinColumns = @JoinColumn(name="class_id"),
            inverseJoinColumns = @JoinColumn(name="trait_id"))
    private List<ClassModel> classes= new ArrayList<ClassModel>();

    @JsonBackReference
    @ManyToMany
    @JoinTable(name="subclass_trait", joinColumns = @JoinColumn(name="subclass_id"),
            inverseJoinColumns = @JoinColumn(name="trait_id"))
    private List<SubClassModel> subClasses= new ArrayList<SubClassModel>();

    @JsonBackReference
    @ManyToMany
    private List<CharacterModel> characters = new ArrayList<CharacterModel>();

    @JsonManagedReference
    @ManyToMany(mappedBy = "traits", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
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
    public List<RaceModel> getRaces() {
        return races;
    }

    public void setRaces(List<RaceModel> races) {
        this.races = races;
    }

    public List<SubRaceModel> getSubRaces() {
        return subRaces;
    }

    public void setSubRaces(List<SubRaceModel> subRaces) {
        this.subRaces = subRaces;
    }

    public List<ClassModel> getClasses() {
        return classes;
    }

    public void setClasses(List<ClassModel> classes) {
        this.classes = classes;
    }

    public List<SubClassModel> getSubClasses() {
        return subClasses;
    }

    public void setSubClasses(List<SubClassModel> subClasses) {
        this.subClasses = subClasses;
    }

    public List<CharacterModel> getCharacters() {
        return characters;
    }

    public void setCharacters(List<CharacterModel> characters) {
        this.characters = characters;
    }

//    public TraitModTypeEnum getModType() {
//        return modType;
//    }
//
//    public void setModType(TraitModTypeEnum modType) {
//        this.modType = modType;
//    }

    public Integer getTraitModifier() {
        return traitModifier;
    }

    public void setTraitModifier(Integer traitModifier) {
        this.traitModifier = traitModifier;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<EquipmentModel> getEquipmentModels() {
        return equipment;
    }

    public void setEquipmentModels(List<EquipmentModel> equipment) {
        this.equipment = equipment;
    }
}
