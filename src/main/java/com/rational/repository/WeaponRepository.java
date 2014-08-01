package com.rational.repository;

import com.rational.model.equipment.WeaponModel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface WeaponRepository extends JpaRepository<WeaponModel, Long> {
}
