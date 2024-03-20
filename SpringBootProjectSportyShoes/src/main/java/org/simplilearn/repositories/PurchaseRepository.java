package org.simplilearn.repositories;

import java.util.Date;
import java.util.List;

import org.simplilearn.entities.Category;
import org.simplilearn.entities.Purchase;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PurchaseRepository extends JpaRepository<Purchase, Long> {
	List<Purchase> findByPurchaseDateBetween(Date startDate, Date endDate);

    List<Purchase> findByCategory(Category category);

    List<Purchase> findByPurchaseDateBetweenAndCategory(Date startDate, Date endDate, Category category);
}
