package com.rational.repository;

import com.rational.model.entities.Trait;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("traitRepository")
public interface TraitRepository extends JpaRepository<Trait, Long> {
}
