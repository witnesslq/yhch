package com.yhch.pojo.hy;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Table(name = "hy_ggjsz")
public class HyGgjsz {
    @Id
    private Integer id;

    private Integer memberid;

    private String yh;

    private Date time;

    private Double jgs;

    private Double ggsbgp;

    private Double jzpxjspth;

    private Double qjwss;

    private Double jyjjcw;

    private Double xjyqjqdt;

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

    public Double getJgs() {
        return jgs;
    }

    public void setJgs(Double jgs) {
        this.jgs = jgs;
    }

    public Double getGgsbgp() {
        return ggsbgp;
    }

    public void setGgsbgp(Double ggsbgp) {
        this.ggsbgp = ggsbgp;
    }

    public Double getJzpxjspth() {
        return jzpxjspth;
    }

    public void setJzpxjspth(Double jzpxjspth) {
        this.jzpxjspth = jzpxjspth;
    }

    public Double getQjwss() {
        return qjwss;
    }

    public void setQjwss(Double qjwss) {
        this.qjwss = qjwss;
    }

    public Double getJyjjcw() {
        return jyjjcw;
    }

    public void setJyjjcw(Double jyjjcw) {
        this.jyjjcw = jyjjcw;
    }

    public Double getXjyqjqdt() {
        return xjyqjqdt;
    }

    public void setXjyqjqdt(Double xjyqjqdt) {
        this.xjyqjqdt = xjyqjqdt;
    }
}