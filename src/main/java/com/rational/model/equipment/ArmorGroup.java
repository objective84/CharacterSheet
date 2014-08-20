package com.rational.model.equipment;

import org.codehaus.jackson.annotate.JsonBackReference;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Andy on 7/24/2014.
 */

@Entity
public class ArmorGroup {

    private String name;
    private String description;

    @Id @GeneratedValue private Long id;

    @OneToMany(mappedBy = "armorGroup", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JsonBackReference private List<ArmorModel> armor = new ArrayList<ArmorModel>();

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

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public List<ArmorModel> getArmor() {
        return armor;
    }

    public void setArmor(List<ArmorModel> armor) {
        this.armor = armor;
    }
}
