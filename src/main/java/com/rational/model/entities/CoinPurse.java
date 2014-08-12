package com.rational.model.entities;

import org.codehaus.jackson.annotate.JsonBackReference;

import javax.persistence.*;

@Entity
public class CoinPurse {

    @Id
    @GeneratedValue
    private Long id;
    private Integer cp = 0;
    private Integer sp = 0;
    private Integer ep = 0;
    private Integer gp = 0;
    private Integer pp = 0;

    @JsonBackReference
    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private CharacterModel character;

    public Integer getPP() {
        return pp;
    }

    public void setPP(Integer pp) {
        this.pp = pp;
    }

    public Integer getCP() {
        return cp;
    }

    public void setCP(Integer cp) {
        this.cp = cp;
    }

    public Integer getSP() {
        return sp;
    }

    public void setSP(Integer sp) {
        this.sp = sp;
    }

    public Integer getEP() {
        return ep;
    }

    public void setEP(Integer ep) {
        this.ep = ep;
    }

    public Integer getGP() {
        return gp;
    }

    public void setGP(Integer gp) {
        this.gp = gp;
    }

    public CharacterModel getCharacter() {
        return character;
    }

    public void setCharacter(CharacterModel character) {
        this.character = character;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
