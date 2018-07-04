package com.dawn.barona.controller.m;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/m/disease")
public class DiseaseControllerM {

	@RequestMapping("disease_1.do")
	public String godisease_1() {

		return "mobile/disease/disease_1";
	}

	@RequestMapping("disease_2.do")
	public String godisease_2() {

		return "mobile/disease/disease_2";
	}

	@RequestMapping("disease_3.do")
	public String godisease_3() {

		return "mobile/disease/disease_3";
	}

	@RequestMapping("disease_4.do")
	public String godisease_4() {

		return "mobile/disease/disease_4";
	}

	@RequestMapping("disease_5.do")
	public String godisease_5() {

		return "mobile/disease/disease_5";
	}
	
	@RequestMapping("disease_6.do")
	public String godisease_6() {
		
		return "mobile/disease/disease_6";
	}

	@RequestMapping("disease_7.do")
	public String godisease_7() {
		
		return "mobile/disease/disease_7";
	}
	
	@RequestMapping("disease_8.do")
	public String godisease_8() {
		
		return "mobile/disease/disease_8";
	}
	
	@RequestMapping("disease_9.do")
	public String godisease_9() {
		
		return "mobile/disease/disease_9";
	}
	
	@RequestMapping("disease_10.do")
	public String godisease_10() {
		
		return "mobile/disease/disease_10";
	}
	
	@RequestMapping("disease_11.do")
	public String godisease_11() {
		
		return "mobile/disease/disease_11";
	}
}
