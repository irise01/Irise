package com.irise.service;

import java.util.HashMap;

import com.irise.model.StudentModel;

public interface StudentService {
	
	public HashMap<String, Object> saveStudent(StudentModel studentModel);
	
	public HashMap<String, Object> signinstudent(String email, String password);
}
