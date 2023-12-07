package kr.co.daitdayoung.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.daitdayoung.user.dao.UserCoursesDAO;
import kr.co.daitdayoung.user.domain.UserCoursesDomain;

@Service
public class UserCoursesService {
	
	@Autowired
	private UserCoursesDAO ucDAO;
	
	
	
	public UserCoursesDomain searchCoursesInfo(String couCode) {
		
		UserCoursesDomain umcd = ucDAO.selectCourseInfo(couCode);
		return umcd;
	}// searchCoursesList


}
