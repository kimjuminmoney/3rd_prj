package kr.co.daitdayoung.instructor.controller;


import java.io.File;
import java.io.IOException;
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

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.daitdayoung.instructor.DAO.CourseNoticeDAO;
import kr.co.daitdayoung.instructor.domain.CourseDomain;
import kr.co.daitdayoung.instructor.domain.CourseLectureDomain;
import kr.co.daitdayoung.instructor.domain.CourseNoticeDomain;
import kr.co.daitdayoung.instructor.service.CourseLectureService;
import kr.co.daitdayoung.instructor.service.CourseNoticeService;
import kr.co.daitdayoung.instructor.service.MyCourseService;
import kr.co.daitdayoung.instructor.vo.CourseLectureVO;
import kr.co.daitdayoung.instructor.vo.CourseVO;


@Controller
@SessionAttributes("cd")
public class insCourseLectureController {

	@Autowired
	private CourseLectureService cls;
	
	@RequestMapping("/insCourseLecture.do")
	public String courseLecture(HttpSession session, Model model) {
		System.out.println("강의등록");
		
		CourseDomain cd= (CourseDomain)session.getAttribute("cd");
		
		
		List<CourseLectureDomain> cldList= null;
		cldList = cls.searchAllLecture(cd.getCouCode());
		
		model.addAttribute("cldList", cldList);
		
		return "instructor/MyClass/course/insCourseLecture";
	}//courseDetail

	@RequestMapping("/searchOneLecture.do")
	@ResponseBody
	public String searchOneLecture(String lecCode, Model model) {
		System.out.println("강의등록");
		JSONObject jsonObj=new JSONObject();
		
		CourseLectureDomain cld= null;
		cld = cls.searchOneLecture(lecCode);
		
		jsonObj.put("couCode", cld.getCouCode());
		jsonObj.put("insId", cld.getInsId());
		jsonObj.put("lecCode", cld.getLecCode());
		jsonObj.put("lecContent", cld.getLecContent());
		jsonObj.put("lecName", cld.getLecName() );
		jsonObj.put("videoName", cld.getVideoName());
		
		model.addAttribute("cld", cld);
		
		return jsonObj.toJSONString();
	}//courseDetail
	
	@RequestMapping("/deleteFile.do")
	@ResponseBody
	public String deleteFile(CourseLectureVO clVO,HttpServletRequest request, HttpSession session, Model model) {
		JSONObject jsonObj = new JSONObject();
		
		CourseDomain cd=(CourseDomain)session.getAttribute("cd");
		String couCode=cd.getCouCode();
		
		int cnt=0;
		String oldFile=request.getParameter("oldFile");
		String lecCode=request.getParameter("lecCode");
		
		File delFile=new File(request.getSession().getServletContext().getRealPath("/") +"3rd_prj/src/main/webapp/courses_data/"+couCode+"/video/"+oldFile);
		
		delFile.delete();
		
		clVO.setCouCode(couCode);
		clVO.setLecCode(lecCode);
		
		cnt = cls.updateVideo(clVO);
		jsonObj.put("cnt",cnt);
		
		return jsonObj.toJSONString();
	}
	
	
	@RequestMapping("/updateLecture.do")
	public String updateLecture(CourseLectureVO clVO,HttpServletRequest request, HttpSession session, Model model) {
		System.out.println(clVO);
		CourseDomain cd=(CourseDomain)session.getAttribute("cd");
		String couCode=cd.getCouCode();
		
		int cnt=0;
		int maxSize=1024*1024*50;
		
		System.out.println( request.getSession().getServletContext().getRealPath("/") +"3rd_prj/src/main/webapp/courses_data");
		File saveDir=new File(request.getSession().getServletContext().getRealPath("/") +"3rd_prj/src/main/webapp/courses_data/"+couCode+"/video/");
		saveDir.mkdirs();
		
		MultipartRequest mr=null;
		try {
		mr=new MultipartRequest(request, saveDir.getAbsolutePath(),
					maxSize, "UTF-8", new DefaultFileRenamePolicy());
		} catch (IOException e) {
			e.printStackTrace();
		}
		String video=mr.getFilesystemName("newFile");
		
		String lecCode=mr.getParameter("lecCode");
		String lecContent=mr.getParameter("lecContent");

		clVO.setCouCode(couCode);
		clVO.setInsId(cd.getInsId());
		clVO.setLecContent(lecContent);
		clVO.setVideoName(video);
		clVO.setLecCode(lecCode);
		
		cnt = cls.updateLecture(clVO);
		
		
		return "forward:insCourseLecture.do";
	}

	
	
}//class
