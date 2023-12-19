package kr.co.daitdayoung.instructor.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.instructor.domain.CourseExamDomain;
import kr.co.daitdayoung.instructor.domain.CourseLectureDomain;
import kr.co.daitdayoung.instructor.vo.CourseExamVO;
import kr.co.daitdayoung.instructor.vo.CourseLectureVO;

@Component
public class CourseContentDAO {

	public List<CourseLectureDomain> selectAllLecture(String couCode) {
		List<CourseLectureDomain> cldList=null;
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(false);
		
		cldList=ss.selectList("kr.co.daitdayoung.instructor.course.content.selectAllLecture", couCode);
		System.out.println(cldList);
		mbh.closeHandler(ss);

		return cldList;
	}
	
	public int insertLecture(CourseLectureVO clVO) {
		int cnt=0;
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(true);
		
		cnt=ss.insert("kr.co.daitdayoung.instructor.course.content.insertLecture", clVO);
		System.out.println(clVO);
		mbh.closeHandler(ss);
		
		return cnt;
	}
	
	public int updateLecture(CourseLectureVO clVO) {
		int cnt=0;
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(true);
		
		cnt=ss.insert("kr.co.daitdayoung.instructor.course.content.updateLecture", clVO);
		System.out.println(clVO);
		mbh.closeHandler(ss);
		
		return cnt;
	}

	public int deleteLecture(String lecCode) {
		
		int cnt=0;
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(true);
		
		cnt=ss.delete("kr.co.daitdayoung.instructor.course.content.deleteLecture", lecCode);
		System.out.println(lecCode);
		mbh.closeHandler(ss);
		
		
		return cnt;
	}
	
	public static void main(String[] args) {
		
		new CourseContentDAO().selectAllLecture("COU_999971");
		
	}


}
