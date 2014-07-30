package com.rational.model.entities;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Andy on 7/23/2014.
 */
@Entity
@Table(name="subraces")
public class SubRaceModel {

    @Id
    @GeneratedValue
    private Long id;

    @Column(name="name")
    private String name;

    @Column(name="description")
    private String description;

    @ManyToMany(cascade = CascadeType.ALL)
    private List<TraitModel> subRacialTraits = new ArrayList<TraitModel>();

    @ManyToOne
    private RaceModel parentRace;


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

    public RaceModel getParentRace() {
        return parentRace;
    }

    public void setParentRace(RaceModel parentRace) {
        this.parentRace = parentRace;
    }

    public List<TraitModel> getSubRacialTraits() {
        return subRacialTraits;
    }

    public void setSubRacialTraits(List<TraitModel> subRacialTraits) {
        this.subRacialTraits = subRacialTraits;
    }
}
