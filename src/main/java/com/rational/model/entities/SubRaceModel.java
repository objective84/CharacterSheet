package com.rational.model.entities;

import com.rational.model.Proficiency;
import org.codehaus.jackson.annotate.JsonBackReference;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Andy on 7/23/2014.
 */
@Entity
@Table(name="subraces")
public class SubRaceModel {

    private String name;
    private String description;

    @Id @GeneratedValue private Long id;
    @JsonBackReference @ManyToOne private RaceModel parentRace;

    @JoinTable(name="subraces_proficiency", joinColumns = @JoinColumn(name="subraces_id"), inverseJoinColumns = @JoinColumn(name="proficiencies_id"))
    @ManyToMany private List<Proficiency> proficiencies = new ArrayList<Proficiency>();

    @JoinTable(name="subraces_traitmodel", joinColumns = @JoinColumn(name="subraces_id"), inverseJoinColumns = @JoinColumn(name="traitmodel_id"))
    @ManyToMany private List<TraitModel> subRacialTraits = new ArrayList<TraitModel>();

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
