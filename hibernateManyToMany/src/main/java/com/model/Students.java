package com.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
@Entity
@Table(name="Students_data")


public class Students {

@Id
@GeneratedValue
	
	private int StudentId;
	@Column
	private String StudentName;
	@Column
	private String StudentSem;
	@ManyToMany(cascade=CascadeType.ALL)
	@JoinTable(name="Student_Course",
	joinColumns=@JoinColumn(name="studentId"),
	inverseJoinColumns=@JoinColumn(name="courseId"))
	private List<Courses> Courses;
	public int getStudentId() {
		return StudentId;
	}
	public void setStudentId(int studentId) {
		StudentId = studentId;
	}
	public String getStudentName() {
		return StudentName;
	}
	public void setStudentName(String studentName) {
		StudentName = studentName;
	}
	public String getStudentSem() {
		return StudentSem;
	}
	public void setStudentSem(String studentSem) {
		StudentSem = studentSem;
	}
	public List<Courses> getCourseList() {
		return Courses;
	}
	public void setCourseList(List<Courses> Courses) {
		this.Courses = Courses;
	}
	

}
