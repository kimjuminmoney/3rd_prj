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
import kr.co.daitdayoung.user.vo.UserCoursesVO;

@Controller
public class UserCoursesController {

	@Autowired
	private UserCoursesService ucs;

	@GetMapping("/user/courses.do")
	public String userCourses(String couCode, HttpSession session, Model model) {
		couCode = "COU_999999";
		String uiId = (String)session.getAttribute("uiId");
		uiId = "ui_test";
		UserCoursesVO ucVO = new UserCoursesVO(couCode, uiId);
		UserCoursesDomain ucDomain = ucs.searchCoursesInfo(ucVO);
		List<UserCoursesNoticeDomain> noticeList = ucs.searchCoursesNoticeList(couCode);		
		List<UserCoursesLectureDomain> lectureList = ucs.searchCoursesLectureList(ucVO);
		

		model.addAttribute("ucDomain", ucDomain);
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("lectureList", lectureList);
		model.addAttribute("lecCnt", lectureList.size());
		
		return "user/courses/courses";
	}

	@GetMapping("/user/courses_detail.do")
	public String userCoursesDetail(HttpSession session, Model model) {
		return "user/courses/courses_detail";
	}

}
