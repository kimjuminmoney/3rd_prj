package kr.co.daitdayoung.login.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.daitdayoung.login.service.LoginService;
import kr.co.daitdayoung.login.vo.LoginVO;

@Controller
public class userLoginController {
	
	@Autowired
	private LoginService ls;
	
	@GetMapping("/login/login.do")
	public String loginFrm() {
		System.out.println("1111111111111111111111111111111111111111111111111111111111");
		return "login/login";
	}
	
	@PostMapping("/login/doLogin.do")
	public String loginprocess(LoginVO lVO, Model model) {
		
		
		 lVO.setPw(lVO.getPw());
		 String id = "";
		 model.addAttribute("flag", false);
		 if("user".equals(lVO.getType())) {
			 id = ls.searchUserLogin(lVO); 
		 }
		 if("ins".equals(lVO.getType())) {
			 id = ls.searchInsLogin(lVO); 
		 }
		 if(id != null && id.equals(lVO.getId())) {
			 model.addAttribute("id", id);
			 return "index/index";
		 }
		 return "login/login";
	}
	
	
}
