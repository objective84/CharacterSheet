package com.rational.service;

import com.rational.model.entities.Language;
import com.rational.model.entities.Race;
import com.rational.model.entities.RacialTrait;
import com.rational.model.entities.Subrace;

import java.util.List;

public interface AdminService {

    Language saveLanguage(Language language);
    List<Language> findAllLanguages();
    List<String> getLanguagesAsStrings();

    Race saveRace(Race language);

    List<Race> findAllRaces();
    List<String> getRacesAsStrings();

    List<String> getRacialTraitsAsStrings();

    List<String> subRacesAsStrings();

    List<Subrace> findAllSubraces();

    List<RacialTrait> findAllRacialTraits();

    Language findLanguage(Long id);

    Race findRace(Long id);

    Subrace findSubrace(Long id);

    Subrace saveSubrace(Subrace subrace);
}
