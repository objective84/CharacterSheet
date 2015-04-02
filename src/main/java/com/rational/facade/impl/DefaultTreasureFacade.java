package com.rational.facade.impl;

import com.rational.facade.TreasureFacade;
import com.rational.model.dm.treasure.MagicItem;
import com.rational.model.entities.CoinPurse;
import com.rational.repository.MagicItemRepository;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by awest on 2/16/15.
 */
@Component("defaultTreasureFacade")
public class DefaultTreasureFacade implements TreasureFacade{

    @Resource
    private MagicItemRepository magicItemRepository;

    public List<MagicItem> getAllMagicItems(){
        return magicItemRepository.findAll();
    };

    public MagicItem getRandomMagicItem(){
        //FIXME Temporary static stuff until I write the generator
        MagicItem magicItem = new MagicItem();
        magicItem.setName("Boots of Elvenkind");
        magicItem.setDescription("they make you sneaky");
        return magicItem;
    };

    public CoinPurse getRandomCoinFromEncounter(String size, int cr){
        CoinPurse coinPurse = new CoinPurse();

        return coinPurse;
    }
}
