package kr.co.daitdayoung.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
	public String detailStudent(Model model, String uiId, HttpServletRequest request) {
		
		uiId=request.getParameter("uiId");
		
		ManageUsersDomain detailStu=mus.searchDetailStu1(uiId);
		List<ManageUsersDomain> detailStuList = mus.searchDetailStu2(uiId);
		
		model.addAttribute("uiId",detailStu.getUiId());
		model.addAttribute("uiName",detailStu.getUiName());
		model.addAttribute("uiBirth",detailStu.getUiBirth());
		model.addAttribute("uiJoindate",detailStu.getUiJoindate());
		model.addAttribute("detailStuList",detailStuList);
		
		return "admin/admin_users/detailStudent";
	}

	//강사 상세
	@GetMapping("/admin/admin_users/detailInstructor.do")
	public String detailInstrurtor(Model model, String insId, HttpServletRequest request) {
		
		insId = request.getParameter("insId");
		
		ManageUsersDomain detailIns = mus.searchDetailIns1(insId);
		List<ManageUsersDomain> detailInsList = mus.searchDetailIns2(insId);
		
		model.addAttribute("insId", detailIns.getInsId());
		model.addAttribute("insName", detailIns.getInsName());
		model.addAttribute("insBirth", detailIns.getInsBirth());
		model.addAttribute("insTel", detailIns.getInsTel());
		model.addAttribute("insJoindate", detailIns.getInsJoindate());
		model.addAttribute("insEmail", detailIns.getInsEmail());
		model.addAttribute("detailInsList", detailInsList);
		
		return "admin/admin_users/detailInstructor";
	}
	
}
