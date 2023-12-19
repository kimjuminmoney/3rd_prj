package kr.co.daitdayoung.admin.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.daitdayoung.admin.domain.ManageCoursesDomain;
import kr.co.daitdayoung.admin.service.ManageCoursesService;
import kr.co.daitdayoung.admin.vo.ManageCoursesVO;
import kr.co.daitdayoung.index.domain.CoursesDetailDomain;
import kr.co.daitdayoung.index.domain.CoursesLectureDomain;
import kr.co.daitdayoung.index.domain.CoursesRegistrationDomain;
import kr.co.daitdayoung.index.vo.CoursesRegistrationVO;

@Controller
public class ManageCoursesController {
	
	@Autowired
	private ManageCoursesService mcs;
	
	@GetMapping("/admin/admin_courses/manageCourses.do")
	public String manageCourses(Model model) {
		List<ManageCoursesDomain> coursesList = mcs.searchCourses();
		
		model.addAttribute("coursesList", coursesList);
		
		return "admin/admin_courses/manageCourses";
	}
	
	@RequestMapping(value = "admin/admin_courses/detailCourse.do", method = RequestMethod.GET)
	public String detailCourses(CoursesRegistrationVO crVO,Model model, HttpSession session) {
		String uiId = (String)session.getAttribute("uiId");
		crVO.setUiId(uiId);
		CoursesDetailDomain cdDomain = mcs.searchCoursesDetail(crVO.getCouCode());
		List<CoursesLectureDomain> clList = mcs.searchLectureList(crVO.getCouCode());
		int CompletionCnt = mcs.searchCompletionCnt(crVO.getCouCode());
		List<CoursesRegistrationDomain> crDomain = mcs.searchCoursesRegistration(null);
		
		model.addAttribute("cdDomain",cdDomain);
		model.addAttribute("clList",clList);
		model.addAttribute("CompletionCnt", CompletionCnt);
		model.addAttribute("crDomain",crDomain);
		
		return "admin/admin_courses/detailCourse";
	} //강좌
	
	@ResponseBody
	@GetMapping("/admin/admin_courses/modapp.do")
	public String processmodifyApprove(Model model, String couCode, ManageCoursesVO mcVO) {
		JSONObject jsonObj = new JSONObject();
		
		int modCnt = 0;
		int addCnt = 0;
		
		modCnt = mcs.modifyApprove(couCode);
		addCnt = mcs.addExam(mcVO);
		
		jsonObj.put("modCnt", modCnt);
		jsonObj.put("addCnt", addCnt);
		
		return jsonObj.toJSONString();
	}//processmodifyApprove
	
}
