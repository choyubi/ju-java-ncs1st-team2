package com.ssc.model;

public class Car {
    private int cid;
    private String cname;
    private String ckind;
    private int cpay;
    private int userId;
    private int zoneNum;
    public int getCid() {
        return cid;
    }
    public void setCid(int cid) {
        this.cid = cid;
    }
    public String getCname() {
        return cname;
    }
    public void setCname(String cname) {
        this.cname = cname;
    }
    public String getCkind() {
        return ckind;
    }
    public void setCkind(String ckind) {
        this.ckind = ckind;
    }
    public int getCpay() {
        return cpay;
    }
    public void setCpay(int cpay) {
        this.cpay = cpay;
    }
    public int getUserId() {
        return userId;
    }
    public void setUserId(int userId) {
        this.userId = userId;
    }
    public int getZoneNum() {
        return zoneNum;
    }
    public void setZoneNum(int zoneNum) {
        this.zoneNum = zoneNum;
    }
    @Override
    public String toString() {
	return "car [cid=" + cid + ", cname=" + cname + ", ckind=" + ckind + ", cpay=" + cpay + ", userId=" + userId
		+ ", zoneNum=" + zoneNum + "]";
    }
    
}
