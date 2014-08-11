package com.rational.repository;

import com.rational.model.equipment.EquipmentModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("equipmentRepository")
public interface EquipmentRepository extends JpaRepository<EquipmentModel, Long> {
}
