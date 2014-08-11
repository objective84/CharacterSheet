package com.rational.repository;

import com.rational.model.entities.CoinPurse;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CoinPurseRepository extends JpaRepository<CoinPurse, Long> {
}
