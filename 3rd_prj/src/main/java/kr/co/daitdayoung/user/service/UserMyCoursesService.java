package kr.co.daitdayoung.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.daitdayoung.user.dao.UserMyCoursesDAO;
import kr.co.daitdayoung.user.domain.UserMyCoursesDomain;

@Service
public class UserMyCoursesService {
	
	@Autowired
	private UserMyCoursesDAO umcDAO;
	
	
	
	public List<UserMyCoursesDomain> searchCoursesList(String userId) {
		List<UserMyCoursesDomain> list = null;
		list = umcDAO.selectCoursesList(userId);
		return list;
	}// searchCoursesList

	public List<UserMyCoursesDomain> searchLecturesCnt(List<UserMyCoursesDomain> list) {

		int cntTemp = 0;
		for (int i = 0; i < list.size(); i++) {
			cntTemp = umcDAO.selectLecturesCnt(list.get(i).getCouCode());
			list.get(i).setLecCnt(cntTemp);
		} // end for

		return list;
	}// searchLectures

	// searchCompletionCoursesList는 위에꺼랑 합쳤던거같다.
	public UserMyCoursesDomain searchCertificate(String userId) {
		UserMyCoursesDomain umcd = null;
		return umcd;
	}

}
