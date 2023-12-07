package kr.co.daitdayoung.user.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.user.domain.UserMyCoursesDomain;

@Component
public class UserMyCoursesDAO {

	public List<UserMyCoursesDomain> selectCoursesList(String userId) throws PersistenceException {
		List<UserMyCoursesDomain> list = null;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);

		list = ss.selectList("kr.co.daitdayoung.user.myCoursesList", userId);

		mbh.closeHandler(ss);

		return list;
	}// selectCoursesList

	public int selectLecturesCnt(String couCode) throws PersistenceException {
		int cnt = 0;
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);

		cnt = ss.selectOne("kr.co.daitdayoung.user.CoursesCnt", couCode);

		mbh.closeHandler(ss);

		return cnt;
	}

	public UserMyCoursesDomain selectCertificate(String userId) {
		UserMyCoursesDomain umcd = null;
		return umcd;
	}

	public static void main(String[] args) {
		List<UserMyCoursesDomain> list = new UserMyCoursesDAO().selectCoursesList("ui_test");
		for(UserMyCoursesDomain umcd : list) {
			System.out.println(umcd);
		}
		//System.out.println(new UserMyCoursesDAO().selectLecturesCnt("COU_999999"));
	}
}// class
