package org.simplilearn.controllers;

import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpSession;


import org.simplilearn.entities.CartItem;
import org.simplilearn.entities.Order;
import org.simplilearn.entities.OrderItem;
import org.simplilearn.entities.Product;
import org.simplilearn.entities.User;
import org.simplilearn.models.CartModel;
import org.simplilearn.services.CartService;
import org.simplilearn.services.OrderService;
import org.simplilearn.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CartController {
	private ProductService productService;
	private CartService cartService;
	private OrderService orderService;

	@Autowired
	public CartController(ProductService productService, CartService cartService, OrderService orderService) {
		this.productService = productService;
		this.cartService = cartService;
		this.orderService = orderService;
	}

	@RequestMapping("/showCart")
	public String showCart(HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		if (user != null) {
		List<CartItem> cartItems = cartService.getCartItems(user);
		int totalCartValue = cartService.calculateTotalCartValue(user);

		model.addAttribute("cartItems", cartItems);
		model.addAttribute("totalCartValue", totalCartValue);
		}else {
			 return "redirect:/login";
		}
		return "cart";
	}

	@RequestMapping("/addToCart/{pid}")
    public String addToCart(@PathVariable("pid") int pid, HttpSession session) {
        Product product = productService.getProduct(pid);
        CartModel cartModel = new CartModel(product.getName(), product.getPrice());
        cartModel.setPid(pid);
        User user = (User) session.getAttribute("user");
        cartService.addToCart(user, cartModel);
        return "redirect:/showCart";
    }

    @RequestMapping("/removeFromCart/{pid}")
    public String removeFromCart(@PathVariable("pid") int pid, HttpSession session) {
        User user = (User) session.getAttribute("user");
        cartService.removeFromCart(user, pid);
        return "redirect:/showCart";
    }

    @RequestMapping("/checkout")
    public String checkout(HttpSession session, Model model) {
        User user = (User) session.getAttribute("user");

        // Get the cart items and total cart value
        List<CartItem> cartItems = cartService.getCartItems(user);
        int totalCartValue = cartService.calculateTotalCartValue(user);

        // Create a new order with the cart items and total cart value
        Order order = new Order();
        order.setUser(user);
        order.setOrderDate(new Date());
        order.setTotalCartValue(totalCartValue);

        // Create a new OrderItem for each CartItem in the cart and add them to the order
        List<OrderItem> orderItems = cartItems.stream().map(cartItem -> {
            OrderItem orderItem = new OrderItem(cartItem.getName(), cartItem.getQuantity(), cartItem.getPrice());
            orderItem.setOrder(order);
            return orderItem;
        }).collect(Collectors.toList());

        order.setOrderItems(orderItems);

        // Save the order entity to the database
        orderService.saveOrder(order);

        // Clear the cart for the user after checkout
        cartService.clearCart(user);

        // Set a session attribute to indicate successful checkout
        session.setAttribute("checkoutSuccess", true);

        // Redirect to the payment page before redirecting to the dashboard
        return "redirect:/makePayment";
    }

    @RequestMapping("/makePayment")
    public String makePayment(HttpSession session) {
        // In a real application, you would implement payment gateway integration here
        User user = (User) session.getAttribute("user");
        session.removeAttribute("checkoutSuccess"); // Clear the checkout success attribute
        return "redirect:/checkout_success";
    }

    @RequestMapping("/checkout_success")
    public String checkoutSuccess(HttpSession session) {
        // Get the user from the session
        User user = (User) session.getAttribute("user");

        // Redirect to the user's dashboard based on their role (e.g., admin or regular user)
        if (user.getRole().equals("admin")) {
            return "redirect:/adminDashboard";
        } else {
            return "redirect:/customerDashboard";
        }
    }
    @RequestMapping("/purchase")
    public String purchase(HttpSession session, Model model) {
        User user = (User) session.getAttribute("user");

        // Get the cart items and total cart value
        List<CartItem> cartItems = cartService.getCartItems(user);
        int totalCartValue = cartService.calculateTotalCartValue(user);

        model.addAttribute("cartItems", cartItems);
        model.addAttribute("totalCartValue", totalCartValue);

        return "purchase";
    }


}
