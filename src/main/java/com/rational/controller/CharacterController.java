package com.rational.controller;

import com.rational.facade.*;
import com.rational.forms.LevelUpReportData;
import com.rational.forms.ProficienciesForm;
import com.rational.forms.ResponseData;
import com.rational.model.Proficiency;
import com.rational.model.entities.*;
import com.rational.model.enums.AbilityTypeEnum;
import com.rational.model.enums.EquipmentFilterEnum;
import com.rational.service.DescriptionService;
import com.rational.service.DiceService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;

@Controller
public class CharacterController {

    private static final String REDIRECT_PREFIX = "redirect:";
    private static final String REDIRECT_SUFFIX = ".html";

    private static final String CHARACTER_LIST = "characterlist";
    private static final String CHARACTER = "character-sheet";

    private static final String REDIRECT_CHARACTER_LIST = REDIRECT_PREFIX + CHARACTER_LIST + REDIRECT_SUFFIX;
    private static final String REDIRECT_CHARACTER = REDIRECT_PREFIX + CHARACTER + REDIRECT_SUFFIX;




    @Resource(name="defaultCharacterFacade")
    private CharacterFacade characterFacade;

    @Resource(name = "defaultEquipmentFacade")
    private EquipmentFacade equipmentFacade;

    @Resource(name = "defaultRaceFacade")
    private RaceFacade raceFacade;

    @Resource(name = "defaultClassFacade")
    private ClassFacade classFacade;

    @Resource(name = "defaultLanguageFacade")
    private LanguageFacade languageFacade;

    @Resource(name="defaultAbilitiesFacade")
    private AbilitiesFacade abilitiesFacade;

    @Resource(name="defaultDescriptionService")
    private DescriptionService descriptionService;

    @Resource(name = "defaultDiceService")
    private DiceService diceService;

    @RequestMapping(value="/characterlist", method= RequestMethod.GET)
    public ModelAndView getCharacterList(final Model model){
        ModelAndView mav = new ModelAndView(CHARACTER_LIST);
        mav.addObject("characters", characterFacade.findAllCharacters());
        mav.addObject("classMap", classFacade.getClassMap());
        mav.addObject("raceMap", raceFacade.getRaceMap());
        return mav;
    }

    @RequestMapping(value="/characterlist", method= RequestMethod.POST)
    public ModelAndView getCharacterList(@ModelAttribute CharacterModel character, final ModelAndView mav, HttpSession session){
        mav.setViewName(REDIRECT_CHARACTER);
        if(null == character.getId()){
            character = new CharacterModel();
        }else{
            character = characterFacade.findCharacter(character.getId().toString());
        }
        session.setAttribute("character", character);
        mav.addObject("character", character);
        return mav;
    }

    @RequestMapping(value="/character-sheet", method= RequestMethod.GET)
    public RedirectView character(final ModelAndView mav, HttpSession session) {
        CharacterModel character = characterFacade.save(new CharacterModel());
        return new RedirectView(CHARACTER + "/" + character.getId());
    }

    @RequestMapping(value="/character/current-health/{characterId}/{health}", method = RequestMethod.POST)
    public void updateHealth(@PathVariable String characterId,@PathVariable int health){
        CharacterModel character = characterFacade.findCharacter(characterId);
        character.setCurrentHealth(health);
        characterFacade.save(character);
    }

    @RequestMapping(value="/character-sheet/{characterId}", method= RequestMethod.GET)
    public ModelAndView character(@PathVariable String characterId, final ModelAndView mav, HttpSession session) {
        mav.setViewName(CHARACTER);
        mav.addObject("create", true);
        mav.addObject("classes", classFacade.findAllClasses());
        mav.addObject("classMap", classFacade.getClassMap());
        mav.addObject("raceMap", raceFacade.getRaceMap());
        mav.addObject("races", raceFacade.findAllRaces());
        mav.addObject("languages", languageFacade.findAllLanguages());
        CharacterModel character = characterFacade.findCharacter(characterId);
        addProficienciesToModel(mav, character.getProficiencies());
        mav.addObject("spellcasters", classFacade.findAllSpellcasters());
        mav.addObject("character", character);
        addEquipmentToModel(mav, character);
        mav.addObject("abilityTypes", AbilityTypeEnum.getValues());
        mav.addObject("weaponFilters", EquipmentFilterEnum.getWeaponFilters());
        mav.addObject("armorFilters", EquipmentFilterEnum.getArmorFilters());
        mav.addObject("filterByProficiency", EquipmentFilterEnum.BY_PROFICIENCY.toString());
        mav.addObject("spellSchools", Arrays.asList("Abjuration", "Conjuration", "Divination",
                "Enchantment", "Evocation", "Illusion", "Necromancy", "Transmutation"));
        mav.addObject("abilityTypes", Arrays.asList("Strength", "Dexterity", "Constitution",
                "Intelligence", "Wisdom", "Charisma"));
        return mav;
    }

