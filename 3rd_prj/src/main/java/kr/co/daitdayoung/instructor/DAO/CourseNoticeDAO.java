package kr.co.daitdayoung.instructor.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.instructor.domain.CourseNoticeDomain;
import kr.co.daitdayoung.instructor.vo.CourseNoticeVO;

@Component
public class CourseNoticeDAO {

	public List<CourseNoticeDomain> selectAllNotice(String couCode){
		List<CourseNoticeDomain> cnList =null;
		
		MyBatisHandler mbh= MyBatisHandler.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(false);
		
		cnList = ss.selectList("kr.co.daitdayoung.instructor.course.notice.selectAllCourseNotice", couCode);
		
		System.out.println(cnList);
		
		mbh.closeHandler(ss);
		
		return cnList;
	}//selectAllNotice

	public CourseNoticeDomain selectOneNotice(String cnCode){
		CourseNoticeDomain cnd =null;
		
		MyBatisHandler mbh= MyBatisHandler.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(false);
		
		cnd = ss.selectOne("kr.co.daitdayoung.instructor.course.notice.selectOneCourseNotice", cnCode);
		
		mbh.closeHandler(ss);
		
		return cnd;
	}//selectOneNotice
	
	public int insertOneNotice(CourseNoticeVO cnVO) {
		int cnt=0;
		
		MyBatisHandler mbh= MyBatisHandler.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(true);
		
		cnt=ss.insert("kr.co.daitdayoung.instructor.course.notice.insertOneCourseNotice", cnVO);

		
		
		mbh.closeHandler(ss);
		return cnt;
	}

	public int updateOneNotice(CourseNoticeVO cnVO) {
		int cnt=0;
		
		MyBatisHandler mbh= MyBatisHandler.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(true);
		
		cnt=ss.insert("kr.co.daitdayoung.instructor.course.notice.updateOneCourseNotice", cnVO);
		
		
		
		mbh.closeHandler(ss);
		return cnt;
	}
	

}
