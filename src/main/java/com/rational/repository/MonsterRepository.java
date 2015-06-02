package com.rational.repository;

import com.rational.model.dm.monsters.Monster;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("monsterRepository")
public interface MonsterRepository extends JpaRepository<Monster, Long> {
}
