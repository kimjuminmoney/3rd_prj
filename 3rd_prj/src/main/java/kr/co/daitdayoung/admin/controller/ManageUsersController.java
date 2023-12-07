package kr.co.daitdayoung.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.daitdayoung.admin.domain.ManageUsersDomain;
import kr.co.daitdayoung.admin.service.ManageUsersService;

@Controller
public class ManageUsersController {

	@Autowired
	private ManageUsersService mus;
	
	@GetMapping("/admin/admin_users/manageUsers.do")
	public String manageUsers(Model model) {
		
		List<ManageUsersDomain> studentsList = mus.searchStudents();
		List<ManageUsersDomain> instructorsList = mus.searchInstructors();
		
		model.addAttribute("studentsList", studentsList);
		model.addAttribute("instructorsList", instructorsList);
		
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
