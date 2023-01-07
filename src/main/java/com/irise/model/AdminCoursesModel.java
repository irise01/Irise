package com.irise.model;

import javax.management.loading.PrivateClassLoader;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "Admin_Table")
@SequenceGenerator(name = "std_seq",initialValue = 1122)
public class AdminCoursesModel {

	@Id
	@Column(name="course_id")
	@GeneratedValue(strategy = GenerationType.SEQUENCE , generator = "std_seq")
	private int courseId;
	
	@Column(name = "course_name")
	private String courseName;
	
	@Column(name = "course_fees")
	private String courseFees;
	
	@Column(name = "duration")
	private String duration;
	
	@Column(name = "start_date")
	private String StartDate;
	
	@Column(name = "demo_date")
	private String demoDate;
	
	@Column(name = "gmeet_link")
	private String gmeetLink;

	public AdminCoursesModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AdminCoursesModel(int courseId, String courseName, String courseFees, String duration, String startDate,
			String demoDate, String gmeetLink) {
		super();
		this.courseId = courseId;
		this.courseName = courseName;
		this.courseFees = courseFees;
		this.duration = duration;
		StartDate = startDate;
		this.demoDate = demoDate;
		this.gmeetLink = gmeetLink;
	}

	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getCourseFees() {
		return courseFees;
	}

	public void setCourseFees(String courseFees) {
		this.courseFees = courseFees;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public String getStartDate() {
		return StartDate;
	}

	public void setStartDate(String startDate) {
		StartDate = startDate;
	}

	public String getDemoDate() {
		return demoDate;
	}

	public void setDemoDate(String demoDate) {
		this.demoDate = demoDate;
	}

	public String getGmeetLink() {
		return gmeetLink;
	}

	public void setGmeetLink(String gmeetLink) {
		this.gmeetLink = gmeetLink;
	}

	@Override
	public String toString() {
		return "AdminCoursesModel [courseId=" + courseId + ", courseName=" + courseName + ", courseFees=" + courseFees
				+ ", duration=" + duration + ", StartDate=" + StartDate + ", demoDate=" + demoDate + ", gmeetLink="
				+ gmeetLink + "]";
	}
	
	
	
	
}
