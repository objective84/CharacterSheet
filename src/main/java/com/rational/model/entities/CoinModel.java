package com.rational.model.entities;


import com.rational.model.equipment.EquipmentModel;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "COINS")
public class CoinModel {

    private Long id;

    private String denomination;

    private String abbr;

    private List<EquipmentModel> equipment;

    public String getDenomination() {
        return denomination;
    }

    public void setDenomination(String denomination) {
        this.denomination = denomination;
    }

    @Id
    @GeneratedValue
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getAbbr() {
        return abbr;
    }

    public void setAbbr(String abbr) {
        this.abbr = abbr;
    }

    @OneToMany(mappedBy = "priceDenomination", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    public List<EquipmentModel> getEquipment() {
        return equipment;
    }

    public void setEquipment(List<EquipmentModel> equipment) {
        this.equipment = equipment;
    }
}
