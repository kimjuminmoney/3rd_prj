package kr.co.daitdayoung.user.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.user.domain.UserMyCoursesDomain;

@Component
public class UserMyCoursesDAO {
	
	@Autowired
	private MyBatisHandler mbh;

	public List<UserMyCoursesDomain> selectCoursesList(String userId) throws PersistenceException {
		List<UserMyCoursesDomain> list = null;
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);

		list = ss.selectList("kr.co.daitdayoung.user.myCourses.myCoursesList", userId);

		mbh.closeHandler(ss);

		return list;
	}// selectCoursesList
	
	public List<UserMyCoursesDomain> selectCoursesExamList(String crgCode) throws PersistenceException {
		List<UserMyCoursesDomain> list = null;
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.daitdayoung.user.myCourses.CoursesExamList", crgCode);
		
		mbh.closeHandler(ss);
		
		return list;
	}// selectCoursesList
	

	public int selectLecturesCnt(String couCode) throws PersistenceException {
		int cnt = 0;
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);

		cnt = ss.selectOne("kr.co.daitdayoung.user.myCourses.CoursesCnt", couCode);

		mbh.closeHandler(ss);

		return cnt;
	}

	public UserMyCoursesDomain selectCertificate(String userId) {
		UserMyCoursesDomain umcd = null;
		return umcd;
	}

}// class
