package kr.co.daitdayoung.user.service;

import java.util.List;

import kr.co.daitdayoung.user.dao.UserMyCoursesDAO;
import kr.co.daitdayoung.user.domain.UserMyCoursesDomain;

public class UserMyCoursesService {
	public List<UserMyCoursesDomain> searchCoursesList(String userId){
		List<UserMyCoursesDomain> list = null;
		UserMyCoursesDAO umcDAO = new UserMyCoursesDAO();
		list = umcDAO.selectCoursesList(userId);
		return list;
	}
	//searchCompletionCoursesList는 위에꺼랑 합쳤던거같다.
	public UserMyCoursesDomain searchCertificate(String userId) {
		UserMyCoursesDomain umcd = null;
		return umcd;
	}

}
