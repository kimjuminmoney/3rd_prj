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
	
	public List<UserToDoDomain> searchToDoList(String userId){
		List<UserToDoDomain> list = utdlDAO.selectToDoList(userId);
		return list;
	}//searchCourseRegistration
	
	public List<UserToDoDomain> searchToDoExamList(List<UserToDoDomain> list){
		for(UserToDoDomain utdDomain : list) {
			String crgCode = utdDomain.getCrgCode();
			List<UserToDoDomain> tempList = utdlDAO.selectToDoExamList(crgCode);
			
			if(tempList.size() == 2) {
				for(UserToDoDomain tempDomain : tempList) {
					if ("Y".equals(tempDomain.getExamStatus()) && "Y".equals(tempDomain.getReExam())) {
						utdDomain.setExamStatus(tempDomain.getExamStatus());
						utdDomain.setReExam(tempDomain.getReExam());
						utdDomain.setEpCode(tempDomain.getEpCode());
						break;
					}
				}
			} else if(tempList.size() == 1) {
				UserToDoDomain tempDomain = tempList.get(0);
				utdDomain.setExamStatus(tempDomain.getExamStatus());
				utdDomain.setReExam(tempDomain.getReExam());
				utdDomain.setEpCode(tempDomain.getEpCode());
			}
		}
		return list;
	}//searchCourseRegistration

}//class
