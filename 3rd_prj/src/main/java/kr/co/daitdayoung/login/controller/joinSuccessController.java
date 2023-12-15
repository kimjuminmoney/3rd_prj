package kr.co.daitdayoung.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class joinSuccessController {

	@GetMapping("/login/joinSuccess.do")
	public String joinSuccess() {
		return "login/joinSuccess";
	}
}
