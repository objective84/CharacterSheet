package com.rational.model.equipment;

import org.codehaus.jackson.annotate.JsonBackReference;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Andy on 7/24/2014.
 */

@Entity
@Table(name = "ARMOR_GROUPS")
public class ArmorGroup {

    private Long id;

    private String name;

    private String description;

    private List<ArmorModel> armor = new ArrayList<ArmorModel>();

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

    @Id
    @GeneratedValue
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @JsonBackReference
    @OneToMany(mappedBy = "armorGroup", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    public List<ArmorModel> getArmor() {
        return armor;
    }

    public void setArmor(List<ArmorModel> armor) {
        this.armor = armor;
    }
}
