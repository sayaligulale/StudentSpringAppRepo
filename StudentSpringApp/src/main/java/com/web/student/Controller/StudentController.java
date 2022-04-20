package com.web.student.Controller;


import java.util.List;

import javax.naming.Binding;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.web.student.Dao.StudentDao;
import com.web.student.Model.City;
import com.web.student.Model.State;
import com.web.student.Model.Student;
import com.web.student.Service.StudentService;
import com.web.student.rest.StudentRestController;

@Controller
public class StudentController {
	
	@Autowired
	private StudentService studentService;
	
	static final Logger log = Logger.getLogger(StudentController.class);
	
	@RequestMapping(path ="/add",method = RequestMethod.GET)
	public ModelAndView addStudent() {
		ModelAndView modelAndView = new ModelAndView();
		List<State> statelist = studentService.viewState();
		modelAndView.addObject("statelist", statelist);
		System.out.println(statelist);
		log.info("Student Data Added...");
		modelAndView.setViewName("add_student");
		
		return modelAndView;
	}
	
	@RequestMapping(path = "/view",method = RequestMethod.GET)
	public ModelAndView viewStudent() {
		ModelAndView modelAndView = new ModelAndView();
		List<Student> studentlist = studentService.viewStudent();
		modelAndView.addObject("studentlist", studentlist);
		System.out.println(studentlist);
		log.info("Student List Fetched...!!");
		modelAndView.setViewName("view_student");
		return modelAndView;
	}
	
	/*
	 * @RequestMapping(path = "/handleStudent",method = RequestMethod.POST) public
	 * ModelAndView handleStudent(@ModelAttribute Student student,BindingResult
	 * result) { ModelAndView mv = new ModelAndView();
	 * studentService.saveStudent(student); System.out.println(student);
	 * mv.setViewName("add_student"); return mv; }
	 */
	
	@RequestMapping(path = "/handleStudent",method = RequestMethod.POST)
	public String handleStudent(@ModelAttribute Student student,BindingResult result) {
		studentService.saveStudent(student);
		
		System.out.println(student);
		return "redirect:/view";
	}
	
	@RequestMapping(path = "/delete/{studentId}",method = RequestMethod.GET)
	public String deleteStudent(@PathVariable("studentId") int studentId, RedirectAttributes redirectAttrs) {
		studentService.deleteStudent(studentId);
		log.info("Student data Deleted for Id :"+studentId);
		redirectAttrs.addFlashAttribute("isDelete", "1");
		return "redirect:/view" ;	
	}
	
	@RequestMapping(path = "/update/{studentId}",method = RequestMethod.GET)
	public ModelAndView updateStudent(@PathVariable("studentId") int studentId) {
		ModelAndView modelAndView = new ModelAndView();
		Student student = studentService.getStudent(studentId);
		modelAndView.addObject("student", student);
		List<State> statelist = studentService.viewState();
		modelAndView.addObject("statelist", statelist);
		log.info("Student data Updated for Id :"+studentId);
		modelAndView.setViewName("add_student");
		return modelAndView;
	}
	
	@RequestMapping(path = "/stateType/{stateId}",method = RequestMethod.GET)
	public @ResponseBody String getState(@PathVariable("stateId") int stateId) {
		log.info("State data Change for Id :"+stateId);
		List<City> citylist = studentService.getCityByStateId(stateId);
		String data = "<option>select city</option>";
		for (City city : citylist) {
			data += "<option value='"+city.getCityId()+"'>"+city.getCityName()+"</option>"; 
		}
		return data;	
	}
	
	@RequestMapping(path = "/update/stateType/{stateId}",method = RequestMethod.GET)
	public @ResponseBody String getStateId(@PathVariable("stateId") int stateId) {
		List<City> citylist = studentService.getCityByStateId(stateId);
		log.info("City data Change for Id :"+stateId);
		String data = "<option>select city</option>";
		for (City city : citylist) {
			data += "<option value='"+city.getCityId()+"'>"+city.getCityName()+"</option>"; 
		}
		return data;	
	}
	
	@RequestMapping(path = "/update/stateType/{stateId}/{cityId}",method = RequestMethod.GET)
	public @ResponseBody String getStateCity(@PathVariable("stateId") int stateId,@PathVariable("cityId") int cityId) {
		List<City> citylist = studentService.getCityByStateId(stateId);
		log.info("State data Updated for Id :"+stateId);
		String data = "";
		for (City city : citylist) {
			if(cityId != 0) {
				data += "<option value='"+city.getCityId()+"' selected='selected'>"+city.getCityName()+"</option>";
			} else {
				data += "<option value='"+city.getCityId()+"'>"+city.getCityName()+"</option>";
			} 
		}
		System.out.println(data);
		return data;	
	}

}
