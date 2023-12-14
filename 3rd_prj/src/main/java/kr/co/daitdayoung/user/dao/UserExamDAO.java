package kr.co.daitdayoung.user.dao;


import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.user.domain.UserCoursesExamDomain;
import kr.co.daitdayoung.user.domain.UserQuestionsDomain;

@Component
public class UserExamDAO {
	
	@Autowired
	private MyBatisHandler mbh;
	
	public List<UserQuestionsDomain> selectQuestionList(String couCode) throws PersistenceException{
		
		mbh = MyBatisHandler.getInstance(); 
		SqlSession ss = mbh.getMyBatisHandler(false);
		List<UserQuestionsDomain> list= ss.selectList("kr.co.daitdayoung.user.exam.questionList", couCode);
		mbh.closeHandler(ss);
		 
		return list;
	}//selectQuestionList
	
	public UserQuestionsDomain selectQuestionDetail(String queCode) throws PersistenceException{
		
		mbh = MyBatisHandler.getInstance(); 
		SqlSession ss = mbh.getMyBatisHandler(false);
		UserQuestionsDomain uqDomain= ss.selectOne("kr.co.daitdayoung.user.exam.questionDetail", queCode);
		mbh.closeHandler(ss);
		
		return uqDomain;
	}//selectQuestionDetail
	
	
	
	
	public static void main(String[] args) {
		//System.out.println(new UserExamDAO().selectQuestionDetail("QUE_999999"));
		//System.out.println(new UserExamDAO().selectQuestionList("COU_999999"));
	}
	

}//class
