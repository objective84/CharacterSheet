package com.rational.service;

import com.rational.model.Dice;

import java.util.List;

public interface DiceService {

    Dice findDice(Long id);

    List<Dice> findAllDice();

    Integer rollDice(Dice die, Integer amt);
}
