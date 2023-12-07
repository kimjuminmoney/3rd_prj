package kr.co.daitdayoung.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.daitdayoung.user.domain.UserCoursesDomain;
import kr.co.daitdayoung.user.domain.UserCoursesLectureDomain;
import kr.co.daitdayoung.user.domain.UserCoursesNoticeDomain;
import kr.co.daitdayoung.user.service.UserCoursesService;

@Controller
public class UserCoursesController {

	@Autowired
	private UserCoursesService ucs;

	@GetMapping("/user/courses.do")
	public String userCourses(String couCode, HttpSession session, Model model) {
		couCode = "COU_999999";
		UserCoursesDomain ucd = ucs.searchCoursesInfo(couCode);
		
		List<UserCoursesNoticeDomain> noticeList = ucs.searchCoursesNoticeList(couCode);		
		List<UserCoursesLectureDomain> lectureList = ucs.searchCoursesLectureList(couCode);		
		
		model.addAttribute("ucDomain", ucd);
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("lectureList", lectureList);
		
		return "user/courses/courses";
	}

	@GetMapping("/user/courses_detail.do")
	public String userCoursesDetail(HttpSession session, Model model) {
		return "user/courses/courses_detail";
	}

}
