package kr.co.daitdayoung.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FindPwDetailController {
	
	@GetMapping("/login/findPwDetail.do")
	public String findPwDetail() {
		return "login/findPwDetail";
	}

}
