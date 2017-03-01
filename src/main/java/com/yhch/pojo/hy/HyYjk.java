package com.yhch.pojo.hy;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Table(name = "hy_yjk")
public class HyYjk {
    @Id
    private Integer id;

    private Integer memberid;

    private String yh;

    private Date time;

    private Double wssa;

    private Double wssd;

    private Double wsse;

    private Double wssb9;

    private Double wssb12;

    private Double wssb1;

    private Double wssc;

    private Double wssb2;

    private Double wssb6;

    private Double mygn;

    private Double exzlwxys;

    private Double lxzk;

    private Double gai;

    private Double tie;

    private Double xin;

    private Double xi;

    private Double tong;

    private Double nie;

    private Double ge1;

    private Double ge2;

    private Double qian;

    private Double swbnsjc;

    private String gmyjc;

    private Double mthfr;

    private Double aldh2;

    private Double tz;

    private Double qztz;

    private Double jrl;

    private Double ggj;

    private Double stsf;

    private Double xbny;

    private Double xbwy;

    private Double dbz;

    private Double wjy;

    private Double tzfl;

    private Double jrzffxtz;

    private Double stzlzs;

    private Double jrzffxtzfl;

    private Double jrzffxjrl;

    private Double nzzfsp;

    private Double nzzfmj;

    private Double ytb;

    private Double nzzfl;

    private Double pxzfl;

    private Double txpd;

    private Double yypgdbz;

    private Double yypgwjy;

    private Double yypgxbl;

    private Double jcdxl;

    private Double bykll;

    private Double stnl;

    private Double zk;

    private Double fppgtz;

    private Double fppgtzfl;

    private Double fppgjrl;

    private Double fzcd;

    private Double xqtong;

    private Double xqtie;

    private Double xqxin;

    private Double xqmei;

    private Double qxqian;

    private Double qxge;

    private Double qxmeng;

    private Double qxxi;

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

    public Double getWssa() {
        return wssa;
    }

    public void setWssa(Double wssa) {
        this.wssa = wssa;
    }

    public Double getWssd() {
        return wssd;
    }

    public void setWssd(Double wssd) {
        this.wssd = wssd;
    }

    public Double getWsse() {
        return wsse;
    }

    public void setWsse(Double wsse) {
        this.wsse = wsse;
    }

    public Double getWssb9() {
        return wssb9;
    }

    public void setWssb9(Double wssb9) {
        this.wssb9 = wssb9;
    }

    public Double getWssb12() {
        return wssb12;
    }

    public void setWssb12(Double wssb12) {
        this.wssb12 = wssb12;
    }

    public Double getWssb1() {
        return wssb1;
    }

    public void setWssb1(Double wssb1) {
        this.wssb1 = wssb1;
    }

    public Double getWssc() {
        return wssc;
    }

    public void setWssc(Double wssc) {
        this.wssc = wssc;
    }

    public Double getWssb2() {
        return wssb2;
    }

    public void setWssb2(Double wssb2) {
        this.wssb2 = wssb2;
    }

    public Double getWssb6() {
        return wssb6;
    }

    public void setWssb6(Double wssb6) {
        this.wssb6 = wssb6;
    }

    public Double getMygn() {
        return mygn;
    }

    public void setMygn(Double mygn) {
        this.mygn = mygn;
    }

    public Double getExzlwxys() {
        return exzlwxys;
    }

    public void setExzlwxys(Double exzlwxys) {
        this.exzlwxys = exzlwxys;
    }

    public Double getLxzk() {
        return lxzk;
    }

    public void setLxzk(Double lxzk) {
        this.lxzk = lxzk;
    }

    public Double getGai() {
        return gai;
    }

    public void setGai(Double gai) {
        this.gai = gai;
    }

    public Double getTie() {
        return tie;
    }

    public void setTie(Double tie) {
        this.tie = tie;
    }

    public Double getXin() {
        return xin;
    }

    public void setXin(Double xin) {
        this.xin = xin;
    }

    public Double getXi() {
        return xi;
    }

    public void setXi(Double xi) {
        this.xi = xi;
    }

    public Double getTong() {
        return tong;
    }

    public void setTong(Double tong) {
        this.tong = tong;
    }

    public Double getNie() {
        return nie;
    }

    public void setNie(Double nie) {
        this.nie = nie;
    }

    public Double getGe1() {
        return ge1;
    }

    public void setGe1(Double ge1) {
        this.ge1 = ge1;
    }

    public Double getGe2() {
        return ge2;
    }

    public void setGe2(Double ge2) {
        this.ge2 = ge2;
    }

    public Double getQian() {
        return qian;
    }

    public void setQian(Double qian) {
        this.qian = qian;
    }

    public Double getSwbnsjc() {
        return swbnsjc;
    }

    public void setSwbnsjc(Double swbnsjc) {
        this.swbnsjc = swbnsjc;
    }

    public String getGmyjc() {
        return gmyjc;
    }

    public void setGmyjc(String gmyjc) {
        this.gmyjc = gmyjc == null ? null : gmyjc.trim();
    }

    public Double getMthfr() {
        return mthfr;
    }

    public void setMthfr(Double mthfr) {
        this.mthfr = mthfr;
    }

    public Double getAldh2() {
        return aldh2;
    }

    public void setAldh2(Double aldh2) {
        this.aldh2 = aldh2;
    }

    public Double getTz() {
        return tz;
    }

    public void setTz(Double tz) {
        this.tz = tz;
    }

    public Double getQztz() {
        return qztz;
    }

    public void setQztz(Double qztz) {
        this.qztz = qztz;
    }

    public Double getJrl() {
        return jrl;
    }

