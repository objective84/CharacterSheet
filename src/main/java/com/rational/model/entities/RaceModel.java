/**
 * Created by awest on 7/23/14.
 */
package com.rational.model.entities;

import com.rational.model.Proficiency;
import org.codehaus.jackson.annotate.JsonManagedReference;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
public class RaceModel {


    private String name;
    private String description;
    private String size;
    private Integer speed;

    @Id @GeneratedValue private Long id;
    @OneToMany(mappedBy = "parentRace", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JsonManagedReference private List<SubRaceModel> availableSubraces = new ArrayList<SubRaceModel>();

    @JoinTable(name="racemodel_traitmodel",joinColumns = @JoinColumn(name="racemodel_id"), inverseJoinColumns = @JoinColumn(name="traitmodel_id"))
    @ManyToMany private List<TraitModel> traits = new ArrayList<TraitModel>();

    @JoinTable(name="racemodel_languagemodel",joinColumns = @JoinColumn(name="races_id"), inverseJoinColumns = @JoinColumn(name="languages_id"))
    @JsonManagedReference @ManyToMany private List<LanguageModel> languages = new ArrayList<LanguageModel>();

    @JoinTable(name="racemodel_proficiency",joinColumns = @JoinColumn(name="races_id"), inverseJoinColumns = @JoinColumn(name="proficiencies_id"))
    @JsonManagedReference @ManyToMany private List<Proficiency> proficiencies = new ArrayList<Proficiency>();

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

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public int getSpeed() {
        return speed;
    }

    public void setSpeed(int speed) {
        this.speed = speed;
    }

    public List<LanguageModel> getLanguages() {
        return languages;
    }

    public void setLanguages(List<LanguageModel> languages) {
        this.languages = languages;
    }

    public List<SubRaceModel> getAvailableSubraces() {
        return availableSubraces;
    }

    public void setAvailableSubraces(List<SubRaceModel> availableSubraces) {
        this.availableSubraces = availableSubraces;
    }

    public List<TraitModel> getTraits() {
        return traits;
    }

    public void setTraits(List<TraitModel> traits) {
        this.traits = traits;
    }

    public List<Proficiency> getProficiencies() {
        return proficiencies;
    }

    public void setProficiencies(List<Proficiency> proficiencies) {
        this.proficiencies = proficiencies;
    }
}
