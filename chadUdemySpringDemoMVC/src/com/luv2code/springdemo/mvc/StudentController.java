package com.luv2code.springdemo.mvc;

import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class StudentController {

	@Value("#{countryOptions1}")
	private Map<String, String> countryOptions1;

	// will create object of student class for us and send us to
	// student-form page
	@RequestMapping("/showForm")
	public String showForm(Model theModel) {

		// create new student object
		Student theStudent = new Student();

		// add student object to the model
		theModel.addAttribute("student", theStudent);

		// add the country options to the model
		theModel.addAttribute("theCountryOptions1", countryOptions1);
		
		// log the input data
		System.out.println("theStudent: " + theStudent.getFirstName() + " " 
		+ theStudent.getLastName() + " "
				+ theStudent.getCountry());

		return "student-form";
	}

	// by mapping "/processForm" will take data and send us and data
	// to student-confirmation page
	@RequestMapping("/processForm")
	public String processForm(@ModelAttribute("student") Student theStudent) {
		// log the input data
		System.out.println("theStudent: " + theStudent.getFirstName() + " " 
		+ theStudent.getLastName() + " "
				+ theStudent.getCountry());

		return "student-conformation";
	}
}
