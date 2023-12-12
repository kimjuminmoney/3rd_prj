package kr.co.daitdayoung.user.dao;


import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.user.domain.UserCoursesExamDomain;

@Component
public class UserExamDAO {
	
	@Autowired
	private MyBatisHandler mbh;
	
	public List<UserCoursesExamDomain> selectQuestionList(String couCode) throws PersistenceException{
		
		mbh = MyBatisHandler.getInstance(); 
		SqlSession ss = mbh.getMyBatisHandler(false);
		List<UserCoursesExamDomain> list= ss.selectList("kr.co.daitdayoung.user.exam.questionList", couCode);
		mbh.closeHandler(ss);
		 
		return list;
	}//selectCourseReristration
	
	
	
	public static void main(String[] args) {
		System.out.println(new UserExamDAO().selectQuestionList("COU_999999"));
	}
	

}//class
