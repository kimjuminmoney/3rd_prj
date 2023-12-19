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
import kr.co.daitdayoung.instructor.vo.CourseNoticeVO;
import kr.co.daitdayoung.instructor.vo.CourseVO;


@Controller
public class insCourseNoticeController {

	@Autowired
	private CourseNoticeService cns;

	@RequestMapping("/insCourseNotice.do")
	public String courseNotice(HttpSession session,Model model) {
		CourseDomain cd=(CourseDomain)session.getAttribute("cd");
		
		List<CourseNoticeDomain> cnList=null;
		cnList = cns.searchAllNotice(cd.getCouCode());

		model.addAttribute("cnList", cnList);
		
		
		return "instructor/MyClass/course/insCourseNotice";
	}//courseDetail

	@RequestMapping("/insCourseNoticeSub.do")
	public String courseNoticeSub(String cnCode,Model model) {
		CourseNoticeDomain cnd=null;
		
		cnd = cns.searchOneNotice(cnCode);
		
		model.addAttribute("cnd",cnd);
		
		return "instructor/MyClass/course/insCourseNoticeSub";
	}//courseDetail
	
	@RequestMapping("/insCourseNoticeSubModify.do")
	public String courseNoticeSubModify(String cnCode,Model model) {
		CourseNoticeDomain cnd=null;
		
		cnd = cns.searchOneNotice(cnCode);
		
		model.addAttribute("cnd",cnd);
		
		return "instructor/MyClass/course/insCourseNoticeSubModify";
	}//courseDetail

	@RequestMapping("/insCourseNoticeSubModifyProcess.do")
	public String courseNoticeSubModifyProcess(HttpServletRequest request,CourseNoticeVO cnVO,Model model) {
		
		int cnt=0;
		
		cnt = cns.updateOneNotice(cnVO);
		
		
		return "forward:insCourseNoticeSub.do";
	}//courseDetail

	@RequestMapping("/insCourseNoticeAdd.do")
	public String courseNoticeAdd() {

		
		return "instructor/MyClass/course/insCourseNoticeAdd";
	}//courseDetail
	
	@RequestMapping("/addCnProcess.do")
	public String addCnProcess(CourseNoticeVO cnVO,HttpSession session, Model model) {
		int cnt=0;
		
		CourseDomain cd=(CourseDomain)session.getAttribute("cd");
		cnVO.setCouCode(cd.getCouCode());
		cnVO.setInsId(cd.getInsId());
		cnt = cns.insertOneNotice(cnVO);
		return "forward:insCourseNotice.do";
	}
	
	
	
}//class
