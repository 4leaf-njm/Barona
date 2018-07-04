package com.dawn.barona.controller.m;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/m/treatment")
public class TreatmentControllerM {
	
	@RequestMapping("treatment_1.do")
	public String goTreatment_1(){
		
		return "mobile/treatment/treatment_1";
	}
	
	@RequestMapping("treatment_2.do")
	public String goTreatment_2(){
		
		return "mobile/treatment/treatment_2";
	}
	
	@RequestMapping("treatment_3.do")
	public String goTreatment_3(){
		
		return "mobile/treatment/treatment_3";
	}
	
	@RequestMapping("treatment_4.do")
	public String goTreatment_4(){
		
		return "mobile/treatment/treatment_4";
	}
	
}
