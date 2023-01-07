package com.irise.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.irise.model.StudentModel;

public interface StudentRepository extends JpaRepository<StudentModel, Integer> {

	@Query(value = "select * from irise_soft.student_model where student_email=?1",nativeQuery = true)
	public Optional<StudentModel> findbyemail(String email);
	
	@Query(value = "select * from irise_soft.student_model where student_email=?1 and student_password=?2", nativeQuery = true)
	public Optional<StudentModel> signIn(String email, String password);
	
}
