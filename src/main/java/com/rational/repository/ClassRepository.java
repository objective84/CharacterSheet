package com.rational.repository;

import com.rational.model.entities.Clazz;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ClassRepository extends JpaRepository<Clazz, Long> {
}
