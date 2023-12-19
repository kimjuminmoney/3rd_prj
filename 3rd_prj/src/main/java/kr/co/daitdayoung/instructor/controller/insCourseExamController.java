package kr.co.daitdayoung.instructor.controller;


import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.util.WebUtils;

import kr.co.daitdayoung.instructor.DAO.CourseNoticeDAO;
import kr.co.daitdayoung.instructor.domain.CourseDomain;
import kr.co.daitdayoung.instructor.domain.CourseExamDomain;
import kr.co.daitdayoung.instructor.domain.CourseNoticeDomain;
import kr.co.daitdayoung.instructor.service.CourseExamService;
import kr.co.daitdayoung.instructor.service.CourseNoticeService;
import kr.co.daitdayoung.instructor.service.MyCourseService;
import kr.co.daitdayoung.instructor.vo.CourseExamVO;
import kr.co.daitdayoung.instructor.vo.CourseVO;


@Controller
public class insCourseExamController {

	@Autowired
	private CourseExamService ces;
	
	@RequestMapping("/insCourseTest.do")
	public String courseExam(HttpSession session,Model model) {
		CourseDomain cd=(CourseDomain)session.getAttribute("cd");
		
		String couCode=cd.getCouCode();
		CourseExamDomain ced=null;
		ced=ces.searchExam(couCode);
		
		model.addAttribute("ced", ced);
		
		
		return "instructor/MyClass/course/insCourseTest";
	}//courseDetail

	@RequestMapping("/insCourseExamUpdate.do")
	public String updateCourseExam(CourseExamVO ceVO,Model model) {
		int cnt=0;
		
		cnt=ces.updateExam(ceVO);
		
		model.addAttribute("cnt", cnt);
		
		
		return "forward:insCourseTest.do";
	}//courseDetail
	
	
	
	
	
	
}//class
