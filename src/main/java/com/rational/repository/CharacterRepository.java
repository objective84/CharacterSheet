package com.rational.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.rational.model.Character;

@Repository("characterRepository")
public interface CharacterRepository extends JpaRepository<Character, Long> {
}
