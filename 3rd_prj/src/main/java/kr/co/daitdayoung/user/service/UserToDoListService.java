package kr.co.daitdayoung.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.daitdayoung.user.dao.UserToDoListDAO;
import kr.co.daitdayoung.user.domain.UserToDoDomain;

@Service
public class UserToDoListService {
	
	@Autowired(required=false)
	private UserToDoListDAO utdlDAO;
	
	public List<UserToDoDomain> searchCourseRegistration(String userId){
		return utdlDAO.selectCourseReristration(userId);
	}//searchCourseRegistration

}//class
