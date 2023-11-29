package kr.co.daitdayoung.instructor.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InsMyClassController {
	
	@RequestMapping("/insMyCourse.do")
	public String myCourses() {
		
		return "instructor/insMyCourses";
	}
	
	@RequestMapping("/insAddCourse.do")
	public String addCourse() {
		
		return "instructor/insAddCourse";
	}

	@RequestMapping("/insAddCourseList.do")
	public String addCourseList() {
		
		return "instructor/insAddCourseList";
	}
	
	
}
