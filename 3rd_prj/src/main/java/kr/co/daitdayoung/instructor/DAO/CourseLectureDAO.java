package kr.co.daitdayoung.instructor.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.index.domain.CoursesLectureDomain;
import kr.co.daitdayoung.instructor.domain.CourseLectureDomain;
import kr.co.daitdayoung.instructor.vo.CourseLectureVO;

@Component
public class CourseLectureDAO {

	public List<CourseLectureDomain> selectAllLecture(String couCode){
		
		List<CourseLectureDomain> cldList=null;
	
		MyBatisHandler mbh= MyBatisHandler.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(false);
		
		System.out.println(cldList);
		cldList= ss.selectList("kr.co.daitdayoung.instructor.course.lecture.selectAllLecture",couCode);
		
		mbh.closeHandler(ss);
		return cldList;
	}//
	
	public CourseLectureDomain selectOneLecture(String lecCode) {
		CourseLectureDomain cld=null;
		
		MyBatisHandler mbh= MyBatisHandler.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(false);

		cld= ss.selectOne("kr.co.daitdayoung.instructor.course.lecture.selectOneLecture", lecCode);
	
		System.out.println(cld);
		
		mbh.closeHandler(ss);
		
		return cld;
	}//one
	
	public int updateLecture(CourseLectureVO clVO) {
		int cnt=0;
		
		MyBatisHandler mbh= MyBatisHandler.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(true);
		
		cnt= ss.update("kr.co.daitdayoung.instructor.course.lecture.updateLecture", clVO);
		
		System.out.println(cnt);
		
		mbh.closeHandler(ss);
		return cnt;
	}
	
	public int updateVideo(CourseLectureVO clVO) {
		int cnt=0;
		
		MyBatisHandler mbh= MyBatisHandler.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(true);
		
		cnt= ss.update("kr.co.daitdayoung.instructor.course.lecture.updateVideo", clVO);
		
		System.out.println(cnt);
		
		mbh.closeHandler(ss);
		return cnt;
	}
	
	
	public static void main(String[] args) {
		
//		new CourseLectureDAO().selectAllLecture("COU_999971");
		new CourseLectureDAO().selectOneLecture("LEC_999999");
		
	}
	
}
