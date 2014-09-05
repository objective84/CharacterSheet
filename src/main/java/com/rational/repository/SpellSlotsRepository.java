package com.rational.repository;

import com.rational.model.entities.SpellSlots;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SpellSlotsRepository extends JpaRepository<SpellSlots, Long> {
}
