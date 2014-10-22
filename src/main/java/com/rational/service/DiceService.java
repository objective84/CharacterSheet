package com.rational.service;

import com.rational.model.Dice;

import java.util.List;
import java.util.Map;

public interface DiceService {

    Dice findDice(Long id);

    List<Dice> findAllDice();

    Integer rollDice(Dice die, Integer amt);

    Map<String, Dice> getAllDice();

    int[] rollSeparateDice(Dice die, Integer amt);
}
