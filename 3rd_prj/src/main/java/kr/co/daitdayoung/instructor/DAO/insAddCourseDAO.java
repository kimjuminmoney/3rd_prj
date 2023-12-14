package kr.co.daitdayoung.instructor.DAO;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.instructor.vo.CourseVO;
import kr.co.daitdayoung.instructor.vo.LectureVO;

@Component
public class insAddCourseDAO {

	public int insertCourse(CourseVO cVO) throws PersistenceException {
		int cnt=0;
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(false);
		cnt= ss.insert("kr.co.daitdayoung.instructor.addCourse.insertCourse",cVO);
		
		mbh.closeHandler(ss);
		return cnt;
	}
	
	public int insertLectures( List<LectureVO> lvoList) {

		int cnt=0;
	
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(false);
		for(LectureVO lVO:lvoList) {
			cnt += ss.insert("kr.co.daitdayoung.instructor.addCourse.insertLecture",lVO);
		}
		
		mbh.closeHandler(ss);
		return cnt;
	}
	
}
