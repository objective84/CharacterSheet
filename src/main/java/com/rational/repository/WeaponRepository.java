package com.rational.repository;

import com.rational.model.equipment.WeaponModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("weaponRepository")
public interface WeaponRepository extends JpaRepository<WeaponModel, Long> {
}
