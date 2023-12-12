package kr.co.daitdayoung.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.daitdayoung.admin.domain.ManageNoticeDomain;
import kr.co.daitdayoung.admin.service.ManageNoticeService;

@Controller
public class ManageNoticeController {

	@Autowired
	private ManageNoticeService mns;
	
	@GetMapping("/admin/admin_notice/manageNotice.do")
	public String manageNotice(Model model) {
		
		List<ManageNoticeDomain> noticeList = mns.searchNotice();
		List<ManageNoticeDomain> cnList = mns.searchCouNotice();
		
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("cnList", cnList);
		
		return "admin/admin_notice/manageNotice";
	}

	//일반공지사항 상세
	@GetMapping("/admin/admin_notice/detailNotice.do")
	public String detailNotice(Model model, String notCode, HttpServletRequest request) {
		
		notCode=request.getParameter("notCode");
		
		ManageNoticeDomain detailNot = mns.searchDetailNot(notCode);
		
		model.addAttribute("adminName", detailNot.getAdminName());
		model.addAttribute("notTitle", detailNot.getNotTitle());
		model.addAttribute("notContent", detailNot.getNotContent());
		model.addAttribute("notDate", detailNot.getNotDate());
		
		return "admin/admin_notice/detailNotice";
	}

	//강좌공지사항 상세
	@GetMapping("/admin/admin_notice/detailCouNotice.do")
	public String detailCouNotice(Model model, String cnCode, HttpServletRequest request) {
		
		cnCode = request.getParameter("cnCode");
		
		ManageNoticeDomain detailCn = mns.searchDetailCn(cnCode);
		
		model.addAttribute("insName", detailCn.getInsName());
		model.addAttribute("cnTitle", detailCn.getCnTitle());
		model.addAttribute("cnDate", detailCn.getCnDate());
		model.addAttribute("cnContent", detailCn.getCnContent());
		model.addAttribute("couName", detailCn.getCouName());
		
		return "admin/admin_notice/detailCouNotice";
	}
	
	//공지사항 추가
	@GetMapping("/admin/admin_notice/addNotice.do")
	public String addNotice() {
		
		return "admin/admin_notice/addNotice";
	}
	
}
