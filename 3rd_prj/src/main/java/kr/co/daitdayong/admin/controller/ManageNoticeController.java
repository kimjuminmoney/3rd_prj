package kr.co.daitdayong.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ManageNoticeController {

	@GetMapping("/admin/admin_notice/manageNotice.do")
	public String manageNotice() {
		
		System.out.println("공지사항 실행");
		return "admin/admin_notice/manageNotice";
	}

	//일반공지사항 상세
	@GetMapping("/admin/admin_notice/detailNotice.do")
	public String detailNotice() {
		
		return "admin/admin_notice/detailNotice";
	}

	//강좌공지사항 상세
	@GetMapping("/admin/admin_notice/detailCouNotice.do")
	public String detailCouNotice() {
		
		return "admin/admin_notice/detailCouNotice";
	}
	
	//공지사항 추가
	@GetMapping("/admin/admin_notice/addNotice.do")
	public String addNotice() {
		
		return "admin/admin_notice/addNotice";
	}
	
}
