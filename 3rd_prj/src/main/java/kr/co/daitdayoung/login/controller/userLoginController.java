package kr.co.daitdayoung.login.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.daitdayoung.login.service.LoginService;
import kr.co.daitdayoung.login.vo.LoginVO;

@Controller
public class userLoginController {
	
	private static userLoginController ulc;
	
	
	@Autowired
	private LoginService ls;
	
	private userLoginController() {
		
	}
	
	public static userLoginController getInstance() {
		if(ulc == null) {
			ulc = new userLoginController();
		}
		return ulc;
	}
	
	@GetMapping("/login/login.do")
	public String loginFrm() {
		System.out.println("1111111111111111111111111111111111111111111111111111111111");
		return "login/login";
	}
	
	@PostMapping("/login/doLogin.do")
	public String loginprocess(LoginVO lVO, Model model, HttpSession session) {
		
		
		 
		 String id = "";
		 
		 model.addAttribute("flag", false);
		 
		 if("user".equals(lVO.getType())) {
			 id=ls.loginUser(lVO);
			// id = ls.searchUserLogin(lVO); 
			 if(id != null && id.equals(lVO.getId())) {
				 model.addAttribute("id", id);
				 
				 session.setAttribute("uiId",lVO.getId());
				 
				 return "redirect:/index.do";
			 }
			 
			 
		 }
		 if("ins".equals(lVO.getType())) {
			 id=ls.loginIns(lVO);
			 //id = ls.searchInsLogin(lVO); 
			 if(id != null && id.equals(lVO.getId())) {
				 model.addAttribute("id", id);
				 
				 session.setAttribute("insId",lVO.getId());
				 
				 return "redirect:/index.do";
			 }
			 
			 
		 }
		 
		 return "login/login";
	}
	
	
	
}
