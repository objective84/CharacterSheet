package com.rational.service.impl;

import com.rational.model.entities.Language;
import com.rational.model.entities.Race;
import com.rational.model.entities.Subrace;
import com.rational.model.entities.Trait;
import com.rational.repository.LanguageRepository;
import com.rational.repository.RaceRepository;
import com.rational.repository.SubraceRepository;
import com.rational.repository.TraitRepository;
import com.rational.service.AdminService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service("defaultAdminService")
public class DefaultAdminService implements AdminService
{

    @Resource
    LanguageRepository languageRepository;

    @Resource
    SubraceRepository subraceRepository;

    @Resource
    TraitRepository traitRepository;

    @Resource
    RaceRepository raceRepository;

    @Override
    public Language saveLanguage(Language language) {
        return languageRepository.save(language);

    }

    @Override
    public List<Language> findAllLanguages() {
        return languageRepository.findAll();
    }

    @Override
    public List<String> getLanguagesAsStrings() {
        List<Language> languages = languageRepository.findAll();
        List<String> languageStrings = new ArrayList<String>();
        for(Language language : languages){
            languageStrings.add(language.getName());
        }
        return languageStrings;
    }

    @Override
    public Race saveRace(Race language) {
        return raceRepository.save(language);

    }

    @Override
    public List<Race> findAllRaces() {
        return raceRepository.findAll();
    }

    @Override
    public List<String> getRacesAsStrings() {
        List<Race> races = raceRepository.findAll();
        List<String> raceStrings = new ArrayList<String>();
        for(Race race : races){
            raceStrings.add(race.getRaceName());
        }
        return raceStrings;
    }

    @Override
    public List<String> getTraitsAsStrings() {
        List<Trait> traits = traitRepository.findAll();
        List<String> traitStrings = new ArrayList<String>();
        for(Trait trait : traits){
            traitStrings.add(trait.getName());
        }
        return traitStrings;
    }

    @Override
    public List<String> subRacesAsStrings() {
        List<Subrace> subraces = subraceRepository.findAll();
        List<String> subraceStrings = new ArrayList<String>();
        for(Subrace subrace : subraces){
            subraceStrings.add(subrace.getName());
        }
        return subraceStrings;
    }

    @Override
    public List<Subrace> findAllSubraces() {
        return subraceRepository.findAll();
    }

    @Override
    public List<Trait> findAllTraits() {
        return traitRepository.findAll();
    }
}
