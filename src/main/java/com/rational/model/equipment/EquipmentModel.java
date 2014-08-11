package com.rational.model.equipment;

import com.rational.model.entities.CharacterModel;
import com.rational.model.entities.Coin;
import org.codehaus.jackson.annotate.JsonBackReference;
import org.codehaus.jackson.annotate.JsonManagedReference;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

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

    @JsonManagedReference
    protected Coin priceDenomination;

    protected List<CharacterModel> characters = new ArrayList<CharacterModel>();

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
    public Coin getPriceDenomination() {
        return priceDenomination;
    }

    public void setPriceDenomination(Coin priceDenomination) {
        this.priceDenomination = priceDenomination;
    }

    @JsonBackReference
    @ManyToMany(mappedBy = "inventory", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    public List<CharacterModel> getCharacters() {
        return characters;
    }

    public void setCharacters(List<CharacterModel> characters) {
        this.characters = characters;
    }
}
