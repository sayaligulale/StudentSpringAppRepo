package com.web.student.Dao;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.web.student.Model.City;
import com.web.student.Model.State;
import com.web.student.Model.Student;
import com.web.student.rest.StudentRestController;

@Repository
public class StudentDaoImpl implements StudentDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Autowired
	private SessionFactory factory;
	
	static final Logger log = Logger.getLogger(StudentDaoImpl.class);

	@Transactional
	public void saveStudent(Student student) {
		log.info("Student data Added Dao");
			this.hibernateTemplate.saveOrUpdate(student);
		
	}

	@SuppressWarnings({ "deprecation", "unchecked" })
	public List<Student> viewStudent() {
		List<Student> studentlist = new ArrayList<Student>();
		log.info("Student data Fetched Dao");		
		Query query = factory.openSession().createQuery("select student.studentId as studentId,student.studentName as studentName,student.studentEmail as studentEmail,student.studentphoneNo as studentphoneNo,student.studentGender as studentGender,"
				+ "student.studentSubject as studentSubject,student.studentCourse as studentCourse,student.studentAddress as studentAddress,s.stateName as stateName,c.cityName as cityName from State s ,City c ,Student student where "
				+ "s.stateId = student.stateId and c.cityId = student.cityId");
		 studentlist = query.setResultTransformer(Transformers.aliasToBean(Student.class)).list();
		return studentlist;
	}

	@Transactional
	public void deleteStudent(int studentId) {
		// TODO Auto-generated method stub
		Student student = this.hibernateTemplate.load(Student.class, studentId);
		this.hibernateTemplate.delete(student);
	}

	@Override
	public Student getStudent(int studentId) {
		// TODO Auto-generated method stub
		return this.hibernateTemplate.get(Student.class, studentId);
	}

	@Override
	public List<State> viewState() {
		// TODO Auto-generated method stub
		List<State> statelist = this.hibernateTemplate.loadAll(State.class);
		return statelist;
	}

	@Override
	public List<City> getCityByStateId(int stateId) {
		// TODO Auto-generated method stub
		Query query = factory.openSession().createQuery("from City where state.stateId=:x");
		query.setParameter("x", stateId);
		List<City> citylist = query.list();
		System.out.println(citylist);
		return citylist;
	}
	
}
