package com.rational.service;

import com.rational.model.entities.LanguageModel;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface LanguageService {
    @Transactional
    LanguageModel saveLanguage(LanguageModel language);

    LanguageModel findLanguage(Long id);

    List<LanguageModel> findAllLanguages();
}
