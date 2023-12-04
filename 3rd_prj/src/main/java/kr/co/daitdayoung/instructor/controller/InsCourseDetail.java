package kr.co.daitdayoung.instructor.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InsCourseDetail {

	@RequestMapping("/insCourseDetail.do")
	public String insCourseDetail() {
		
		return "instructor/MyClass/course/insCourseDetail";
	}
	
	
}
