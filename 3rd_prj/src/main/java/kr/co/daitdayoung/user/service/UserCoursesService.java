package kr.co.daitdayoung.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.daitdayoung.user.dao.UserCoursesDAO;
import kr.co.daitdayoung.user.domain.UserCoursesDomain;
import kr.co.daitdayoung.user.domain.UserCoursesLectureDomain;
import kr.co.daitdayoung.user.domain.UserCoursesNoticeDomain;

@Service
public class UserCoursesService {
	
	@Autowired
	private UserCoursesDAO ucDAO;
	
	
	
	public UserCoursesDomain searchCoursesInfo(String couCode) {
		
		UserCoursesDomain umcd = ucDAO.selectCourseInfo(couCode);
		return umcd;
	}// searchCoursesList
	
	public List<UserCoursesNoticeDomain> searchCoursesNoticeList(String couCode){
		List<UserCoursesNoticeDomain> list = ucDAO.selectCourseNoticeList(couCode);
		return list;
	}//searchCoursesNotice
	
	public List<UserCoursesLectureDomain> searchCoursesLectureList(String couCode){
		List<UserCoursesLectureDomain> list = ucDAO.selectCourseLectureList(couCode);
		return list;
	}//searchCoursesNotice


}//class
