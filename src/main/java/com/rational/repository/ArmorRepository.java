package com.rational.repository;

import com.rational.model.equipment.ArmorModel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ArmorRepository extends JpaRepository<ArmorModel, Long> {
}
