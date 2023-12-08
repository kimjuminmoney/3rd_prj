package kr.co.daitdayoung.instructor.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.daitdayoung.instructor.domain.CourseDomain;
import kr.co.daitdayoung.instructor.service.MyClassService;
import kr.co.daitdayoung.instructor.vo.CourseVO;

@SessionAttributes("insId")
@Controller
public class InsMyClassController {

	@Autowired
	private MyClassService mcs;
	
	@RequestMapping("/insMyCourse.do")
	public String myCourses(String tempId, Model model) {
		
		
		String insId="ins1";
		
		List<CourseDomain> cdList=mcs.searchMyCourses(insId);
		model.addAttribute("cdList",cdList);
		model.addAttribute("cdSize",cdList.size());
		
		model.addAttribute("insId",insId);
		
		return "instructor/MyClass/insMyCourses";
	}//myCourses
	
	
	@RequestMapping("/insTest2.do")
	public String test2() {
		
		return "instructor/MyClass/test2";
	}
	
	@RequestMapping("/insAddCourse.do")
	public String addCourse() {
		
		return "instructor/MyClass/insAddCourse";
	}

	@RequestMapping("/insAddCourseList2.do")
	public String addCourseList2(CourseVO cVO, Model model) {
		
		model.addAttribute("cVO",cVO);
		
		return "instructor/MyClass/insAddCourseList2";
	}

//	public String addAjax(CourseVO cVO, List<String> mokcha, Model model) {
//	
//		
//		return 
//	}
	@RequestMapping("/insAddCourseList.do")
	public String addCourseList() {
		
		return "instructor/MyClass/insAddCourseList";
	}
	
	
}//class
