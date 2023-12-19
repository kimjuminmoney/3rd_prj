package kr.co.daitdayoung.instructor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.instructor.DAO.CourseInquiryDAO;
import kr.co.daitdayoung.instructor.domain.CourseInquiryDomain;
import kr.co.daitdayoung.instructor.vo.CourseInquiryVO;

@Component
public class CourseInquiryService {

	@Autowired
	private CourseInquiryDAO ciDAO;
	
	public  List<CourseInquiryDomain> searchAllInquiry(String couCode) {
		List<CourseInquiryDomain> cidList=null;
		System.out.println(couCode);
		
		 cidList = ciDAO.selectAllInquiry(couCode);
		 
		 return cidList;
	}//searchAllNotice

	public  CourseInquiryDomain searchOneInquiry(String ciCode) {
		CourseInquiryDomain cid=null;
		
		cid = ciDAO.selectOneInquiry(ciCode);
		
		return cid;
	}//searchOneInquiry
	
	public int updateOneInquiry(CourseInquiryVO ciVO) {
		int cnt=0;
		System.out.println(ciVO+"2");
		cnt = ciDAO.updateOneInquiry(ciVO);
		
		return cnt;
		
	}
	
}//service
