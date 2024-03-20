package org.simplilearn.services;

import java.util.List;

import org.simplilearn.entities.Product;
import org.simplilearn.entities.User;
import org.simplilearn.models.ProductDto;

public interface ProductService {
void insertProduct(ProductDto productDto, User user);
void deleteProduct(int pid);
List<Product> getAll();
Product getProduct(int pid);
List<Product> getAllProducts();
}
