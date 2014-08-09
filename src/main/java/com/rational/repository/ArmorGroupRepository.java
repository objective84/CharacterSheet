package com.rational.repository;

import com.rational.model.equipment.ArmorGroup;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ArmorGroupRepository extends JpaRepository<ArmorGroup, Long> {
}
