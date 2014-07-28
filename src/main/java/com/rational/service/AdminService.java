package com.rational.service;

import com.rational.model.entities.Language;
import com.rational.model.entities.Race;
import com.rational.model.entities.Subrace;
import com.rational.model.entities.Trait;

import java.util.List;

public interface AdminService {

    Language saveLanguage(Language language);
    List<Language> findAllLanguages();
    List<String> getLanguagesAsStrings();

    Race saveRace(Race language);

    List<Race> findAllRaces();
    List<String> getRacesAsStrings();

    List<String> getTraitsAsStrings();

    List<String> subRacesAsStrings();

    List<Subrace> findAllSubraces();

    List<Trait> findAllTraits();

    Language findLanguage(Long id);

    Race findRace(Long id);
}
