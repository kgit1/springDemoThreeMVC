package com.luv2code.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HelloWorldController {
	//need a controller method to show the initial form
	
	@RequestMapping("/showForm")
	public String showForm(){
		return "helloworld-form";
	}
	
	//need a controller method to process the HTML form	
	@RequestMapping("/processForm")
	public String processForm(){
		return "helloworld";
	}
	
	//new controller method to read data form and
	//add data to model
	@RequestMapping("/processFormVersionTwo")
	//read param using servlet request -> HttpServletRequest request
	public String letsShoutDude(HttpServletRequest request, Model model){
		
		//read the request param from Html form
		String theName = request.getParameter("studentName");
		
		//convert data to all caps
		theName = theName.toUpperCase();
		
		//create the message
		String result = "Yo! " + theName;
		
		//add message to the model
		model.addAttribute("message", result);
		return "helloworld";
	}
	
	@RequestMapping("processFormVersionThree")
	//read param using spring annotation ->@RequestParam
	//and bind it to the variable: theName
	public String letsShoutDudeTwo(
			@RequestParam("studentName") String theName, 
			Model model){
		
		//convert data to all caps
		theName = theName.toUpperCase();
				
		//create the message
		String result = "Hey My Friend from v2! " + theName;
				
		//add message to the model
		model.addAttribute("message", result);
		return "helloworld";
	}
	
	@RequestMapping("/wattomcat")
	public String showInfo(){
		return "data/wattomcat";
	}
	
	@RequestMapping("/tomcatWinStart")
	public String showInfo1(){
		return "data/tomcatWinStart";
	}
	
	@RequestMapping("/countryFile")
	public String showInfo2(){
		return "data/countryFile";
	}
	
	@RequestMapping("/radioButton")
	public String showInfo3(){
		return "data/radioButton";
	}
	
}
