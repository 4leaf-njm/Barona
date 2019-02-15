package com.dawn.barona.controller.m;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("m/popup")
public class PopUpControllerM {

	@RequestMapping("/popup_01.do")
	public String goPopup01(){
		
		return "mobile/popup/popup_01";
	}
}
