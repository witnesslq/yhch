package com.yhch.pojo.hy;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Table(name = "hy_jzxdfmw")
public class HyJzxdfmw {
    @Id
    private Integer id;

    private Integer memberid;

    private String yh;

    private Date time;

    private Double zsdjzxyast3;

    private Double zjzxst4;

    private Double ylsdjzxyasft3;

    private Double yljzxsft4;

    private Double cjzxstsh;

    private Double cjzxjssfjstrh;

    private Double kjzxqdbkttg;

    private Double kjzxgyhwmkttpo;

    private Double cjzxjsstkttrab;

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

    public Double getZsdjzxyast3() {
        return zsdjzxyast3;
    }

    public void setZsdjzxyast3(Double zsdjzxyast3) {
        this.zsdjzxyast3 = zsdjzxyast3;
    }

    public Double getZjzxst4() {
        return zjzxst4;
    }

    public void setZjzxst4(Double zjzxst4) {
        this.zjzxst4 = zjzxst4;
    }

    public Double getYlsdjzxyasft3() {
        return ylsdjzxyasft3;
    }

    public void setYlsdjzxyasft3(Double ylsdjzxyasft3) {
        this.ylsdjzxyasft3 = ylsdjzxyasft3;
    }

    public Double getYljzxsft4() {
        return yljzxsft4;
    }

    public void setYljzxsft4(Double yljzxsft4) {
        this.yljzxsft4 = yljzxsft4;
    }

    public Double getCjzxstsh() {
        return cjzxstsh;
    }

    public void setCjzxstsh(Double cjzxstsh) {
        this.cjzxstsh = cjzxstsh;
    }

    public Double getCjzxjssfjstrh() {
        return cjzxjssfjstrh;
    }

    public void setCjzxjssfjstrh(Double cjzxjssfjstrh) {
        this.cjzxjssfjstrh = cjzxjssfjstrh;
    }

    public Double getKjzxqdbkttg() {
        return kjzxqdbkttg;
    }

    public void setKjzxqdbkttg(Double kjzxqdbkttg) {
        this.kjzxqdbkttg = kjzxqdbkttg;
    }

    public Double getKjzxgyhwmkttpo() {
        return kjzxgyhwmkttpo;
    }

    public void setKjzxgyhwmkttpo(Double kjzxgyhwmkttpo) {
        this.kjzxgyhwmkttpo = kjzxgyhwmkttpo;
    }

    public Double getCjzxjsstkttrab() {
        return cjzxjsstkttrab;
    }

    public void setCjzxjsstkttrab(Double cjzxjsstkttrab) {
        this.cjzxjsstkttrab = cjzxjsstkttrab;
    }
}