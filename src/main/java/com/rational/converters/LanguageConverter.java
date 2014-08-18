package com.rational.converters;

import com.rational.model.entities.LanguageModel;
import com.rational.service.AdminService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.HashSet;
import java.util.Set;

@Component
public class LanguageConverter {

    @Resource
    AdminService adminService;

    public Set<LanguageModel> convertToModels(Set<Long> langs) {
        if(null == langs)return new HashSet<LanguageModel>();
        Set<LanguageModel> languageModels = new HashSet<LanguageModel>();
        for(Long id : langs){
            languageModels.add(adminService.findLanguage(id));
        }
        return languageModels;
    }

    public Set<Long> convertToIds(Set<LanguageModel> langs) {
        Set<Long> languages = new HashSet<Long>();
        for(LanguageModel languageModel : langs){
            languages.add(languageModel.getId());
        }

        return languages;
    }
}
