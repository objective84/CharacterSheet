package com.rational.model.entities;

import javax.persistence.*;

@Entity
@Table(name="feat_prerequisite")
@Inheritance(strategy = InheritanceType.JOINED)
public abstract class FeatPrerequisite {

    @Id @GeneratedValue private Long id;

    public abstract Boolean hasPrerequisites(CharacterModel character);
}
