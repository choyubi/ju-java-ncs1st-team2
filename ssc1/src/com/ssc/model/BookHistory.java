package com.ssc.model;

public class BookHistory {
    private int id;
    private String bookHistory;
    private int userId;

    public int getId() {
	return id;
    }

    public void setId(int id) {
	this.id = id;
    }

    public String getBookHistory() {
	return bookHistory;
    }

    public void setBookHistory(String bookHistory) {
	this.bookHistory = bookHistory;
    }

    public int getUserId() {
	return userId;
    }

    public void setUserId(int userId) {
	this.userId = userId;
    }

    @Override
    public String toString() {
	return "BookHistory [id=" + id + ", bookHistory=" + bookHistory + ", userId=" + userId + "]";
    }

}
