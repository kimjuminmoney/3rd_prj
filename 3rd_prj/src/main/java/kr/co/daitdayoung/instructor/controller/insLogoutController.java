package kr.co.daitdayoung.instructor.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;

@Controller
public class insLogoutController {
	
	@RequestMapping("/logout.do")
	public String logoutProcess(SessionStatus ss,HttpServletRequest request) {
		ss.setComplete();
		
		return "forward:index.do";
	}
}
