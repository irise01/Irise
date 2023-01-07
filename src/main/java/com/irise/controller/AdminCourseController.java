package com.irise.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.irise.model.AdminCoursesModel;
import com.irise.service.AdminCourseService;

@RestController
@RequestMapping("/admincourse")
public class AdminCourseController {
	@Autowired
	private AdminCourseService adminCourseService;
	
	@GetMapping("/getallcourses")
	public List<AdminCoursesModel> getallCourses(AdminCoursesModel adminCoursesModel){
		List<AdminCoursesModel> getallCourse=null;
		try {
			getallCourse=adminCourseService.getAllCourses(adminCoursesModel);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return getallCourse;
	}
	
	@PostMapping("/savecourse")
	public HashMap<String, Object> savecourse(@RequestBody AdminCoursesModel adminCoursesModel){
		return adminCourseService.saveNewCourse(adminCoursesModel);
	}
}
