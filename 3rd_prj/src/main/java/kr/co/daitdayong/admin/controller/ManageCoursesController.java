package kr.co.daitdayong.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.daitdayoung.admin.domain.ManageCoursesDomain;
import kr.co.daitdayoung.admin.service.ManageCoursesService;

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

	
	@GetMapping("/admin/admin_courses/detailCourse.do")
	public String detailCourses() {
		
		return "admin/admin_courses/detailCourse";
	}
	
}
