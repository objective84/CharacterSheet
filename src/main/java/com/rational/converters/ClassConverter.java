package com.rational.converters;

import com.rational.forms.ClassForm;
import com.rational.forms.SubClassForm;
import com.rational.model.entities.Clazz;
import com.rational.model.entities.SubClass;
import com.rational.model.enums.DieTypeEnum;
import com.rational.service.AdminService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Component
public class ClassConverter {

    @Resource
    private AdminService adminService;

    @Resource
    private TraitConverter traitConverter;

    @Resource
    private ProficiencyConverter proficiencyConverter;

    public Clazz convertToEntity(ClassForm classForm){
        Clazz clazz = new Clazz();

        clazz.setId(classForm.getId());
        clazz.setName(classForm.getName());
        clazz.setHitDie(DieTypeEnum.valueOf(classForm.getHitDie()));
        clazz.setClassTraits(traitConverter.convertToEntities(classForm.getClassTraits()));
        clazz.setProficiencies(proficiencyConverter.convertToEntities(classForm.getProficiencies()));
        clazz.setSubClasses(convertToEntities(classForm.getSubClasses()));

        return clazz;
    }

    public ClassForm convertToForm(Clazz clazz){
        ClassForm classForm = new ClassForm();

        classForm.setId(clazz.getId());
        classForm.setName(clazz.getName());
        classForm.setHitDie(DieTypeEnum.value(clazz.getHitDie()));
        classForm.setClassTraits(traitConverter.convertToIds(clazz.getClassTraits()));
        classForm.setProficiencies(proficiencyConverter.convertToIds(clazz.getProficiencies()));
        classForm.setSubClasses(convertToIds(clazz.getSubClasses()));

        return classForm;
    }

    public List<ClassForm> convertToForms(List<Clazz> classes){
        List<ClassForm> classList = new ArrayList<ClassForm>();

        for(Clazz clazz : classes){
            classList.add(convertToForm(clazz));
        }

        return classList;
    }

    /* Sub-Class*/

    public SubClass convertToEntity(SubClassForm subClassForm){
        SubClass subClass = new SubClass();

        subClass.setId(subClassForm.getId());
        subClass.setName(subClassForm.getName());
//        subClass.setBaseClass(adminService.findClass(subClassForm.getBaseClass()));

        return subClass;
    }

    public SubClassForm convertToForm(SubClass subClass){
        SubClassForm subClassForm = new SubClassForm();

        subClassForm.setId(subClass.getId());
        subClassForm.setName(subClass.getName());
//        subClassForm.setBaseClass(subClass.getBaseClass().getId());

        return subClassForm;
    }


    public List<SubClass> convertToEntities(List<Long> subclasses){
        List<SubClass> subclassList = new ArrayList<SubClass>();

        for(Long subclass : subclasses){
            subclassList.add(adminService.findSubClass(subclass));
        }

        return subclassList;
    }

    public List<Long> convertToIds(List<SubClass> subclasses){
        List<Long> subclassList = new ArrayList<Long>();

        for(SubClass subclass : subclasses){
            subclassList.add(subclass.getId());
        }

        return subclassList;
    }
}
