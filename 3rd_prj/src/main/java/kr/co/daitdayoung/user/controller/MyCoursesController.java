package kr.co.daitdayoung.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyCoursesController {
	
	@GetMapping("/user/myCourses.do")
	public String userMyCourses() {
		return "user/myCourses/myCourses";
	}
	@GetMapping("/user/myCourses2.do")
	public String userMyCourses2() {
		return "user/myCourses/myCourses2";
	}
	
	@GetMapping("/user/courses.do")
	public String userCourses() {
		return "user/courses/courses";
	}
	
	@GetMapping("/user/toDoList.do")
	public String userToDoList() {
		return "user/toDoList/toDoList";
	}
	
	@GetMapping("/user/myExam.do")
	public String userMyExam() {
		return "user/myExam/myExam";
	}
	
	

}
