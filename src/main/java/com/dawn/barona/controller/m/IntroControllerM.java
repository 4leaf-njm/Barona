package com.dawn.barona.controller.m;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/m/intro")
public class IntroControllerM {
	
	@RequestMapping(value = "/intro_1.do", method = RequestMethod.GET)
	public String intro_1() {
		return "mobile/intro/intro_1";
	}
	@RequestMapping(value = "/intro_2.do", method = RequestMethod.GET)
	public String intro_2() {
		return "mobile/intro/intro_2";
	}
	@RequestMapping(value = "/intro_3.do", method = RequestMethod.GET)
	public String intro_3() {
		return "mobile/intro/intro_3";
	}
	@RequestMapping(value = "/intro_4.do", method = RequestMethod.GET)
	public String intro_4() {
		return "mobile/intro/intro_4";
	}
	@RequestMapping(value = "/intro_5.do", method = RequestMethod.GET)
	public String intro_5() {
		return "mobile/intro/intro_5";
	}

}