package com.yhch.pojo.hy;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Table(name = "hy_zl")
public class HyZl {
    @Id
    private Integer id;

    private Integer memberid;

    private String yh;

    private Date time;

    private Double jtdbafp;

    private Double apkycea;

    private Double tlky72;

    private Double tlky19;

    private Double xbjzs19;

    private Double sjytyxchm;

    private Double zqlxxgtyky;

    private Double ylqlxxgtyky;

    private Double xqlzspaxgky;

    private Double tlky125;

    private Double tlky15;

    private Double tlky50;

    private Double tlky24;

    private Double xqzzdtkytpa;

    private Double exzlxgyztsgf;

    private Double xhzlxbjcctc;

    private String ebbddnajc;

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

    public Double getJtdbafp() {
        return jtdbafp;
    }

    public void setJtdbafp(Double jtdbafp) {
        this.jtdbafp = jtdbafp;
    }

    public Double getApkycea() {
        return apkycea;
    }

    public void setApkycea(Double apkycea) {
        this.apkycea = apkycea;
    }

    public Double getTlky72() {
        return tlky72;
    }

    public void setTlky72(Double tlky72) {
        this.tlky72 = tlky72;
    }

    public Double getTlky19() {
        return tlky19;
    }

    public void setTlky19(Double tlky19) {
        this.tlky19 = tlky19;
    }

    public Double getXbjzs19() {
        return xbjzs19;
    }

    public void setXbjzs19(Double xbjzs19) {
        this.xbjzs19 = xbjzs19;
    }

    public Double getSjytyxchm() {
        return sjytyxchm;
    }

    public void setSjytyxchm(Double sjytyxchm) {
        this.sjytyxchm = sjytyxchm;
    }

    public Double getZqlxxgtyky() {
        return zqlxxgtyky;
    }

    public void setZqlxxgtyky(Double zqlxxgtyky) {
        this.zqlxxgtyky = zqlxxgtyky;
    }

    public Double getYlqlxxgtyky() {
        return ylqlxxgtyky;
    }

    public void setYlqlxxgtyky(Double ylqlxxgtyky) {
        this.ylqlxxgtyky = ylqlxxgtyky;
    }

    public Double getXqlzspaxgky() {
        return xqlzspaxgky;
    }

    public void setXqlzspaxgky(Double xqlzspaxgky) {
        this.xqlzspaxgky = xqlzspaxgky;
    }

    public Double getTlky125() {
        return tlky125;
    }

    public void setTlky125(Double tlky125) {
        this.tlky125 = tlky125;
    }

    public Double getTlky15() {
        return tlky15;
    }

    public void setTlky15(Double tlky15) {
        this.tlky15 = tlky15;
    }

    public Double getTlky50() {
        return tlky50;
    }

    public void setTlky50(Double tlky50) {
        this.tlky50 = tlky50;
    }

    public Double getTlky24() {
        return tlky24;
    }

    public void setTlky24(Double tlky24) {
        this.tlky24 = tlky24;
    }

    public Double getXqzzdtkytpa() {
        return xqzzdtkytpa;
    }

    public void setXqzzdtkytpa(Double xqzzdtkytpa) {
        this.xqzzdtkytpa = xqzzdtkytpa;
    }

    public Double getExzlxgyztsgf() {
        return exzlxgyztsgf;
    }

    public void setExzlxgyztsgf(Double exzlxgyztsgf) {
        this.exzlxgyztsgf = exzlxgyztsgf;
    }

    public Double getXhzlxbjcctc() {
        return xhzlxbjcctc;
    }

    public void setXhzlxbjcctc(Double xhzlxbjcctc) {
        this.xhzlxbjcctc = xhzlxbjcctc;
    }

    public String getEbbddnajc() {
        return ebbddnajc;
    }

    public void setEbbddnajc(String ebbddnajc) {
        this.ebbddnajc = ebbddnajc == null ? null : ebbddnajc.trim();
    }
}