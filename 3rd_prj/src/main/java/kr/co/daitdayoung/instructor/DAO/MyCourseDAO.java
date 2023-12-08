package kr.co.daitdayoung.instructor.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.instructor.domain.CourseDomain;
import kr.co.daitdayoung.instructor.vo.CourseVO;

@Component
public class MyCourseDAO {

	public CourseDomain selectOneCourse(CourseVO cVO) {
		CourseDomain cd=null;
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(false);

		cd=ss.selectOne("kr.co.daitdayoung.instructor.course.selectOneCourse",cVO);
		
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
