package kr.co.daitdayoung.instructor.controller;


import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.util.WebUtils;

import kr.co.daitdayoung.instructor.DAO.CourseNoticeDAO;
import kr.co.daitdayoung.instructor.domain.CourseDomain;
import kr.co.daitdayoung.instructor.domain.CourseNoticeDomain;
import kr.co.daitdayoung.instructor.service.CourseNoticeService;
import kr.co.daitdayoung.instructor.service.MyCourseService;
import kr.co.daitdayoung.instructor.vo.CourseVO;


@Controller
@SessionAttributes("cd")
public class insCourseDetailController {

	@Autowired
	private MyCourseService mcs;
	@Autowired
	private CourseNoticeService cns;
	
	@RequestMapping("/insCourseDetail.do")
	public String courseDetail(CourseVO cVO, Model model, HttpSession session) {
		
		CourseDomain cd=null;
		
	//	System.out.println("---- id ------" +);
		//세션에서 꺼내온 아이디를 VO에 넣어라
		cVO.setInsId((String)session.getAttribute("insId"));
		
		cd=mcs.searchCourse(cVO);
		
		String couCode=cVO.getCouCode();
		model.addAttribute("couCode",couCode);
		model.addAttribute("cd",cd);
		
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

//	@RequestMapping("/insCourseNotice.do")
//	public String coursNotice(HttpSession session,Model model) {
//		CourseDomain cd=(CourseDomain)session.getAttribute("cd");
//		
//		
//		List<CourseNoticeDomain> cnList=null;
//		 System.out.println(cd.getCouCode());
//		cnList = cns.searchAllNotice(cd.getCouCode());
//		
//		model.addAttribute(cnList);
//		
//		return "instructor/MyClass/course/insCourseNotice";
//	}//courseDetail
	
	
	
}//class