    public void setJrl(Double jrl) {
        this.jrl = jrl;
    }

    public Double getGgj() {
        return ggj;
    }

    public void setGgj(Double ggj) {
        this.ggj = ggj;
    }

    public Double getStsf() {
        return stsf;
    }

    public void setStsf(Double stsf) {
        this.stsf = stsf;
    }

    public Double getXbny() {
        return xbny;
    }

    public void setXbny(Double xbny) {
        this.xbny = xbny;
    }

    public Double getXbwy() {
        return xbwy;
    }

    public void setXbwy(Double xbwy) {
        this.xbwy = xbwy;
    }

    public Double getDbz() {
        return dbz;
    }

    public void setDbz(Double dbz) {
        this.dbz = dbz;
    }

    public Double getWjy() {
        return wjy;
    }

    public void setWjy(Double wjy) {
        this.wjy = wjy;
    }

    public Double getTzfl() {
        return tzfl;
    }

    public void setTzfl(Double tzfl) {
        this.tzfl = tzfl;
    }

    public Double getJrzffxtz() {
        return jrzffxtz;
    }

    public void setJrzffxtz(Double jrzffxtz) {
        this.jrzffxtz = jrzffxtz;
    }

    public Double getStzlzs() {
        return stzlzs;
    }

    public void setStzlzs(Double stzlzs) {
        this.stzlzs = stzlzs;
    }

    public Double getJrzffxtzfl() {
        return jrzffxtzfl;
    }

    public void setJrzffxtzfl(Double jrzffxtzfl) {
        this.jrzffxtzfl = jrzffxtzfl;
    }

    public Double getJrzffxjrl() {
        return jrzffxjrl;
    }

    public void setJrzffxjrl(Double jrzffxjrl) {
        this.jrzffxjrl = jrzffxjrl;
    }

    public Double getNzzfsp() {
        return nzzfsp;
    }

    public void setNzzfsp(Double nzzfsp) {
        this.nzzfsp = nzzfsp;
    }

    public Double getNzzfmj() {
        return nzzfmj;
    }

    public void setNzzfmj(Double nzzfmj) {
        this.nzzfmj = nzzfmj;
    }

    public Double getYtb() {
        return ytb;
    }

    public void setYtb(Double ytb) {
        this.ytb = ytb;
    }

    public Double getNzzfl() {
        return nzzfl;
    }

    public void setNzzfl(Double nzzfl) {
        this.nzzfl = nzzfl;
    }

    public Double getPxzfl() {
        return pxzfl;
    }

    public void setPxzfl(Double pxzfl) {
        this.pxzfl = pxzfl;
    }

    public Double getTxpd() {
        return txpd;
    }

    public void setTxpd(Double txpd) {
        this.txpd = txpd;
    }

    public Double getYypgdbz() {
        return yypgdbz;
    }

    public void setYypgdbz(Double yypgdbz) {
        this.yypgdbz = yypgdbz;
    }

    public Double getYypgwjy() {
        return yypgwjy;
    }

    public void setYypgwjy(Double yypgwjy) {
        this.yypgwjy = yypgwjy;
    }

    public Double getYypgxbl() {
        return yypgxbl;
    }

    public void setYypgxbl(Double yypgxbl) {
        this.yypgxbl = yypgxbl;
    }

    public Double getJcdxl() {
        return jcdxl;
    }

    public void setJcdxl(Double jcdxl) {
        this.jcdxl = jcdxl;
    }

    public Double getBykll() {
        return bykll;
    }

    public void setBykll(Double bykll) {
        this.bykll = bykll;
    }

    public Double getStnl() {
        return stnl;
    }

    public void setStnl(Double stnl) {
        this.stnl = stnl;
    }

    public Double getZk() {
        return zk;
    }

    public void setZk(Double zk) {
        this.zk = zk;
    }

    public Double getFppgtz() {
        return fppgtz;
    }

    public void setFppgtz(Double fppgtz) {
        this.fppgtz = fppgtz;
    }

    public Double getFppgtzfl() {
        return fppgtzfl;
    }

    public void setFppgtzfl(Double fppgtzfl) {
        this.fppgtzfl = fppgtzfl;
    }

    public Double getFppgjrl() {
        return fppgjrl;
    }

    public void setFppgjrl(Double fppgjrl) {
        this.fppgjrl = fppgjrl;
    }

    public Double getFzcd() {
        return fzcd;
    }

    public void setFzcd(Double fzcd) {
        this.fzcd = fzcd;
    }

    public Double getXqtong() {
        return xqtong;
    }

    public void setXqtong(Double xqtong) {
        this.xqtong = xqtong;
    }

    public Double getXqtie() {
        return xqtie;
    }

    public void setXqtie(Double xqtie) {
        this.xqtie = xqtie;
    }

    public Double getXqxin() {
        return xqxin;
    }

    public void setXqxin(Double xqxin) {
        this.xqxin = xqxin;
    }

    public Double getXqmei() {
        return xqmei;
    }

    public void setXqmei(Double xqmei) {
        this.xqmei = xqmei;
    }

    public Double getQxqian() {
        return qxqian;
    }

    public void setQxqian(Double qxqian) {
        this.qxqian = qxqian;
    }

    public Double getQxge() {
        return qxge;
    }

    public void setQxge(Double qxge) {
        this.qxge = qxge;
    }

    public Double getQxmeng() {
        return qxmeng;
    }

    public void setQxmeng(Double qxmeng) {
        this.qxmeng = qxmeng;
    }

    public Double getQxxi() {
        return qxxi;
    }

    public void setQxxi(Double qxxi) {
        this.qxxi = qxxi;
    }
}