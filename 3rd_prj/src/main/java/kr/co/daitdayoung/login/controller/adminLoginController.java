package kr.co.daitdayoung.login.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.daitdayoung.login.service.adminLoginService;
import kr.co.daitdayoung.login.vo.AdminLoginVO;

@Controller
public class adminLoginController {
	
	@Autowired
	private adminLoginService als;

	@GetMapping("/login/adminLogin.do")
	public  String adminLogin() {
		return "login/adminLogin";
	}
	
	@PostMapping("/login/doAdminLogin.do")
	public String loginprocess(AdminLoginVO alVO , Model model,HttpSession session) {
		alVO.setAdminPw(alVO.getAdminPw());
		String adminId="";
		model.addAttribute("flag",false);
		if("admin".equals(alVO.getAdminId())) {
			adminId=als.searchAdminLogin(alVO);
		}
		if(adminId != null && adminId.equals(alVO.getAdminId())){
			model.addAttribute("adminId",adminId);
			
			session.setAttribute("adminId",alVO.getAdminId());
			
			return "redirect:../admin/admin_dashboard/dashboard.do"; 
			
		}
		return "login/adminLogin";
	}
	
}
