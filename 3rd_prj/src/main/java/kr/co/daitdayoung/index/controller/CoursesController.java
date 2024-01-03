package kr.co.daitdayoung.index.controller;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.daitdayoung.index.domain.CoursesDomain;
import kr.co.daitdayoung.index.domain.CoursesSideBarDomain;
import kr.co.daitdayoung.index.domain.IndexColDomain;
import kr.co.daitdayoung.index.domain.SubCategoryDomain;
import kr.co.daitdayoung.index.service.CoursesService;
import kr.co.daitdayoung.index.vo.CategoryVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class CoursesController {
	
	@Autowired
	private CoursesService cs;
	
	
	@RequestMapping(value = "/courses.do", method = RequestMethod.GET)
	public String courses(CategoryVO cVO ,Model model) {

		
		List<CoursesSideBarDomain> csbList = cs.searchMainCat();
		List<IndexColDomain> couList = cs.searchCourses(cVO);
		
		for(int i =0;i<csbList.size();i++) {
			csbList.get(i).setSubCategory(cs.searchSubCat(csbList.get(i).getMcCode()));
		}
		
		model.addAttribute("csbList",csbList);
		model.addAttribute("couList", couList);
		
		return "/courses/courses";
	}
	
	
	
	
//	@RequestMapping(value = "/courses_detail.do", method = RequestMethod.GET)
//	public String coursesDetail(Model model) {
//		
//		return "/courses/courses_detail";
//	} //강좌
	
	

}
