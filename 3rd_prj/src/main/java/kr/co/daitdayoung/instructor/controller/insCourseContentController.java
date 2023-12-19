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
import kr.co.daitdayoung.instructor.domain.CourseLectureDomain;
import kr.co.daitdayoung.instructor.domain.CourseNoticeDomain;
import kr.co.daitdayoung.instructor.service.CourseContentService;
import kr.co.daitdayoung.instructor.service.CourseNoticeService;
import kr.co.daitdayoung.instructor.service.MyCourseService;
import kr.co.daitdayoung.instructor.vo.CourseLectureVO;
import kr.co.daitdayoung.instructor.vo.CourseVO;


@Controller
@SessionAttributes("cd")
public class insCourseContentController {

	@Autowired
	private CourseContentService ccs;
	
	@RequestMapping("/insCourseContent.do")
	public String courseContent(HttpSession session,Model model) {
		System.out.println("목차");
		CourseDomain cd=(CourseDomain)session.getAttribute("cd");
		
		List<CourseLectureDomain> cldList=ccs.searchAllLecture(cd.getCouCode());
		
		model.addAttribute("cldList", cldList);
		
		
		
		return "instructor/MyClass/course/insCourseContent";
	}//courseDetail
	
	@RequestMapping("/addLecture.do")
	@ResponseBody
	public String addLecture(HttpSession session, CourseLectureVO clVO) { 
		JSONObject jsonObj=new JSONObject();
		CourseDomain cd=(CourseDomain)session.getAttribute("cd");
		System.out.println("test");
		
		
		clVO.setCouCode(cd.getCouName());
		clVO.setInsId(cd.getInsId());
		
		int cnt=0;
		
		cnt = ccs.addLecture(clVO);
		
		jsonObj.put("cnt", cnt);
		
		return jsonObj.toJSONString();
	}

	
	@RequestMapping("/modifyLecture.do")
	@ResponseBody
	public String modifyLec(HttpServletRequest request, CourseLectureVO clVO, HttpSession session) { 
		JSONObject jsonObj=new JSONObject();
		
		int cnt=0;
		
		CourseDomain cd=(CourseDomain)session.getAttribute("cd");
		String lecCode=request.getParameter("lecCode");
		String lecName=request.getParameter("lecName");
		
		clVO.setCouCode(cd.getCouCode());
		clVO.setLecCode(lecCode);
		clVO.setLecName(lecName);
		
		cnt=ccs.updateLecture(clVO);
		jsonObj.put("cnt", cnt);
		
		return jsonObj.toJSONString();
	}
	
	
}//class
