package kr.co.daitdayoung.instructor.controller;


import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.util.WebUtils;

import kr.co.daitdayoung.instructor.DAO.CourseNoticeDAO;
import kr.co.daitdayoung.instructor.domain.CourseDomain;
import kr.co.daitdayoung.instructor.domain.CourseExamDomain;
import kr.co.daitdayoung.instructor.domain.CourseNoticeDomain;
import kr.co.daitdayoung.instructor.domain.CourseQuestionDomain;
import kr.co.daitdayoung.instructor.service.CourseExamService;
import kr.co.daitdayoung.instructor.service.CourseNoticeService;
import kr.co.daitdayoung.instructor.service.CourseQuestionService;
import kr.co.daitdayoung.instructor.service.MyCourseService;
import kr.co.daitdayoung.instructor.vo.CourseExamVO;
import kr.co.daitdayoung.instructor.vo.CourseQuestionVO;
import kr.co.daitdayoung.instructor.vo.CourseVO;


@Controller
public class insCourseQuestionController {

	@Autowired
	private CourseQuestionService cqs;
	

	@RequestMapping("/insCourseTestQuestion.do")
	public String courseTestQuestion(HttpSession session,Model model) {
		System.out.println("문제관리");
		
		CourseDomain cd=(CourseDomain)session.getAttribute("cd");
		
		List<CourseQuestionDomain> cqdList = cqs.searchAllQuestion(cd.getCouCode());
		
		model.addAttribute("insId", cd.getInsId());
		model.addAttribute("cqdList", cqdList);
		model.addAttribute("couCode", cqdList.get(0).getCouCode());
		model.addAttribute("examCode", cqdList.get(0).getExamCode());
		
		
		
		return "instructor/MyClass/course/insCourseTestQuestion";
	}//courseDetail
	
	@RequestMapping("/searchOneQue.do")
	@ResponseBody
	public String searchOneQuestion(String queCode) {

		System.out.println(queCode);
		JSONObject jsonObj=new JSONObject();
		CourseQuestionDomain cqd=null;
		cqd=cqs.searchOneQuestion(queCode);
		
		jsonObj.put("queCode", cqd.getQueCode());
		jsonObj.put("examCode", cqd.getExamCode());
		jsonObj.put("couCode", cqd.getCouCode());
		jsonObj.put("queContent", cqd.getQueContent());
		jsonObj.put("insId", cqd.getInsId());
		jsonObj.put("que1", cqd.getQue1());
		jsonObj.put("que2", cqd.getQue2());
		jsonObj.put("que3", cqd.getQue3());
		jsonObj.put("que4", cqd.getQue4());
		jsonObj.put("correct", cqd.getCorrect());
		jsonObj.put("insId", cqd.getInsId());
		
		
		return jsonObj.toJSONString();
		
	}

	@RequestMapping("/addQuestion.do")
	@ResponseBody
	public String addQuestion(CourseQuestionVO cqVO) {
		System.out.println(cqVO);
		JSONObject jsonObj=new JSONObject();
		int cnt=0;
		cnt=cqs.addQuestion(cqVO);
		
		jsonObj.put("cnt", cnt);
		
		return jsonObj.toJSONString();
	}//addQuestion
	
	@RequestMapping("/modifyQuestion.do")
	@ResponseBody
	public String modifyQuestion(CourseQuestionVO cqVO) {
		JSONObject jsonObj=new JSONObject();
	
		int cnt=0;
		cnt=cqs.modifyQuestion(cqVO);
		
		jsonObj.put("cnt", cnt);
		
		return jsonObj.toJSONString();
	}//addQuestion
	
	@RequestMapping("/deleteQuestion.do")
	@ResponseBody
	public String deleteQuestion(String queCode) {
		JSONObject jsonObj=new JSONObject();
		
		int cnt=0;
		cnt=cqs.deleteQuestion(queCode);
		
		jsonObj.put("cnt", cnt);
		
		return jsonObj.toJSONString();
	}//addQuestion
	
	
	
	
}//class
