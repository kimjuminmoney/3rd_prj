package kr.co.daitdayoung.instructor.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.oreilly.servlet.MultipartRequest;

import kr.co.daitdayoung.instructor.domain.CourseDomain;
import kr.co.daitdayoung.instructor.domain.MainCategoryDomain;
import kr.co.daitdayoung.instructor.domain.SubCategoryDomain;
import kr.co.daitdayoung.instructor.service.CategoryService;
import kr.co.daitdayoung.instructor.service.MyClassService;
import kr.co.daitdayoung.instructor.service.insAddCourseService;
import kr.co.daitdayoung.instructor.vo.CourseVO;
import kr.co.daitdayoung.instructor.vo.LectureVO;

@SessionAttributes({"insId","cVO"})
@Controller
public class InsMyClassController {

	@Autowired
	private MyClassService mcs;
	
	@Autowired
	private CategoryService css;

	@Autowired
	private insAddCourseService iacs;
	
	
	@RequestMapping("/insMyCourse.do")
	public String myCourses(String tempId, Model model) {
		
		
		String insId="ins1";
		
		List<CourseDomain> cdList=mcs.searchMyCourses(insId);
		model.addAttribute("cdList",cdList);
		model.addAttribute("cdSize",cdList.size());
		
		model.addAttribute("insId",insId);
		
		return "instructor/MyClass/insMyCourses";
	}//myCourses
	
	
	@RequestMapping("/insAddCourse.do")
	public String addCourse(Model model) {
		
		List<MainCategoryDomain> mcList=css.searchMainCategory();
		model.addAttribute("mcList",mcList);
		
		return "instructor/MyClass/insAddCourse";
	}

	@RequestMapping("/subcategory.do")
	@ResponseBody
	public String subCategory (String mcCode) {
		
		JSONObject jsonObj=css.searchSubCategory(mcCode);
		
		return jsonObj.toJSONString();
	}
	
	@RequestMapping("/insAddCourse2.do")
	public String addCourse2(CourseVO cVO,HttpServletRequest request, Model model) {
		
		cVO.setInsId((String)request.getAttribute("insId"));
		System.out.println("ac2 / "+cVO);
		
		model.addAttribute("cVO", cVO);
		
		return "instructor/MyClass/insAddCourse2";
	}
	
	@RequestMapping("/insAddCourseTry.do")
	public String addCourseTry(HttpSession session, String[] contentsList, Model model) {
		CourseVO cVO = (CourseVO)(session.getAttribute("cVO"));
		
		cVO.setContentList(contentsList);
		System.out.println( "act / "+cVO );
		System.out.println( "act / "+cVO.getContentList() );
		
		int cnt=0;
		cnt = iacs.addCourse(cVO);
		
//		session.removeAttribute("cVO");
		
		return "forward:insAddCourseList.do";
	}
	//신청목록
	@RequestMapping("/insAddCourseList.do")
	public String addCourseList() {
		
		return "instructor/MyClass/insAddCourseList";
	}
	
	@RequestMapping("/insAddCourseList2.do")
	public String addCourseList2(CourseVO cVO, Model model) {
		
		
		model.addAttribute("cVO",cVO);
		
		
		return "instructor/MyClass/insAddCourseList2";
	}


	
	
}//class
