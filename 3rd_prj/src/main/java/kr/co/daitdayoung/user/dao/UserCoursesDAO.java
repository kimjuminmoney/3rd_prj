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
import kr.co.daitdayoung.user.domain.UserMyCoursesDomain;
import kr.co.daitdayoung.user.vo.UserCoursesVO;

@Component
public class UserCoursesDAO {
	
	@Autowired
	private MyBatisHandler mbh;
	
	public UserCoursesDomain selectCourseInfo(UserCoursesVO ucVO) throws PersistenceException{
		
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);

		UserCoursesDomain ucd = ss.selectOne("kr.co.daitdayoung.user.courses.coursesInfo", ucVO);

		mbh.closeHandler(ss);
		return ucd;
	}//selectCourseReristration
	
	public List<UserCoursesNoticeDomain> selectCourseNoticeList(String couCode) throws PersistenceException{
		
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		List<UserCoursesNoticeDomain> list = ss.selectList("kr.co.daitdayoung.user.courses.coursesNotice",couCode);
		return list;
	}//selectCourseNotice
	
	public List<UserCoursesLectureDomain> selectCourseLectureList(UserCoursesVO cuVO) throws PersistenceException{
		
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		List<UserCoursesLectureDomain> list = ss.selectList("kr.co.daitdayoung.user.courses.coursesLecture",cuVO);
		return list;
	}//selectCourseNotice
	
	
	
	
	public static void main(String[] args) {
		UserCoursesVO cuVO = new UserCoursesVO("COU_999999","ui_test");
		List<UserCoursesLectureDomain> list = new UserCoursesDAO().selectCourseLectureList(cuVO);
		//System.out.println(new UserCoursesDAO().selectCourseNoticeList("COU_999999"));
		//System.out.println(new UserCoursesDAO().selectCourseInfo(cuVO));
		for(UserCoursesLectureDomain uc : list) {
			System.out.println(uc);
		}
	}
	

}//class
