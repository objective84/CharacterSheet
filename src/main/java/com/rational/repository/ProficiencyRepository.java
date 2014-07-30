package com.rational.repository;

import com.rational.model.Proficiency;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("proficiencyRepository")
public interface ProficiencyRepository  extends JpaRepository<Proficiency, Long> {
}
