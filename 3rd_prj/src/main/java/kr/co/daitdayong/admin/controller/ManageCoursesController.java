package kr.co.daitdayong.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ManageCoursesController {
	@GetMapping("/admin/admin_courses/manageCourses.do")
	public String manageCourses() {
		
		System.out.println("강좌관리 실행");
		return "admin/admin_courses/manageCourses";
	}

	
	@GetMapping("/admin/admin_courses/detailCourse.do")
	public String detailCourses() {
		
		return "admin/admin_courses/detailCourse";
	}
	
}
