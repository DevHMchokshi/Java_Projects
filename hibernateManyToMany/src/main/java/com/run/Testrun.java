package com.run;

import java.util.ArrayList;

import com.dao.Daoimpl;
import com.model.Courses;
import com.model.Students;

public class Testrun {
public static void main(String[] args) {
	
Students stu = new Students();
stu.setStudentName("Aarav");
stu.setStudentSem("1");

Students stu1 = new Students();
stu1.setStudentName("Vivaan");
stu1.setStudentSem("2");

ArrayList<Students> stulist= new ArrayList<Students>();
stulist.add(stu);
stulist.add(stu1);

Courses course = new Courses();
course.setCourseName("C");

Courses course1 = new Courses();
course1.setCourseName("Java");

Courses course2 = new Courses();
course2.setCourseName("Python");

Courses course3 = new Courses();
course3.setCourseName("JavaScript");


ArrayList<Courses> courselist = new ArrayList<Courses>();
courselist.add(course);
courselist.add(course1);
courselist.add(course2);
courselist.add(course3);


course.setStudentList(stulist);
course1.setStudentList(stulist);
course2.setStudentList(stulist);
course3.setStudentList(stulist);

stu.setCourseList(courselist);
stu1.setCourseList(courselist);

Daoimpl dao = new Daoimpl();
dao.saveData(stu);
dao.saveData(stu1);




}

}
