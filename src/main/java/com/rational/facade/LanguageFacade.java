package com.rational.facade;

import com.rational.model.entities.LanguageModel;

import java.util.List;

public interface LanguageFacade {
    void saveLanguage(LanguageModel language);

    LanguageModel findLanguage(Long id);

    List<LanguageModel> findAllLanguages();
}
