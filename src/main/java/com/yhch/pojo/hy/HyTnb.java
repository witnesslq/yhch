package com.yhch.pojo.hy;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Table(name = "hy_tnb")
public class HyTnb {
    @Id
    private Integer id;

    private Integer memberid;

    private String yh;

    private Date time;

    private Double thxqdb;

    private Double thxhdb;

    private Double pjxtgjz;

    private Double kfxt;

    private Double kfyds;

    private Double kfct;

    private Double onext;

    private Double oneyds;

    private Double onect;

    private Double twoxt;

    private Double twoyds;

    private Double twoct;

    private Double ydxbkt;

    private Double ydszskt;

    private Double gastsmkt;

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

    public Double getThxqdb() {
        return thxqdb;
    }

    public void setThxqdb(Double thxqdb) {
        this.thxqdb = thxqdb;
    }

    public Double getThxhdb() {
        return thxhdb;
    }

    public void setThxhdb(Double thxhdb) {
        this.thxhdb = thxhdb;
    }

    public Double getPjxtgjz() {
        return pjxtgjz;
    }

    public void setPjxtgjz(Double pjxtgjz) {
        this.pjxtgjz = pjxtgjz;
    }

    public Double getKfxt() {
        return kfxt;
    }

    public void setKfxt(Double kfxt) {
        this.kfxt = kfxt;
    }

    public Double getKfyds() {
        return kfyds;
    }

    public void setKfyds(Double kfyds) {
        this.kfyds = kfyds;
    }

    public Double getKfct() {
        return kfct;
    }

    public void setKfct(Double kfct) {
        this.kfct = kfct;
    }

    public Double getOnext() {
        return onext;
    }

    public void setOnext(Double onext) {
        this.onext = onext;
    }

    public Double getOneyds() {
        return oneyds;
    }

    public void setOneyds(Double oneyds) {
        this.oneyds = oneyds;
    }

    public Double getOnect() {
        return onect;
    }

    public void setOnect(Double onect) {
        this.onect = onect;
    }

    public Double getTwoxt() {
        return twoxt;
    }

    public void setTwoxt(Double twoxt) {
        this.twoxt = twoxt;
    }

    public Double getTwoyds() {
        return twoyds;
    }

    public void setTwoyds(Double twoyds) {
        this.twoyds = twoyds;
    }

    public Double getTwoct() {
        return twoct;
    }

    public void setTwoct(Double twoct) {
        this.twoct = twoct;
    }

    public Double getYdxbkt() {
        return ydxbkt;
    }

    public void setYdxbkt(Double ydxbkt) {
        this.ydxbkt = ydxbkt;
    }

    public Double getYdszskt() {
        return ydszskt;
    }

    public void setYdszskt(Double ydszskt) {
        this.ydszskt = ydszskt;
    }

    public Double getGastsmkt() {
        return gastsmkt;
    }

    public void setGastsmkt(Double gastsmkt) {
        this.gastsmkt = gastsmkt;
    }
}