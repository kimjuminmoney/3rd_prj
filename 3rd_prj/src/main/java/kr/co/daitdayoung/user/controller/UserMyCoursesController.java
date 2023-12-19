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
		String id = (String)session.getAttribute("uiId");
		//String id = "ui_test";
		List<UserMyCoursesDomain> list = umcs.searchCoursesList(id);
		
		list = umcs.searchCoursesExamList(list);
		list = umcs.searchLecturesCnt(list);
		model.addAttribute("coursesList", list);
		model.addAttribute("listSize" ,list.size());
		return "user/myCourses/myCourses";
	}
	
	@GetMapping("/user/certiticate.do")
	public String userCertiticate(HttpSession session,Model model) {
		System.out.println("수료증");
		return "user/myCourses/certificate";
	}
	

}
