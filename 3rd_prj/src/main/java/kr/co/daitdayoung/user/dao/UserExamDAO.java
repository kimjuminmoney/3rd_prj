package kr.co.daitdayoung.user.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.user.domain.UserCoursesExamDomain;
import kr.co.daitdayoung.user.domain.UserQuestionsDomain;
import kr.co.daitdayoung.user.vo.UserAnswerVO;
import kr.co.daitdayoung.user.vo.UserExamScoreVO;
import kr.co.daitdayoung.user.vo.UserExamVO;

@Component
public class UserExamDAO {

	@Autowired
	private MyBatisHandler mbh;
	
	
	public int updateExamParticipation(UserExamVO ucVO) throws PersistenceException {
		int cnt = 0;
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		cnt = ss.update("kr.co.daitdayoung.user.exam.examParticipationUpdate",ucVO);
		if (cnt == 1) {
			ss.commit();
		} // end if
		mbh.closeHandler(ss);
		
		return cnt;
	}

	public List<UserQuestionsDomain> selectQuestionList(String couCode) throws PersistenceException {

		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		List<UserQuestionsDomain> list = ss.selectList("kr.co.daitdayoung.user.exam.questionList", couCode);
		mbh.closeHandler(ss);

		return list;
	}// selectQuestionList

	public UserQuestionsDomain selectQuestionDetail(String queCode) throws PersistenceException {

		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		UserQuestionsDomain uqDomain = ss.selectOne("kr.co.daitdayoung.user.exam.questionDetail", queCode);
		mbh.closeHandler(ss);

		return uqDomain;
	}// selectQuestionDetail

	//시험 답 조회
	public List<UserCoursesExamDomain> selectCorrectList(String couCode){
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		List<UserCoursesExamDomain> list = ss.selectList("kr.co.daitdayoung.user.exam.correctList", couCode);
		mbh.closeHandler(ss);
		return list;
	}
	
	public int insertAnswer(UserAnswerVO uaVO) throws PersistenceException {
		int cnt = 0;
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		cnt = ss.insert("kr.co.daitdayoung.user.exam.answerInsert", uaVO);
		if (cnt == 1) {
			ss.commit();
		} // end if
		mbh.closeHandler(ss);

		return cnt;
	}// insertAnswer
	
	public int updateExamScore(UserExamScoreVO uesVO)throws PersistenceException{
		int cnt = 0;
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		cnt = ss.update("kr.co.daitdayoung.user.exam.examScoreUpdate", uesVO);
		if (cnt == 1) {
			ss.commit();
		} // end if
		mbh.closeHandler(ss);
		
		return cnt;
	}

	public static void main(String[] args) {
		System.out.println(new UserExamDAO().selectCorrectList("COU_999999"));
//		UserExamVO ucVO  = new UserExamVO();
//		ucVO.setCouCode("COU_999998");
//		ucVO.setCrgCode("CRG_999999");
//		ucVO.setUiId("ui_test");
//		ucVO.setInsId("ins_test");
		
		
		//System.out.println(new UserExamDAO().updateExamParticipation(ucVO));
		// System.out.println(new UserExamDAO().selectQuestionDetail("QUE_999999"));
		// System.out.println(new UserExamDAO().selectQuestionList("COU_999999"));
	}

}// class
