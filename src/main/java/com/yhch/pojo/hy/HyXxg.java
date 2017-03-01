package com.yhch.pojo.hy;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Table(name = "hy_xxg")
public class HyXxg {
    @Id
    private Integer id;

    private Integer memberid;

    private String yh;

    private Date time;

    private Double gysz;

    private Double zdgc;

    private Double gmdzdbdgc;

    private Double fgmdzdbdgc;

    private Double dmdzdbdgc;

    private Double tchdlc;

    private Double zzdba;

    private Double zzdbb;

    private Double zzdbe;

    private Double xqzdba;

    private Double txbpas;

    private Double ys;

    private Double wssb12;

    private Double cfydbcrp;

    private Double jsjmckp;

    private Double jsjmtgmckmb;

    private Double jsjmtgmmbdl;

    private Double rstqmldh;

    private Double aqdstqm;

    private Double jhdbmb;

    private Double jgdbl;

    private Double jgdbt;

    private Double nlntqt;

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

    public Double getGysz() {
        return gysz;
    }

    public void setGysz(Double gysz) {
        this.gysz = gysz;
    }

    public Double getZdgc() {
        return zdgc;
    }

    public void setZdgc(Double zdgc) {
        this.zdgc = zdgc;
    }

    public Double getGmdzdbdgc() {
        return gmdzdbdgc;
    }

    public void setGmdzdbdgc(Double gmdzdbdgc) {
        this.gmdzdbdgc = gmdzdbdgc;
    }

    public Double getFgmdzdbdgc() {
        return fgmdzdbdgc;
    }

    public void setFgmdzdbdgc(Double fgmdzdbdgc) {
        this.fgmdzdbdgc = fgmdzdbdgc;
    }

    public Double getDmdzdbdgc() {
        return dmdzdbdgc;
    }

    public void setDmdzdbdgc(Double dmdzdbdgc) {
        this.dmdzdbdgc = dmdzdbdgc;
    }

    public Double getTchdlc() {
        return tchdlc;
    }

    public void setTchdlc(Double tchdlc) {
        this.tchdlc = tchdlc;
    }

    public Double getZzdba() {
        return zzdba;
    }

    public void setZzdba(Double zzdba) {
        this.zzdba = zzdba;
    }

    public Double getZzdbb() {
        return zzdbb;
    }

    public void setZzdbb(Double zzdbb) {
        this.zzdbb = zzdbb;
    }

    public Double getZzdbe() {
        return zzdbe;
    }

    public void setZzdbe(Double zzdbe) {
        this.zzdbe = zzdbe;
    }

    public Double getXqzdba() {
        return xqzdba;
    }

    public void setXqzdba(Double xqzdba) {
        this.xqzdba = xqzdba;
    }

    public Double getTxbpas() {
        return txbpas;
    }

    public void setTxbpas(Double txbpas) {
        this.txbpas = txbpas;
    }

    public Double getYs() {
        return ys;
    }

    public void setYs(Double ys) {
        this.ys = ys;
    }

    public Double getWssb12() {
        return wssb12;
    }

    public void setWssb12(Double wssb12) {
        this.wssb12 = wssb12;
    }

    public Double getCfydbcrp() {
        return cfydbcrp;
    }

    public void setCfydbcrp(Double cfydbcrp) {
        this.cfydbcrp = cfydbcrp;
    }

    public Double getJsjmckp() {
        return jsjmckp;
    }

    public void setJsjmckp(Double jsjmckp) {
        this.jsjmckp = jsjmckp;
    }

    public Double getJsjmtgmckmb() {
        return jsjmtgmckmb;
    }

    public void setJsjmtgmckmb(Double jsjmtgmckmb) {
        this.jsjmtgmckmb = jsjmtgmckmb;
    }

    public Double getJsjmtgmmbdl() {
        return jsjmtgmmbdl;
    }

    public void setJsjmtgmmbdl(Double jsjmtgmmbdl) {
        this.jsjmtgmmbdl = jsjmtgmmbdl;
    }

    public Double getRstqmldh() {
        return rstqmldh;
    }

    public void setRstqmldh(Double rstqmldh) {
        this.rstqmldh = rstqmldh;
    }

    public Double getAqdstqm() {
        return aqdstqm;
    }

    public void setAqdstqm(Double aqdstqm) {
        this.aqdstqm = aqdstqm;
    }

    public Double getJhdbmb() {
        return jhdbmb;
    }

    public void setJhdbmb(Double jhdbmb) {
        this.jhdbmb = jhdbmb;
    }

    public Double getJgdbl() {
        return jgdbl;
    }

    public void setJgdbl(Double jgdbl) {
        this.jgdbl = jgdbl;
    }

    public Double getJgdbt() {
        return jgdbt;
    }

    public void setJgdbt(Double jgdbt) {
        this.jgdbt = jgdbt;
    }

    public Double getNlntqt() {
        return nlntqt;
    }

    public void setNlntqt(Double nlntqt) {
        this.nlntqt = nlntqt;
    }
}