package com.rational.repository;

import com.rational.model.entities.ClassModel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ClassRepository extends JpaRepository<ClassModel, Long> {
}
