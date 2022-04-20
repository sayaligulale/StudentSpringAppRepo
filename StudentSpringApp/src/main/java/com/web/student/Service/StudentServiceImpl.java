package com.web.student.Service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.student.Dao.StudentDao;
import com.web.student.Dao.StudentDaoImpl;
import com.web.student.Model.City;
import com.web.student.Model.State;
import com.web.student.Model.Student;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDao studentDao;
	
	static final Logger log = Logger.getLogger(StudentServiceImpl.class);
	
	@Override
	public void saveStudent(Student student) {
		
		/*
		 * String phone = "+91"+student.getStudentphoneNo();
		 * student.setStudentphoneNo(phone);
		 */
		log.info("Student data Added Service");
		 studentDao.saveStudent(student);
		
	}

	@Override
	public List<Student> viewStudent() {
		// TODO Auto-generated method stub
		log.info("Student data Fetched Service");
		return studentDao.viewStudent();
	}

	@Override
	public void deleteStudent(int studentId) {
		// TODO Auto-generated method stub
		log.info("Student data Deleted Service");
		studentDao.deleteStudent(studentId);
	}

	@Override
	public Student getStudent(int studentId) {
		// TODO Auto-generated method stub
		log.info("Student data Updated Service");
		return this.studentDao.getStudent(studentId);
	}

	@Override
	public List<State> viewState() {
		// TODO Auto-generated method stub
		log.info("State data Added Service");
		return studentDao.viewState();
	}

	@Override
	public List<City> getCityByStateId(int stateId) {
		// TODO Auto-generated method stub
		log.info("City data Added Service");
		return studentDao.getCityByStateId(stateId);
	}

}
