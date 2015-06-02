package com.rational.facade;

import com.rational.model.dm.monsters.Monster;

import java.util.List;

/**
 * Created by Andy on 5/5/2015.
 */
public interface MonsterFacade {
    Monster findMonster(Long monsterId);
    List<Monster> findAllMonsters();
}
