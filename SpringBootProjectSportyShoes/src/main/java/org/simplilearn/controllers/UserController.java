package org.simplilearn.controllers;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.simplilearn.entities.Category;
import org.simplilearn.entities.Product;
import org.simplilearn.entities.Purchase;
import org.simplilearn.entities.User;
import org.simplilearn.models.LoginDto;
import org.simplilearn.models.UserDto;
import org.simplilearn.services.CategoryService;
import org.simplilearn.services.ProductService;
import org.simplilearn.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {
	private UserService userService;
	private ProductService productService;
	private CategoryService categoryService;

	@Autowired
	public UserController(UserService userservice, ProductService productService, CategoryService categoryService) {
		super();
		this.userService = userservice;
		this.productService = productService;
		this.categoryService = categoryService;
	}

	@RequestMapping("/")
	public String showHome() {
		return "home";
	}

	@RequestMapping("/showLogin")
	public String showLogin() {
		return "login";
	}

	@RequestMapping("/showSignUp")
	public String showSignUp() {
		return "signup";
	}

	@RequestMapping(value = "/signUp", method = RequestMethod.POST)
	public String register(@RequestParam("username") String username, @RequestParam("password") String password,
			@RequestParam("email") String email, @RequestParam("role") String role, Model model) {
		// String username = request.getParameter("username");
		// String password = request.getParameter("password");
		// String email=request.getParameter("email");
		UserDto userDto = new UserDto();
		userDto.setUsername(username);
		userDto.setPassword(password);
		userDto.setEmail(email);
		userDto.setRole(role);
		User user = userService.register(userDto);
		if (user != null)
			model.addAttribute("msg", "User Registered Successfully");
		else
			model.addAttribute("msg", "Not Registered");
		return "signup";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam("username") String username, Model model,
			@RequestParam("password") String password, HttpSession session) {
		String viewName = null;
		LoginDto loginDto = new LoginDto();
		loginDto.setUsername(username);
		loginDto.setPassword(password);
		User user = userService.login(loginDto);
		if (user != null) {
			session.setAttribute("user", user);
			if (user.getRole().equals("Admin"))
				viewName = "adminDashboard";
			else {
				List<Product> products = productService.getAll();
				model.addAttribute("products", products);
				viewName = "customerDashboard";
			}

		} else {
			model.addAttribute("msg", "Username/Password is wrong");
			viewName = "login";
		}
		return viewName;
	}

	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		session.setAttribute("user", null);
		session.invalidate();
		return "redirect:/";
	}

	// Add this method to show the change password form
	@RequestMapping("/changePassword")
	public String showChangePasswordForm() {
		return "changePassword";
	}

	// Add this method to handle the password change request
	@RequestMapping(value = "/changePassword", method = RequestMethod.POST)
	public String changePassword(@RequestParam("oldPassword") String oldPassword,
			@RequestParam("newPassword") String newPassword, HttpSession session, Model model) {
		// Get the user from the session
		User user = (User) session.getAttribute("user");

		// Check if the old password matches the user's current password
		if (user.getPassword().equals(oldPassword)) {
			// If the old password matches, update the user's password to the new password
			user.setPassword(newPassword);
			userService.updateUser(user); // Update the user's password in the repository
			model.addAttribute("msg", "Password changed successfully");
		} else {
			// If the old password does not match, show an error message
			model.addAttribute("msg", "Incorrect old password");
		}

		// Redirect back to the adminDashboard page
		return "redirect:/adminDashboard";
	}

	@RequestMapping("/showUsers")
	public String showUsers(Model model) {
		List<User> users = userService.getAllUsers();
		model.addAttribute("users", users);
		return "viewUsers";
	}
	
	@RequestMapping(value = "/purchaseReport", method = RequestMethod.GET)
	public String showPurchaseReportForm(Model model) {
	    List<Category> categories = categoryService.getAllCategories();
	    model.addAttribute("categories", categories);
	    return "purchaseReport";
	}


	@RequestMapping(value = "/purchaseReport", method = RequestMethod.POST)
	public String getFilteredPurchaseReport(
	        @RequestParam("startDate") @DateTimeFormat(pattern = "yyyy-MM-dd") Date startDate,
	        @RequestParam("endDate") @DateTimeFormat(pattern = "yyyy-MM-dd") Date endDate,
	        @RequestParam("categoryId") Long categoryId, Model model) {
	    Category category = categoryService.findById(categoryId);
	    List<Purchase> purchases = userService.getPurchaseReportByDateAndCategory(startDate, endDate, category);
	    model.addAttribute("purchases", purchases);
	    return "purchaseReport";
	}

}