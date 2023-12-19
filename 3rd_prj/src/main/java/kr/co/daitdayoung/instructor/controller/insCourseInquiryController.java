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

import kr.co.daitdayoung.instructor.DAO.CourseInquiryDAO;
import kr.co.daitdayoung.instructor.domain.CourseDomain;
import kr.co.daitdayoung.instructor.domain.CourseInquiryDomain;
import kr.co.daitdayoung.instructor.service.CourseInquiryService;
import kr.co.daitdayoung.instructor.service.MyCourseService;
import kr.co.daitdayoung.instructor.vo.CourseInquiryVO;
import kr.co.daitdayoung.instructor.vo.CourseVO;


@Controller
public class insCourseInquiryController {

	@Autowired
	private CourseInquiryService cis;
	
	@RequestMapping("/insCourseInquiry.do")
	public String courseInquiry(HttpSession session,Model model) {
		CourseDomain cd=(CourseDomain)session.getAttribute("cd");
		
		List<CourseInquiryDomain> cidList = cis.searchAllInquiry(cd.getCouCode());
		
		model.addAttribute("cidList",cidList);
		
		return "instructor/MyClass/course/insCourseInquiry";
	}//courseDetail
	
	@RequestMapping("/insCourseInquirySub.do")
	public String courseInquirySub(HttpServletRequest request,Model model) {
		String ciCode=request.getParameter("ciCode");
		CourseInquiryDomain cid=null;
		
		cid = cis.searchOneInquiry(ciCode);

		model.addAttribute("cid", cid);
		
		
		return "instructor/MyClass/course/insCourseInquirySub";
	}//courseDetail

		@RequestMapping("/insCourseInquiryReply.do")
	public String CourseInquiryReply(String ciCode,Model model) {
		CourseInquiryDomain cid=null;
		
		cid = cis.searchOneInquiry(ciCode);
		
		model.addAttribute("cid",cid);
		
		return "instructor/MyClass/course/insCourseInquiryReply";
	}//courseSubModify

	@RequestMapping("/insCourseInquiryReplyProcess.do")
	public String CourseInquiryReplyProcess(HttpServletRequest request,CourseInquiryVO ciVO,Model model) {
		
		int cnt=0;
		
		cnt = cis.updateOneInquiry(ciVO);
		
		
		return "forward:insCourseInquiry.do";
	}//courseDetail

	@RequestMapping("/insCourseInquiryReplyExist.do")
	public String CourseInquiryAdd(String ciCode,Model model) {
	CourseInquiryDomain cid=null;
		
		cid = cis.searchOneInquiry(ciCode);
		
		model.addAttribute("cid",cid);
		
		return "instructor/MyClass/course/insCourseInquiryReplyExist";
	}//courseDetail
	
}//class
