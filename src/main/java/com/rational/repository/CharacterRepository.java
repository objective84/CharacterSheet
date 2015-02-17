package com.rational.repository;

import com.rational.model.entities.CharacterModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository("characterRepository")
public interface CharacterRepository extends JpaRepository<CharacterModel, Long> {

}
