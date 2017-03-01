package com.yhch.pojo.hy;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Table(name = "hy_fbjcw")
public class HyFbjcw {
    @Id
    private Integer id;

    private Integer memberid;

    private String yh;

    private Date time;

    private String fbys;

    private String fbxz;

    private String bxb;

    private String hxb;

    private String cl;

    private String qxjc;

    private Double basajzym;

    private Double tdasajzym;

    private Double gaxjzym;

    private Double jxlsm;

    private Double dayhm;

    private Double tgtam;

    private Double djjm;

    private Double yzsgmga;

    private Double zdb;

    private Double bdb;

    private Double qbdb;

    private Double qdb;

    private Double bdbzdb;

    private Double bdbqdb;

    private Double zdhs;

    private Double zjdhs;

    private Double jjdhs;

    private Double zdzs;

    private Double lasajtm;

    private Double tmzs;

    private Double czldb;

    private Double ivxjy;

    private Double sxqjyndt;

    private Double dfm;

    private Double zfm;

    private Double xqydbm;

    private Double xqdbmyy;

    private Double xwdbmye;

    private Double xwdbmyye;

    private Double cssnshqsy;

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

    public String getFbys() {
        return fbys;
    }

    public void setFbys(String fbys) {
        this.fbys = fbys == null ? null : fbys.trim();
    }

    public String getFbxz() {
        return fbxz;
    }

    public void setFbxz(String fbxz) {
        this.fbxz = fbxz == null ? null : fbxz.trim();
    }

    public String getBxb() {
        return bxb;
    }

    public void setBxb(String bxb) {
        this.bxb = bxb == null ? null : bxb.trim();
    }

    public String getHxb() {
        return hxb;
    }

    public void setHxb(String hxb) {
        this.hxb = hxb == null ? null : hxb.trim();
    }

    public String getCl() {
        return cl;
    }

    public void setCl(String cl) {
        this.cl = cl == null ? null : cl.trim();
    }

    public String getQxjc() {
        return qxjc;
    }

    public void setQxjc(String qxjc) {
        this.qxjc = qxjc == null ? null : qxjc.trim();
    }

    public Double getBasajzym() {
        return basajzym;
    }

    public void setBasajzym(Double basajzym) {
        this.basajzym = basajzym;
    }

    public Double getTdasajzym() {
        return tdasajzym;
    }

    public void setTdasajzym(Double tdasajzym) {
        this.tdasajzym = tdasajzym;
    }

    public Double getGaxjzym() {
        return gaxjzym;
    }

    public void setGaxjzym(Double gaxjzym) {
        this.gaxjzym = gaxjzym;
    }

    public Double getJxlsm() {
        return jxlsm;
    }

    public void setJxlsm(Double jxlsm) {
        this.jxlsm = jxlsm;
    }

    public Double getDayhm() {
        return dayhm;
    }

    public void setDayhm(Double dayhm) {
        this.dayhm = dayhm;
    }

    public Double getTgtam() {
        return tgtam;
    }

    public void setTgtam(Double tgtam) {
        this.tgtam = tgtam;
    }

    public Double getDjjm() {
        return djjm;
    }

    public void setDjjm(Double djjm) {
        this.djjm = djjm;
    }

    public Double getYzsgmga() {
        return yzsgmga;
    }

    public void setYzsgmga(Double yzsgmga) {
        this.yzsgmga = yzsgmga;
    }

    public Double getZdb() {
        return zdb;
    }

    public void setZdb(Double zdb) {
        this.zdb = zdb;
    }

    public Double getBdb() {
        return bdb;
    }

    public void setBdb(Double bdb) {
        this.bdb = bdb;
    }

    public Double getQbdb() {
        return qbdb;
    }

    public void setQbdb(Double qbdb) {
        this.qbdb = qbdb;
    }

    public Double getQdb() {
        return qdb;
    }

    public void setQdb(Double qdb) {
        this.qdb = qdb;
    }

    public Double getBdbzdb() {
        return bdbzdb;
    }

    public void setBdbzdb(Double bdbzdb) {
        this.bdbzdb = bdbzdb;
    }

    public Double getBdbqdb() {
        return bdbqdb;
    }

    public void setBdbqdb(Double bdbqdb) {
        this.bdbqdb = bdbqdb;
    }

    public Double getZdhs() {
        return zdhs;
    }

    public void setZdhs(Double zdhs) {
        this.zdhs = zdhs;
    }

    public Double getZjdhs() {
        return zjdhs;
    }

    public void setZjdhs(Double zjdhs) {
        this.zjdhs = zjdhs;
    }

    public Double getJjdhs() {
        return jjdhs;
    }

    public void setJjdhs(Double jjdhs) {
        this.jjdhs = jjdhs;
    }

    public Double getZdzs() {
        return zdzs;
    }

    public void setZdzs(Double zdzs) {
        this.zdzs = zdzs;
    }

    public Double getLasajtm() {
        return lasajtm;
    }

    public void setLasajtm(Double lasajtm) {
        this.lasajtm = lasajtm;
    }

    public Double getTmzs() {
        return tmzs;
    }

    public void setTmzs(Double tmzs) {
        this.tmzs = tmzs;
    }

    public Double getCzldb() {
        return czldb;
    }

    public void setCzldb(Double czldb) {
        this.czldb = czldb;
    }

    public Double getIvxjy() {
        return ivxjy;
    }

    public void setIvxjy(Double ivxjy) {
        this.ivxjy = ivxjy;
    }

    public Double getSxqjyndt() {
        return sxqjyndt;
    }

    public void setSxqjyndt(Double sxqjyndt) {
        this.sxqjyndt = sxqjyndt;
    }

    public Double getDfm() {
        return dfm;
    }

    public void setDfm(Double dfm) {
        this.dfm = dfm;
    }

    public Double getZfm() {
        return zfm;
    }

    public void setZfm(Double zfm) {
        this.zfm = zfm;
    }

    public Double getXqydbm() {
        return xqydbm;
    }

    public void setXqydbm(Double xqydbm) {
        this.xqydbm = xqydbm;
    }

    public Double getXqdbmyy() {
        return xqdbmyy;
    }

    public void setXqdbmyy(Double xqdbmyy) {
        this.xqdbmyy = xqdbmyy;
    }

    public Double getXwdbmye() {
        return xwdbmye;
    }

    public void setXwdbmye(Double xwdbmye) {
        this.xwdbmye = xwdbmye;
    }

    public Double getXwdbmyye() {
        return xwdbmyye;
    }

    public void setXwdbmyye(Double xwdbmyye) {
        this.xwdbmyye = xwdbmyye;
    }

    public Double getCssnshqsy() {
        return cssnshqsy;
    }

    public void setCssnshqsy(Double cssnshqsy) {
        this.cssnshqsy = cssnshqsy;
    }
}