package kr.co.daitdayoung.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.daitdayoung.user.domain.UserQuestionsDomain;
import kr.co.daitdayoung.user.service.UserExamService;
import kr.co.daitdayoung.user.vo.UserExamVO;

@Controller
public class UserExamController {
	
	@Autowired
	private UserExamService ues;
	
	@GetMapping("/user/userExam.do")
	public String userMyExam(UserExamVO ucVO,HttpSession session, Model model) {
		
		
		System.out.println(ucVO);
		List<UserQuestionsDomain> uceList = ues.searchQuestionList(ucVO.getCouCode());
		
		model.addAttribute("uceList",uceList);
		
		
		return "user/myExam/userExam";
	}
	
	@ResponseBody
	@PostMapping(value = "/user/userExamProcess.do",produces="application/text;charset=utf-8")
	public String userExamProcess(String queCode,Model model) {
		System.out.println(queCode);
		JSONObject json = ues.searchQuestion(queCode);
		
		return json.toJSONString();
	}

}
