package com.model;

import java.util.Objects;

public class MemberDTO {
	private String email;
	private String pw;
	private String phone;
	private String addr;
	
	//db에 모두 not null로 되어있으니까 무조건 4개 다 와야한다. 그래서 4개 다 들어가는 생성자 생성
	
	//private이니까 가져오려면  get.set이 필요
	//dto의 다른 말은 vo
	
	//toString을 통해서 데이터가 잘 들어갔는지 확인하는 메서드
	public String toString() {
		return "MessageDTO [email=" + email + ", pw=" + pw + ", phone=" + phone + ", addr=" + addr + "]";
	}
	public MemberDTO(String email, String pw, String phone, String addr) {
		this.email = email;
		this.pw = pw;
		this.phone = phone;
		this.addr = addr;
	}
	public MemberDTO(String pw, String phone, String addr) {
		super();
		this.pw = pw;
		this.phone = phone;
		this.addr = addr;
	}
	public MemberDTO(String email, String pw) {
		this.email = email;
		this.pw = pw;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MemberDTO other = (MemberDTO) obj;
		return Objects.equals(email, other.email) && Objects.equals(pw, other.pw);
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	
	
	
	
	
}
