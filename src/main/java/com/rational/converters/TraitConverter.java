package com.rational.converters;

import com.rational.model.entities.TraitModel;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class TraitConverter {

    public List<TraitModel> convertToModels(List<Long> classTraits) {
        List<TraitModel> classTraits1 = new ArrayList<TraitModel>();

        return classTraits1;
    }

    public List<Long> convertToIds(List<TraitModel> classTraitModels) {
        List<Long> classTraits1 = new ArrayList<Long>();

        return classTraits1;
    }
}
