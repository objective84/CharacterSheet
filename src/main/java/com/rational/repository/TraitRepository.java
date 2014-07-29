package com.rational.repository;

import com.rational.model.entities.TraitModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("traitRepository")
public interface TraitRepository extends JpaRepository<TraitModel, Long> {
}
