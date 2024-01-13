package kr.co.daitdayoung.user.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import kr.co.daitdayoung.user.service.UserComplecationService;
import kr.co.daitdayoung.user.service.UserCoursesService;
import kr.co.daitdayoung.user.vo.UserCoursesVO;

@SessionAttributes({ "ucDomain", "lectureList", "lecCnt", "rate","enrollRate","examResults","progressRate" })

@Controller
public class UserCoursesController {

	@Autowired
	private UserCoursesService ucs;
	
	@Autowired
	private UserComplecationService ucts;

	@GetMapping("/user/courses.do")
	public String userCourses(UserCoursesVO ucVO, HttpSession session, Model model,HttpServletResponse response,HttpServletRequest request) {
		String uiId = (String) session.getAttribute("uiId");
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
		cookie(ucVO, session,response,request);
		
		model.addAttribute("ucDomain", ucDomain);
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("lectureList", lectureList);
		model.addAttribute("lecCnt", lectureList.size());
		
		if(ucDomain == null) {
			ucDomain = (UserCoursesDomain)session.getAttribute("ucDomain");
			model.addAttribute("examResults",ucDomain.getExamResults());
			model.addAttribute("enrollRate",ucDomain.getEnrollRate());
		} else {
			model.addAttribute("examResults",ucDomain.getExamResults());
			model.addAttribute("enrollRate",ucDomain.getEnrollRate());
		}
		model.addAttribute("progressRate",ucDomain.getProgressRate());
		return "user/courses/courses";
	}

	public void cookie(UserCoursesVO ucVO,HttpSession session, HttpServletResponse response,HttpServletRequest request) {
		String uiId = (String) session.getAttribute("uiId");
		ucVO.setUiId(uiId);
		String couCode = ucVO.getCouCode();

	    // 쿠키 이름 생성 (예: couCode_uiId)
	    String cookieName = couCode + "_" + uiId;

	    // 쿠키 조회
	    Cookie[] cookies = request.getCookies();
	    boolean hasVisitedToday = false;

	    if (cookies != null) {
	        for (Cookie cookie : cookies) {
	            if (cookieName.equals(cookie.getName())) {
	                hasVisitedToday = true;
	                break;
	            }
	        }
	    }

	    // 쿠키가 없으면 조회수 증가 및 쿠키 설정
	    if (!hasVisitedToday) {
	        // 조회수 증가 로직
	    	ucs.increaseCourseViews(couCode);

	        // 쿠키 생성 및 설정 (유효기간 1일)
	        Cookie visitCookie = new Cookie(cookieName, "visited");
	        visitCookie.setMaxAge(60 * 60 * 24); // 1일
	        visitCookie.setPath("/"); // 전체 애플리케이션에 대해 쿠키 사용
	        response.addCookie(visitCookie);
	    }
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
		int rateCnt = ucs.modifyCoursesRecode(ucVO);

		JSONObject json = new JSONObject();
		boolean flag = false;
		boolean completeFlag = false;
		String examPass = ucs.searchExamPass(ucVO.getCrgCode());
		if(null != examPass &&examPass.equals("Y")){
			int enrollRate = (Integer)session.getAttribute("enrollRate");
			int lecCnt = (Integer)session.getAttribute("lecCnt");
			ucVO.setEnrollRate(enrollRate);
			ucVO.setLecCnt(lecCnt);
			ucVO.setRateCnt(rateCnt);
			int cnt = ucts.modifyCompletionStatus(ucVO);
			if(cnt == 1) {
				completeFlag = true;
			}
		}
		flag = true;
		json.put("flag", flag);
		json.put("completeFlag", completeFlag);
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
