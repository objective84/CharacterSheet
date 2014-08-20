package com.rational.model.equipment;

import com.rational.model.Proficiency;
import com.rational.model.entities.Coin;
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

    protected String name;
    protected Long itemWeight;
    protected String description;
    protected int price;

    @Id @GeneratedValue protected Long id;
    @JsonManagedReference @ManyToOne protected Coin priceDenomination;


    @JoinTable(name="equipmentmodel_proficiency",
            joinColumns = @JoinColumn(name="equipment_id"), inverseJoinColumns = @JoinColumn(name="proficiencies_id"))
    @ManyToMany protected List<Proficiency> proficiencies = new ArrayList<Proficiency>();

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

    public Coin getPriceDenomination() {
        return priceDenomination;
    }

    public void setPriceDenomination(Coin priceDenomination) {
        this.priceDenomination = priceDenomination;
    }

    public List<Proficiency> getProficiencies() {
        return proficiencies;
    }

    public void setProficiencies(List<Proficiency> proficiencies) {
        this.proficiencies = proficiencies;
    }
}
