package com.rational.model.entities;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name="traits")
public class TraitModel {

    @Id
    @GeneratedValue
    private int id;

    @Column(name="name")
    private String name;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name="class_trait", joinColumns = @JoinColumn(name="class_id"),
            inverseJoinColumns = @JoinColumn(name="trait_id"))
    private List<ClassModel> classes= new ArrayList<ClassModel>();

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name="subclass_trait", joinColumns = @JoinColumn(name="subclass_id"),
            inverseJoinColumns = @JoinColumn(name="trait_id"))
    private List<SubClassModel> subClasses= new ArrayList<SubClassModel>();

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name="race_trait", joinColumns = @JoinColumn(name="race_id"),
            inverseJoinColumns = @JoinColumn(name="trait_id"))
    private List<RaceModel> races= new ArrayList<RaceModel>();

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name="subrace_trait", joinColumns = @JoinColumn(name="subrace_id"),
            inverseJoinColumns = @JoinColumn(name="trait_id"))
    private List<SubRaceModel> subRaces= new ArrayList<SubRaceModel>();
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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
}
