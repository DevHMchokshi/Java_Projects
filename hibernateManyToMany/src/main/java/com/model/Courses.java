package com.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
@Entity
@Table(name="Courses_data")

public class Courses {
@Id
@GeneratedValue
		
private int CourseId;
@Column
private String CourseName;
@ManyToMany(mappedBy="Courses")
private List<Students> students;
public int getCourseId() {
	return CourseId;
}
public void setCourseId(int courseId) {
	CourseId = courseId;
}
public String getCourseName() {
	return CourseName;
}
public void setCourseName(String courseName) {
	CourseName = courseName;
}
public List<Students> getStudents() {
	return students;
}
public void setStudentList(List<Students> students) {
	this.students = students;
}

}
