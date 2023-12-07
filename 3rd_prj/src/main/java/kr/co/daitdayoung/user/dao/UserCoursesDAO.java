package kr.co.daitdayoung.user.dao;


import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.user.domain.UserCoursesDomain;

@Component
public class UserCoursesDAO {
	
	@Autowired
	private MyBatisHandler mbh;
	
	public UserCoursesDomain selectCourseInfo(String couCode) throws PersistenceException{
		
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);

		UserCoursesDomain ucd = ss.selectOne("kr.co.daitdayoung.user.courses.coursesInfo", couCode);

		mbh.closeHandler(ss);
		return ucd;
	}//selectCourseReristration
	
	public static void main(String[] args) {
		System.out.println(new UserCoursesDAO().selectCourseInfo("COU_999999"));
	}
	

}//class
