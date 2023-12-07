package kr.co.daitdayoung.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.daitdayoung.user.domain.UserMyCoursesDomain;
import kr.co.daitdayoung.user.service.UserMyCoursesService;
import kr.co.daitdayoung.user.vo.UserMyCoursesVO;

@Controller
public class UserMyCoursesController {
	
	@Autowired
	private UserMyCoursesService umcs;
	
	@GetMapping("/user/myCourses.do")
	public String userMyCourses(HttpSession session,Model model ) {
		//String id = (String)session.getAttribute("userId");
		String id = "ui_test";
		List<UserMyCoursesDomain> list = umcs.searchCoursesList(id);
		
		list = umcs.searchLecturesCnt(list);
		
		
		model.addAttribute("coursesList", list);
		model.addAttribute("listSize" ,list.size());
		return "user/myCourses/myCourses";
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
