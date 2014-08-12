package com.rational.repository;

import com.rational.model.Dice;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("diceRepository")
public interface DiceRepository extends JpaRepository<Dice,Long>{
}
