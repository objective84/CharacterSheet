package com.rational.repository;

import com.rational.model.entities.Subrace;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("subraceRepository")
public interface SubraceRepository extends JpaRepository<Subrace, Long> {
}
