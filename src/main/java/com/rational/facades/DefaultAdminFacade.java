package com.rational.facades;

import com.rational.converters.ClassConverter;
import com.rational.converters.RaceConverter;
import com.rational.forms.RaceForm;
import com.rational.model.Proficiency;
import com.rational.model.entities.*;
import com.rational.service.AdminService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

@Component
public class DefaultAdminFacade implements AdminFacade {

    @Resource
    private AdminService adminService;

    @Resource
    RaceConverter raceConverter;

    @Resource
    ClassConverter classConverter;

    @Override
    public Language saveLanguage(Language language) {
        return adminService.saveLanguage(language);
    }

    @Override
    public Language findLanguage(Long id) {
        return adminService.findLanguage(id);
    }

    @Override
    public List<Language> findAllLanguages() {
        return adminService.findAllLanguages();
    }

    @Override
    public Race saveRace(Race language) {
        return adminService.saveRace(language);
    }

    @Override
    public RaceForm findRace(Long id) {
        return raceConverter.convert(adminService.findRace(id));
    }

    @Override
    public List<Race> findAllRaces() {
        return adminService.findAllRaces();
    }

    @Override
    public Trait saveTrait(Trait trait) {
        return adminService.saveTrait(trait);
    }

    @Override
    public Trait findTrait(Long id) {
        return adminService.findTrait(id);
    }

    @Override
    public List<Trait> findAllTraits() {
        return adminService.findAllTraits();
    }

    //TODO
    @Override
    public List<Trait> findAllRacialTraits() {
        return adminService.findAllTraits();
    }

    //TODO
    @Override
    public List<Trait> findAllSubRacialTraits() {
        return adminService.findAllTraits();
    }

    //TODO
    @Override
    public List<Trait> findAllClassTraits() {
        return adminService.findAllTraits();
    }

    //TODO
    @Override
    public List<Trait> findAllSubClassTraits() {
        return adminService.findAllTraits();
    }

    @Override
    public Subrace saveSubrace(Subrace subrace) {
        return adminService.saveSubrace(subrace);
    }

    @Override
    public Subrace findSubrace(Long id) {
        return adminService.findSubrace(id);
    }

    @Override
    public List<Subrace> findAllSubraces() {
        return adminService.findAllSubraces();
    }

    @Override
    public Proficiency saveProficiency(Proficiency proficiency) {
        return adminService.saveProficiency(proficiency);
    }

    @Override
    public Proficiency findProficiency(Long id) {
        return adminService.findProficiency(id);
    }

    @Override
    public List<Proficiency> findAllProficiencies() {
        return adminService.findAllProficiencies();
    }

    @Override
    public Clazz saveClass(Clazz clazz) {
        return adminService.saveClass(clazz);
    }

    @Override
    public Clazz findClass(Long id) {
        return adminService.findClass(id);
    }

    @Override
    public List<Clazz> findAllClasses() {
        return adminService.findAllClasses();
    }

    @Override
    public SubClass saveSubClass(SubClass clazz) {
        return adminService.saveSubClass(clazz);
    }

    @Override
    public SubClass findSubClass(Long id) {
        return adminService.findSubClass(id);
    }

    @Override
    public List<SubClass> findAllSubClasses() {
        return adminService.findAllSubClasses();
    }
}
