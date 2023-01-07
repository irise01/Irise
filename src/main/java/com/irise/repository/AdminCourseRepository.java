package com.irise.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.irise.model.AdminCoursesModel;

public interface AdminCourseRepository extends JpaRepository<AdminCoursesModel, Integer> {

}
