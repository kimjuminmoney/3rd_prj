package kr.co.daitdayoung.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FindIdDetailController {
	
	@GetMapping("/login/findIdDetail.do")
	public String findIdDetail() {
		return "user/login/findIdDetail";
	}

}
