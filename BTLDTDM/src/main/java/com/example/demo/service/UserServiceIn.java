package com.example.demo.service;

import com.example.demo.model.User;

public interface UserServiceIn {
	public User findByUsernameAndPassword(String username, String password);
}
