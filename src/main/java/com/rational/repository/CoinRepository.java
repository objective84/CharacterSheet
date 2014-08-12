package com.rational.repository;

import com.rational.model.entities.Coin;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository("coinRepository")
public interface CoinRepository extends JpaRepository<Coin, Long> {

    @Query(value = "select c from com.rational.model.entities.Coin c where c.denomination = ?1")
    Coin findCoinByName(String name);
}
