package com.irise.service;

import java.util.HashMap;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.irise.model.StudentModel;
import com.irise.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService{

	@Autowired
	private StudentRepository studentRepository;

	@Override
	public HashMap<String, Object> saveStudent(StudentModel studentModel) {
		HashMap<String, Object> response=new HashMap<>();
		try {
			Optional<StudentModel> existstd=studentRepository.findbyemail(studentModel.getStudEmail());
			if (existstd.isPresent()) {
				response.put("status", false);
				response.put("Message", "Student Already Registered with this Email");
				
			}else {
				response.put("status", true);
				response.put("data", studentRepository.save(studentModel));
				response.put("Message", "Student Registered Successfully..!");
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return response;
	}

	@Override
	public HashMap<String, Object> signinstudent(String email, String password) {
		HashMap<String, Object> response=new HashMap<>();
		try {
			Optional<StudentModel> fetchstuddetails=studentRepository.signIn(email, password);
			if (fetchstuddetails.isPresent()) {
				response.put("status", true);
				response.put("Message", "You have login Successfully..!");
				response.put("data", fetchstuddetails.get());
			}else {
				response.put("status", false);
				response.put("Message", "Please check Login credentials..!");
				
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return response;
	}	
}
