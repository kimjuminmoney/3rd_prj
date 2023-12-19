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
		
		System.out.println("문의"+cd);
		List<CourseInquiryDomain> cidList = cis.searchAllInquiry(cd.getCouCode());
		
		System.out.println("문의"+cidList);
		model.addAttribute("cidList",cidList);
		
		return "instructor/MyClass/course/insCourseInquiry";
	}//courseDetail
	
	@RequestMapping("/insCourseInquirySub.do")
	public String courseInquirySub(HttpServletRequest request,Model model) {
		String ciCode=request.getParameter("ciCode");
		System.out.println(ciCode);
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
		
		System.out.println(ciVO+"1");
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
//	
//	@RequestMapping("/addciProcess.do")
//	public String addciProcess(CourseInquiryVO ciVO,HttpSession session, Model model) {
//		int cit=0;
//		
//		CourseDomain cd=(CourseDomain)session.getAttribute("cd");
//		ciVO.setCouCode(cd.getCouCode());
//		ciVO.setInsId(cd.getInsId());
//		System.out.println(ciVO);
//		cit = cis.insertOneNotice(ciVO);
//		System.out.println(cit);
//		return "forward:insCourseInquiry.do";
//	}
	
	
	
}//class
