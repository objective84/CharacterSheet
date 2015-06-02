package com.rational.repository;

import com.rational.model.dm.MagicItem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by awest on 2/16/15.
 */
@Repository
public interface MagicItemRepository extends JpaRepository<MagicItem, Long> {

}
