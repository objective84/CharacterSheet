package com.rational.facade.impl;

import com.rational.facade.LanguageFacade;
import com.rational.model.entities.LanguageModel;
import com.rational.service.LanguageService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

@Component("defaultLanguageFacade")
public class DefaultLanguageFacade implements LanguageFacade {

    @Resource(name = "defaultLanguageService")
    LanguageService languageService;


    public void saveLanguage(LanguageModel language) {
        languageService.saveLanguage(language);
    }


    public LanguageModel findLanguage(Long id) {
        return languageService.findLanguage(id);
    }


    public List<LanguageModel> findAllLanguages() {
        return languageService.findAllLanguages();
    }
}
