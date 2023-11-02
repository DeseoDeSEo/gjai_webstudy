package com.model;
public class MemberDTO {
	private String id;
	private String pw;
	private String nick;
	private String email;
	private String phone;
	private String gender;
	private int age;
	//생성자 필요
	public MemberDTO(String id, String pw, String nick, String email, String phone, String gender, int age) {
		this.id = id;
		this.pw = pw;
		this.nick = nick;
		this.email = email;
		this.phone = phone;
		this.gender = gender;
		this.age = age;
	}
	//오버로딩으로 매개변수가 2개인 메서드 정의 가능하다.
	public MemberDTO(String id, String pw) {
		this.id = id;
		this.pw = pw;
	}
	public String getId() {
		return id;
	}
	public String getPw() {
		return pw;
	}
	public String getNick() {
		return nick;
	}
	public String getEmail() {
		return email;
	}
	public String getPhone() {
		return phone;
	}
	public String getGender() {
		return gender;
	}
	public int getAge() {
		return age;
	}
}