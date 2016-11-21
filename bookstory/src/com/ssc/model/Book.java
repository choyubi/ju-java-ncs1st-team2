package com.ssc.model;

public class Book {
    private int bid;
    private String startDate;
    private String endDate;
    private int carCid;
    private int userId;

    public int getBid() {
	return bid;
    }

    public void setBid(int bid) {
	this.bid = bid;
    }

    public String getStartDate() {
	return startDate;
    }

    public void setStartDate(String startDate) {
	this.startDate = startDate;
    }

    public String getEndDate() {
	return endDate;
    }

    public void setEndDate(String endDate) {
	this.endDate = endDate;
    }

    public int getCarCid() {
	return carCid;
    }

    public void setCarCid(int carCid) {
	this.carCid = carCid;
    }

    public int getUserId() {
	return userId;
    }

    public void setUserId(int userId) {
	this.userId = userId;
    }

    @Override
    public String toString() {
	return "book [bid=" + bid + ", startDate=" + startDate + ", endDate=" + endDate + ", carCid=" + carCid
		+ ", userId=" + userId + "]";
    }

}
