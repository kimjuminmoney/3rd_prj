package kr.co.daitdayong.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ManageInquiryController {

	@GetMapping("/admin/admin_inquery/manageInquery.do")
	public String manageInquery() {
		
		System.out.println("일반문의 실행");
		return "admin/admin_inquery/manageInquery";
	}

	//일반문의 상세
	@GetMapping("/admin/admin_inquery/detailInquery.do")
	public String detailInquery() {
		
		return "admin/admin_inquery/detailInquery";
	}
	
}