    @RequestMapping(value="character/{characterId}/delete", method = RequestMethod.DELETE)
    public String deleteCharacter(@PathVariable String characterId){
        characterFacade.deleteCharacter(characterId);
        return "deleted";
    }

    private void addEquipmentToModel(ModelAndView mav, CharacterModel character) {
        mav.addObject("inventoryWeapons", equipmentFacade.getWeaponsFromInventory(character));
        mav.addObject("inventoryOffHandItems", equipmentFacade.getOffHandFromInventory(character));
        mav.addObject("inventoryArmor", equipmentFacade.getArmorFromInventory(character));
        mav.addObject("allWeapons", equipmentFacade.findAllWeapons());
        mav.addObject("allArmor", equipmentFacade.findAllArmor());
    }

    @RequestMapping(value="/character-sheet", method= RequestMethod.POST)
    public ModelAndView saveCharacter(@ModelAttribute CharacterModel character, Model model){
        ModelAndView mav = new ModelAndView(REDIRECT_CHARACTER_LIST);
        characterFacade.save(character);
        return mav;
    }

    @ResponseBody
    @RequestMapping(value="/character-sheet/character", method = RequestMethod.POST, consumes = "application/json")
    public CharacterModel saveCharacter(@RequestBody CharacterModel character){
        return characterFacade.save(character);
    }

    @ResponseBody
    @RequestMapping(value = "/character/{characterId}", method = RequestMethod.GET, produces = "application/json")
    public CharacterModel characterFetch(@PathVariable final String characterId){
        CharacterModel character = characterFacade.findCharacter(characterId);
        return character;
    }

    @RequestMapping(value="character-sheet/character/addSkill/{characterId}/{skillId}")
    public void addSkill(@PathVariable String characterId, @PathVariable String skillId){
        characterFacade.addSkill(characterId, skillId);
    }

    @RequestMapping(value="character-sheet/character/removeSkill/{characterId}/{skillId}")
    public void removeSkill(@PathVariable String characterId, @PathVariable String skillId){
        characterFacade.removeSkill(characterId, skillId);
    }

    @ResponseBody
    @RequestMapping(value = "/abilities", method = RequestMethod.POST, consumes = "application/json")
    public Abilities saveAbilities(@RequestBody Abilities abilities){
        Abilities saved =  abilitiesFacade.saveAbilities(abilities);
        return saved;
    }

    @ResponseBody
    @RequestMapping(value = "/abilities/{characterId}", method = RequestMethod.GET, produces = "application/json")
    public Abilities getAbilities(@PathVariable String characterId){
        Abilities abilities = characterFacade.findCharacter(characterId).getAbilities();
        return abilities;
    }

    @ResponseBody
    @RequestMapping(value = "/purse/{characterId}", method = RequestMethod.GET, produces = "application/json")
    public CoinPurse getCoinPurse(@PathVariable String characterId){
        CoinPurse coinPurse = characterFacade.findCharacter(characterId).getCoinPurse();
        return coinPurse;
    }

    @ResponseBody
    @RequestMapping(value = "/description", method = RequestMethod.POST, consumes = "application/json")
    public CharacterDescription saveDescription(@RequestBody CharacterDescription description){
        CharacterDescription saved =  descriptionService.save(description);
        return saved;
    }

    @ResponseBody
    @RequestMapping(value = "/description/{characterId}", method = RequestMethod.GET, produces = "application/json")
    public CharacterDescription getDescription(@PathVariable String characterId){
        CharacterDescription description = characterFacade.findCharacter(characterId).getCharacterDescription();
        return description;
    }

