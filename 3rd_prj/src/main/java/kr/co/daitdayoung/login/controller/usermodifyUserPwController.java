package kr.co.daitdayoung.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class usermodifyUserPwController {
	
	
	@Autowired
	
	@GetMapping("/login/modifyUserPw.do")
	public String modifyUserPw() {
		return "login/modifyUserPw";
	}
	
//	  @GetMapping("/login/login.do") 
//	  public String loginFrm() {
//		  
//		return "login/login"; 
//	 }
	 

}
