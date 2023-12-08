package kr.co.daitdayoung.instructor.controller;


import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.util.WebUtils;

import kr.co.daitdayoung.instructor.domain.CourseDomain;
import kr.co.daitdayoung.instructor.service.MyCourseService;
import kr.co.daitdayoung.instructor.vo.CourseVO;

@Controller
public class insCourseDetailController {

	@Autowired
	private MyCourseService mcs;
	
	@RequestMapping("/insCourseDetail.do")
	public String courseDetail(CourseVO cVO, Model model, HttpSession session) {
		
		CourseDomain cd=null;
		
	//	System.out.println("---- id ------" +);
		//세션에서 꺼내온 아이디를 VO에 넣어라
		cVO.setInsId((String)session.getAttribute("insId"));
		
		System.out.println("------------------------"+ cVO );
		cd=mcs.searchCourse(cVO);
		
		model.addAttribute("cd",cd);
		System.out.println("강좌정보");
		
		return "instructor/MyClass/course/insCourseDetail";
	}//courseDetail
	
	@RequestMapping("/insCourseContent.do")
	public String courseContent() {
		System.out.println("목차");
		return "instructor/MyClass/course/insCourseContent";
	}//courseDetail
	
	@RequestMapping("/insCourseLecture.do")
	public String courseLecture() {
		System.out.println("강의등록");
		return "instructor/MyClass/course/insCourseLecture";
	}//courseDetail
	
	@RequestMapping("/insCourseInquiry.do")
	public String courseInquiry() {
		System.out.println("문의");
		return "instructor/MyClass/course/insCourseInquiry";
	}//courseDetail
	
	@RequestMapping("/insCourseTest.do")
	public String courseTest() {
		System.out.println("시험");
		return "instructor/MyClass/course/insCourseTest";
	}//courseDetail

	@RequestMapping("/insCourseTestQuestion.do")
	public String courseTestQuestion() {
		System.out.println("문제관리");
		return "instructor/MyClass/course/insCourseTestQuestion";
	}//courseDetail

	@RequestMapping("/insCourseNotice.do")
	public String coursNotice() {
		System.out.println("시험");
		return "instructor/MyClass/course/insCourseNotice";
	}//courseDetail
	
	
	
}//class
