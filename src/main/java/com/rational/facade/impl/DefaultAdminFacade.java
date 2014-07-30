package com.rational.facade.impl;

import com.rational.converters.ClassConverter;
import com.rational.converters.RaceConverter;
import com.rational.converters.SubClassConverter;
import com.rational.converters.SubRaceConverter;
import com.rational.facade.AdminFacade;
import com.rational.forms.Clazz;
import com.rational.forms.Race;
import com.rational.forms.SubClass;
import com.rational.forms.SubRace;
import com.rational.model.Proficiency;
import com.rational.model.entities.ClassModel;
import com.rational.model.entities.LanguageModel;
import com.rational.model.entities.TraitModel;
import com.rational.service.AdminService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component(value = "defaultAdminFacade")
public class DefaultAdminFacade implements AdminFacade {

    @Resource
    private AdminService adminService;

    @Resource
    RaceConverter raceConverter;

    @Resource
    SubRaceConverter subRaceConverter;

    @Resource
    ClassConverter classConverter;

    @Resource
    SubClassConverter subClassConverter;

    @Override
    public void saveLanguage(LanguageModel language) {
        adminService.saveLanguage(language);
    }

    @Override
    public LanguageModel findLanguage(Long id) {
        return adminService.findLanguage(id);
    }

    @Override
    public List<LanguageModel> findAllLanguages() {
        return adminService.findAllLanguages();
    }

    @Override
    public void saveRace(Race race) {adminService.saveRace(raceConverter.convert(race));}

    @Override
    public Race findRace(Long id) {
        return raceConverter.convert(adminService.findRace(id));
    }

    @Override
    public List<Race> findAllRaces() {return raceConverter.convertToForms(adminService.findAllRaces());}

    @Override
    public Map<Long, Race> getRaceMap(){
        Map<Long, Race> raceMap = new HashMap<Long, Race>();
        List<Race> raceList = findAllRaces();
        for(Race race : raceList){
            raceMap.put(race.getId(), race);
        }

        return raceMap;
    }

    @Override
    public void saveTrait(TraitModel trait) {
        adminService.saveTrait(trait);
    }

    @Override
    public TraitModel findTrait(Long id) {
        return adminService.findTrait(id);
    }

    @Override
    public List<TraitModel> findAllTraits() {
        return adminService.findAllTraits();
    }

    //TODO
    @Override
    public List<TraitModel> findAllRacialTraits() {
        return adminService.findAllTraits();
    }

    //TODO
    @Override
    public List<TraitModel> findAllSubRacialTraits() {
        return adminService.findAllTraits();
    }

    //TODO
    @Override
    public List<TraitModel> findAllClassTraits() {
        return adminService.findAllTraits();
    }

    //TODO
    @Override
    public List<TraitModel> findAllSubClassTraits() {
        return adminService.findAllTraits();
    }

    @Override
    public void saveSubrace(SubRace subRace) {adminService.saveSubrace(subRaceConverter.convert(subRace));
    }

    @Override
    public SubRace findSubrace(Long id) {
        return subRaceConverter.convert(adminService.findSubrace(id));
    }

    @Override
    public List<SubRace> findAllSubraces() {
        return subRaceConverter.convertToForms(adminService.findAllSubraces());
    }

    @Override
    public void saveProficiency(Proficiency proficiency) {adminService.saveProficiency(proficiency);}

    @Override
    public Proficiency findProficiency(Long id) {
        return adminService.findProficiency(id);
    }

    @Override
    public List<Proficiency> findAllProficiencies() {
        return adminService.findAllProficiencies();
    }

    @Override
    public void saveClass(Clazz clazz) {
        adminService.saveClass(classConverter.convert(clazz));
    }

    @Override
    public Clazz findClass(Long id) {return classConverter.convert(adminService.findClass(id));}

    @Override
    public Map<Long, Clazz> getClassMap() {
        Map<Long, Clazz> classMap = new HashMap<Long, Clazz>();
        List<Clazz> classList = findAllClasses();
        for(Clazz clazz : classList){
            classMap.put(clazz.getId(), clazz);
        }

        return classMap;
    }

    @Override
    public List<Clazz> findAllClasses(){
        return classConverter.convertToForms(adminService.findAllClasses());
    }

    @Override
    public void saveSubClass(SubClass subClass) {
        adminService.saveSubClass(subClassConverter.convert(subClass));
    }

    @Override
    public SubClass findSubClass(Long id) {return subClassConverter.convert(adminService.findSubClass(id));}

    @Override
    public List<SubClass> findAllSubClasses() {return subClassConverter.convertToForms(adminService.findAllSubClasses());}

    @Override
    public ClassModel getClassModel(Long id) {
        return adminService.findClass(id);
    }

    @Override
    public Map<Long, Proficiency> getProficienciesMap() {
        Map<Long, Proficiency> proficiencyMap = new HashMap<Long, Proficiency>();
        List<Proficiency> proficiencyList = adminService.findAllProficiencies();

        for(Proficiency proficiency : proficiencyList){
            proficiencyMap.put(proficiency.getId(), proficiency);
        }
        return proficiencyMap;
    }
}
