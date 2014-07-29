package com.rational.facades;

import com.rational.forms.RaceForm;
import com.rational.forms.SubClassForm;
import com.rational.forms.SubraceForm;
import com.rational.model.Proficiency;
import com.rational.model.entities.*;

import java.util.List;

public interface AdminFacade {


    Language saveLanguage(Language language);

    Language findLanguage(Long id);

    List<Language> findAllLanguages();


    RaceForm saveRace(Race language);

    RaceForm findRace(Long id);

    List<RaceForm> findAllRaces();


    Trait saveTrait(Trait trait);

    Trait findTrait(Long id);

    List<Trait> findAllTraits();

    List<Trait> findAllRacialTraits();

    List<Trait> findAllSubRacialTraits();

    List<Trait> findAllClassTraits();

    List<Trait> findAllSubClassTraits();


    SubraceForm saveSubrace(Subrace subrace);

    SubraceForm findSubrace(Long id);

    List<SubraceForm> findAllSubraces();


    Proficiency saveProficiency(Proficiency proficiency);

    Proficiency findProficiency(Long id);

    List<Proficiency> findAllProficiencies();


    ClazzForm saveClass(Clazz clazz);

    ClazzForm findClass(Long id);

    List<ClazzForm> findAllClasses();


    SubClassForm saveSubClass(SubClass clazz);

    SubClassForm findSubClass(Long id);

    List<SubClassForm> findAllSubClasses();



}
