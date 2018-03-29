package com.example.demo.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.model.HomePage;
import com.example.demo.model.TinTuc;
import com.example.demo.service.HomePageServiceImpl;
import com.example.demo.service.TinTucService;



@RestController
public class TinTucController {

	@Autowired
	private TinTucService tintucService;

	@Autowired
	private HomePageServiceImpl homepageService;
	
	@PostMapping("/pagertintuc")
	public ResponseEntity<?> getTinTucAjax(){
		List<TinTuc> tintucs = tintucService.findAll();
		
		return ResponseEntity.ok(tintucs);
	}
	
	@RequestMapping(value="/LoadHomePage",method=RequestMethod.POST)
	public ResponseEntity<?> LoadHomePage(){
		List<HomePage> lstHomeNews=homepageService.findAllHomeNewses();
		
		return ResponseEntity.ok(lstHomeNews);
	}
	
	@RequestMapping(value="/SaveHomePage1",method=RequestMethod.POST)
	public ResponseEntity<?> SaveHomePage1(HttpServletRequest request){
		int id=0;
		String content=request.getParameter("content");
	
		try {
			id=Integer.parseInt(request.getParameter("id"));
			
		}catch (NumberFormatException e) {
		}
		try {
			HomePage home=homepageService.findHomeNews(id);
			home.setDate_created(new Date());
			home.setContent(content);
			homepageService.savePage(home);
			return ResponseEntity.ok(home);
		}catch (Exception e) {
			return null;
		}
	}
	
	@RequestMapping(value="/SaveHomePage2",method=RequestMethod.POST)
	public ResponseEntity<?> SaveHomePage2(HttpServletRequest request){
		int id=0;
		String content=request.getParameter("content");
		try {
			id=Integer.parseInt(request.getParameter("id"));
		}catch (NumberFormatException e) {
		}
		try {
			HomePage home=homepageService.findHomeNews(id);
			home.setDate_created(new Date());
			home.setContent(content);
			homepageService.savePage(home);
			return ResponseEntity.ok(home);
		}catch (Exception e) {
			return null;
		}
	}
	
}
