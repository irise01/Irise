package com.irise.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller

public class MainController {
	
	@RequestMapping("/")
	public String home() {
		return "index";	
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
 	
	@RequestMapping("/signup")
	public String signup() {
		return "signup";
	}
	
	@RequestMapping("/dashboard")
	public String dashboard() {
		return "dashboard";
	}
	
	@RequestMapping("/services")
	public String services() {
		return "services";
	}
	
	@RequestMapping("/online-training-schedule")
	public String trainigschedule() {
		return "trainingschedule";
	}
	
	@RequestMapping("/about-us")
	public String aboutus() {
		return "aboutus";
	}
	
	@RequestMapping("/contact-us")
	public String contactus() {
		return "contactus";
	}
	
	@RequestMapping("/admin-dashboard")
	public String c() {
		return "admindashboard";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request,HttpSession session) {
		session=request.getSession(false);
		if (session!=null)
			session.invalidate();
		return "login";
		
	}
	
	@RequestMapping("/course-application/{courseId}")
		public String CourseApplication(@PathVariable int courseId) {
		return "courseapplication";
		
	}
}
