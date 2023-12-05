package kr.co.daitdayoung.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.daitdayoung.user.domain.UserMyCoursesDomain;
import kr.co.daitdayoung.user.service.UserMyCoursesService;

@Controller
public class UserMyCoursesController {
	
	@GetMapping("/user/myCourses.do")
	public String userMyCourses(HttpSession session) {
		String id = (String)session.getAttribute("user_id");
		return "user/myCourses/myCourses";
	}
	@GetMapping("/user/myCourses2.do")
	public String userMyCourses2() {
		return "user/myCourses/myCourses2";
	}
	@GetMapping("/user/myCourses3.do")
	public String userMyCourses3(HttpSession session, Model model ) {
		//String id = (String)session.getAttribute("userId");
		String id = "ui_test";
		UserMyCoursesService umcs = new UserMyCoursesService();
		List<UserMyCoursesDomain> list = umcs.searchCoursesList(id);
		model.addAttribute("coursesList", list);
		return "user/myCourses/myCourses3";
	}
	
	@GetMapping("/user/courses.do")
	public String userCourses() {
		return "user/courses/courses";
	}
	
	@GetMapping("/user/courses_detail.do")
	public String userCoursesDetail() {
		return "user/courses/courses_detail";
	}
	
	@GetMapping("/user/myExam.do")
	public String userMyExam() {
		return "user/myExam/myExam";
	}
	
	@GetMapping("/user/myExam2.do")
	public String userMyExam2() {
		return "user/myExam/myExam2";
	}
	
	@GetMapping("/user/coursesInquiry.do")
	public String userCoursesInquiry() {
		return "user/coursesInquiry/coursesInquiry";
	}
	@GetMapping("/user/coursesInquiry2.do")
	public String userCoursesInquiry2() {
		return "user/coursesInquiry/coursesInquiry2";
	}
	
	@GetMapping("/user/coursesInquiry_write.do")
	public String userCoursesInquiryWrite() {
		return "user/coursesInquiry/coursesInquiry_write";
	}
	
	@GetMapping("/user/coursesInquiry_detail.do")
	public String userCoursesInquiryDetail() {
		return "user/coursesInquiry/coursesInquiry_detail";
	}
	
	

}
