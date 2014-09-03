package com.rational.repository;

import com.rational.model.entities.CharacterAdvancement;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AdvancementRepository extends JpaRepository<CharacterAdvancement, Long> {
}
