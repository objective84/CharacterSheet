package com.rational.repository;

import com.rational.model.entities.TraitModel;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by awest on 2/17/15.
 */
public interface TreasureTableRepository extends JpaRepository<TraitModel, Long> {

}
