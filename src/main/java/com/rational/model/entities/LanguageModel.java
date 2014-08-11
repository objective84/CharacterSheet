/**
 * Created by Andy on 7/23/2014.
 */
package com.rational.model.entities;


import org.codehaus.jackson.annotate.JsonBackReference;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name="languages")
public class LanguageModel {

    @Id
    @GeneratedValue
    private Long id;

    @Column(name="name")
    private String name;

    @Column(name="description")
    private String description;

    @JsonBackReference
    @ManyToMany(mappedBy = "languages", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<RaceModel> races = new ArrayList<RaceModel>();

    @JsonBackReference
    @ManyToMany(mappedBy = "languages", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<CharacterModel> characters = new ArrayList<CharacterModel>();

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

    public List<RaceModel> getRaces() {
        return races;
    }

    public void setRaces(List<RaceModel> races) {
        this.races = races;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public List<CharacterModel> getCharacters() {
        return characters;
    }

    public void setCharacters(List<CharacterModel> characters) {
        this.characters = characters;
    }
}
