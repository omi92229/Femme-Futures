package org.simplilearn.repositories;

import java.util.List;

import org.simplilearn.entities.Order;
import org.simplilearn.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface OrderRepository extends JpaRepository<Order, Long> {
    @Query("SELECT o FROM Order o WHERE o.user = ?1")
    List<Order> findByUser(User user);
}
