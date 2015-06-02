package com.rational.service.impl;

import com.rational.model.Dice;
import com.rational.model.entities.CharacterAdvancement;
import com.rational.repository.AdvancementRepository;
import com.rational.repository.DiceRepository;
import com.rational.repository.SpellSlotsRepository;
import com.rational.service.AdminService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service("defaultAdminService")
public class DefaultAdminService implements AdminService {


    @Resource
    private DiceRepository diceRepository;

    @Resource
    private AdvancementRepository advancementRepository;

    @Resource
    private SpellSlotsRepository spellSlotsRepository;



    /* Dice */
    @Transactional
    public Dice saveDice(Dice dice) {
        return diceRepository.save(dice);
    }

    public Dice findDice(Long id) {
        return diceRepository.findOne(id);
    }

    public List<Dice> findAllDice() {
        return diceRepository.findAll();
    }

    public CharacterAdvancement saveAdvancement(CharacterAdvancement advancement) {
        return advancementRepository.save(advancement);
    }

    public CharacterAdvancement findAdvancement(Long id) {
        return advancementRepository.findOne(id);
    }





}
