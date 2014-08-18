package com.rational.repository;

import com.rational.model.entities.SpellModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("spellRepository")
public interface SpellRepository extends JpaRepository<SpellModel, Long> {
}
