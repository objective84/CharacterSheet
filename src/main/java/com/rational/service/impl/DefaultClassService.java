package com.rational.service.impl;

import com.rational.model.entities.ClassModel;
import com.rational.model.entities.Level;
import com.rational.model.entities.SubClassModel;
import com.rational.repository.ClassRepository;
import com.rational.repository.SubClassRepository;
import com.rational.service.ClassService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service("defaultClassService")
public class DefaultClassService implements ClassService {

    @Resource
    private ClassRepository classRepository;

    @Resource
    private SubClassRepository subClassRepository;


    @Override
    public Level findLevel(Long classId, int totalLevel) {
        ClassModel clazz = classRepository.findOne(classId);
        for(Level level : clazz.getLevels()){
            if(level.getLevelNumber() == totalLevel){
                return level;
            }
        }
        return null;
    }

    /* Classes */

    @Override
    @Transactional
    public ClassModel saveClass(ClassModel clazz) {
        return classRepository.save(clazz);
    }

    @Override
    public ClassModel findClass(Long id) {
        return classRepository.findOne(id);
    }

    @Override
    public List<ClassModel> findAllClasses() {
        return classRepository.findAll();
    }


    /* Sub-Classes */

    @Override
    @Transactional
    public SubClassModel saveSubClass(SubClassModel subClass) {
        return subClassRepository.save(subClass);
    }

    @Override
    public SubClassModel findSubClass(Long id) {
        return subClassRepository.findOne(id);
    }

    @Override
    public List<SubClassModel> findAllSubClasses() {
        return subClassRepository.findAll();
    }




}
