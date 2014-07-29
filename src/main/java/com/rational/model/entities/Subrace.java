package com.rational.model.entities;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Andy on 7/23/2014.
 */
@Entity
@Table(name="subraces")
public class Subrace{

    @Id
    @GeneratedValue
    private Long id;

    @Column(name="name")
    private String name;

    @Column(name="description")
    private String description;

    @ManyToMany(cascade = CascadeType.ALL)
    private List<Trait> subRacialTraits = new ArrayList<Trait>();

    @ManyToOne
    private Race parentRace;


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

    public Race getParentRace() {
        return parentRace;
    }

    public void setParentRace(Race parentRace) {
        this.parentRace = parentRace;
    }

    public List<Trait> getSubRacialTraits() {
        return subRacialTraits;
    }

    public void setSubRacialTraits(List<Trait> subRacialTraits) {
        this.subRacialTraits = subRacialTraits;
    }
}
