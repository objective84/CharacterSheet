package com.rational.facade.impl;

import com.rational.facade.MonsterFacade;
import com.rational.model.dm.monsters.Monster;
import com.rational.repository.MonsterRepository;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by awest on 2/16/15.
 */
@Component("defaultMonsterFacade")
public class DefaultMonsterFacade implements MonsterFacade{

    @Resource
    private MonsterRepository monsterRepository;

    public List<Monster> findAllMonsters() {
        return monsterRepository.findAll();
    }

    public Monster findMonster(Long monsterId) {
        return monsterRepository.findOne(monsterId);
    }
}
