package kr.co.daitdayoung.instructor.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.instructor.domain.CourseInquiryDomain;
import kr.co.daitdayoung.instructor.domain.CourseNoticeDomain;
import kr.co.daitdayoung.instructor.vo.CourseNoticeVO;

@Component
public class CourseInquiryDAO {

	public List<CourseInquiryDomain> selectAllInquiry(String couCode){
		List<CourseInquiryDomain> cidList =null;
		
		MyBatisHandler mbh= MyBatisHandler.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(false);
		
		cidList = ss.selectList("kr.co.daitdayoung.instructor.course.inquiry.selectAllCourseInquiry", couCode);
		
		System.out.println(cidList);
		
		mbh.closeHandler(ss);
		
		return cidList;
	}//selectAllInquiry

//	public CourseNoticeDomain selectOneNotice(String cnCode){
//		CourseNoticeDomain cnd =null;
//		
//		MyBatisHandler mbh= MyBatisHandler.getInstance();
//		SqlSession ss= mbh.getMyBatisHandler(false);
//		
//		cnd = ss.selectOne("kr.co.daitdayoung.instructor.course.notice.selectOneCourseNotice", cnCode);
//		
//		mbh.closeHandler(ss);
//		
//		return cnd;
//	}//selectOneNotice
//	
//	public int insertOneNotice(CourseNoticeVO cnVO) {
//		int cnt=0;
//		
//		MyBatisHandler mbh= MyBatisHandler.getInstance();
//		SqlSession ss= mbh.getMyBatisHandler(true);
//		
//		cnt=ss.insert("kr.co.daitdayoung.instructor.course.notice.insertOneCourseNotice", cnVO);
//
//		
//		
//		mbh.closeHandler(ss);
//		return cnt;
//	}
//
//	public int updateOneNotice(CourseNoticeVO cnVO) {
//		int cnt=0;
//		
//		MyBatisHandler mbh= MyBatisHandler.getInstance();
//		SqlSession ss= mbh.getMyBatisHandler(true);
//		
//		cnt=ss.insert("kr.co.daitdayoung.instructor.course.notice.updateOneCourseNotice", cnVO);
//		
//		
//		
//		mbh.closeHandler(ss);
//		return cnt;
//	}
	
	public static void main(String[] args) {
		new CourseInquiryDAO().selectAllInquiry("COU_999999");
	}

}
