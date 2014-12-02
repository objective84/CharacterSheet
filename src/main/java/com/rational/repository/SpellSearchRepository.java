package com.rational.repository;

import com.rational.model.entities.SpellModel;
import com.rational.model.enums.SpellSearchParam;

import java.util.List;
import java.util.Map;

public interface SpellSearchRepository {

    List<SpellModel> search(Map<SpellSearchParam, List<String>> params);

}
