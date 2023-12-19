package kr.co.daitdayoung.instructor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.instructor.DAO.CourseInquiryDAO;
import kr.co.daitdayoung.instructor.DAO.CourseLectureDAO;
import kr.co.daitdayoung.instructor.domain.CourseInquiryDomain;
import kr.co.daitdayoung.instructor.domain.CourseLectureDomain;
import kr.co.daitdayoung.instructor.vo.CourseInquiryVO;
import kr.co.daitdayoung.instructor.vo.CourseLectureVO;

@Component
public class CourseLectureService {

	@Autowired
	private CourseLectureDAO clDAO;
	
	public List<CourseLectureDomain> searchAllLecture(String couCode) {
		List<CourseLectureDomain> cldList=null;
		
		cldList=clDAO.selectAllLecture(couCode);
		
		return cldList;
	}

	public CourseLectureDomain searchOneLecture(String lecCode) {
		CourseLectureDomain cld=null;
		
		cld=clDAO.selectOneLecture(lecCode);
		
		return cld;
	}
	
	public int updateLecture(CourseLectureVO clVO) {
		int cnt=0;
		
		cnt=clDAO.updateLecture(clVO);
		
		return cnt;
	}

	public int updateVideo(CourseLectureVO clVO) {
		int cnt=0;
		
		cnt=clDAO.updateVideo(clVO);
		
		return cnt;
	}
	
}//service
