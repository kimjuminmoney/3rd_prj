package kr.co.daitdayoung.index.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.index.domain.CoursesDomain;
import kr.co.daitdayoung.index.domain.IndexDomain;

@Component
public class CoursesDAO {
	
	 @Autowired private MyBatisHandler mbh;
	 
		/*
		 * public List<CoursesDomain> selectLeftCat() { //DAO에서 가져오기 때문에 select
		 * (Service는 search)
		 * 
		 * mbh = MyBatisHandler.getInstance();
		 * 
		 * SqlSession ss = mbh.getMyBatisHandler(false);
		 * 
		 * List<CoursesDomain> list =
		 * ss.selectList("kr.co.daitdayoung.courses.leftCategory");
		 * 
		 * mbh.closeHandler(ss);
		 * 
		 * return list;
		 * 
		 * 
		 * } //selectCourses
		 */
		/*
		 * public List<CoursesDomain> selectCouCat() {
		 * 
		 * mbh = MyBatisHandler.getInstance();
		 * 
		 * SqlSession ss = mbh.getMyBatisHandler(false);
		 * 
		 * List<CoursesDomain> list =
		 * ss.selectList("kr.co.daitdayoung.courses.coursesCate");
		 * 
		 * mbh.closeHandler(ss);
		 * 
		 * return list;
		 * 
		 * 
		 * } //selectCourses
		 */	 
} //class
