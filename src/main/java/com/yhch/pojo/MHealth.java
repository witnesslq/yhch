package com.yhch.pojo;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Table(name = "m_health")
public class MHealth {
    @Id
    private Integer summaryid;

    private Integer id;

    private Date time;

    private String blood;

    private Integer height;

    private Float weight;

    private Float bmi;

    private Integer shousuoya;

    private Integer shuzhangya;

    private Integer breath;

    private Float temperature;

    private Float waistline;

    private Float hips;

    private Float whr;

    private Integer heartrate;

    private String rhythm;

    private String majordisease1;

    private String majordisease2;

    private String other;

    private String diagnosticresults;

    private String medication;

    private String physicalevaluation;

    private String healthconsultant;

    private String seniorconsultant;

    public Integer getSummaryid() {
        return summaryid;
    }

    public void setSummaryid(Integer summaryid) {
        this.summaryid = summaryid;
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

    public String getBlood() {
        return blood;
    }

    public void setBlood(String blood) {
        this.blood = blood == null ? null : blood.trim();
    }

    public Integer getHeight() {
        return height;
    }

    public void setHeight(Integer height) {
        this.height = height;
    }

    public Float getWeight() {
        return weight;
    }

    public void setWeight(Float weight) {
        this.weight = weight;
    }

    public Float getBmi() {
        return bmi;
    }

    public void setBmi(Float bmi) {
        this.bmi = bmi;
    }

    public Integer getShousuoya() {
        return shousuoya;
    }

    public void setShousuoya(Integer shousuoya) {
        this.shousuoya = shousuoya;
    }

    public Integer getShuzhangya() {
        return shuzhangya;
    }

    public void setShuzhangya(Integer shuzhangya) {
        this.shuzhangya = shuzhangya;
    }

    public Integer getBreath() {
        return breath;
    }

    public void setBreath(Integer breath) {
        this.breath = breath;
    }

    public Float getTemperature() {
        return temperature;
    }

    public void setTemperature(Float temperature) {
        this.temperature = temperature;
    }

    public Float getWaistline() {
        return waistline;
    }

    public void setWaistline(Float waistline) {
        this.waistline = waistline;
    }

    public Float getHips() {
        return hips;
    }

    public void setHips(Float hips) {
        this.hips = hips;
    }

    public Float getWhr() {
        return whr;
    }

    public void setWhr(Float whr) {
        this.whr = whr;
    }

    public Integer getHeartrate() {
        return heartrate;
    }

    public void setHeartrate(Integer heartrate) {
        this.heartrate = heartrate;
    }

    public String getRhythm() {
        return rhythm;
    }

    public void setRhythm(String rhythm) {
        this.rhythm = rhythm == null ? null : rhythm.trim();
    }

    public String getMajordisease1() {
        return majordisease1;
    }

    public void setMajordisease1(String majordisease1) {
        this.majordisease1 = majordisease1 == null ? null : majordisease1.trim();
    }

    public String getMajordisease2() {
        return majordisease2;
    }

    public void setMajordisease2(String majordisease2) {
        this.majordisease2 = majordisease2 == null ? null : majordisease2.trim();
    }

    public String getOther() {
        return other;
    }

    public void setOther(String other) {
        this.other = other == null ? null : other.trim();
    }

    public String getDiagnosticresults() {
        return diagnosticresults;
    }

    public void setDiagnosticresults(String diagnosticresults) {
        this.diagnosticresults = diagnosticresults == null ? null : diagnosticresults.trim();
    }

    public String getMedication() {
        return medication;
    }

    public void setMedication(String medication) {
        this.medication = medication == null ? null : medication.trim();
    }

    public String getPhysicalevaluation() {
        return physicalevaluation;
    }

    public void setPhysicalevaluation(String physicalevaluation) {
        this.physicalevaluation = physicalevaluation == null ? null : physicalevaluation.trim();
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