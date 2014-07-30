/**
 * Created by awest on 7/23/14.
 */
package com.rational.model.entities;

import org.codehaus.jackson.annotate.JsonManagedReference;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name="races")
public class RaceModel {

    @Id
    @GeneratedValue
    private Long id;

    @Column(name="name")
    private String raceName;

    @OneToMany(mappedBy = "race")
    private List<CharacterModel> characters;

    @Column(name="description")
    private String description;

    @Column(name="size")
    private String size;

    @Column(name="speed")
    private Integer speed;

    @JsonManagedReference
    @ManyToMany(cascade = CascadeType.ALL)
    private List<LanguageModel> languages = new ArrayList<LanguageModel>();

    @JsonManagedReference
    @ManyToMany(cascade = CascadeType.ALL)
    private List<TraitModel> racialTraits = new ArrayList<TraitModel>();

    @JsonManagedReference
    @OneToMany(mappedBy = "parentRace", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<SubRaceModel> availableSubraces = new ArrayList<SubRaceModel>();

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getRaceName() {
        return raceName;
    }

    public void setRaceName(String raceName) {
        this.raceName = raceName;
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

//    public List<TraitModel> getRacialTraits() {
//        return racialTraits;
//    }
//
//    public void setRacialTraits(List<TraitModel> racialTraits) {
//        this.racialTraits = racialTraits;
//    }

//    public SubRaceModel getSubrace() {
//        return subRace;
//    }
//
//    public void setSubrace(SubRaceModel subRace) {
//        this.subRace = subRace;
//    }


    public List<SubRaceModel> getAvailableSubraces() {
        return availableSubraces;
    }

    public void setAvailableSubraces(List<SubRaceModel> availableSubraces) {
        this.availableSubraces = availableSubraces;
    }

    public List<TraitModel> getRacialTraits() {
        return racialTraits;
    }

    public void setRacialTraits(List<TraitModel> racialTraits) {
        this.racialTraits = racialTraits;
    }

    public List<CharacterModel> getCharacter() {
        return characters;
    }

    public void setCharacter(List<CharacterModel> characters) {
        this.characters = characters;
    }
}
