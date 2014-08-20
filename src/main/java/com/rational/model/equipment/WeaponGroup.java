package com.rational.model.equipment;


import org.codehaus.jackson.annotate.JsonBackReference;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Andy on 7/23/2014.
 */

@Entity
public class WeaponGroup {

    private String name;
    private String description;

    @Id @GeneratedValue private Long id;
    @OneToMany(mappedBy = "weaponGroup", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JsonBackReference private List<WeaponModel> weapons = new ArrayList<WeaponModel>();

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

    public List<WeaponModel> getWeapons() {
        return weapons;
    }

    public void setWeapons(List<WeaponModel> weapons) {
        this.weapons = weapons;
    }
}
