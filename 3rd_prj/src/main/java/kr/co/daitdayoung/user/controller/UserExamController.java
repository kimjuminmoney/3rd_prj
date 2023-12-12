package kr.co.daitdayoung.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.daitdayoung.user.domain.UserCoursesExamDomain;
import kr.co.daitdayoung.user.service.UserExamService;
import kr.co.daitdayoung.user.vo.UserExamVO;

@Controller
public class UserExamController {
	
	@Autowired
	private UserExamService ues;
	
	@GetMapping("/user/userExam.do")
	public String userMyExam(UserExamVO ucVO,HttpSession session, Model model) {
		
		
		System.out.println(ucVO);
		List<UserCoursesExamDomain> uceList = ues.searchQuestionList(ucVO.getCouCode());
		
		model.addAttribute("uceList",uceList);
		
		
		return "user/myExam/userExam";
	}
	

}
