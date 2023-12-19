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
	
	
	
}//class
