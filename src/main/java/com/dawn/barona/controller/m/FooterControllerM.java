package com.dawn.barona.controller.m;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/m/footer")
public class FooterControllerM {

	@RequestMapping("clause.do")
	public String goClause(){
		
		return "mobile/footer/clause";
	}
	
	@RequestMapping("private.do")
	public String goPrivate(){
		
		return "mobile/footer/private";
	}
	
}
