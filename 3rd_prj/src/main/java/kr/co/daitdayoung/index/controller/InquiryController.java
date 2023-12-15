  package kr.co.daitdayoung.index.controller;

import java.util.List;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.daitdayoung.index.domain.InquiryDomain;
import kr.co.daitdayoung.index.service.InquiryService;
import kr.co.daitdayoung.index.vo.InquiryVO;
import kr.co.daitdayoung.index.vo.LoginVO;
import kr.co.daitdayoung.user.domain.UserCoursesInquiryDomain;

/**
 * Handles requests for the application home page.
 */
@Controller
public class InquiryController {
	
	@Autowired
	private InquiryService is;
	
	
	@RequestMapping(value = "/inquiry.do", method = RequestMethod.GET)
	public String inquiry(HttpSession session,Model model) {
		
		String usId = (String)session.getAttribute("usId");
		String insId = (String)session.getAttribute("insId");
		String itName = (String)session.getAttribute("itName");
		usId = "ui_test";
		//insId = "ins_test";
		LoginVO lVO = new LoginVO(usId,insId);
		
		List<InquiryDomain> list = is.searchInquiry(lVO);
		model.addAttribute("inquiryList", list);
		model.addAttribute("listSize", list.size());
		
		return "/inquiry/inquiry";
	}
	
	@RequestMapping(value = "/inquiry_detail.do", method = RequestMethod.GET)
	public String inquiryDetail(String inqCode, Model model) {
		
		InquiryDomain inqDomain = is.searchInquiryDetail(inqCode);
		model.addAttribute("inqDomain",inqDomain);
		return "/inquiry/inquiry_detail";
	} //문의
	
	@RequestMapping(value = "/inquiry_write.do", method = RequestMethod.GET)
	public String inquiryWrite(HttpSession session, Model model) {
		String usId = (String)session.getAttribute("usId");
		String insId = (String)session.getAttribute("insId");
		
		LoginVO lVO = new LoginVO(usId,insId);
		
		List<InquiryDomain> list = is.searchInqWrite(lVO);
		
		
		return "/inquiry/inquiry_write";
	}
	
}
	
