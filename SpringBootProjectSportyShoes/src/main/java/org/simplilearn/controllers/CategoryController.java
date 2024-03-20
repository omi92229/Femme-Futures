package org.simplilearn.controllers;

import org.simplilearn.entities.Category;
import org.simplilearn.models.CategoryDto;
import org.simplilearn.services.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class CategoryController {
    private CategoryService categoryService;

    @Autowired
    public CategoryController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    // Show category creation form
    @RequestMapping("/showAddCategory")
    public String showAddCategoryForm() {
        return "addCategory";
    }

    @PostMapping("/addCategory")
    public String addCategory(@RequestParam("name") String name, Model model) {
        CategoryDto categoryDto = new CategoryDto();
        categoryDto.setName(name);

        Category category = categoryService.createCategory(categoryDto);
        if (category != null) {
            model.addAttribute("msg", "Category created successfully");
        } else {
            model.addAttribute("msg", "Failed to create category");
        }

        return "addCategory"; // Redirect back to the category creation form
    }

    // Show all categories
    @RequestMapping("/showCategories")
    public String showCategories(Model model) {
        List<Category> categories = categoryService.getAllCategories();
        model.addAttribute("categories", categories);
        return "categories";
    }
}
