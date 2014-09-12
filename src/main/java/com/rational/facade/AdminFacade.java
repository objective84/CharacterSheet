package com.rational.facade;

import com.rational.model.Dice;

import java.util.List;

public interface AdminFacade {

    Dice saveDice(Dice dice);

    Dice findDice(Long id);

    List<Dice> findAllDice();


}
