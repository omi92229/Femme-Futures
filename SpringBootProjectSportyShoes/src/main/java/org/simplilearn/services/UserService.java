package org.simplilearn.services;

import java.util.Date;
import java.util.List;

import org.simplilearn.entities.Category;
import org.simplilearn.entities.Purchase;
import org.simplilearn.entities.User;
import org.simplilearn.models.LoginDto;
import org.simplilearn.models.UserDto;

public interface UserService {
User register (UserDto userDto);
void updateUser(User user);
User login(LoginDto loginDto);
List<User> getAllUsers();
List<Purchase> getPurchaseReportByDateAndCategory(Date startDate, Date endDate, Category category);
}
