package kr.co.daitdayoung.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.daitdayoung.user.dao.UserCoursesDAO;
import kr.co.daitdayoung.user.domain.UserCoursesDomain;
import kr.co.daitdayoung.user.domain.UserCoursesLectureDomain;
import kr.co.daitdayoung.user.domain.UserCoursesNoticeDomain;
import kr.co.daitdayoung.user.vo.UserCoursesVO;

@Service
public class UserCoursesService {
	
	@Autowired
	private UserCoursesDAO ucDAO;
	
	
	
	public UserCoursesDomain searchCoursesInfo(UserCoursesVO ucVO) {
		
		UserCoursesDomain umcd = ucDAO.selectCourseInfo(ucVO);
		return umcd;
	}// searchCoursesList
	
	public List<UserCoursesNoticeDomain> searchCoursesNoticeList(String couCode){
		List<UserCoursesNoticeDomain> list = ucDAO.selectCourseNoticeList(couCode);
		return list;
	}//searchCoursesNotice
	
	public List<UserCoursesLectureDomain> searchCoursesLectureList(UserCoursesVO cuVO){
		List<UserCoursesLectureDomain> list = ucDAO.selectCourseLectureList(cuVO);
		return list;
	}//searchCoursesNotice


}//class
