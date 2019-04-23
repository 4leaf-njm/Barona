package com.dawn.barona.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("popup")
public class PopUpController {

	@RequestMapping("/popup_01.do")
	public String goPopup01(){
		
		return "popup/popup_01";
	}

	@RequestMapping("/popup_02.do")
	public String goPopup02(){
		
		return "popup/popup_02";
	}
	
	@RequestMapping("/popup_03.do")
	public String goPopup03(){
		
		return "popup/popup_03";
	}
}
