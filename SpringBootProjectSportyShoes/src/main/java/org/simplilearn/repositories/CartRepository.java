package org.simplilearn.repositories;

import org.simplilearn.entities.Cart;
import org.simplilearn.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CartRepository extends JpaRepository<Cart, Integer> {
    List<Cart> findByUser(User user);
    Cart findByItemAndUser(String item, User user);
}
