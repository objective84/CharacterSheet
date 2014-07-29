package com.rational.converters;

import com.rational.model.entities.Language;
import com.rational.service.AdminService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Component
public class LanguageConverter {

    @Resource
    AdminService adminService;

    public List<Language> convertToEntity(List<Long> langs) {
        if(null == langs)return new ArrayList<Language>();
        List<Language> languages = new ArrayList<Language>();
        for(Long id : langs){
            languages.add(adminService.findLanguage(id));
        }
        return languages;
    }

    public List<Long> convertToForm(List<Language> langs) {
        List<Long> languages = new ArrayList<Long>();
        for(Language language : langs){
            languages.add(language.getId());
        }

        return languages;
    }
}
