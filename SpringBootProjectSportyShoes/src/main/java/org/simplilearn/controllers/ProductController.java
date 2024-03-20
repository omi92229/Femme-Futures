package org.simplilearn.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.simplilearn.entities.Product;
import org.simplilearn.entities.User;
import org.simplilearn.models.ProductDto;
import org.simplilearn.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProductController {
	private ProductService productService;

	@Autowired
	public ProductController(ProductService productService) {
		super();
		this.productService = productService;
	}

	@RequestMapping("/showAdd")
	public String showAddProduct() {
		return "addProduct";
	}

	@RequestMapping("/add")
	public String addProduct(@RequestParam("name") String name, 
			@RequestParam("price") String price,
			@RequestParam("imageUrl") String imageUrl, HttpSession httpSession) {
		int price1 = Integer.parseInt(price);
		ProductDto productDto = new ProductDto(name, price1, imageUrl);
		User user = (User) httpSession.getAttribute("user");
		
		productService.insertProduct(productDto, user);
		return "adminDashboard";
	}

	@GetMapping("/showProducts")
	public String showProducts(Model model) {
		List<Product> products = productService.getAll();
		model.addAttribute("products", products);
		return "adminDashboard";
	}
	
	@RequestMapping("/viewProducts")
	public String viewProducts(Model model) {
	    List<Product> products = productService.getAllProducts();
	    model.addAttribute("products", products);
	    return "viewProducts";
	}

	
	@RequestMapping("/delete/{pid}")
	public String deleteProduct(@PathVariable("pid") int pid) {
		productService.deleteProduct(pid);
		return "redirect:/showProducts";
	}
}
