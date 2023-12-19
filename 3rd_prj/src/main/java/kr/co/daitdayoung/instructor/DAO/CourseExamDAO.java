package kr.co.daitdayoung.instructor.DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.instructor.domain.CourseExamDomain;
import kr.co.daitdayoung.instructor.vo.CourseExamVO;

@Component
public class CourseExamDAO {

	public CourseExamDomain selectExam(String couCode) {
		CourseExamDomain ped=null;
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(false);
		
		ped=ss.selectOne("kr.co.daitdayoung.instructor.course.exam.selectExam", couCode);
		System.out.println(ped);
		mbh.closeHandler(ss);
				
		return ped;
	}

	public int updateExam(CourseExamVO ceVO) {
		int cnt=0;
		System.out.println(ceVO);
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(false);
		
		cnt =ss.update("kr.co.daitdayoung.instructor.course.exam.updateExamResult", ceVO);
		cnt = ss.update("kr.co.daitdayoung.instructor.course.exam.updateExamTimelimit", ceVO);
		System.out.println(cnt);
		mbh.closeHandler(ss);
		
		return cnt;
	}

	public static void main(String[] args) {
		
		
		
		new CourseExamDAO().selectExam("COU_999999");
		
	}


}
