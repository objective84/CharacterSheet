package com.rational.converters;

import com.rational.model.Proficiency;
import com.rational.service.AdminService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Component
public class ProficiencyConverter {

    @Resource
    AdminService adminService;

    public List<Proficiency> convertToEntities(List<Long> proficiencies) {
        List<Proficiency> proficiencies1 = new ArrayList<Proficiency>();

        for(Long prof : proficiencies){
            proficiencies1.add(adminService.findProficiency(prof));
        }

        return proficiencies1;
    }

    public List<Long> convertToIds(List<Proficiency> proficiencies) {
        List<Long> proficiencies1 = new ArrayList<Long>();

        for(Proficiency prof : proficiencies){
            proficiencies1.add(prof.getId());
        }

        return proficiencies1;
    }
}
