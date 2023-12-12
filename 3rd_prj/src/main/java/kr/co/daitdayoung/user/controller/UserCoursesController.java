package kr.co.daitdayoung.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.daitdayoung.user.domain.UserCoursesDomain;
import kr.co.daitdayoung.user.domain.UserCoursesExamDomain;
import kr.co.daitdayoung.user.domain.UserCoursesLectureDomain;
import kr.co.daitdayoung.user.domain.UserCoursesNoticeDomain;
import kr.co.daitdayoung.user.service.UserCoursesService;
import kr.co.daitdayoung.user.vo.UserCoursesVO;

@SessionAttributes({"ucDomain","lectureList","lecCnt"})
@Controller
public class UserCoursesController {

	@Autowired
	private UserCoursesService ucs;

	@GetMapping("/user/courses.do")
	public String userCourses(UserCoursesVO ucVO, HttpSession session, Model model) {
		//couCode = "COU_999999";
		String uiId = (String)session.getAttribute("uiId");
		//uiId = "ui_test";
		ucVO.setUiId(uiId);
		UserCoursesDomain ucDomain = ucs.searchCoursesInfo(ucVO);
		List<UserCoursesNoticeDomain> noticeList = ucs.searchCoursesNoticeList(ucVO.getCouCode());		
		List<UserCoursesLectureDomain> lectureList = ucs.searchCoursesLectureList(ucVO);

		model.addAttribute("ucDomain", ucDomain);
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("lectureList", lectureList);
		model.addAttribute("lecCnt", lectureList.size());
		return "user/courses/courses";
	}

	@GetMapping("/user/courses_detail.do")
	public String userCoursesDetail(UserCoursesVO cuVO, HttpSession session, Model model) {
		
		cuVO.setUiId((String)session.getAttribute("uiId"));
		UserCoursesLectureDomain uclDomain= ucs.searchCoursesLectureDetail(cuVO);
		model.addAttribute("uclDomain", uclDomain);
		return "user/courses/courses_detail";
	}
	
	@GetMapping("/user/courses_notice.do")
	public String userCoursesNotice(String cnCode, Model model) {
		
		UserCoursesNoticeDomain ucnDomain = ucs.searchCoursesNoticeDetail(cnCode);
		model.addAttribute("ucnDomain", ucnDomain);
		
		return "user/courses/courses_notice";
	}
	
	@GetMapping("/user/courses_exam.do")
	public String userCoursesExam(UserCoursesVO cuVO, HttpSession session, Model model) {
		String uiId = (String)session.getAttribute("uiId");
		cuVO.setUiId(uiId);
		UserCoursesExamDomain uceDomain = ucs.searchCoursesExam(cuVO.getCouCode());
		System.out.println("시험 맵핑이요~~~~~~~~~~~~~~~~~~~~~~~~~~~");
		System.out.println(uceDomain);
		model.addAttribute("uceDomain",uceDomain);
		
		return "user/courses/courses_exam";
	}
	
	@GetMapping("/user/courses_exam_result.do")
	public String userCoursesExamResult(UserCoursesVO cuVO, HttpSession session, Model model) {
		System.out.println("시험결과 맵핑");
		
		return "user/courses/courses_exam_result";
	}

}
