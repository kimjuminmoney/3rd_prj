package kr.co.daitdayoung.instructor.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.instructor.domain.CourseInquiryDomain;
import kr.co.daitdayoung.instructor.vo.CourseInquiryVO;

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

	public CourseInquiryDomain selectOneInquiry(String ciCode){
		CourseInquiryDomain cid =null;
		
		MyBatisHandler mbh= MyBatisHandler.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(false);
		
		cid = ss.selectOne("kr.co.daitdayoung.instructor.course.inquiry.selectOneCourseInquiry", ciCode);
		
		mbh.closeHandler(ss);
		
		return cid;
	}//selectOneInquiry
	
	public int insertOneInquiry(CourseInquiryVO cnVO) {
		int cnt=0;
		
		MyBatisHandler mbh= MyBatisHandler.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(true);
		
		cnt=ss.insert("kr.co.daitdayoung.instructor.course.Inquiry.insertOneCourseInquiry", cnVO);

		
		
		mbh.closeHandler(ss);
		return cnt;
	}

	public int updateOneInquiry(CourseInquiryVO ciVO) {
		int cnt=0;
		System.out.println(ciVO+"/3");
		MyBatisHandler mbh= MyBatisHandler.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(true);
		
		cnt=ss.insert("kr.co.daitdayoung.instructor.course.inquiry.updateOneCourseInquiry", ciVO);
		System.out.println(cnt+"/ 3 ");
		
		
		mbh.closeHandler(ss);
		return cnt;
	}
	
	public static void main(String[] args) {
		new CourseInquiryDAO().selectOneInquiry("CI_999992");
		
	}

}
