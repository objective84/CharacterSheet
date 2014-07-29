package com.rational.model.entities;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name="traits")
public class Trait {

    @Id
    @GeneratedValue
    private int id;

    @Column(name="name")
    private String name;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name="class_trait", joinColumns = @JoinColumn(name="class_id"),
            inverseJoinColumns = @JoinColumn(name="trait_id"))
    private List<Clazz> classes= new ArrayList<Clazz>();

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name="subclass_trait", joinColumns = @JoinColumn(name="subclass_id"),
            inverseJoinColumns = @JoinColumn(name="trait_id"))
    private List<SubClass> subClasses= new ArrayList<SubClass>();

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name="race_trait", joinColumns = @JoinColumn(name="race_id"),
            inverseJoinColumns = @JoinColumn(name="trait_id"))
    private List<Race> races= new ArrayList<Race>();

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name="subrace_trait", joinColumns = @JoinColumn(name="subrace_id"),
            inverseJoinColumns = @JoinColumn(name="trait_id"))
    private List<Subrace> subRaces= new ArrayList<Subrace>();
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

    public List<Clazz> getClasses() {
        return classes;
    }

    public void setClasses(List<Clazz> classes) {
        this.classes = classes;
    }

    public List<SubClass> getSubClasses() {
        return subClasses;
    }

    public void setSubClasses(List<SubClass> subClasses) {
        this.subClasses = subClasses;
    }

    public List<Race> getRaces() {
        return races;
    }

    public void setRaces(List<Race> races) {
        this.races = races;
    }

    public List<Subrace> getSubRaces() {
        return subRaces;
    }

    public void setSubRaces(List<Subrace> subRaces) {
        this.subRaces = subRaces;
    }
}
