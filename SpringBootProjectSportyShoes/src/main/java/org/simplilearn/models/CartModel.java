package org.simplilearn.models;

public class CartModel {
	private int pid;
private String item;
private int price;

public CartModel() {
	// TODO Auto-generated constructor stub
}

public CartModel(String item, int price) {
	super();
	this.item = item;
	this.price = price;
}
public int getPid() {
    return pid;
}

public void setPid(int pid) {
    this.pid = pid;
}
public String getItem() {
	return item;
}

public void setItem(String item) {
	this.item = item;
}

public int getPrice() {
	return price;
}

public void setPrice(int price) {
	this.price = price;
}

}
