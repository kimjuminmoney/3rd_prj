package kr.co.daitdayoung.instructor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.instructor.DAO.CourseInquiryDAO;
import kr.co.daitdayoung.instructor.domain.CourseInquiryDomain;

@Component
public class CourseInquiryService {

	@Autowired
	private CourseInquiryDAO ciDAO;
	
	public  List<CourseInquiryDomain> searchAllNotice(String couCode) {
		List<CourseInquiryDomain> cidList=null;
		
		 cidList = ciDAO.selectAllInquiry(couCode);
		 
		 return cidList;
	}//searchAllNotice

//	public  CourseInquiryDomain searchOneNotice(String cnCode) {
//		CourseInquiryDomain cid=null;
//		
//		cid = ciDAO.selectOneNotice(cnCode);
//		
//		return cid;
//	}//searchAllNotice
//	
//	public int insertOneNotice(CourseNoticeVO cnVO) {
//		int cnt=0;
//		
//		cnt = ciDAO.insertOneNotice(cnVO);
//		
//		return cnt;  
//	}
//	
//	public int updateOneNotice(CourseNoticeVO cnVO) {
//		int cnt=0;
//		
//		cnt = ciDAO.updateOneNotice(cnVO);
//		
//		return cnt;
//		
//	}
	
}//service
