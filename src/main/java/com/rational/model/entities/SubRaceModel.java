package com.rational.model.entities;

import com.rational.model.Proficiency;
import org.codehaus.jackson.annotate.JsonBackReference;
import org.codehaus.jackson.annotate.JsonManagedReference;

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

    @JsonManagedReference
    @ManyToMany
    @JoinTable(name="subraces_traitmodel",
            joinColumns = @JoinColumn(name="subraces_id"), inverseJoinColumns = @JoinColumn(name="traitmodel_id"))
    private List<TraitModel> subRacialTraits = new ArrayList<TraitModel>();

    @JsonBackReference
    @ManyToOne
    private RaceModel parentRace;

    @JsonManagedReference
    @ManyToMany
    private List<Proficiency> proficiencies = new ArrayList<Proficiency>();

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

    public List<Proficiency> getProficiencies() {
        return proficiencies;
    }

    public void setProficiencies(List<Proficiency> proficiencies) {
        this.proficiencies = proficiencies;
    }
}
