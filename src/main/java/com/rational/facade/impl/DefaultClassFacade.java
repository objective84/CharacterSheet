package com.rational.facade.impl;

import com.rational.facade.ClassFacade;
import com.rational.model.entities.ClassModel;
import com.rational.service.ClassService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component("defaultClassFacade")
public class DefaultClassFacade implements ClassFacade {

    @Resource(name = "defaultClassService")
    private ClassService classService;

    @Override
    public void saveClass(ClassModel clazz) {
        classService.saveClass(clazz);
    }

    @Override
    public ClassModel findClass(Long id) {return classService.findClass(id);}

    @Override
    public Map<Long, ClassModel> getClassMap() {
        Map<Long, ClassModel> classMap = new HashMap<Long, ClassModel>();
        List<ClassModel> classList = findAllClasses();
        for(ClassModel clazz : classList){
            classMap.put(clazz.getId(), clazz);
        }

        return classMap;
    }

    @Override
    public List<ClassModel> findAllClasses(){
        return classService.findAllClasses();
    }

    @Override
    public List<ClassModel> findAllClassModels(){
        return classService.findAllClasses();
    }

    @Override
    public ClassModel getClassModel(Long id) {
        return classService.findClass(id);
    }

    @Override
    public List<ClassModel> findAllSpellcasters() {
        List<ClassModel> classes = classService.findAllClasses();
        for(int i=0; i<classes.size(); i++){
            if(null == classes.get(i).getSpells() || classes.get(i).getSpells().isEmpty()) classes.remove(i);
        }
        return classes;
    }
}
