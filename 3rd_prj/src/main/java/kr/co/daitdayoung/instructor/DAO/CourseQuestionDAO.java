package kr.co.daitdayoung.instructor.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.instructor.domain.CourseExamDomain;
import kr.co.daitdayoung.instructor.domain.CourseQuestionDomain;
import kr.co.daitdayoung.instructor.vo.CourseExamVO;
import kr.co.daitdayoung.instructor.vo.CourseQuestionVO;

@Component
public class CourseQuestionDAO {

	public List<CourseQuestionDomain> selectAllQuestion(String examCode) {
		List<CourseQuestionDomain> pqdList=null;
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(false);
		
		pqdList=ss.selectList("kr.co.daitdayoung.instructor.course.question.selectAllQuestion", examCode);
		System.out.println(pqdList);
		mbh.closeHandler(ss);
				
		return pqdList;
	}

	public CourseQuestionDomain selectOneQuestion(String examCode) {
		CourseQuestionDomain pqd=null;
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(false);
		
		pqd=ss.selectOne("kr.co.daitdayoung.instructor.course.question.selectOneQuestion", examCode);
		System.out.println(pqd);
		mbh.closeHandler(ss);
		
		return pqd;
	}
	
	public int insertQuestion(CourseQuestionVO cqVO) {
		int cnt=0;
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(true);
		
		cnt=ss.insert("kr.co.daitdayoung.instructor.course.question.insertQuestion", cqVO);
		System.out.println(cnt);
		mbh.closeHandler(ss);
		
		
		return cnt;
	}

	public int updateQuestion(CourseQuestionVO cqVO) {
		int cnt=0;
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(true);
		
		cnt=ss.insert("kr.co.daitdayoung.instructor.course.question.updateQuestion", cqVO);
		System.out.println(cnt);
		mbh.closeHandler(ss);
		
		
		return cnt;
	}

	public int deleteQuestion(String queCode) {
		int cnt=0;
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss= mbh.getMyBatisHandler(true);
		
		cnt=ss.insert("kr.co.daitdayoung.instructor.course.question.deleteQuestion", queCode);
		System.out.println(cnt);
		mbh.closeHandler(ss);
		
		
		return cnt;
	}

	public static void main(String[] args) {
		
		new CourseQuestionDAO().selectOneQuestion("exam_999999");
		
	}


}
