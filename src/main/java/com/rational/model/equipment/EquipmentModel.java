package com.rational.model.equipment;

import com.rational.model.Proficiency;
import com.rational.model.entities.Coin;
import com.rational.model.entities.TraitModel;
import org.codehaus.jackson.annotate.JsonManagedReference;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by awest on 7/23/14.
 */
@Entity
@Inheritance(strategy = InheritanceType.JOINED)
public abstract class EquipmentModel {

    protected Long id;
    protected String name;
    protected Long itemWeight;
    protected String description;
    protected int price;

    @JsonManagedReference
    protected Coin priceDenomination;
    private List<TraitModel> traits = new ArrayList<TraitModel>();
    protected List<Proficiency> proficiencies = new ArrayList<Proficiency>();
    @Id
    @GeneratedValue
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

    public Long getItemWeight() {
        return itemWeight;
    }

    public void setItemWeight(Long itemWeight) {
        this.itemWeight = itemWeight;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    @ManyToOne
    public Coin getPriceDenomination() {
        return priceDenomination;
    }

    public void setPriceDenomination(Coin priceDenomination) {
        this.priceDenomination = priceDenomination;
    }

    @JsonManagedReference
    @ManyToMany
    public List<TraitModel> getTraits() {
        return traits;
    }

    public void setTraits(List<TraitModel> traits) {
        this.traits = traits;
    }

    @ManyToMany
    public List<Proficiency> getProficiencies() {
        return proficiencies;
    }

    public void setProficiencies(List<Proficiency> proficiencies) {
        this.proficiencies = proficiencies;
    }
}
