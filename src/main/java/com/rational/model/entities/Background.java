package com.rational.model.entities;

import com.rational.model.Proficiency;
import com.rational.model.equipment.EquipmentModel;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
public class Background {

    @Id @GeneratedValue private Long id;
    private String name;
    private String description;
    private String feature;

    @ManyToMany
    @JoinTable(name="background_proficiency", joinColumns = @JoinColumn(name="background_id"), inverseJoinColumns = @JoinColumn(name="proficiency_id"))
    private List<Proficiency> proficiencies = new ArrayList<Proficiency>();

    @ManyToMany
    @JoinTable(name="background_language", joinColumns = @JoinColumn(name="background_id"), inverseJoinColumns = @JoinColumn(name="language_id"))
    private List<LanguageModel> languages = new ArrayList<LanguageModel>();

    @ManyToMany
    @JoinTable(name="background_equipment", joinColumns = @JoinColumn(name="background_id"), inverseJoinColumns = @JoinColumn(name="equiptment_id"))
    private List<EquipmentModel> equipment = new ArrayList<EquipmentModel>();

    @OneToOne(cascade = CascadeType.ALL)
    private CoinPurse coinPurse;

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

    public String getFeature() {
        return feature;
    }

    public void setFeature(String feature) {
        this.feature = feature;
    }

    public List<Proficiency> getProficiencies() {
        return proficiencies;
    }

    public List<LanguageModel> getLanguages() {
        return languages;
    }

    public void setLanguages(List<LanguageModel> languages) {
        this.languages = languages;
    }

    public List<EquipmentModel> getEquipment() {
        return equipment;
    }

    public void setEquipment(List<EquipmentModel> equipment) {
        this.equipment = equipment;
    }

    public CoinPurse getCoinPurse() {
        return coinPurse;
    }

    public void setCoinPurse(CoinPurse coinPurse) {
        this.coinPurse = coinPurse;
    }
}
