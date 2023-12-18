package kr.co.daitdayoung.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.daitdayoung.user.domain.CoursesExamInfoDomain;
import kr.co.daitdayoung.user.domain.UserCoursesDomain;
import kr.co.daitdayoung.user.domain.UserCoursesExamDomain;
import kr.co.daitdayoung.user.domain.UserCoursesLectureDomain;
import kr.co.daitdayoung.user.domain.UserCoursesNoticeDomain;
import kr.co.daitdayoung.user.service.UserCoursesService;
import kr.co.daitdayoung.user.vo.UserCoursesVO;

@SessionAttributes({ "ucDomain", "lectureList", "lecCnt", "rate","enrollRate","examResults" })

@Controller
public class UserCoursesController {

	@Autowired
	private UserCoursesService ucs;

	@GetMapping("/user/courses.do")
	public String userCourses(UserCoursesVO ucVO, HttpSession session, Model model) {
		// couCode = "COU_999999";
		String uiId = (String) session.getAttribute("uiId");
		// uiId = "ui_test";
		ucVO.setUiId(uiId);
		UserCoursesDomain ucDomain = ucs.searchCoursesInfo(ucVO);
		List<UserCoursesNoticeDomain> noticeList = ucs.searchCoursesNoticeList(ucVO.getCouCode());
		List<UserCoursesLectureDomain> lectureList = ucs.searchCoursesLectureList(ucVO);
		String formattedRate = "";
		if (ucDomain != null) {
			double rate = ((double) ucDomain.getProgressRate() / lectureList.size()) * 100;
			formattedRate = String.format("%.2f", rate); // 소수점 둘째 자리까지 포맷팅
			model.addAttribute("rate", formattedRate);
		}
		model.addAttribute("ucDomain", ucDomain);
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("lectureList", lectureList);
		model.addAttribute("lecCnt", lectureList.size());
		model.addAttribute("examResults",ucDomain.getExamResults());
		model.addAttribute("enrollRate",ucDomain.getEnrollRate());
		return "user/courses/courses";
	}

	@GetMapping("/user/courses_detail.do")
	public String userCoursesDetail(UserCoursesVO ucVO, HttpSession session, Model model) {

		ucVO.setUiId((String) session.getAttribute("uiId"));
		UserCoursesLectureDomain uclDomain = ucs.searchCoursesLectureDetail(ucVO);
		model.addAttribute("uclDomain", uclDomain);
		return "user/courses/courses_detail";
	}

	@ResponseBody
	@PostMapping(value = "/user/coursesDetailProcess.do", produces = "application/text;charset=utf-8")
	public String userCoursesDetailProcess(UserCoursesVO ucVO, HttpSession session, Model model) {

		ucVO.setUiId((String) session.getAttribute("uiId"));
		int cnt = ucs.modifyCoursesRecode(ucVO);
		boolean flag = false;
		if (cnt == 2) {
			flag = true;
		}

		JSONObject json = new JSONObject();
		json.put("flag", flag);

		return json.toJSONString();
	}

	@GetMapping("/user/courses_notice.do")
	public String userCoursesNotice(String cnCode, Model model) {

		UserCoursesNoticeDomain ucnDomain = ucs.searchCoursesNoticeDetail(cnCode);
		model.addAttribute("ucnDomain", ucnDomain);

		return "user/courses/courses_notice";
	}

	@GetMapping("/user/courses_exam.do")
	public String userCoursesExam(UserCoursesVO cuVO, HttpSession session, Model model) {
		String uiId = (String) session.getAttribute("uiId");
		cuVO.setUiId(uiId);
		UserCoursesExamDomain uceDomain = ucs.searchCoursesExam(cuVO.getCouCode());
		CoursesExamInfoDomain userExamInfo = ucs.searchCoursesExamInfo(cuVO);

		model.addAttribute("uceDomain", uceDomain);
		model.addAttribute("userExamInfo", userExamInfo);

		return "user/courses/courses_exam";
	}

	@GetMapping("/user/courses_exam_result.do")
	public String userCoursesExamResult(UserCoursesVO cuVO, HttpSession session, Model model) {

		return "user/courses/courses_exam_result";
	}

}
