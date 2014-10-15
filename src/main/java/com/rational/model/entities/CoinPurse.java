package com.rational.model.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

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

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void clear(){
        cp=0;
        sp=0;
        ep=0;
        gp=0;
        pp=0;
    }
}
