package com.web.student.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "student")
public class Student {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int studentId;
	private String studentName;
	private String studentEmail;
	@Column(length = 15)
	private String studentphoneNo;
	private String studentGender;
	private String studentSubject;
	private String studentCourse;
	private String studentAddress;
	private int    stateId;
	private int    cityId;
	
	//@Transient
	private String stateName;	
	private String cityName;

	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getStudentEmail() {
		return studentEmail;
	}

	public void setStudentEmail(String studentEmail) {
		this.studentEmail = studentEmail;
	}

	public String getStudentphoneNo() {
		return studentphoneNo;
	}

	public void setStudentphoneNo(String studentphoneNo) {
		this.studentphoneNo = studentphoneNo;
	}

	public String getStudentGender() {
		return studentGender;
	}

	public void setStudentGender(String studentGender) {
		this.studentGender = studentGender;
	}

	public String getStudentCourse() {
		return studentCourse;
	}

	public void setStudentCourse(String studentCourse) {
		this.studentCourse = studentCourse;
	}

	public String getStudentSubject() {
		return studentSubject;
	}

	public void setStudentSubject(String studentSubject) {
		this.studentSubject = studentSubject;
	}

	public String getStudentAddress() {
		return studentAddress;
	}

	public void setStudentAddress(String studentAddress) {
		this.studentAddress = studentAddress;
	}

	public int getStateId() {
		return stateId;
	}

	public void setStateId(int stateId) {
		this.stateId = stateId;
	}

	public int getCityId() {
		return cityId;
	}

	public void setCityId(int cityId) {
		this.cityId = cityId;
	}
	

	public String getStateName() {
		return stateName;
	}

	public void setStateName(String stateName) {
		this.stateName = stateName;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	@Override
	public String toString() {
		return "Student [studentId=" + studentId + ", studentName=" + studentName + ", studentEmail=" + studentEmail
				+ ", studentphoneNo=" + studentphoneNo + ", studentGender=" + studentGender + ", studentSubject="
				+ studentSubject + ", studentCourse=" + studentCourse + ", studentAddress=" + studentAddress
				+ ", stateId=" + stateId + ", cityId=" + cityId + ", stateName=" + stateName + ", cityName=" + cityName
				+ "]";
	}

	
}
