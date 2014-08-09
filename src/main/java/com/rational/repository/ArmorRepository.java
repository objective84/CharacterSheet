package com.rational.repository;

import com.rational.model.equipment.ArmorModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("armorRepository")
public interface ArmorRepository extends JpaRepository<ArmorModel, Long> {
}
