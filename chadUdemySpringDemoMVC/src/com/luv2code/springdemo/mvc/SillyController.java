package com.luv2code.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//top of nested requestMapping
@RequestMapping("/funny")
public class SillyController {
	
	//will be "/funny/showForm"
	@RequestMapping("/showForm")
	public String displayTheForm(){
		return "silly";
	}

}
