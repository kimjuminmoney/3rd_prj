package kr.co.daitdayoung.instructor.DAO;

import org.apache.ibatis.session.SqlSession;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.instructor.domain.CourseDomain;
import kr.co.daitdayoung.instructor.vo.CourseVO;

public class MyCourseDAO {

	private CourseDomain selectOneCourse(CourseVO cVO) {
		CourseDomain cd=null;
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(false);

		cd=ss.selectOne("kr.co.daitdayoung.instructor.selectOneCourse",cVO);
		System.out.println(cd);
		if(ss != null) {
			ss.close();
		}
		return cd;
	}
	
//	public static void main(String[] args) {
//		CourseVO cVO = new CourseVO();
//		cVO.setCouCode("COU_999971");
//		cVO.setInsId("ins1");
//		
//		new MyCourseDAO().selectOneCourse(cVO);
//	}

}
