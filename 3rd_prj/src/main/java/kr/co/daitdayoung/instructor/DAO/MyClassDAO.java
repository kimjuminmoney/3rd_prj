package kr.co.daitdayoung.instructor.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.instructor.domain.CourseDomain;

@Component
public class MyClassDAO {

	public List<CourseDomain> SearchMyCourses(String insId) {
		MyBatisHandler mbh= MyBatisHandler.getInstance();
		
		SqlSession ss=mbh.getMyBatisHandler(false);
		
		List<CourseDomain> cdList=ss.selectList("kr.co.daitdayoung.instructor.selectMyCourses",insId);
		System.out.println(cdList);
		
		return cdList;
	}
	
	
//	public static void main(String[] args) {
//		new MyClassDAO().SearchMyCourses("ins1");
//	}
}
