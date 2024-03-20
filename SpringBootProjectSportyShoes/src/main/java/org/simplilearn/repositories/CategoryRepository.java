package org.simplilearn.repositories;

import org.simplilearn.entities.Category;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryRepository extends JpaRepository<Category, Long> {
    // Add custom queries for Category if needed
}
