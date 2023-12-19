package kr.co.daitdayoung.instructor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.instructor.DAO.CourseExamDAO;
import kr.co.daitdayoung.instructor.DAO.CourseQuestionDAO;
import kr.co.daitdayoung.instructor.domain.CourseExamDomain;
import kr.co.daitdayoung.instructor.domain.CourseQuestionDomain;
import kr.co.daitdayoung.instructor.vo.CourseExamVO;
import kr.co.daitdayoung.instructor.vo.CourseQuestionVO;

@Component
public class CourseQuestionService {

	@Autowired
	private CourseQuestionDAO cqDAO;
	
	public List<CourseQuestionDomain> searchAllQuestion(String couCode) {
		
		List<CourseQuestionDomain> cqdList =null;
		
		cqdList = cqDAO.selectAllQuestion(couCode);
		
		return cqdList;
	}
	
	public CourseQuestionDomain searchOneQuestion(String QueCode) {
		CourseQuestionDomain cqd=null;

		cqd = cqDAO.selectOneQuestion(QueCode);
		
		return cqd;
	}
	
	public int addQuestion(CourseQuestionVO cqVO) {
		int cnt=0;
		
		cnt=cqDAO.insertQuestion(cqVO);
		
		return cnt;
	}//add
	
	public int modifyQuestion(CourseQuestionVO cqVO) {
		int cnt=0;
		
		cnt=cqDAO.updateQuestion(cqVO);
		
		return cnt;
	}//modify
	
	public int deleteQuestion(String queCode) {
		int cnt=0;
		
		cnt=cqDAO.deleteQuestion(queCode);
		
		return cnt;
	}//delete


	
}
