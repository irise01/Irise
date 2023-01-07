package com.irise.service;

import java.util.HashMap;
import java.util.List;

import com.irise.model.AdminCoursesModel;

public interface AdminCourseService {
  
	public List<AdminCoursesModel> getAllCourses(AdminCoursesModel adminCoursesModel);
	
	public HashMap<String, Object> saveNewCourse(AdminCoursesModel adminCoursesModel);
}
