package com.rational.model.entities;

import com.rational.model.playing.Event;
import org.codehaus.jackson.annotate.JsonIgnore;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Inheritance(strategy = InheritanceType.JOINED)
public abstract class TraitModel {


    @Id
    @GeneratedValue
    private Long id;
    private String name;
    private String description;

    @JsonIgnore
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinTable(name="trait_subtrait", joinColumns = @JoinColumn(name = "trait_id"), inverseJoinColumns = @JoinColumn(name = "subtrait_id"))
    List<TraitModel> subTraits = new ArrayList<TraitModel>();

    public TraitModel(){}

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

    public abstract void processTrait(CharacterModel character);

    public abstract void applyTrait(CharacterModel character);

    public abstract void traitInterrupt(CharacterModel character, Event event);

    public List<TraitModel> getSubTraits() {
        return subTraits;
    }

    public void setSubTraits(List<TraitModel> subTraits) {
        this.subTraits = subTraits;
    }


}
