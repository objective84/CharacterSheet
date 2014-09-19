package com.rational.repository;

import com.rational.model.entities.CharacterDescription;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DescriptionRepository extends JpaRepository<CharacterDescription, Long> {
}
