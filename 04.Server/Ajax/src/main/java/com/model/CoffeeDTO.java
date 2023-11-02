package com.model;

public class CoffeeDTO {
	 private String menuNm;
	 private int price;
	 private String size;
	 
	 public CoffeeDTO(String menuNm, int price, String size) {
		this.menuNm = menuNm;
		this.price = price;
		this.size = size;
	}
	public String getMenuNm() {
		return menuNm;
	}
	public int getPrice() {
		return price;
	}
	public String getSize() {
		return size;
	}
	@Override
	//toString (alt+shift+s): 커피 dto객체를 만들었으면 객체내 정보를 보여주기 위한 메소드
	public String toString() {
		return "CoffeeDTO [menuNm=" + menuNm + ", price=" + price + ", size=" + size + "]";
	}
	
	 
}
