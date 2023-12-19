package kr.co.daitdayoung.instructor.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.instructor.DAO.CourseExamDAO;
import kr.co.daitdayoung.instructor.domain.CourseExamDomain;
import kr.co.daitdayoung.instructor.vo.CourseExamVO;

@Component
public class CourseExamService {

	@Autowired
	private CourseExamDAO ceDAO;
	
	public CourseExamDomain searchExam(String couCode) {
		CourseExamDomain ced=null;
		
		ced= ceDAO.selectExam(couCode);
		
		return ced;
		
	}
	
	public int updateExam(CourseExamVO ceVO) {
		int cnt;
		
		cnt = ceDAO.updateExam(ceVO);
		
		return cnt;
	}
	
}
