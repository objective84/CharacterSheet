package com.rational.repository;

import com.rational.model.Dice;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DiceRepository extends JpaRepository<Dice,Long>{
}
