package kr.co.daitdayoung.instructor.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InsMyInfoController {
	
	@RequestMapping("/insMyInfo.do")
	public String insMyInfo() {
		
		return "instructor/insMyInfo";
	}
}
