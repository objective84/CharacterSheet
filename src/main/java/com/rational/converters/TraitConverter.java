package com.rational.converters;

import com.rational.model.entities.ClassTrait;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class TraitConverter {

    public List<ClassTrait> convertToEntities(List<Long> classTraits) {
        List<ClassTrait> classTraits1 = new ArrayList<ClassTrait>();

        return classTraits1;
    }

    public List<Long> convertToIds(List<ClassTrait> classTraits) {
        List<Long> classTraits1 = new ArrayList<Long>();

        return classTraits1;
    }
}
