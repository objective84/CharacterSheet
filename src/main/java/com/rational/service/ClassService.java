package com.rational.service;

import com.rational.model.entities.ClassModel;
import com.rational.model.entities.Level;
import com.rational.model.entities.SubClassModel;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface ClassService {
    Level findLevel(Long classId, int totalLevel);

    @Transactional
    ClassModel saveClass(ClassModel clazz);

    ClassModel findClass(Long id);

    List<ClassModel> findAllClasses();

    @Transactional
    SubClassModel saveSubClass(SubClassModel subClass);

    SubClassModel findSubClass(Long id);

    List<SubClassModel> findAllSubClasses();
}
