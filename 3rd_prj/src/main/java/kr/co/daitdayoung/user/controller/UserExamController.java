package kr.co.daitdayoung.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserExamController {
	
	@GetMapping("/user/userExam.do")
	public String userMyExam() {
		System.out.println("시험맵핑이라라요");
		return "user/myExam/myExam";
	}
	

}
