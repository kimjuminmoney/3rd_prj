package kr.co.daitdayoung.index.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.daitdayoung.index.domain.InquiryDomain;
import kr.co.daitdayoung.index.domain.NoticeDomain;
import kr.co.daitdayoung.index.service.InquiryService;
import kr.co.daitdayoung.index.service.NoticeService;
import kr.co.daitdayoung.index.vo.LoginVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService ns;
	
	@RequestMapping(value = "/notice.do", method = RequestMethod.GET)
	public String notice(Model model) {
		
		List<NoticeDomain> list = ns.searchNotice();
		model.addAttribute("noticeList", list);
		
		return "/notice/notice";
	} //공지
	
	@RequestMapping(value = "/notice_detail.do", method = RequestMethod.GET)
	public String noticeDetail(Model model) {
		
		return "/notice/notice_detail";
	} //공지
	

	
}
