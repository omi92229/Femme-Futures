package org.simplilearn.services;

import java.util.List;

import org.simplilearn.entities.Order;
import org.simplilearn.entities.User;

public interface OrderService {
    void saveOrder(Order order);
    List<Order> getOrdersByUser(User user);
}
