package com.rational.repository.impl;

import com.rational.model.enums.SpellSearchParam;
import junit.framework.TestCase;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DefaultSpellSearchRepositoryTest extends TestCase {

    DefaultSpellSearchRepository repository = new DefaultSpellSearchRepository();

    public void setUp() throws Exception {
        super.setUp();

    }

    public void tearDown() throws Exception {

    }

    public void testParseParams() throws Exception {
        Map<SpellSearchParam,List<String>> params = new HashMap<SpellSearchParam, List<String>>();
        params.put(SpellSearchParam.DESCRIPTION, Arrays.asList("A", "B", "C"));

//        String query = repository.createQuery(params);
    }
}
