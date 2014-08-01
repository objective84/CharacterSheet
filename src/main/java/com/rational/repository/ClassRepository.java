package com.rational.repository;

import com.rational.model.entities.ClassModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("classRepository")
public interface ClassRepository extends JpaRepository<ClassModel, Long> {
}
