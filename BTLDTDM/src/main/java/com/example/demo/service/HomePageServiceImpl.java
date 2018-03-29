package com.example.demo.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.example.demo.dao.HomePageRepository;
import com.example.demo.model.HomePage;



@Service("homepageService")
@Transactional
public class HomePageServiceImpl implements HomePageService  {
	@Autowired
	public HomePageRepository homepageRepository;
	
	public void savePage(HomePage homepage) {
		homepageRepository.save(homepage);
	}
	
	public HomePage findHomeNews(int id) {
		return homepageRepository.findById(id).get();
	}
	
	public List<HomePage> findAllHomeNewses() {
		List<HomePage> lstNewse=new ArrayList<HomePage>();
		for(HomePage news:homepageRepository.findAll()) {
			lstNewse.add(news);
		}
		return lstNewse;
	}
}
