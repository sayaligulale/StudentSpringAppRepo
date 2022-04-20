package com.web.student.rest;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.web.student.Model.State;
import com.web.student.Model.Status;
import com.web.student.Model.Student;
import com.web.student.Service.StudentService;

@RestController
public class StudentRestController {

	StudentRestController(){
		
	}
	
	static final Logger log = Logger.getLogger(StudentRestController.class);
	  
	
	@Autowired
	private StudentService studentService;
	
	/*
	 * @RequestMapping(path = "/viewStudents",method = RequestMethod.GET) public
	 * ResponseEntity<List<Student>> viewStudents() {
	 * 
	 * List<Student> studentlist = studentService.viewStudent();
	 * 
	 * if(studentlist.size() != 0) return new ResponseEntity<>(studentlist,
	 * HttpStatus.ACCEPTED); else return new ResponseEntity<>(studentlist,
	 * HttpStatus.NO_CONTENT); }
	 */
	
	

	@RequestMapping(path = "/viewStudents",method = RequestMethod.GET)
	public @ResponseBody Status  viewStudents() {
		
		List<Student> studentlist = studentService.viewStudent();
	
		if(studentlist.size() != 0) {
			log.info("Student List Fetched.");
		   return new Status(1, "Student List Fetched.", studentlist);
		   
		}
		else {
			 return new Status(0, "Data not found", studentlist);
		}
	}
	
	
	@RequestMapping(path = "/getStudentById/{studentId}",method = RequestMethod.GET)
	public Status updateStudent(@PathVariable("studentId") int studentId) {
		
		Student student = studentService.getStudent(studentId);
		log.info("Student data Fetched for id :"+studentId);
		return new Status(1, "Student data Fetched.", student);
	}
	
	@RequestMapping(path = "/saveStudent",method = RequestMethod.POST)
	public Status handleStudent(@RequestBody Student student) {
		studentService.saveStudent(student);
		//log.info("Student data Save");
		return new Status(1, "Save success.");
	}
	
	@RequestMapping(path = "/deleteStudent/{studentId}",method = RequestMethod.GET)
	public Status deleteStudent(@PathVariable("studentId") int studentId) {
		studentService.deleteStudent(studentId);
		log.info("Student Data Deleted.. for id :"+studentId);
		return new Status(1,"Student Data Deleted..");	
	}
}
