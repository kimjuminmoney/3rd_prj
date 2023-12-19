package kr.co.daitdayoung.instructor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.instructor.DAO.CourseContentDAO;
import kr.co.daitdayoung.instructor.DAO.CourseInquiryDAO;
import kr.co.daitdayoung.instructor.DAO.CourseLectureDAO;
import kr.co.daitdayoung.instructor.domain.CourseInquiryDomain;
import kr.co.daitdayoung.instructor.domain.CourseLectureDomain;
import kr.co.daitdayoung.instructor.vo.CourseInquiryVO;
import kr.co.daitdayoung.instructor.vo.CourseLectureVO;

@Component
public class CourseContentService {

	@Autowired
	private CourseContentDAO ccDAO;
	
	public List<CourseLectureDomain> searchAllLecture(String couCode) {
		List<CourseLectureDomain> cldList=null;
		
		cldList=ccDAO.selectAllLecture(couCode);
		
		return cldList;
	}

	public int addLecture(CourseLectureVO clVO) {
		int cnt=0;
		cnt=ccDAO.insertLecture(clVO);
		
		return cnt;
	}
	
	public int updateLecture(CourseLectureVO clVO) {
		int cnt=0;
		
		cnt=ccDAO.updateLecture(clVO);
		
		return cnt;
	}

	public int deleteLecture(String lecCode) {
		int cnt=0;
		
		cnt=ccDAO.deleteLecture(lecCode);
		
		return cnt;
	}
	
}//service
