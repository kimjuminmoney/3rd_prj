package kr.co.daitdayong.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ManageCouInquiryController {
	
	@GetMapping("/admin/admin_couinquery/manageCouInquery.do")
	public String manageCouInquery() {
		
		System.out.println("강좌문의 실행");
		return "admin/admin_couinquery/manageCouInquery";
	}

	//강좌문의 상세
	@GetMapping("/admin/admin_couinquery/detailCouInquery.do")
	public String detailCouInquery() {
		
		return "admin/admin_couinquery/detailCouInquery";
	}

}
