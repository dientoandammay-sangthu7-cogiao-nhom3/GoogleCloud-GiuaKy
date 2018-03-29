package com.example.demo.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.TinTuc;
import com.example.demo.model.User;
import com.example.demo.service.TinTucService;
import com.example.demo.service.UserService;


@Controller
public class LoginController {
	@Autowired
	private UserService userService;
	@Autowired
	private TinTucService tintucService;
	
	@GetMapping("/")
	public String Login(HttpServletRequest request){
		request.setAttribute("tintucganday", tintucService.findTinTucGanDay());
		return "trangchu";
	}
	@GetMapping("/themtintuc")
	public String Themtintuc(){
		//request.setAttribute("tintucganday", tintucService.findTinTucGanDay());
		return "themtintuc";
	}
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "login-page";
	}
	@RequestMapping(value="/dangnhap",method=RequestMethod.GET)
	public String login(ModelMap modelMap) {
		modelMap.put("user", new User());
		return "login-page";
	}
	@RequestMapping(value="/dangnhap", method=RequestMethod.POST)
	public String login(@ModelAttribute ("user") User user,HttpSession session, ModelMap modelMap,HttpServletRequest request) {
//		modelMap.put("account", new Account());
		
		user=userService.findByUsernameAndPassword(user.getUsername(), user.getPassword());
		
		if(user==null) {			
			modelMap.put("error","(*)Tên đăng nhập hoặc mật khẩu không đúng.\nVui lòng kiểm tra lại !!!");
			return "login-page";
		}
		request.setAttribute("tintucs", tintucService.findAll());
		request.setAttribute("tintucganday", tintucService.findTinTucGanDay());
		session.setAttribute("SESSION_NAME", user.getUsername());
		return "trangchu";
	}
	@GetMapping("/trangquanly")
	public String truycap(HttpServletRequest request) {
		request.setAttribute("tintucs", tintucService.findAll());
		return "tintuc";
	}
	@GetMapping("/new-tintuc")
	public String newTasks(HttpServletRequest request) {		
		request.setAttribute("mode", "MODE_NEW");
		return "themtintuc";
	}
	@GetMapping("/update-tintuc")
	public String updateTasks(@RequestParam int id,HttpServletRequest request) {		
		request.setAttribute("mode", "MODE_UPDATE");
		request.setAttribute("tin", tintucService.findTask(id));
		return "suatintucnew";
	}
	@PostMapping("/capnhat-tintuc")
	public String saveTasks(@ModelAttribute TinTuc tin,BindingResult bindingResult, HttpServletRequest request) {		
		tin.setThoigian(new Date());
		tintucService.save(tin);
		request.setAttribute("tintucs", tintucService.findAll());
		return "tintuc";
	}

	@GetMapping("/delete-tintuc")
	public String deleteTasks(@RequestParam int id,HttpServletRequest request) {		
		tintucService.delete(id);
		request.setAttribute("tintucs", tintucService.findAll());
		return "tintuc";
	}
	
	@GetMapping("/tintucdetail")
	public String ChiTietTinTuc(@RequestParam int id,HttpServletRequest request) {	
		request.setAttribute("tintucganday", tintucService.findTinTucGanDay());
		request.setAttribute("tin", tintucService.findTask(id));
		return "detail";
	}
}
