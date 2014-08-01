package com.rational.forms;

import javax.persistence.ManyToOne;

public class Equipment {

    protected Long id;

    protected String name;
    protected Integer itemWeight;
    protected String description;
    protected Integer price;
    protected Long priceDenomination;

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

    @ManyToOne
    public Long getPriceDenomination() {
        return priceDenomination;
    }

    public void setPriceDenomination(Long priceDenomination) {
        this.priceDenomination = priceDenomination;
    }
}
