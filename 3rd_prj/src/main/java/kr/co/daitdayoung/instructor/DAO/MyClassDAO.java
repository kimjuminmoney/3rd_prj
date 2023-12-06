package kr.co.daitdayoung.instructor.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.instructor.domain.CourseDomain;

public class MyClassDAO {

	public void SearchMyCourses(String insId) {
		MyBatisHandler mbh= MyBatisHandler.getInstance();
		
		SqlSession ss=mbh.getMyBatisHandler(false);
		
		List<CourseDomain> cd=ss.selectList("kr.co.daitdayoung.instructor.selectMyCourses",insId);
		System.out.println(cd);
	}
	
	public static void main(String[] args) {
		new MyClassDAO().SearchMyCourses("ins1");
	}
}
