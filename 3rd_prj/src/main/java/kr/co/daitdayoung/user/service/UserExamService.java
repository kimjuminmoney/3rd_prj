package kr.co.daitdayoung.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.user.dao.UserExamDAO;
import kr.co.daitdayoung.user.domain.UserCoursesExamDomain;

@Component
public class UserExamService {

	@Autowired
	private UserExamDAO ueDAO;

	public List<UserCoursesExamDomain> searchQuestionList(String couCode) {

		return ueDAO.selectQuestionList(couCode);
	}// searchCoursesInfo


}// class
