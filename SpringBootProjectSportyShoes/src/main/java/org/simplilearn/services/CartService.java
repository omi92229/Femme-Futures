package org.simplilearn.services;

import java.util.ArrayList;
import java.util.List;

import org.simplilearn.entities.Cart;
import org.simplilearn.entities.CartItem;
import org.simplilearn.entities.Product;
import org.simplilearn.entities.User;
import org.simplilearn.models.CartModel;
import org.simplilearn.repositories.CartRepository;
import org.simplilearn.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartService {
    private CartRepository cartRepository;
    private UserRepository userRepository;

    @Autowired
    public CartService(CartRepository cartRepository, UserRepository userRepository) {
        this.cartRepository = cartRepository;
        this.userRepository = userRepository;
    }

    public void addToCart(User user, CartModel cartModel) {
        String item = cartModel.getItem(); // Get the item from the cartModel
        Cart cart = cartRepository.findByItemAndUser(cartModel.getItem(), user);


        if (cart != null) {
            // If the item already exists in the cart, update the quantity and price
            cart.setQty(cart.getQty() + 1);
            cart.setPrice(cart.getQty() * cartModel.getPrice());
        } else {
            // If the item is not in the cart, create a new cart item
            cart = new Cart();
            cart.setItem(item);
            cart.setQty(1);
            cart.setPrice(cartModel.getPrice());
            cart.setUser(user); // Associate the cart with the user
        }

        cartRepository.save(cart); // Save the cart (either updated or new)
    }




    public List<CartItem> getCartItems(User user) {
        List<CartItem> cartItems = new ArrayList<>();
        Cart cart = user.getCart();
        if (cart != null) {
            List<Cart> cartItemsFromDB = cartRepository.findByUser(user);
            for (Cart cartItem : cartItemsFromDB) {
                // Assuming there is a method getProduct() in the Cart entity to get the associated product
                Product product = cartItem.getProduct(); // Get the associated product
                CartItem item = new CartItem(cartItem.getId(), cartItem.getItem(), cartItem.getQty(), cartItem.getPrice(), product);
                cartItems.add(item);
            }
        }
        return cartItems;
    }

    public void removeFromCart(User user, int pid) {
        Cart cart = user.getCart();
        if (cart != null) {
            List<Cart> cartItems = cartRepository.findByUser(user);
            for (Cart cartItem : cartItems) {
                if (cartItem.getId() == pid) {
                    cartRepository.delete(cartItem);
                    break;
                }
            }
        }
    }

    public int calculateTotalCartValue(User user) {
        List<Cart> cartItems = cartRepository.findByUser(user);
        return cartItems.stream().mapToInt(Cart::getPrice).sum();
    }


    // Method to clear the cart items for the given user
    public void clearCart(User user) {
        List<Cart> cartItems = cartRepository.findByUser(user);
        cartRepository.deleteAll(cartItems);
    }
}
