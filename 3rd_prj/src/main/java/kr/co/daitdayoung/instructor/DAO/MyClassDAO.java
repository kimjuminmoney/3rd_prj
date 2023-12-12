package kr.co.daitdayoung.instructor.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.instructor.domain.CourseDomain;
import kr.co.daitdayoung.instructor.vo.CourseVO;

@Component
public class MyClassDAO {

	public List<CourseDomain> SearchMyCourses(String insId) {
		MyBatisHandler mbh= MyBatisHandler.getInstance();
		
		SqlSession ss=mbh.getMyBatisHandler(false);
		
		List<CourseDomain> cdList=ss.selectList("kr.co.daitdayoung.instructor.insMyClass.selectMyCourses",insId);
		System.out.println(cdList);
		
		mbh.closeHandler(ss);
		return cdList;
	}
	
	public int AddCourse(CourseVO cVO) {
		int cnt=0;
		
		
		
		return cnt;
	}

	public List<CourseDomain> SearchAddedCourses(CourseVO cVO) {
		List<CourseDomain> cdList=null;
		
		
		
		
		
		return cdList;
	}
	
//	public static void main(String[] args) {
//		new MyClassDAO().SearchMyCourses("ins1");
//	}
}
