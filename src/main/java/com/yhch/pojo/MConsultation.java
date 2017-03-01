package com.yhch.pojo;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Table(name = "m_consultation")
public class MConsultation {
    @Id
    private Integer consultationid;

    private Integer id;

    private Date time;

    private String place;

    private String content;

    private String expert;

    private String healthconsultant;

    private String seniorconsultant;

    public Integer getConsultationid() {
        return consultationid;
    }

    public void setConsultationid(Integer consultationid) {
        this.consultationid = consultationid;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place == null ? null : place.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getExpert() {
        return expert;
    }

    public void setExpert(String expert) {
        this.expert = expert == null ? null : expert.trim();
    }

    public String getHealthconsultant() {
        return healthconsultant;
    }

    public void setHealthconsultant(String healthconsultant) {
        this.healthconsultant = healthconsultant == null ? null : healthconsultant.trim();
    }

    public String getSeniorconsultant() {
        return seniorconsultant;
    }

    public void setSeniorconsultant(String seniorconsultant) {
        this.seniorconsultant = seniorconsultant == null ? null : seniorconsultant.trim();
    }
}