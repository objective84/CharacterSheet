package com.rational.service;

import com.rational.model.Dice;
import com.rational.model.entities.Abilities;
import com.rational.model.entities.CharacterAdvancement;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface AdminService {
    @Transactional
    Dice saveDice(Dice dice);

    Dice findDice(Long id);

    List<Dice> findAllDice();

    CharacterAdvancement saveAdvancement(CharacterAdvancement advancement);

    CharacterAdvancement findAdvancement(Long id);
}
