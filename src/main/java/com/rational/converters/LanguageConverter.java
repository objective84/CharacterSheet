package com.rational.converters;

import com.rational.model.entities.LanguageModel;
import com.rational.service.AdminService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Component
public class LanguageConverter {

    @Resource
    AdminService adminService;

    public List<LanguageModel> convertToModels(List<Long> langs) {
        if(null == langs)return new ArrayList<LanguageModel>();
        List<LanguageModel> languageModels = new ArrayList<LanguageModel>();
        for(Long id : langs){
            languageModels.add(adminService.findLanguage(id));
        }
        return languageModels;
    }

    public List<Long> convertToIds(List<LanguageModel> langs) {
        List<Long> languages = new ArrayList<Long>();
        for(LanguageModel languageModel : langs){
            languages.add(languageModel.getId());
        }

        return languages;
    }
}
