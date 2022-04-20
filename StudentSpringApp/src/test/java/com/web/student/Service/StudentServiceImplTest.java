package com.web.student.Service;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotEquals;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;
import static org.junit.jupiter.api.Assertions.assertFalse;

import javax.transaction.Transactional;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.web.student.Dao.StudentDao;
import com.web.student.Model.Student;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = "spring-servlet.xml")
public class StudentServiceImplTest {

	@Autowired
	StudentDao studentDao;
	
	//@Test
	public void saveStudentTest() {
		
		Student s = new Student();
		s.setStudentId(0);
		s.setStudentName("abc123");
		s.setStudentEmail("abc@gmail.com");
	    s.setStudentphoneNo("123123123");
	    s.setStudentGender("Male");
		s.setStudentSubject("marathi,hindi");
		s.setStudentCourse("bcs");
		s.setStudentAddress("Nashik");
		s.setStateId(5);
		s.setCityId(5);
		
		studentDao.saveStudent(s);
		assertTrue("Student added",s.getStateId() > 0);
		//assertFalse(s.getStateId() > 0,"Student added");
	}
	
	//@Test
    public void listStudentsTest(){
    	  //System.out.println(categoryService.getCategoryList());
    	assertEquals(4, studentDao.viewStudent().size());	
    	//assertEquals(5, studentDao.viewStudent().get(0).getCityId());
    }
    
  
	
    //@Test
	public void deleteStudentTest() {
    	studentDao.deleteStudent(5);
    	Student student = studentDao.getStudent(5);
    	assertNull("not", student);
    	
	}
	
	//@Test
	public void getStudentTest() {
	    Student student = studentDao.getStudent(7);
	    student.setStudentName("sagar");
	    studentDao.saveStudent(student);
	    assertNotEquals("mittali", studentDao.getStudent(7).getStudentName());
	}
	
}
