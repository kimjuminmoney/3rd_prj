package kr.co.daitdayoung.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyCoursesController {
	
	@GetMapping("/user/myCourses.do")
	public String userMyCourses() {
		return "user/myCourses/courses";
	}
	
	@GetMapping("/user/courses.do")
	public String userCourses() {
		return "user/courses/courses";
	}

}
