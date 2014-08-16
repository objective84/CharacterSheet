package com.rational.forms;

import com.rational.model.Proficiency;

import javax.persistence.CascadeType;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import java.util.ArrayList;
import java.util.List;

public class Equipment {

    protected Long id;

    protected String name;
    protected Integer itemWeight;
    protected String description;
    protected Integer price;
    protected Long priceDenomination;
    @OneToMany(mappedBy="equipment", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    protected List<Proficiency> proficiencies;
    private List<Long> traits = new ArrayList<Long>();


    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getItemWeight() {
        return itemWeight;
    }

    public void setItemWeight(Integer itemWeight) {
        this.itemWeight = itemWeight;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getPriceDenomination() {
        return priceDenomination;
    }

    public void setPriceDenomination(Long priceDenomination) {
        this.priceDenomination = priceDenomination;
    }


    public List<Long> getTraits() {
        return traits;
    }

    public void setTraits(List<Long> traits) {
        this.traits = traits;
    }
}
