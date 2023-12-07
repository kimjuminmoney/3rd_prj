package kr.co.daitdayoung.instructor.controller;


import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.util.WebUtils;

@Controller
public class insCourseDetailController {

	@RequestMapping("/insCourseDetail.do")
	public String courseDetail(HttpServletRequest request,Model model) {
		String couCode = request.getParameter("couCode");
		
		
		
		
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
