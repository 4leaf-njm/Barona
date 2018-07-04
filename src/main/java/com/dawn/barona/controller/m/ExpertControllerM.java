package com.dawn.barona.controller.m;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/m/expert")
public class ExpertControllerM {
	
	@RequestMapping("expert_1.do")
	public String goexpert_1(){
		return "mobile/expert/expert_1";
	}
	
	@RequestMapping("expert_2.do")
	public String goexpert_2(){
		return "mobile/expert/expert_2";
	}
	
	@RequestMapping("expert_3.do")
	public String goexpert_3(){
		return "mobile/expert/expert_3";
	}
	
	@RequestMapping("expert_4-1.do")
	public String goexpert_41(){
		return "mobile/expert/expert_4-1";
	}
	
}
