package com.rational.model.building;

import com.rational.model.Characteristic;
import com.rational.model.entities.LanguageModel;
import com.rational.model.Proficiency;
import com.rational.model.equipment.Equipment;

import java.util.List;

/**
 * Created by awest on 7/23/14.
 */
public class Background {
    private String name;
    private String description;
    private List<Proficiency> proficiencies;
    private List<LanguageModel> languages;
    private List<Equipment> equipments;
    private String feature;
    private List<Characteristic> characteristics;

}
