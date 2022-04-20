package com.web.student.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.web.student.Model.City;
import com.web.student.Model.State;
import com.web.student.Model.Student;

@Repository
public interface StudentDao {

	public void saveStudent(Student student);

	public List<Student> viewStudent();

	public void deleteStudent(int studentId);

	public Student getStudent(int studentId);

	public List<State> viewState();

	public List<City> getCityByStateId(int stateId);
}
