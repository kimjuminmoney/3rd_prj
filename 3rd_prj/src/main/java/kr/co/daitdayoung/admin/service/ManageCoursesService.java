package kr.co.daitdayoung.admin.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.admin.dao.ManageCoursesDAO;
import kr.co.daitdayoung.admin.domain.ManageCoursesDomain;

@Component
public class ManageCoursesService {
	
	@Autowired(required = false)
	private ManageCoursesDAO mcDAO;
	
	public List<ManageCoursesDomain> searchCourses() throws PersistenceException{
		List<ManageCoursesDomain> list = null;
		
		list = mcDAO.selectCourses();
		
		return list;
	}//searchCourses
	
	public int modifyApprove(String couCode) throws PersistenceException{
		int cnt = 0;
		
		cnt = mcDAO.updateApprove(couCode);
		
		return cnt;
	}//modifyApprove

}
