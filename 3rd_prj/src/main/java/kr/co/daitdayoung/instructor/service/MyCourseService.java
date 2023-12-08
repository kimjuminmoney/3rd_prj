package kr.co.daitdayoung.instructor.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.instructor.DAO.MyCourseDAO;
import kr.co.daitdayoung.instructor.domain.CourseDomain;
import kr.co.daitdayoung.instructor.vo.CourseVO;

@Component
public class MyCourseService {
	
	 @Autowired 
	 private MyCourseDAO mcDAO;
	 
	 public CourseDomain searchCourse(CourseVO cVO) {
		CourseDomain cd=null;
		
		cd= mcDAO.selectOneCourse(cVO);
		
		
		return cd;
	 }//searchCourse
	  
	
	
}
