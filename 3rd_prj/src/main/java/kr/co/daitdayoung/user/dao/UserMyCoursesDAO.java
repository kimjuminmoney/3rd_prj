package kr.co.daitdayoung.user.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.user.domain.UserMyCoursesDomain;

public class UserMyCoursesDAO {
	
	public List<UserMyCoursesDomain> selectCoursesList(String userId){
		List<UserMyCoursesDomain> list = null;
		 MyBatisHandler mbh = MyBatisHandler.getInstance();
		 SqlSession ss = mbh.getMyBatisHandler(false);
		 
		 list = ss.selectList("kr.co.daitdayoung.user.myCoursesList", userId);
		 
		 mbh.closeHandler(ss);
		 
		return list;
	}//selectCoursesList

	public UserMyCoursesDomain selectCertificate(String userId) {
		UserMyCoursesDomain umcd = null;
		return umcd;
	}
	
	public static void main(String[] args) {
		System.out.println(new UserMyCoursesDAO().selectCoursesList("ui_test"));
	}
}//class
