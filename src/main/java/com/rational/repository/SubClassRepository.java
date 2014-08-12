package com.rational.repository;

import com.rational.model.entities.SubClassModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("subclassRepository")
public interface SubClassRepository extends JpaRepository<SubClassModel, Long> {
}
