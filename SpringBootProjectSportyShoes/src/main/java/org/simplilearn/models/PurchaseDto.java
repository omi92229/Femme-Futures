package org.simplilearn.models;

import org.simplilearn.entities.CartItem;
import org.simplilearn.entities.User;

import java.util.List;

public class PurchaseDto {

    private User user;
    private List<CartItem> cartItems;

    public PurchaseDto() {
		// TODO Auto-generated constructor stub
	}

	public PurchaseDto(User user, List<CartItem> cartItems) {
		super();
		this.user = user;
		this.cartItems = cartItems;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<CartItem> getCartItems() {
		return cartItems;
	}

	public void setCartItems(List<CartItem> cartItems) {
		this.cartItems = cartItems;
	}
    
}
