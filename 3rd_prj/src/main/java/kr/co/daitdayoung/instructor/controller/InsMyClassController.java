package kr.co.daitdayoung.instructor.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InsMyClassController {
	
	@RequestMapping("/insMyCourse.do")
	public String myCourses() {
		
		return "instructor/MyClass/insMyCourses";
	}
	@RequestMapping("/insTest2.do")
	public String test2() {
		
		return "instructor/MyClass/test2";
	}
	
	@RequestMapping("/insAddCourse.do")
	public String addCourse() {
		
		return "instructor/MyClass/insAddCourse";
	}

	@RequestMapping("/insAddCourseList.do")
	public String addCourseList() {
		
		return "instructor/MyClass/insAddCourseList";
	}
	
	@RequestMapping("/insAddCourseList2.do")
	public String addCourseList2() {
		
		return "instructor/MyClass/insAddCourseList2";
	}
	
}//class
