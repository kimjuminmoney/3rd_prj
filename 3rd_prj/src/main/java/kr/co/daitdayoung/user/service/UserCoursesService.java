package kr.co.daitdayoung.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.user.dao.UserCoursesDAO;
import kr.co.daitdayoung.user.dao.UserExamDAO;
import kr.co.daitdayoung.user.domain.CoursesExamInfoDomain;
import kr.co.daitdayoung.user.domain.UserCoursesDomain;
import kr.co.daitdayoung.user.domain.UserCoursesExamDomain;
import kr.co.daitdayoung.user.domain.UserCoursesLectureDomain;
import kr.co.daitdayoung.user.domain.UserCoursesNoticeDomain;
import kr.co.daitdayoung.user.vo.UserCoursesVO;

@Component
public class UserCoursesService {

	@Autowired
	private UserCoursesDAO ucDAO;
	
	@Autowired
	private UserExamDAO ueDAO;

	public UserCoursesDomain searchCoursesInfo(UserCoursesVO ucVO) {

		UserCoursesDomain umcd = ucDAO.selectCourseInfo(ucVO);
		return umcd;
	}// searchCoursesInfo

	public List<UserCoursesNoticeDomain> searchCoursesNoticeList(String couCode) {
		List<UserCoursesNoticeDomain> list = ucDAO.selectCourseNoticeList(couCode);
		return list;
	}// searchCoursesNoticeList

	public UserCoursesNoticeDomain searchCoursesNoticeDetail(String cnCode) {
		UserCoursesNoticeDomain ucnDomain = ucDAO.selectCourseNoticeDetail(cnCode);
		return ucnDomain;
	}// searchCoursesNoticeDetail

	public List<UserCoursesLectureDomain> searchCoursesLectureList(UserCoursesVO cuVO) {
		List<UserCoursesLectureDomain> list = ucDAO.selectCourseLectureList(cuVO);
		return list;
	}// searchCoursesLectureList

	public UserCoursesLectureDomain searchCoursesLectureDetail(UserCoursesVO cuVO) {
		UserCoursesLectureDomain uclDomain = ucDAO.selectCourseLectureDetail(cuVO);
		return uclDomain;
	}// searchCoursesLectureDetail
	
	public int modifyCoursesRecode(UserCoursesVO ucVO) {
		int cnt = 0;
			cnt += ucDAO.updateCoursesRecode(ucVO);
		int	rateCnt = ucDAO.updateCoursesRegistration(ucVO);
		return rateCnt;
	}

	public UserCoursesExamDomain searchCoursesExam(String couCode) {
		UserCoursesExamDomain uceDomain = ucDAO.selectCourseExam(couCode);
		return uceDomain;
	}// searchCoursesExam

	public CoursesExamInfoDomain searchCoursesExamInfo(UserCoursesVO cuVO) {
		CoursesExamInfoDomain examInfo = ucDAO.selectCourseExamInfo(cuVO);
		
		return examInfo;
	}// searchCoursesLectureDetail
	
	public String searchExamPass(String crgCode) {
		return ucDAO.selectExamPass(crgCode);
	}
	
	public void increaseCourseViews(String couCode) {
		ucDAO.updateCourseViews(couCode);
	}

}// class
