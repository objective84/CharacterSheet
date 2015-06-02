package com.rational.facade;

import com.rational.model.dm.MagicItem;

import java.util.List;

/**
 * Created by awest on 2/16/15.
 */
public interface TreasureFacade {

    public List<MagicItem> getAllMagicItems();
    public MagicItem getRandomMagicItem();
}
