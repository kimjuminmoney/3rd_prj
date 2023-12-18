package kr.co.daitdayoung.admin.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.admin.dao.ManageCoursesDAO;
import kr.co.daitdayoung.admin.domain.ManageCoursesDomain;
import kr.co.daitdayoung.admin.vo.ManageCoursesVO;
import kr.co.daitdayoung.index.domain.CoursesDetailDomain;
import kr.co.daitdayoung.index.domain.CoursesLectureDomain;
import kr.co.daitdayoung.index.domain.CoursesRegistrationDomain;
import kr.co.daitdayoung.index.vo.CoursesRegistrationVO;

@Component
public class ManageCoursesService {
	
	@Autowired(required = false)
	private ManageCoursesDAO mcDAO;
	
	public List<ManageCoursesDomain> searchCourses() throws PersistenceException{
		List<ManageCoursesDomain> list = null;
		
		list = mcDAO.selectCourses();
		
		return list;
	}//searchCourses
	

	public CoursesDetailDomain searchCoursesDetail(String couCode) {
		return mcDAO.selectCoursesDetail(couCode);
	} // searchCoursesDetail

	public List<CoursesLectureDomain> searchLectureList(String couCode) {
		return mcDAO.selectLectureList(couCode);
	} // searchLectureList

	public List<CoursesRegistrationDomain> searchCoursesRegistration(CoursesRegistrationVO crVO) throws PersistenceException {
		return mcDAO.selectCoursesRegistration(crVO);
	}

	public int searchCompletionCnt(String couCode) throws PersistenceException {
		return mcDAO.selectCompletionCnt(couCode);
	}
	
	public int modifyApprove(String couCode) throws PersistenceException{
		int cnt = 0;
		
		cnt = mcDAO.updateApprove(couCode);
		
		return cnt;
	}//modifyApprove
	
	public int addExam(ManageCoursesVO mcVO) throws PersistenceException{
		int cnt = 0;
		
		cnt = mcDAO.insertExam(mcVO);
		
		return cnt;
	}//addExam

}
