package com.rational.model.entities;

import javax.persistence.*;

/**
 * Created by Andy on 7/23/2014.
 */
@Entity
@Table(name="subraces")
public class Subrace{

    @Id
    @GeneratedValue
    private int id;

    @Column(name="SUBRACE_NAME")
    private String name;

    @Column(name="SUBRACE_DESCRIPTION")
    private String description;

//    @ManyToOne
//    private Race parentRace;


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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

//    public Race getParentRace() {
//        return parentRace;
//    }
//
//    public void setParentRace(Race parentRace) {
//        this.parentRace = parentRace;
//    }
}
