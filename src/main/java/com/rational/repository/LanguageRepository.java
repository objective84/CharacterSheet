package com.rational.repository;

import com.rational.model.entities.Language;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("languageRepository")
public interface LanguageRepository  extends JpaRepository<Language, Long> {
}
