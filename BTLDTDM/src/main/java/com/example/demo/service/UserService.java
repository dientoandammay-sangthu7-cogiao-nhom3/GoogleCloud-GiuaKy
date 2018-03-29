package com.example.demo.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import com.example.demo.dao.UserRepository;
import com.example.demo.model.*;


@Service("userService")
@Transactional
public class UserService {
	private final UserRepository UserRepository;

	public UserService(UserRepository UserRepository) {		
		this.UserRepository = UserRepository;
	}
	
	public List<User> findAll(){
		List<User> users = new ArrayList<>();
		for(User user : UserRepository.findAll()){
			users.add(user);
		}
		return users;
	}
	public User findUser(int id)
	{
		return UserRepository.findById(id).get();
	}
	public void save(User user) {
		UserRepository.save(user);
	}
	
	public void delete(int id) {
		UserRepository.deleteById(id);
	}
	
	public User findByUsernameAndPassword(String username, String password) {
		return UserRepository.findByUsernameAndPassword(username, password);
	}
}
