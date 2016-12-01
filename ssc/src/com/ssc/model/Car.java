package com.ssc.model;

public class Car {
	private int id;
	private String carName;
	private String carKind;
	private int carPay;
	private int zoneNum;
	private String zoneName;
	public int getId() {
	    return id;
	}
	public void setId(int id) {
	    this.id = id;
	}
	public String getCarName() {
	    return carName;
	}
	public void setCarName(String carName) {
	    this.carName = carName;
	}
	public String getCarKind() {
	    return carKind;
	}
	public void setCarKind(String carKind) {
	    this.carKind = carKind;
	}
	public int getCarPay() {
	    return carPay;
	}
	public void setCarPay(int carPay) {
	    this.carPay = carPay;
	}
	public int getZoneNum() {
	    return zoneNum;
	}
	public void setZoneNum(int zoneNum) {
	    this.zoneNum = zoneNum;
	}
	public String getZoneName() {
	    return zoneName;
	}
	public void setZoneName(String zoneName) {
	    this.zoneName = zoneName;
	}
	@Override
	public String toString() {
	    return "Car [id=" + id + ", carName=" + carName + ", carKind=" + carKind + ", carPay=" + carPay
		    + ", zoneNum=" + zoneNum + ", zoneName=" + zoneName + "]";
	}

	
	
}
