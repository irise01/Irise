package com.irise.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Training_Schedule")
public class TrainingScheduleModel {

	@Id
	@Column(name = "sr_no")
	private int srNo;
	
	@Column(name = "course_name")
	private String courseName;
	
	@Column(name = "trainer")
	private String trainer;
	
	@Column(name = "date")
	private String date;
	
	@Column(name = "time")
	private String time;
	
	@Column(name = "gmeet_link")
	private String gmeetLink;

	public TrainingScheduleModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TrainingScheduleModel(int srNo, String courseName, String trainer, String date, String time,
			String gmeetLink) {
		super();
		this.srNo = srNo;
		this.courseName = courseName;
		this.trainer = trainer;
		this.date = date;
		this.time = time;
		this.gmeetLink = gmeetLink;
	}

	public int getSrNo() {
		return srNo;
	}

	public void setSrNo(int srNo) {
		this.srNo = srNo;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getTrainer() {
		return trainer;
	}

	public void setTrainer(String trainer) {
		this.trainer = trainer;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getGmeetLink() {
		return gmeetLink;
	}

	public void setGmeetLink(String gmeetLink) {
		this.gmeetLink = gmeetLink;
	}

	@Override
	public String toString() {
		return "TrainingScheduleModel [srNo=" + srNo + ", courseName=" + courseName + ", trainer=" + trainer + ", date="
				+ date + ", time=" + time + ", gmeetLink=" + gmeetLink + "]";
	}
	
	
	
}
