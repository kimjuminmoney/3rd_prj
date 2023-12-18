package kr.co.daitdayoung.user.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.daitdayoung.dao.MyBatisHandler;
import kr.co.daitdayoung.user.domain.UserAnswerDomain;
import kr.co.daitdayoung.user.domain.UserCoursesExamDomain;
import kr.co.daitdayoung.user.domain.UserQuestionsDomain;
import kr.co.daitdayoung.user.vo.UserAnswerVO;
import kr.co.daitdayoung.user.vo.UserExamScoreVO;
import kr.co.daitdayoung.user.vo.UserExamVO;

@Component
public class UserExamDAO {

	@Autowired
	private MyBatisHandler mbh;
	
	//첫번째 시험 시험여부 업데이트
	public int updateExamParticipation(UserExamVO ueVO) throws PersistenceException {
		int cnt = 0;
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		cnt = ss.update("kr.co.daitdayoung.user.exam.examParticipationUpdate",ueVO);
		if (cnt == 1) {
			ss.commit();
		} // end if
		mbh.closeHandler(ss);
		
		return cnt;
	}
	
	//두번째 시험 insert
	public int insertReExamParticipation(UserExamVO ueVO) throws PersistenceException {
		int cnt = 0;
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		cnt = ss.insert("kr.co.daitdayoung.user.exam.reExamParticipationInsert",ueVO);
		if (cnt == 1) {
			ss.commit();
		} // end if
		mbh.closeHandler(ss);
		
		return cnt;
	}
	
	//시험코드 조회
	public String selectEpCode(UserExamVO ueVO) throws PersistenceException {
		
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		String epCode = ss.selectOne("kr.co.daitdayoung.user.exam.epCodeSelect",ueVO);
		mbh.closeHandler(ss);
		return epCode;
	}
	
	//네비바 문제정보 List
	public List<UserQuestionsDomain> selectQuestionList(String couCode) throws PersistenceException {

		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		List<UserQuestionsDomain> list = ss.selectList("kr.co.daitdayoung.user.exam.questionList", couCode);
		mbh.closeHandler(ss);

		return list;
	}// selectQuestionList
	
	//ajax용 문제 디테일
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
	
	//네비바 답안지문제정보 List
	public List<UserAnswerDomain> selectAnswerList(String epCode) throws PersistenceException {

		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		List<UserAnswerDomain> list = ss.selectList("kr.co.daitdayoung.user.exam.examAnswerList", epCode);
		mbh.closeHandler(ss);

		return list;
	}// selectQuestionList
	
	//답안지 ajax
	public UserAnswerDomain selectAnswerDetail(UserAnswerVO uaVO) throws PersistenceException {
		
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		UserAnswerDomain uaDomain = ss.selectOne("kr.co.daitdayoung.user.exam.examAnswerDetail", uaVO);
		mbh.closeHandler(ss);
		
		return uaDomain;
	}// selectQuestionList
	
	public int selectProgress(String crgCode) throws PersistenceException {
		
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		int progress = ss.selectOne("kr.co.daitdayoung.user.exam.progressSelect", crgCode);
		mbh.closeHandler(ss);
		
		return progress;
	}// selectQuestionList
	
	public int updateCompletion(String crgCode) throws PersistenceException {
		int cnt = 0;
		mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		cnt = ss.update("kr.co.daitdayoung.user.exam.completionUpdate",crgCode);
		if (cnt == 1) {
			ss.commit();
		} // end if
		mbh.closeHandler(ss);
		
		return cnt;
	}

	public static void main(String[] args) {
		//System.out.println(new UserExamDAO().selectCorrectList("COU_999999"));
//		UserExamDAO d = new UserExamDAO();
//		List<UserAnswerDomain> l = d.selectAnswerList("EP_999997");
//		
//		for(UserAnswerDomain a : l ) {
//			System.out.println(a);
//		}
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
