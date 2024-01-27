package kr.co.daitdayoung.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.daitdayoung.user.domain.UserMyCoursesDomain;
import kr.co.daitdayoung.user.service.UserMyCoursesService;

@Controller
public class UserMyCoursesController {
	
	@Autowired
	private UserMyCoursesService umcs;
	
	/**
	 * 내 강의실 - 나의 강좌
	 */
	@GetMapping("/user/myCourses.do")
	public String userMyCourses(HttpSession session,Model model ) {
		String id = (String)session.getAttribute("uiId");
		List<UserMyCoursesDomain> list = umcs.searchCoursesList(id);
		
		list = umcs.searchCoursesExamList(list);
		list = umcs.searchLecturesCnt(list);
		model.addAttribute("coursesList", list);
		model.addAttribute("listSize" ,list.size());
		return "user/myCourses/myCourses";
	}
	
	/**
	 * 수료증
	 */
	@GetMapping("/user/certificate.do")
	public String userCertiticate(HttpSession session,Model model) {
		
		return "user/myCourses/certificate";
	}
	

}
