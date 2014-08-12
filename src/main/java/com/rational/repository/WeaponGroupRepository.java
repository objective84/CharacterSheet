package com.rational.repository;

import com.rational.model.equipment.WeaponGroup;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("weaponGroupRepository")
public interface WeaponGroupRepository extends JpaRepository<WeaponGroup, Long> {
}
