package kr.co.daitdayong.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DashboardController {
	
	@GetMapping("/admin/admin_dashboard/dashboard.do")
	public String dashboard() {
		
		System.out.println("대시보드 실행");
		return "admin/admin_dashboard/dashboard";
	}
	
}
