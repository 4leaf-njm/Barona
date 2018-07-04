package com.dawn.barona.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("popUp")
public class PopUpController {

	@RequestMapping("/pop_up.do")
	public String goPopUp(){
		
		return "popUp/pop_up";
	}
	
}
