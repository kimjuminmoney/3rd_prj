package kr.co.daitdayoung.index.dao;


import java.util.List;



import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.index.domain.CoursesDomain;

@Component
public class CoursesDAO {
	
	 @Autowired
	 private MyBatisHandler mbh;

	public List<CoursesDomain> selectLeftCat() {
		
		mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<CoursesDomain> idList = ss.selectList("kr.co.daitdayoung.index.leftCategory");
		
		mbh.closeHandler(ss);
		
		return idList;
	
	
	} //selectCourses
	
	public List<CoursesDomain> selectCouList() {
		
		mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<CoursesDomain> cdList = ss.selectList("kr.co.daitdayoung.index.CouList");
		
		mbh.closeHandler(ss);
		
		return cdList;
	
	
	} //selectCourses
	
	public List<CoursesDomain> selectCouOne() {
		
mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		List<CoursesDomain> cdList = ss.selectList("kr.co.daitdayoung.index.CouOne");
		
		mbh.closeHandler(ss);
		
		return cdList;
		
	}
	
	public int selectCompletionStatus(String couCode) throws PersistenceException{
		
		mbh = MyBatisHandler.getInstance();
		
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		int cnt= ss.selectOne("kr.co.daitdayoung.courses.complete", couCode);
		
		mbh.closeHandler(ss);
		
		return cnt;
	}	
	 
	
	public static void main(String[] agrs) {
		System.out.println(new CoursesDAO().selectCompletionStatus("COU_999999"));
	}

		
} //class
