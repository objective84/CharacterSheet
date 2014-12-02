package com.rational.repository.impl;

import com.rational.model.entities.SpellModel;
import com.rational.model.enums.SpellSearchParam;
import com.rational.repository.SpellSearchRepository;
import org.apache.commons.lang.math.NumberUtils;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository("spellSearchRepository")
public class DefaultSpellSearchRepository implements SpellSearchRepository{

    @PersistenceContext
    private EntityManager em;

    @Override
    public List<SpellModel> search(Map<SpellSearchParam, List<String>> params) {
        CriteriaQuery<SpellModel> cq = createQuery(params);
        TypedQuery<SpellModel> query = em.createQuery(cq);

        return query.getResultList();
    }

    public CriteriaQuery<SpellModel> createQuery(Map<SpellSearchParam, List<String>> searchParams){
        CriteriaBuilder cb = em.getCriteriaBuilder();
        CriteriaQuery<SpellModel> query = cb.createQuery(SpellModel.class);
        Root<SpellModel> spell = query.from(SpellModel.class);
        ParameterExpression<String> s = cb.parameter(String.class);
        List<Predicate> predicates = new ArrayList<Predicate>();
        Predicate description = null;
        for(SpellSearchParam p : searchParams.keySet()){
            Expression<String> stringPath = null;
            Expression<Boolean> booleanPath = null;
            switch(p){
                case DESCRIPTION:
                    stringPath = spell.get("description");
                    for(String pa : searchParams.get(p)){
                        description = cb.like(stringPath, "%" + pa + "%");
                    }
                    break;
                case NAME:
                    stringPath = spell.get("name");
                    for(String pa : searchParams.get(p)){
                        predicates.add(cb.like(stringPath, "%" + pa + "%"));
                    }
                    break;
                case LEVEL:
                    Expression<Integer> level = spell.get("level");
                    Integer min = NumberUtils.toInt(searchParams.get(p).get(0), 0);
                    Integer max = NumberUtils.toInt(searchParams.get(p).get(1), 9);
                    predicates.add(cb.greaterThanOrEqualTo(level, min));
                    predicates.add(cb.lessThanOrEqualTo(level, max));
                    break;
                case SAVE:
                    stringPath = spell.get("savingThrow");
                    for(String pa : searchParams.get(p)){
                        predicates.add(cb.equal(stringPath, "%" + pa + "%"));
                    }
                    break;
                case SCHOOL:
                    stringPath = spell.get("school");
                    for(String pa : searchParams.get(p)){
                        predicates.add(cb.equal(stringPath, "%" + pa + "%"));
                    }
                    break;
                case CLASS:
                    //TODO: Join statement for class table
                    break;
                case VERBAL_COMPONENTS:
                    booleanPath = spell.get("requiresVerbalComponent");
                    predicates.add(cb.isTrue(booleanPath));
                    break;
                case SOMATIC_COMPONENTS:
                    booleanPath = spell.get("requiresSomaticComponent");
                    predicates.add(cb.isTrue(booleanPath));
                    break;
                case MATERIAL_COMPONENTS:
                    stringPath = spell.get("materialComponent");
                    predicates.add(cb.isNotNull(stringPath));
                    break;
                case ATTACK:
                    booleanPath = spell.get("requiresAttackRoll");
                    predicates.add(cb.isTrue(booleanPath));
                    break;
                case RITUAL:
                    booleanPath = spell.get("ritual");
                    predicates.add(cb.isTrue(booleanPath));
                    break;
                case CONCENTRATION:
                    booleanPath = spell.get("concentration");
                    predicates.add(cb.isTrue(booleanPath));
                    break;
            }
        }

        Predicate finalPredicate = null;
        for(Predicate p : predicates){
            if(null == finalPredicate){
                finalPredicate = p;
            }else{
                finalPredicate = cb.and(finalPredicate, p);
            }
        }
        if(null != description){
            finalPredicate = cb.or(description);
        }
        query.where(finalPredicate);
        return query;
    }
}
