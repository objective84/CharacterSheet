package com.rational.repository;

import com.rational.model.entities.CoinModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("coinRepository")
public interface CoinRepository extends JpaRepository<CoinModel, Long> {
}
