package kr.co.daitdayoung.user.dao;


import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.user.domain.UserCoursesDomain;
import kr.co.daitdayoung.user.domain.UserCoursesLectureDomain;
import kr.co.daitdayoung.user.domain.UserCoursesNoticeDomain;

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
	
	public List<UserCoursesNoticeDomain> selectCourseNoticeList(String couCode) throws PersistenceException{
		
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		List<UserCoursesNoticeDomain> list = ss.selectList("kr.co.daitdayoung.user.courses.coursesNotice",couCode);
		return list;
	}//selectCourseNotice
	
	public List<UserCoursesLectureDomain> selectCourseLectureList(String couCode) throws PersistenceException{
		
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		List<UserCoursesLectureDomain> list = ss.selectList("kr.co.daitdayoung.user.courses.coursesLecture",couCode);
		return list;
	}//selectCourseNotice
	
	
	public static void main(String[] args) {
		System.out.println(new UserCoursesDAO().selectCourseLectureList("COU_999999"));
		//System.out.println(new UserCoursesDAO().selectCourseNoticeList("COU_999999"));
		//System.out.println(new UserCoursesDAO().selectCourseInfo("COU_999999"));
	}
	

}//class
