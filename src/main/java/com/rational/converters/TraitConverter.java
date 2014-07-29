package com.rational.converters;

import com.rational.model.entities.Trait;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class TraitConverter {

    public List<Trait> convertToEntities(List<Long> classTraits) {
        List<Trait> classTraits1 = new ArrayList<Trait>();

        return classTraits1;
    }

    public List<Long> convertToIds(List<Trait> classTraits) {
        List<Long> classTraits1 = new ArrayList<Long>();

        return classTraits1;
    }
}
