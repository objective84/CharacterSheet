package com.rational.converters;

import com.rational.forms.Clazz;
import com.rational.model.entities.ClassModel;
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

    @Resource
    private SubClassConverter subClassConverter;

    public ClassModel convert(Clazz clazz){
        ClassModel classModel = new ClassModel();

        classModel.setId(clazz.getId());
        classModel.setName(clazz.getName());
        classModel.setHitDie(clazz.getHitDie());
        classModel.setClassTraits(traitConverter.convertToModels(clazz.getClassTraits()));
        classModel.setProficiencies(proficiencyConverter.convertToModels(clazz.getProficiencies()));
        classModel.setSubClasses(subClassConverter.convertToModels(clazz.getSubClasses()));
        classModel.setSkillsAtCreation(clazz.getSkillsAtCreation());
        return classModel;
    }

    public Clazz convert(ClassModel classModel){
        Clazz clazz = new Clazz();

        clazz.setId(classModel.getId());
        clazz.setName(classModel.getName());
        clazz.setHitDie(classModel.getHitDie());
        clazz.setClassTraits(traitConverter.convertToIds(classModel.getClassTraits()));
        clazz.setProficiencies(proficiencyConverter.convertToIds(classModel.getProficiencies()));
        clazz.setSubClasses(subClassConverter.convertToIds(classModel.getSubClasses()));
        clazz.setSkillsAtCreation(classModel.getSkillsAtCreation());
        return clazz;
    }

    public List<Clazz> convertToForms(List<ClassModel> classes){
        List<Clazz> classList = new ArrayList<Clazz>();

        for(ClassModel classModel : classes){
            classList.add(convert(classModel));
        }

        return classList;
    }
}