    @ResponseBody
    @RequestMapping(value = "/proficiencies", method = RequestMethod.GET, produces = "application/json")
    public ProficienciesForm getProficiencies(@RequestParam(value = "classId") String classId){
        return new ProficienciesForm(classFacade.getClassModel(Long.valueOf(classId)).getProficiencies());
    }

    @ResponseBody
    @RequestMapping(value="/character-sheet/level-up/{characterId}/{classId}", method = RequestMethod.POST, produces="application/json")
    public LevelUpReportData levelUp(@PathVariable String characterId, @PathVariable String classId){
       return characterFacade.levelUp(characterId, classId);
    }

//    @ResponseBody
//    @RequestMapping(value="/language/add/{characterId}/{languageId}", method = RequestMethod.POST, produces="application/json")
//    public ResponseData<LanguageModel> addLanguage(@PathVariable String characterId, @PathVariable String languageId){
//        ResponseData<LanguageModel> responseData = new ResponseData<LanguageModel>();
//        LanguageModel language = characterFacade.addLanguage(characterId, languageId);
//        responseData.setData(language);
//        return responseData;
//    }
//
//    @ResponseBody
//    @RequestMapping(value="/language/remove/{characterId}/{languageId}", method = RequestMethod.POST, produces="application/json")
//    public ResponseData<LanguageModel> removeLanguage(@PathVariable String characterId, @PathVariable String languageId){
//        ResponseData<LanguageModel> responseData = new ResponseData<LanguageModel>();
//        LanguageModel language = characterFacade.removeLanguage(characterId, languageId);
//        responseData.setData(language);
//        return responseData;
//    }

    @ResponseBody
    public CoinPurse convertCurrency(@RequestParam(value="from") String from,
                                     @RequestParam(value="to") String to,
                                     @RequestParam(value="amt") String amt){
        return new CoinPurse();
    }

    @ResponseBody
    @RequestMapping(value="/character/rest/short/{characterId}", method = RequestMethod.POST, produces = "application/json")
    public CharacterModel takeShortRest(@PathVariable String characterId, @RequestParam(value="hitDice") String[] hitDice){
        return characterFacade.shortRest(characterId, hitDice);
    }

    @ResponseBody
    @RequestMapping(value="/character/rest/long/{characterId}", method = RequestMethod.POST, produces = "application/json")
    public CharacterModel takeLongRest(@PathVariable String characterId){
        return characterFacade.longRest(characterId);
    }

    @ResponseBody
    @RequestMapping(value="/feat/all-available/{characterId}")
    public ResponseData<String> getAllAvailableFeats(@PathVariable String characterId){
        ResponseData<String> data = new ResponseData<String>();
        data.setData(characterFacade.getAllAvailableFeats(characterId));
        return data;
    }

    @ResponseBody
    @RequestMapping(value="/feat/{featId}")
    public Feat getFeat(@PathVariable String featId){
        return characterFacade.findFeat(featId);
    }

    private void addProficienciesToModel(ModelAndView mav, Set<Proficiency> proficiencies){
        List<Proficiency> skills = new ArrayList<Proficiency>();
        List<Proficiency> tools = new ArrayList<Proficiency>();
        List<Proficiency> weapons = new ArrayList<Proficiency>();
        List<Proficiency> armor = new ArrayList<Proficiency>();
        List<Proficiency> saves = new ArrayList<Proficiency>();

        for(Proficiency proficiency : proficiencies){
            switch (proficiency.getProficiencyType()){
                case SKILL:
                    skills.add(proficiency);
                    break;
                case TOOL:
                    tools.add(proficiency);
                    break;
                case WEAPON:
                    weapons.add(proficiency);
                    break;
                case ARMOR:
                    armor.add(proficiency);
                    break;
                case SAVE:
                    saves.add(proficiency);
                    break;
            }
        }

        mav.addObject("skillProficiencies", skills);
        mav.addObject("toolProficiencies", tools);
        mav.addObject("weaponProficiencies", weapons);
        mav.addObject("armorProficiencies", armor);
        mav.addObject("savingThrowProficiencies", saves);
    }

    @RequestMapping(value="/light-puzzle")
    public ModelAndView lightPuzzle(ModelAndView mav){
        mav.setViewName("light-puzzle");
        return mav;
    }
}

