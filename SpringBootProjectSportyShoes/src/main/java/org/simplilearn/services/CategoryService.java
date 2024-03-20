package org.simplilearn.services;

import org.simplilearn.entities.Category;
import org.simplilearn.models.CategoryDto;

import java.util.List;

public interface CategoryService {
    Category createCategory(CategoryDto categoryDto);

    List<Category> getAllCategories();
    Category findById(Long categoryId);
}
