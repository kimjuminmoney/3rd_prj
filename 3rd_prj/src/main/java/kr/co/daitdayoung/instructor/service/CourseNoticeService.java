package kr.co.daitdayoung.instructor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.instructor.DAO.CourseNoticeDAO;
import kr.co.daitdayoung.instructor.domain.CourseNoticeDomain;
import kr.co.daitdayoung.instructor.vo.CourseNoticeVO;

@Component
public class CourseNoticeService {

	@Autowired
	private CourseNoticeDAO cnDAO;
	
	public  List<CourseNoticeDomain> searchAllNotice(String couCode) {
		List<CourseNoticeDomain> cnList=null;
		
		 cnList = cnDAO.selectAllNotice(couCode);
		 
		 return cnList;
	}//searchAllNotice

	public  CourseNoticeDomain searchOneNotice(String cnCode) {
		CourseNoticeDomain cnd=null;
		
		cnd = cnDAO.selectOneNotice(cnCode);
		
		return cnd;
	}//searchAllNotice
	
	public int insertOneNotice(CourseNoticeVO cnVO) {
		int cnt=0;
		
		cnt = cnDAO.insertOneNotice(cnVO);
		
		return cnt;  
	}
	
	public int updateOneNotice(CourseNoticeVO cnVO) {
		int cnt=0;
		
		cnt = cnDAO.updateOneNotice(cnVO);
		
		return cnt;
		
	}
	
}//service
