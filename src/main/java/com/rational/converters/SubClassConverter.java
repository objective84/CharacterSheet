package com.rational.converters;

import com.rational.forms.SubClass;
import com.rational.model.entities.SubClassModel;
import com.rational.service.AdminService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Component
public class SubClassConverter {

    @Resource
    AdminService adminService;

    public SubClassModel convert(SubClass subClass){
        SubClassModel subClassModel = new SubClassModel();

        subClassModel.setId(subClass.getId());
        subClassModel.setName(subClass.getName());
        subClassModel.setDescription(subClass.getDescription());
        subClassModel.setBaseClass(adminService.findClass(subClass.getBaseClass()));

        return subClassModel;
    }

    public SubClass convert(SubClassModel subClass){
        SubClass subClassForm = new SubClass();

        subClassForm.setId(subClass.getId());
        subClassForm.setName(subClass.getName());
        subClassForm.setDescription(subClass.getDescription());
        subClassForm.setBaseClass(subClass.getBaseClass().getId());

        return subClassForm;
    }


    public List<SubClassModel> convertToModels(List<Long> subclasses){
        List<SubClassModel> subclassList = new ArrayList<SubClassModel>();

        for(Long subclass : subclasses){
            subclassList.add(adminService.findSubClass(subclass));
        }

        return subclassList;
    }

    public List<Long> convertToIds(List<SubClassModel> subclasses){
        List<Long> subclassList = new ArrayList<Long>();

        for(SubClassModel subclass : subclasses){
            subclassList.add(subclass.getId());
        }

        return subclassList;
    }

    public List<SubClass> convertToForms(List<SubClassModel> subclasses){
        List<SubClass> subclassList = new ArrayList<SubClass>();

        for(SubClassModel subclass : subclasses){
            subclassList.add(convert(adminService.findSubClass(subclass.getId())));
        }

        return subclassList;
    }
}
