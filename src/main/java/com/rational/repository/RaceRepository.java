package com.rational.repository;

import com.rational.model.entities.Race;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("raceRepository")
public interface RaceRepository   extends JpaRepository<Race, Long> {
}
