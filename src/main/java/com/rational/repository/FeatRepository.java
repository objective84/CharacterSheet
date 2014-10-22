package com.rational.repository;

import com.rational.model.entities.Feat;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FeatRepository extends JpaRepository<Feat, Long> {
}
