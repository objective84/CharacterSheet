package com.rational.model.entities;

import javax.persistence.*;

/**
 * Created by Andy on 7/23/2014.
 */
@Entity
@Table(name="racial_traits")
public class RacialTrait {


    @Id
    @GeneratedValue
    private int id;

    @Column(name="name")
    private String name;

//    @ManyToMany(mappedBy = "racialTraits")
//    private List<Race> races;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

//    public List<Race> getRaces() {
//        return races;
//    }
//
//    public void setRaces(List<Race> races) {
//        this.races = races;
//    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
