package com.rational.model.entities;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * Created by Andy on 8/22/2014.
 */
@Entity
public class DamageType {
    @Id
    @GeneratedValue
    private Long id;
    private String name;
    private String description;

//    @JsonBackReference @OneToMany(mappedBy = "damageType", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
//    private List<SpellModel> spells = new ArrayList<SpellModel>();

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

//    public List<SpellModel> getSpells() {
//        return spells;
//    }
//
//    public void setSpells(List<SpellModel> spells) {
//        this.spells = spells;
//    }
}
