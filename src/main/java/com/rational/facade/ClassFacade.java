package com.rational.facade;

import com.rational.model.entities.ClassModel;

import java.util.List;
import java.util.Map;

public interface ClassFacade {
    void saveClass(ClassModel clazz);

    ClassModel findClass(Long id);

    Map<Long, ClassModel> getClassMap();

    List<ClassModel> findAllClasses();

    List<ClassModel> findAllClassModels();

    ClassModel getClassModel(Long id);

    List<ClassModel> findAllSpellcasters();
}
