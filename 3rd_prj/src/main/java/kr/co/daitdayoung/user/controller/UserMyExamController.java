package kr.co.daitdayoung.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserMyExamController {
	
	public String examRecodeList(String str, Model model ) {
		return "";
	}
	
	@GetMapping("/user/myExam.do")
	public String userMyExam() {
		return "user/myExam/myExam";
	}
	
	@GetMapping("/user/myExam2.do")
	public String userMyExam2() {
		return "user/myExam/myExam2";
	}

}
