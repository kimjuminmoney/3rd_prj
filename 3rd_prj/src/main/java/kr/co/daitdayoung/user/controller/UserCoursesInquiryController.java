package kr.co.daitdayoung.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.daitdayoung.user.domain.UserCoursesDomain;
import kr.co.daitdayoung.user.domain.UserCoursesInquiryDomain;
import kr.co.daitdayoung.user.domain.UserCoursesLectureDomain;
import kr.co.daitdayoung.user.domain.UserCoursesNoticeDomain;
import kr.co.daitdayoung.user.service.UserCoursesInquiryService;
import kr.co.daitdayoung.user.service.UserCoursesService;
import kr.co.daitdayoung.user.vo.UserCoursesVO;

@Controller
public class UserCoursesInquiryController {
	
	@Autowired
	private UserCoursesInquiryService uciService;

	@GetMapping("/user/coursesInquiry.do")
	public String userCoursesInquiry(HttpSession session, Model model) {
		
		String uiId = (String)session.getAttribute("uiId");
		
		List<UserCoursesInquiryDomain> list = uciService.searchCoursesInquiryList(uiId);
		model.addAttribute("inquiryList", list);
		
		return "user/coursesInquiry/coursesInquiry";
	}
	
	
	@GetMapping("/user/coursesInquiry_write.do")
	public String userCoursesInquiryWrite(HttpSession session, Model model) {
		String uiId = (String)session.getAttribute("uiId"); 
		
		List<UserCoursesInquiryDomain> citList = uciService.searchCoursesInquiryTypeList();
		List<UserCoursesInquiryDomain> couList = uciService.searchCoursesInquiryCouList(uiId);
		model.addAttribute("citList", citList);
		model.addAttribute("couList", couList);
		
		return "user/coursesInquiry/coursesInquiry_write";
	}
	
	@PostMapping("/user/coursesInquiry_process.do")
	public String userCoursesInquiryProcess(HttpSession session,UserCoursesInquiryDomain uciDomain,Model model) {
		System.out.println(uciDomain);
		System.out.println("----------------------------------------");
		System.out.println(session.getAttribute("uiId").toString());
		System.out.println("----------------------------------------");
		
		return "redirect:/user/coursesInquiry.do";
	}
	
	@GetMapping("/user/coursesInquiry_detail.do")
	public String userCoursesInquiryDetail(String ciCode,Model model) {
		UserCoursesInquiryDomain uciDomain = uciService.searchCoursesInquiryDetail(ciCode);
		model.addAttribute("uciDomain", uciDomain);
		
		return "user/coursesInquiry/coursesInquiry_detail";
	}


}
