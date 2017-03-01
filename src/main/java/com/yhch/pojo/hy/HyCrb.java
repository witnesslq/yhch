package com.yhch.pojo.hy;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Table(name = "hy_crb")
public class HyCrb {
    @Id
    private Integer id;

    private Integer memberid;

    private String yh;

    private Date time;

    private Double hbsag;

    private Double hbsab;

    private Double hbeag;

    private Double hbeab;

    private Double hbcab;

    private Double hbvdna;

    private Double hcvrna;

    private Double ahcv;

    private String hiv;

    private String tpa;

    private Double rpr;

    private Double igg;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getMemberid() {
        return memberid;
    }

    public void setMemberid(Integer memberid) {
        this.memberid = memberid;
    }

    public String getYh() {
        return yh;
    }

    public void setYh(String yh) {
        this.yh = yh == null ? null : yh.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public Double getHbsag() {
        return hbsag;
    }

    public void setHbsag(Double hbsag) {
        this.hbsag = hbsag;
    }

    public Double getHbsab() {
        return hbsab;
    }

    public void setHbsab(Double hbsab) {
        this.hbsab = hbsab;
    }

    public Double getHbeag() {
        return hbeag;
    }

    public void setHbeag(Double hbeag) {
        this.hbeag = hbeag;
    }

    public Double getHbeab() {
        return hbeab;
    }

    public void setHbeab(Double hbeab) {
        this.hbeab = hbeab;
    }

    public Double getHbcab() {
        return hbcab;
    }

    public void setHbcab(Double hbcab) {
        this.hbcab = hbcab;
    }

    public Double getHbvdna() {
        return hbvdna;
    }

    public void setHbvdna(Double hbvdna) {
        this.hbvdna = hbvdna;
    }

    public Double getHcvrna() {
        return hcvrna;
    }

    public void setHcvrna(Double hcvrna) {
        this.hcvrna = hcvrna;
    }

    public Double getAhcv() {
        return ahcv;
    }

    public void setAhcv(Double ahcv) {
        this.ahcv = ahcv;
    }

    public String getHiv() {
        return hiv;
    }

    public void setHiv(String hiv) {
        this.hiv = hiv == null ? null : hiv.trim();
    }

    public String getTpa() {
        return tpa;
    }

    public void setTpa(String tpa) {
        this.tpa = tpa == null ? null : tpa.trim();
    }

    public Double getRpr() {
        return rpr;
    }

    public void setRpr(Double rpr) {
        this.rpr = rpr;
    }

    public Double getIgg() {
        return igg;
    }

    public void setIgg(Double igg) {
        this.igg = igg;
    }
}