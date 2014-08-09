package com.rational.model.equipment;

import com.rational.model.entities.CoinModel;

import javax.persistence.*;

/**
 * Created by awest on 7/23/14.
 */
@Entity
@Inheritance(strategy = InheritanceType.JOINED)
@DiscriminatorColumn(name="EQUIPMENT_TYPE")
public abstract class EquipmentModel {

    protected Long id;

    protected String name;
    protected int itemWeight;
    protected String description;
    protected int price;

    protected CoinModel priceDenomination;


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

    public int getItemWeight() {
        return itemWeight;
    }

    public void setItemWeight(int itemWeight) {
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
    public CoinModel getPriceDenomination() {
        return priceDenomination;
    }

    public void setPriceDenomination(CoinModel priceDenomination) {
        this.priceDenomination = priceDenomination;
    }
}
