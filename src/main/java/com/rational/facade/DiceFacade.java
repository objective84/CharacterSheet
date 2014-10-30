package com.rational.facade;

import com.rational.model.Dice;

import java.util.List;

public interface DiceFacade {

    Dice findDice(Long id);

    List<Dice> findAllDice();
}
