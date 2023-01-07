package com.irise.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.irise.model.AdminCoursesModel;
import com.irise.repository.AdminCourseRepository;
@Service
public class AdminCourseServiceImpl implements AdminCourseService {
	
	@Autowired
	private AdminCourseRepository adminCourseRepository;

	@Override
	public List<AdminCoursesModel> getAllCourses(AdminCoursesModel adminCoursesModel) {
		List<AdminCoursesModel> adminCoursesModels=new ArrayList<>();
		try {
			adminCoursesModels=adminCourseRepository.findAll();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return adminCoursesModels;
	}

	@Override
	public HashMap<String, Object> saveNewCourse(AdminCoursesModel adminCoursesModel) {
		HashMap<String, Object> response=new HashMap<>();
		try {
			Optional<AdminCoursesModel> existcourse=adminCourseRepository.findById(adminCoursesModel.getCourseId());
			if (existcourse.isPresent()) {
					response.put("status", false);
					response.put("Message", "Course Already Registered with this Email");
					
				}else {
					response.put("status", true);
					response.put("data", adminCourseRepository.save(adminCoursesModel));
					response.put("Message", "Course Registered Successfully..!");
					
				}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return response;
	}

}
