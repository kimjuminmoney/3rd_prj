package kr.co.daitdayoung.instructor.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.daitdayoung.instructor.domain.CourseDomain;
import kr.co.daitdayoung.instructor.service.MyClassService;

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

	@RequestMapping("/insAddCourseList.do")
	public String addCourseList() {
		
		return "instructor/MyClass/insAddCourseList";
	}
	
	@RequestMapping("/insAddCourseList2.do")
	public String addCourseList2() {
		
		return "instructor/MyClass/insAddCourseList2";
	}
	
}//class
