package com.ssc.model;

public class User {
	private int id;
	private String userId;
	private String userPw;
	private String name;
	private String addr1;
	private String addr2;
	private String tel;
	private String email;
	private String gender;
	private String emailYn;
	private String useArea;
	private String regDate;
	private String editDate;
	private String profileImg;
	private String licNum;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmailYn() {
		return emailYn;
	}
	public void setEmailYn(String emailYn) {
		this.emailYn = emailYn;
	}
	public String getUseArea() {
		return useArea;
	}
	public void setUseArea(String useArea) {
		this.useArea = useArea;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getEditDate() {
		return editDate;
	}
	public void setEditDate(String editDate) {
		this.editDate = editDate;
	}
	public String getProfileImg() {
		return profileImg;
	}
	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}
	public String getLicNum() {
		return licNum;
	}
	public void setLicNum(String licNum) {
		this.licNum = licNum;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", userId=" + userId + ", userPw=" + userPw + ", name=" + name + ", addr1=" + addr1
				+ ", addr2=" + addr2 + ", tel=" + tel + ", email=" + email + ", gender=" + gender + ", emailYn="
				+ emailYn + ", useArea=" + useArea + ", regDate=" + regDate + ", editDate=" + editDate + ", profileImg="
				+ profileImg + ", licNum=" + licNum + "]";
	}

}
