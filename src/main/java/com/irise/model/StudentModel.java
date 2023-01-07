package com.irise.model;



import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "Student_model")
@SequenceGenerator(name = "std_seq",initialValue = 110)
public class StudentModel {

	@Id
	@Column(name = "student_id")
	@GeneratedValue(strategy = GenerationType.SEQUENCE , generator = "std_seq")
	private int studId;
	
	@Column(name = "student_firstname")
	private String studFirstName;
	
	@Column(name = "student_lastname")
	private String studLastName;
	
	@Column(name = "student_email")
	private String studEmail;
	
	@Column(name = "student_password")
	private String studPassword;
	
	@Column(name = "student_mobileno")
	private long studMobileNo;
	
	@Column(name = "role")
	private String role;
	
	@Column(name = "is_actived")
	private boolean isActived=true;
	
	@Column(name = "is_deleted")
	private boolean isDeleted;
	
	@Column(name = "date")
	private Date date;

	public StudentModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public StudentModel(int studId, String studFirstName, String studLastName, String studEmail, String studPassword,
			long studMobileNo, String role, boolean isActived, boolean isDeleted, Date date) {
		super();
		this.studId = studId;
		this.studFirstName = studFirstName;
		this.studLastName = studLastName;
		this.studEmail = studEmail;
		this.studPassword = studPassword;
		this.studMobileNo = studMobileNo;
		this.role = role;
		this.isActived = isActived;
		this.isDeleted = isDeleted;
		this.date = date;
	}

	public int getStudId() {
		return studId;
	}

	public void setStudId(int studId) {
		this.studId = studId;
	}

	public String getStudFirstName() {
		return studFirstName;
	}

	public void setStudFirstName(String studFirstName) {
		this.studFirstName = studFirstName;
	}

	public String getStudLastName() {
		return studLastName;
	}

	public void setStudLastName(String studLastName) {
		this.studLastName = studLastName;
	}

	public String getStudEmail() {
		return studEmail;
	}

	public void setStudEmail(String studEmail) {
		this.studEmail = studEmail;
	}

	public String getStudPassword() {
		return studPassword;
	}

	public void setStudPassword(String studPassword) {
		this.studPassword = studPassword;
	}

	public long getStudMobileNo() {
		return studMobileNo;
	}

	public void setStudMobileNo(long studMobileNo) {
		this.studMobileNo = studMobileNo;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public boolean isActived() {
		return isActived;
	}

	public void setActived(boolean isActived) {
		this.isActived = isActived;
	}

	public boolean isDeleted() {
		return isDeleted;
	}

	public void setDeleted(boolean isDeleted) {
		this.isDeleted = isDeleted;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "StudentModel [studId=" + studId + ", studFirstName=" + studFirstName + ", studLastName=" + studLastName
				+ ", studEmail=" + studEmail + ", studPassword=" + studPassword + ", studMobileNo=" + studMobileNo
				+ ", role=" + role + ", isActived=" + isActived + ", isDeleted=" + isDeleted + ", date=" + date + "]";
	}

	
	
	
	
	
}
