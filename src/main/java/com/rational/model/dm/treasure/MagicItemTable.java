package com.rational.model.dm.treasure;

import java.util.List;

/**
 * Created by awest on 2/17/15.
 */
public class MagicItemTable {
    private String name;
    private List<MagicItemRow> magicItemRows;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<MagicItemRow> getMagicItemRows() {
        return magicItemRows;
    }

    public void setMagicItemRows(List<MagicItemRow> magicItemRows) {
        this.magicItemRows = magicItemRows;
    }
}
