package kr.co.daitdayoung.user.service;

import java.util.List;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.user.dao.UserExamDAO;
import kr.co.daitdayoung.user.domain.UserQuestionsDomain;

@Component
public class UserExamService {

	@Autowired
	private UserExamDAO ueDAO;

	public List<UserQuestionsDomain> searchQuestionList(String couCode) {

		return ueDAO.selectQuestionList(couCode);
	}// searchCoursesInfo
	
	public JSONObject searchQuestion(String queCode) {
		JSONObject json = new JSONObject();
		UserQuestionsDomain uceDomain = ueDAO.selectQuestionDetail(queCode);
		
		json.put("content", uceDomain.getQueContent());
		json.put("que1", uceDomain.getQue1());
		json.put("que2", uceDomain.getQue2());
		json.put("que3", uceDomain.getQue3());
		json.put("que4", uceDomain.getQue4());
		
		
		return json;
	}


}// class
