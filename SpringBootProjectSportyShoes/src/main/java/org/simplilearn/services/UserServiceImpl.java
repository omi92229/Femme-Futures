package org.simplilearn.services;

import java.util.Date;
import java.util.List;

import org.simplilearn.entities.Category;
import org.simplilearn.entities.Purchase;
import org.simplilearn.entities.User;
import org.simplilearn.models.LoginDto;
import org.simplilearn.models.UserDto;
import org.simplilearn.repositories.PurchaseRepository;
import org.simplilearn.repositories.UserRepository;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{
private UserRepository userRepository;
private PurchaseRepository purchaseRepository;


	public UserServiceImpl(UserRepository userRepository, PurchaseRepository purchaseRepository) {
	super();
	this.userRepository = userRepository;
	this.purchaseRepository = purchaseRepository;
}


	@Override
	public User register(UserDto userDto) {
		User user = new User();
		user.setUsername(userDto.getUsername());
		user.setPassword(userDto.getPassword());
		user.setEmail(userDto.getEmail());
		user.setRole(userDto.getRole());
		return userRepository.save(user);
	}


	@Override
	public User login(LoginDto loginDto) {
		String username=loginDto.getUsername();
		String password=loginDto.getPassword();
		User user=userRepository.findByUsernameAndPassword(username, password);
		
		return user;
	}


	@Override
	public void updateUser(User user) {
		 userRepository.save(user);
		
	}


	@Override
	public List<User> getAllUsers() {
		// TODO Auto-generated method stub
		return userRepository.findAll();
	}


	 @Override
	    public List<Purchase> getPurchaseReportByDateAndCategory(Date startDate, Date endDate, Category category) {
	        if (startDate == null || endDate == null || category == null) {
	            throw new IllegalArgumentException("Invalid filter criteria");
	        }

	        return purchaseRepository.findByPurchaseDateBetweenAndCategory(startDate, endDate, category);
	    }
	}
