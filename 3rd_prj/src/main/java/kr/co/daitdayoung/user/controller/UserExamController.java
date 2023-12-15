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

import kr.co.daitdayoung.user.domain.UserCoursesExamDomain;
import kr.co.daitdayoung.user.domain.UserQuestionsDomain;
import kr.co.daitdayoung.user.service.UserExamService;
import kr.co.daitdayoung.user.vo.UserAnswerVO;
import kr.co.daitdayoung.user.vo.UserExamVO;

@Controller
public class UserExamController {

	@Autowired
	private UserExamService ues;

	@PostMapping("/user/userExam.do")
	public String userMyExam(UserExamVO ucVO, HttpSession session, Model model) {
		String uiId = (String) session.getAttribute("uiId");
		ucVO.setUiId(uiId);
		System.out.println("-------------------------------------------------------------");
		System.out.println(ucVO);
		ues.modifyExamParticipation(ucVO);
		List<UserQuestionsDomain> uceList = ues.searchQuestionList(ucVO.getCouCode());

		model.addAttribute("uceList", uceList);
		model.addAttribute("maxSize", uceList.size());

		return "user/myExam/userExam";
	}// userMyExam

	@ResponseBody
	@PostMapping(value = "/user/userQueProcess.do", produces = "application/text;charset=utf-8")
	public String userQueProcess(String queCode) {
		JSONObject json = ues.searchQuestion(queCode);
		return json.toJSONString();
	}// userExamProcess

	@PostMapping("/user/userExamProcess.do")
	public String userExamProcess(UserAnswerVO uaVO) {
		
		List<UserAnswerVO> uaList = ues.searchCorrectList(uaVO);
		
		ues.addAnswer(uaVO);
		
		
		

		return "";
	}// userExamProcess
	
	

}// class
