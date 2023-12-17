package kr.co.daitdayoung.index.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.daitdayoung.index.domain.CoursesDomain;
import kr.co.daitdayoung.index.domain.IndexDomain;
import kr.co.daitdayoung.index.service.CoursesService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class CoursesController {
	
	@Autowired
	private CoursesService cs;
	
	
	@RequestMapping(value = "/courses.do", method = RequestMethod.GET)
	public String courses(Model model) {

		List<CoursesDomain> LCList = cs.searchLeftCat();
		
		model.addAttribute("LCList",LCList);
		
		return "/courses/courses";
	}
	
	
	
	
	@RequestMapping(value = "/courses_detail.do", method = RequestMethod.GET)
	public String coursesDetail(Model model) {
		
		return "/courses/courses_detail";
	} //강좌
	
	

}
