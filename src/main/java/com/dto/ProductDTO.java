package com.dto;

public class ProductDTO {
	
	private int productid;
	private String name;
	private String brand;
	private String color;
	private String availability;
	private int price;
	private String username;
	private String password;
	
	public ProductDTO() {
		super();
	}
	
	public ProductDTO(int productid, String name, String brand, String color, String availability, int price,
			String username, String password) {
		super();
		this.productid = productid;
		this.name = name;
		this.brand = brand;
		this.color = color;
		this.availability = availability;
		this.price = price;
		this.username = username;
		this.password = password;
	}
	
	public int getProductid() {
		return productid;
	}
	
	public void setProductid(int productid) {
		this.productid = productid;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getBrand() {
		return brand;
	}
	
	public void setBrand(String brand) {
		this.brand = brand;
	}
	
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	
	public String getAvailability() {
		return availability;
	}
	
	public void setAvailability(String availability) {
		this.availability = availability;
	}
	
	public int getPrice() {
		return price;
	}
	
	public void setPrice(int price) {
		this.price = price;
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Override
	public String toString() {
		return "ProductDTO [productid=" + productid + ", name=" + name + ", brand=" + brand + ", color=" + color
				+ ", availability=" + availability + ", price=" + price + ", username=" + username + ", password="
				+ password + "]";
	}

}
