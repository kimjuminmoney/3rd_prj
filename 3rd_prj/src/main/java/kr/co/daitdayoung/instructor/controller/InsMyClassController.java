package kr.co.daitdayoung.instructor.controller;

import java.io.File;
import java.io.IOException;
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
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

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
	public String myCourses(HttpSession session, String tempId, Model model) {
		
		
		String insId=(String)session.getAttribute("insId");
//		String insId="ins1";
		
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
	public String addCourse2(CourseVO cVO,HttpSession session, HttpServletRequest request,Model model) {

		cVO.setInsId((String)session.getAttribute("insId"));
		
		String couCode=(String)session.getAttribute("couCode");
		
		
		int cnt=0;
		int maxSize=1024*1024*5;

		File saveDir=new File(request.getSession().getServletContext().getRealPath("/") +"3rd_prj/src/main/webapp/courses_data/"+couCode+"/");
		saveDir.mkdirs();
		
		MultipartRequest mr=null;
		try {
		mr=new MultipartRequest(request, saveDir.getAbsolutePath(),
					maxSize, "UTF-8", new DefaultFileRenamePolicy());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		model.addAttribute("cVO", cVO);
		
		return "instructor/MyClass/insAddCourse2";
	}
	
	@RequestMapping("/insAddCourseTry.do")
	public String addCourseTry(HttpSession session, String[] contentsList, Model model) {
		CourseVO cVO = (CourseVO)(session.getAttribute("cVO"));
		
		cVO.setContentList(contentsList);
		
		int cnt=0;
		iacs.addCourse(cVO);
		
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
