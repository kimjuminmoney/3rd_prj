package kr.co.daitdayoung.index.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.daitdayoung.index.domain.CodeDomain;
import kr.co.daitdayoung.index.domain.CoursesDetailDomain;
import kr.co.daitdayoung.index.domain.CoursesLectureDomain;
import kr.co.daitdayoung.index.domain.CoursesRegistrationDomain;
import kr.co.daitdayoung.index.service.CoursesDetailService;
import kr.co.daitdayoung.index.vo.CoursesRegistrationVO;

@Controller
public class CoursesDetailController {

	@Autowired
	private CoursesDetailService cdService;

	@RequestMapping(value = "/courses_detail.do", method = RequestMethod.GET)
	public String coursesDetail(CoursesRegistrationVO crVO, Model model, HttpSession session) {
		String uiId = (String) session.getAttribute("uiId");
		crVO.setUiId(uiId);
		CoursesDetailDomain cdDomain = cdService.searchCoursesDetail(crVO.getCouCode());
		List<CoursesLectureDomain> clList = cdService.searchLectureList(crVO.getCouCode());
		int CompletionCnt = cdService.searchCompletionCnt(crVO.getCouCode());
		CoursesRegistrationDomain crDomain = cdService.searchCoursesRegistration(crVO);
		
		
		model.addAttribute("cdDomain", cdDomain);
		model.addAttribute("clList", clList);
		model.addAttribute("CompletionCnt", CompletionCnt);
		if (crDomain != null) {
			model.addAttribute("crDomain", crDomain);
		}

		return "/courses/courses_detail";
	} // 강좌
	
	
	//수강신청
	@ResponseBody
	@PostMapping(value = "/courses_registration.do", produces = "application/text;charset=utf-8")
	public String userQueProcess(CoursesRegistrationVO crVO, HttpSession session) {
		String uiId = (String) session.getAttribute("uiId");
		crVO.setUiId(uiId);

		int cnt = 0;
		CodeDomain cDomain = cdService.addCompletion(crVO);
		crVO.setCrgCode(cDomain.getCrgCode());
		
		cnt = cDomain.getCnt();
		cnt += cdService.addCoursesRecodr(crVO);
		cnt += cdService.addExamParticipationInsert(crVO);
		boolean flag = false;
		JSONObject json = new JSONObject();
		if(cnt > 2) {
			flag = true;
		}
		json.put("flag", flag);
		return json.toJSONString();
	}// userExamProcess

}
