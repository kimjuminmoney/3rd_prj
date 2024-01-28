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

import kr.co.daitdayoung.user.domain.UserAnswerDomain;
import kr.co.daitdayoung.user.domain.UserQuestionsDomain;
import kr.co.daitdayoung.user.service.UserComplecationService;
import kr.co.daitdayoung.user.service.UserExamService;
import kr.co.daitdayoung.user.vo.UserAnswerVO;
import kr.co.daitdayoung.user.vo.UserCoursesVO;
import kr.co.daitdayoung.user.vo.UserExamVO;

@Controller
public class UserExamController {

	@Autowired
	private UserExamService ues;
	
	@Autowired
	private UserComplecationService ucts;
	
	//시험응시 데이터 입력
	@ResponseBody
	@PostMapping(value = "/user/userExamInputProcess.do", produces = "application/text;charset=utf-8")
	public String userExamInputProcess(UserExamVO ueVO) {
		
		String examDateStr = ues.userExamParticipation(ueVO);
		
		return examDateStr;
	}// userExamProcess


	@PostMapping("/user/userExam.do")
	public String userExam(UserExamVO ueVO, HttpSession session, Model model) {
		String uiId = (String) session.getAttribute("uiId");
		ueVO.setUiId(uiId);
		String epCode = "";
		epCode = ues.searchEpCode(ueVO);
		List<UserQuestionsDomain> uceList = ues.searchQuestionList(ueVO.getCouCode());

		model.addAttribute("uceList", uceList);
		model.addAttribute("maxSize", uceList.size());
		model.addAttribute("epCode", epCode);
		model.addAttribute("examDate", ueVO.getExamDateStr());

		return "user/myExam/userExam";
	}// userMyExam

	//시험문제 가져오는 ajax
	@ResponseBody
	@PostMapping(value = "/user/userQueProcess.do", produces = "application/text;charset=utf-8")
	public String userQueProcess(String queCode) {
		JSONObject json = ues.searchQuestion(queCode);
		return json.toJSONString();
	}// userExamProcess

	@PostMapping("/user/userExamProcess.do")
	public String userExamProcess(UserAnswerVO uaVO, HttpSession session) {
		String uiId = (String)session.getAttribute("uiId");
		uaVO.setUiId(uiId);
		List<UserAnswerVO> uaList = ues.searchCorrectList(uaVO);
		ues.addAnswer(uaList);
		
		//문제 수
		int queCnt = uaVO.getQueCodeArr().length;
		//정답 수
		double curCnt = 0D;
		for(UserAnswerVO vo : uaList) {
			//정답 Y만 추출해서 ++
			if("Y".equals(vo.getAsStatus())) {
				curCnt++;
			}//end if
		}//end for
		
		int score = (int)((curCnt/ queCnt) * 100);
		UserCoursesVO ucVO = new UserCoursesVO();
		ucVO.setCrgCode(uaVO.getCrgCode());
		ucVO.setExamScore(score);
		ucVO.setEpCode(uaVO.getEpCode());
		ucVO.setExamPass("N");
		int examResults = (Integer)session.getAttribute("examResults");
		if(examResults <= score) {
			ucVO.setExamPass("Y");
			int enrollRate = (Integer)session.getAttribute("enrollRate");
			int lecCnt = (Integer)session.getAttribute("lecCnt");
			ucVO.setRateCnt((Integer) session.getAttribute("progressRate"));
			ucVO.setEnrollRate(enrollRate);
			ucVO.setLecCnt(lecCnt);
			ucts.modifyCompletionStatus(ucVO);
		}
		ues.modifyExamScore(ucVO);
		
		return "user/courses/courses_exam_result";
	}// userExamProcess
	
	@GetMapping("/user/userExamResult.do")
	public String userExamResult(String epCode, HttpSession session, Model model) {
		List<UserAnswerDomain> list = ues.seachAnswerList(epCode);
		
		model.addAttribute("uadList",list);
		model.addAttribute("maxSize", list.size());
		//리스트에 그냥 스코어 값을 가져왔어서 리스트의 0번째 점수를 넣어둠
		model.addAttribute("examScore", list.get(0).getExamScore());
		
		
		return "user/myExam/userExam_result";
	}// userMyExam
	
	//답안지에서 시험문제, 답안 가져오는 ajax
	@ResponseBody
	@PostMapping(value = "/user/userResultProcess.do", produces = "application/text;charset=utf-8")
	public String userResultProcess(UserAnswerVO uaVO) {
		
		JSONObject json = ues.searchAnswerDetail(uaVO);
		return json.toJSONString();
	}// userExamProcess
	
	

}// class
