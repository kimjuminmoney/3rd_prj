package kr.co.daitdayoung.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ManageUsersController {

	@GetMapping("/admin/admin_users/manageUsers.do")
	public String manageUsers() {
		
		return "admin/admin_users/manageUsers";
	}
	
	//학생 상세
	@GetMapping("/admin/admin_users/detailStudent.do")
	public String detailStudent() {
		
		return "admin/admin_users/detailStudent";
	}

	//강사 상세
	@GetMapping("/admin/admin_users/detailInstrurtor.do")
	public String detailInstrurtor() {
		
		return "admin/admin_users/detailInstrurtor";
	}
	
}
