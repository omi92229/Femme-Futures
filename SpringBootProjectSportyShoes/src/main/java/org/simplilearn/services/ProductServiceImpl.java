package org.simplilearn.services;

import java.util.List;

import org.simplilearn.entities.Product;
import org.simplilearn.entities.User;
import org.simplilearn.models.ProductDto;
import org.simplilearn.repositories.ProductRepository;
import org.simplilearn.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService {
	private ProductRepository productRepository;
	private UserRepository userRepository;

	@Autowired
	public ProductServiceImpl(ProductRepository productRepository, UserRepository userRepository) {
		super();
		this.productRepository = productRepository;
		this.userRepository = userRepository;
	}

	@Override
	public void insertProduct(ProductDto productDto, User user) {
		User user1 = userRepository.findByUsernameAndPassword(user.getUsername(), user.getPassword());
		Product product = new Product();
		product.setName(productDto.getName());
		product.setPrice(productDto.getPrice());
		product.setImageUrl(productDto.getImageUrl());
		user1.addProduct(product);
		product.setUser(user1);
		productRepository.save(product);

	}

	@Override
	public void deleteProduct(int pid) {
		productRepository.deleteById(pid);

	}

	@Override
	public List<Product> getAll() {

		return productRepository.findAll();
	}

	@Override
	public Product getProduct(int pid) {

		return productRepository.findById(pid).orElse(null);
	}

	@Override
	public List<Product> getAllProducts() {
		
		return productRepository.findAll();
		
	}

}
