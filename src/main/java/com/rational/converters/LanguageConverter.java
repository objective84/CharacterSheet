package com.rational.converters;

import com.rational.model.entities.Language;
import com.rational.service.AdminService;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

public class LanguageConverter {

    @Resource
    AdminService adminService;

    public List<Language> convert(Long[] langs) {
        List<Language> languages = new ArrayList<Language>();
        for(Long id : langs){
            languages.add(adminService.findLanguage(id));
        }
        return languages;
    }

    public Object convert(List<Language> langs) {
        List<Long> languages = new ArrayList<Long>();
        for(Language language : langs){
            languages.add(language.getId());
        }

        return languages.toArray();
    }
}
