package org.simplilearn.models;

import org.springframework.data.annotation.CreatedDate;

public class ProductDto {
	private String name;
	private int price;
	private String imageUrl;
public ProductDto() {
	// TODO Auto-generated constructor stub
}
public ProductDto(String name, int price, String imageUrl) {
	super();
	this.name = name;
	this.price = price;
	this.imageUrl = imageUrl;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
public String getImageUrl() {
	return imageUrl;
}
public void setImageUrl(String imageUrl) {
	this.imageUrl = imageUrl;
}

}
